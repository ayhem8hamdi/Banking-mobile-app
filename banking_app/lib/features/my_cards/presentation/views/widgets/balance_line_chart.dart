import 'package:banking_app/features/my_cards/presentation/views/widgets/balance_value.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class BalanceContent extends StatefulWidget {
  const BalanceContent({super.key});

  @override
  State<BalanceContent> createState() => _BalanceContentState();
}

class _BalanceContentState extends State<BalanceContent> {
  double? selectedValue;
  int? selectedIndex;

  final months = ["Oct", "Nov", "Dec", "Jan", "Feb", "Mar"];
  final values = [3000.0, 4500.0, 5200.0, 8545.0, 7000.0, 9200.0];

  void _onPointSelected(int index, double value) {
    setState(() {
      selectedIndex = index;
      selectedValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          BalanceHeader(value: selectedValue ?? values.last),
          const SizedBox(height: 16),
          SizedBox(
            height: 250,
            child: BalanceLineChart(
              months: months,
              values: values,
              selectedIndex: selectedIndex,
              onPointSelected: _onPointSelected,
            ),
          ),
        ],
      ),
    );
  }
}

//
// ========== HEADER (Stateless)
//

//
// ========== CHART (Stateless, but interacts via callback)
//

class BalanceLineChart extends StatelessWidget {
  final List<String> months;
  final List<double> values;
  final int? selectedIndex;
  final void Function(int index, double value) onPointSelected;

  const BalanceLineChart({
    super.key,
    required this.months,
    required this.values,
    required this.selectedIndex,
    required this.onPointSelected,
  });

  @override
  Widget build(BuildContext context) {
    final maxY = (values.isEmpty)
        ? 1.0
        : values.reduce((a, b) => a > b ? a : b) * 1.2; // add some headroom

    return LineChart(
      LineChartData(
        minX: 0,
        maxX: (months.length - 1).toDouble(),
        minY: 0,
        maxY: maxY,
        titlesData: FlTitlesData(
          leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              interval: 1,
              getTitlesWidget: (value, meta) {
                if (value.toInt() >= 0 && value.toInt() < months.length) {
                  final isSelected = selectedIndex == value.toInt();
                  return Text(
                    months[value.toInt()],
                    style: TextStyle(
                      color: isSelected ? Colors.blueAccent : Colors.white70,
                      fontSize: 12,
                      fontWeight: isSelected
                          ? FontWeight.bold
                          : FontWeight.normal,
                    ),
                  );
                }
                return const SizedBox.shrink();
              },
            ),
          ),
        ),
        gridData: FlGridData(show: false), // hide default grid
        borderData: FlBorderData(show: false),
        extraLinesData: ExtraLinesData(
          verticalLines: List.generate(months.length, (i) {
            return VerticalLine(
              x: i.toDouble(),
              color: Colors.grey.withOpacity(0.5),
              strokeWidth: 1,
            );
          }),
        ),
        lineBarsData: [
          LineChartBarData(
            spots: List.generate(
              months.length,
              (i) => FlSpot(i.toDouble(), values[i]),
            ),
            isCurved: true,
            color: Colors.blueAccent,
            barWidth: 3,
            dotData: FlDotData(
              show: true,
              getDotPainter: (spot, percent, bar, index) {
                final isSelected = index == selectedIndex;
                return FlDotCirclePainter(
                  radius: isSelected ? 6 : 3,
                  color: isSelected ? Colors.white : Colors.blueAccent,
                  strokeColor: Colors.blueAccent,
                  strokeWidth: 2,
                );
              },
            ),
            belowBarData: BarAreaData(
              show: true,
              color: Colors.blueAccent.withOpacity(0.2), // fill under curve
            ),
          ),
        ],
        lineTouchData: LineTouchData(
          handleBuiltInTouches: true,
          touchCallback: (event, response) {
            if (response != null &&
                response.lineBarSpots != null &&
                response.lineBarSpots!.isNotEmpty) {
              final spot = response.lineBarSpots!.first;
              onPointSelected(spot.x.toInt(), spot.y);
            }
          },
          touchTooltipData: LineTouchTooltipData(getTooltipItems: (_) => []),
        ),
      ),
    );
  }
}
