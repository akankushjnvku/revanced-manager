import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PatchItem extends StatefulWidget {
  final String name;
  final String description;
  final String version;
  bool isSelected;

  PatchItem({
    Key? key,
    required this.name,
    required this.description,
    required this.version,
    required this.isSelected,
  }) : super(key: key);

  @override
  State<PatchItem> createState() => _PatchItemState();
}

class _PatchItemState extends State<PatchItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xff1B222B),
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
      margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          widget.name,
                          style: GoogleFonts.inter(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(width: 4),
                        Text(widget.version)
                      ],
                    ),
                    const SizedBox(height: 4),
                    Text(
                      widget.description,
                      softWrap: true,
                      maxLines: 3,
                      overflow: TextOverflow.visible,
                      style: GoogleFonts.roboto(
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
              Transform.scale(
                scale: 1.2,
                child: Checkbox(
                  value: widget.isSelected,
                  activeColor: Colors.blueGrey[500],
                  onChanged: (newValue) {
                    setState(() {
                      widget.isSelected = newValue!;
                    });
                  },
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}