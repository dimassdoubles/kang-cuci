import 'package:kang_cuci/ui_kit/ui_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeAppbar extends StatelessWidget {
  const HomeAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: AppPaddings.hMedium,
        child: Row(
          children: [
            Expanded(
                child: Container(
              decoration: BoxDecoration(
                borderRadius: AppBorderRadius.small,
                border: Border.all(color: Colors.black26, width: 1),
              ),
              child: Row(
                children: [
                  Gaps.hMedium,
                  SvgPicture.asset("assets/icons/ic-search.svg"),
                  Gaps.hSmall,
                  const Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        isDense: true,
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.all(4),
                        hintText: "Cari pesanan",
                      ),
                    ),
                  )
                ],
              ),
            )),
            const Gaps(width: Gaps.baseSize * 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SvgPicture.asset("assets/icons/ic-transaction.svg"),
                Gaps.hLarge,
                SvgPicture.asset("assets/icons/ic-notification.svg"),
                Gaps.hLarge,
                SvgPicture.asset("assets/icons/ic-other-menu.svg")
              ],
            ),
          ],
        ),
      ),
    );
  }
}
