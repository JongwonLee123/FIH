import "package:easy_tracker/utils/themes.dart";
import "package:flutter/material.dart";
import "package:intl/intl.dart";
import "package:flutter_svg/flutter_svg.dart";

String timestampToDate(int timestamp) {
  DateTime dt = DateTime.fromMillisecondsSinceEpoch(timestamp);
  return DateFormat('MMM dd, yyyy, h:mma').format(dt);
}

String formatUSD(double n) {
  return NumberFormat.currency(locale: 'en_US', symbol: '\$').format(n.abs());
}

class EntryCard extends StatefulWidget {
  final String? name;
  final double amount;
  final int timestamp;
  final String? description;

  const EntryCard({
    Key? key,
    required this.name,
    required this.amount,
    required this.timestamp,
    required this.description
  }): super(key: key);

  @override
  State<EntryCard> createState() => _EntryCardState();
}

class _EntryCardState extends State<EntryCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(10),
      decoration: ShapeDecoration(
        color: Colors.white.withOpacity(0.6),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        shadows: const [
          BoxShadow(
            color: Color(0x3F000000),
            blurRadius: 4,
            offset: Offset(0, 0),
            spreadRadius: 0,
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.of(context).size.width*0.5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.name!,
                  style: bodyMedium,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  softWrap: false,
                ),
                Text(
                  widget.description!,
                  style: bodySmall,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                )
              ]
            ),
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  timestampToDate(widget.timestamp),
                  style: bodySmall,
                ),
                Container(
                  height: 40,
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      if (widget.amount > 0)
                        SvgPicture.asset(
                          'assets/svg/eva_arrow-up-fill.svg',
                          height: 24,
                          width: 24,
                        ),
                      if (widget.amount < 0)
                        SvgPicture.asset(
                          'assets/svg/eva_arrow-down-fill.svg',
                          height: 24,
                          width: 24,
                        ),
                      Text(
                        formatUSD(widget.amount),
                        style: bodyMedium,
                      )
                    ]
                  )
                )
              ]
            ),
          )
        ],
      ),
    );
  }
}