// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/material.dart' ;

import 'package:flutter_svg/flutter_svg.dart';

import '../util/color.dart';
import '../util/theme.dart';
import 'buttons.dart';


ListTile settingListtile(
  {
    required BuildContext context,
    required String title,
    required SvgPicture leading,
    required Widget trailing,
    Function? ontap,
  }
) {
  return ListTile(
    onTap: ontap == null ? null : () => ontap(),
    title: Text(
      title,
      style: Theme.of(context).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w500),
    ),
    leading: leading,
    trailing: trailing,
  );
}

ListTile messagesListTile(
  {
    required BuildContext context,
    required String title,
    required String subtitle,
    required CircleAvatar leading,
    required String trailing,
    Function? ontap,
  }
) {
  return ListTile(
    onTap: ontap == null ? null : () => ontap(),
    title: Text(
      title,
      style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w500),
    ),
    subtitle: Text(
      title,
      style: Theme.of(context).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w300),
    ),
    leading: leading,
    trailing: Text(
      trailing,
      style: Theme.of(context).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w300),
    ),
  );
}

ListTile titleTile(
  {
    required BuildContext context,
    required String title,
    required String subtitle,
    required Image leading,
    required Widget trailing,
    Function? ontap,
  }
) {
  return ListTile(
    onTap: ontap == null ? null :() => ontap(),
    title:  Text(
      title,
      style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w500),
    ),
    subtitle: Text(
      subtitle,
      style: Theme.of(context).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w200),
    ),
    leading: leading,
    trailing: trailing,
  );
}

ListTile HelpCenterTile(
  {
    required BuildContext context,
    required String title,
    required String subtitle,
    required Widget trailing,
  }
) {
  return ListTile(
    title:  Text(
      title,
      style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w500),
    ),
    subtitle: Text(
      subtitle,
      style: Theme.of(context).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w200),
    ),
    trailing: trailing,
  );
}


ListTile HelpCenterTile2(
  {
    required BuildContext context,
    required String title,
    required Widget trailing,
  }
) {
  return ListTile(
    title:  Text(
      title,
      style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w500),
    ),
    trailing: trailing,
  );
}


ListTile profileListTile(
  {
    required BuildContext context,
    required String title,
    required SvgPicture leading,
    required Widget trailing,
  }
) {
  return ListTile(
    title: Text(
      title,
      style: Theme.of(context).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w500),
    ),
    leading: leading,
    trailing: trailing, 
  );
}

ListTile notificationListTile(
  {
    required BuildContext context,
    required String title,
    required Widget trailing, 
  }
) {
  return ListTile(
    title: Text(
      title,
      style: Theme.of(context).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w500),
    ),
    trailing: trailing, 
  );
}



Padding_001(BuildContext context, {required SingleChildScrollView child}) {
  return Padding(
    padding: const EdgeInsets.all(10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Icon(
          Icons.circle_outlined,
          color: Colors.grey,
        ),
        
        const SizedBox(width: 10),

        Text(
          'Notifications',
          style: Theme.of(context).textTheme.titleSmall,
        ),

        const SizedBox(width: 170),

        SizedBox(
          width: 80,
          height: 40,
          child: FullWithButton(
            callback: () {},
            type: defaultButtonTheme.copyWith(
              backgroundColor: MaterialStateProperty.all(Colors.transparent),
              foregroundColor: MaterialStateProperty.all(black),
            ),
            child: Row(
              children: const [
                SizedBox(width: 50),

                Padding(
                  padding: EdgeInsets.only(left: 2),
                  child: Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 12,
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

