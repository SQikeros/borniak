import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText(this.text, {super.key, this.style, this.maxLines, this.textAlign, this.overflow});

  final String text;
  final TextStyle? style;
  final int? maxLines;
  final TextAlign? textAlign;
  final TextOverflow? overflow;

  StyledText copyWith(
      {TextAlign? textAlign, double? letterSpacing, Color? color, int? maxLines, TextOverflow? overflow}) {
    return StyledText(
      text,
      maxLines: maxLines,
      style: style?.copyWith(letterSpacing: letterSpacing, color: color) ??
          TextStyle(letterSpacing: letterSpacing, color: color),
      textAlign: textAlign,
      overflow: overflow,
    );
  }

  // Don't add styles with fontSize=14 or fontWeight.normal, as these are default values
  static const normal12 = TextStyle(fontSize: 12);
  static const normal16 = TextStyle(fontSize: 16);
  static const medium = TextStyle(fontWeight: FontWeight.w500);
  static const medium12 = TextStyle(fontWeight: FontWeight.w500, fontSize: 12);
  static const medium16 = TextStyle(fontWeight: FontWeight.w500, fontSize: 16);
  static const medium18 = TextStyle(fontWeight: FontWeight.w500, fontSize: 18);
  static const medium20 = TextStyle(fontWeight: FontWeight.w500, fontSize: 20);
  static const medium24 = TextStyle(fontWeight: FontWeight.w500, fontSize: 24);
  static const semibold = TextStyle(fontWeight: FontWeight.w600);
  static const semibold10 = TextStyle(fontWeight: FontWeight.w600, fontSize: 10);
  static const semibold18 = TextStyle(fontWeight: FontWeight.w600, fontSize: 18);
  static const bold = TextStyle(fontWeight: FontWeight.w700);
  static const bold16 = TextStyle(fontWeight: FontWeight.bold, fontSize: 16);
  static const bold20 = TextStyle(fontWeight: FontWeight.bold, fontSize: 20);
  static const bold24 = TextStyle(fontWeight: FontWeight.bold, fontSize: 24);
  static const extrabold = TextStyle(fontWeight: FontWeight.w800);
  static const extrabold16 = TextStyle(fontWeight: FontWeight.w800, fontSize: 16);
  static const extrabold20 = TextStyle(fontWeight: FontWeight.w800, fontSize: 20);
  static const extrabold24 = TextStyle(fontWeight: FontWeight.w800, fontSize: 24);

  static TextStyle mediumIndicator12(BuildContext context) =>
      TextStyle(fontWeight: FontWeight.w500, color: Theme.of(context).indicatorColor, fontSize: 12);

  static TextStyle indicator12(BuildContext context) =>
      TextStyle(color: Theme.of(context).indicatorColor, fontSize: 12);

  static TextStyle mediumIndicator16(BuildContext context) =>
      TextStyle(fontWeight: FontWeight.w500, color: Theme.of(context).indicatorColor, fontSize: 16);

  static TextStyle mediumIndicator(BuildContext context) =>
      TextStyle(fontWeight: FontWeight.w500, color: Theme.of(context).indicatorColor);

  static TextStyle mediumAccent(BuildContext context) =>
      TextStyle(fontWeight: FontWeight.w500, color: Theme.of(context).colorScheme.secondary);

  static TextStyle boldIndicator(BuildContext context) =>
      TextStyle(fontWeight: FontWeight.w700, color: Theme.of(context).indicatorColor);

  static TextStyle overline12(BuildContext context) =>
      TextStyle(color: Theme.of(context).textTheme.overline?.color, fontSize: 12);

  static TextStyle overline14(BuildContext context) =>
      TextStyle(color: Theme.of(context).textTheme.overline?.color, fontSize: 14);

  @override
  Widget build(BuildContext context) {
    return Text(text, style: style, maxLines: maxLines, textAlign: textAlign, overflow: overflow);
  }
}

class HeadLineSmall extends StatelessWidget {
  final String data;
  final TextAlign textAlign;
  final Color? color;

