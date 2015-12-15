#Bear Included Themes

##Bear Skin _(bear_skin)_

Bear includes the [Bear Skin](https://www.drupal.org/project/bear_skin) base Drupal theme, which has some specific integrations with the bear installation profile. Bear Skin used to be a Zen sub-theme, but has since been updated to the point of not needing Zen any longer. That means if you are running the newest version of bear_skin, you no longer need Zen installed on your site.


##Bear Coat _(bear_coat)_

Bear Skin now includes Bear Coat as a sub-theme. Sub-themes allow styling and functionality to be inherited from a base theme, in this case Bear Skin. This allows us to utilize Bear Skin's great features without having to redo any work, we just reuse it. This also means that you can use the Bear Coat theme as your own starter kit theme, to build your own custom theme.

To use bear_coat as a starter kit for your own custom bear_skin sub-theme do the following:

1. Copy the bear_coat folder from bear_skin/bear_coat to your new theme's machine name. Example: bear_claw

2. Rename the bear_coat.info file to bear_claw.info.

3. Rename Bear Coat to Bear Claw in the bear_claw.info file.

4. Find and replace bear_coat for bear_claw in all theme files.

5. Add the new bear_claw theme to your bear website.

6. Start modifying files as needed to suit your custom theme's requirements.

**Note:** It is NOT recommended to update Bear Skin, or any base theme for that matter, after creating your sub-theme unless there is a security update required. In the rare event that Bear Skin has a security update, you will want to do some additional tests to make sure there were not any changes made to Bear Skin that will affect your bear_claw sub-theme.