  const HeadLineSmall(
      this.data, {
        super.key,
        this.textAlign = TextAlign.start,
        this.color,
      });

  @override
  Widget build(BuildContext context) => Text(
    data,
    textAlign: textAlign,
    style: Theme.of(context).textTheme.headlineSmall?.copyWith(color: color),
  );
}

class TitleLarge extends StatelessWidget {
  final String data;
  final TextAlign textAlign;
  final Color? color;

  const TitleLarge(
      this.data, {
        super.key,
        this.textAlign = TextAlign.start,
        this.color,
      });

  @override
  Widget build(BuildContext context) => Text(
    data,
    textAlign: textAlign,
    style: Theme.of(context).textTheme.titleLarge?.copyWith(color: color),
  );
}

class TitleMedium extends StatelessWidget {
  final String data;
  final TextAlign textAlign;
  final Color? color;

  const TitleMedium(
      this.data, {
        super.key,
        this.textAlign = TextAlign.start,
        this.color,
      });

  @override
  Widget build(BuildContext context) => Text(
    data,
    textAlign: textAlign,
    style: Theme.of(context).textTheme.titleMedium?.copyWith(color: color),
  );
}

class TitleSmall extends StatelessWidget {
  final String data;
  final TextAlign textAlign;
  final Color? color;

  const TitleSmall(
      this.data, {
        super.key,
        this.textAlign = TextAlign.start,
        this.color,
      });

  @override
  Widget build(BuildContext context) => Text(
    data,
    textAlign: textAlign,
    style: Theme.of(context).textTheme.titleSmall?.copyWith(color: color),
  );
}

class LabelLarge extends StatelessWidget {
  final String data;
  final TextAlign textAlign;
  final Color? color;

  const LabelLarge(
      this.data, {
        super.key,
        this.textAlign = TextAlign.start,
        this.color,
      });

  @override
  Widget build(BuildContext context) => Text(
    data,
    textAlign: textAlign,
    style: Theme.of(context).textTheme.labelLarge?.copyWith(color: color),
  );
}

class LabelMedium extends StatelessWidget {
  final String data;
  final TextAlign textAlign;
  final Color? color;

  const LabelMedium(
      this.data, {
        super.key,
        this.textAlign = TextAlign.start,
        this.color,
      });

  @override
  Widget build(BuildContext context) => Text(
    data,
    textAlign: textAlign,
    style: Theme.of(context).textTheme.labelMedium?.copyWith(color: color),
  );
}

class LabelSmall extends StatelessWidget {
  final String data;
  final TextAlign textAlign;
  final Color? color;

  const LabelSmall(
      this.data, {
        super.key,
        this.textAlign = TextAlign.start,
        this.color,
      });

  @override
  Widget build(BuildContext context) => Text(
    data,
    textAlign: textAlign,
    style: Theme.of(context).textTheme.labelSmall?.copyWith(color: color),
  );
}

class BodyLarge extends StatelessWidget {
  final String data;
  final TextAlign textAlign;
  final Color? color;

  const BodyLarge(
      this.data, {
        super.key,
        this.textAlign = TextAlign.start,
        this.color,
      });

  @override
  Widget build(BuildContext context) => Text(
    data,
    textAlign: textAlign,
    style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: color),
  );
}

class BodyMedium extends StatelessWidget {
  final String data;
  final TextAlign textAlign;
  final Color? color;

  const BodyMedium(
      this.data, {
        super.key,
        this.textAlign = TextAlign.start,
        this.color,
      });

  @override
  Widget build(BuildContext context) => Text(
    data,
    textAlign: textAlign,
    style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: color),
  );
}

class BodySmall extends StatelessWidget {
  final String data;
  final TextAlign textAlign;
  final Color? color;

  const BodySmall(
      this.data, {
        super.key,
        this.textAlign = TextAlign.start,
        this.color,
      });

  @override
  Widget build(BuildContext context) => Text(
    data,
    textAlign: textAlign,
    style: Theme.of(context).textTheme.bodySmall?.copyWith(color: color),
  );
}
