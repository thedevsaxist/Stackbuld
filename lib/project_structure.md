# The Skeleton Structure

> 📘 Note: Use the `ui & logic template` template to create new screens for your app. The template contains the two files you will need to build your UI and logic separately. 

You can skip to the `Files and Folder structure` section, to understand the file structure. [Files and Folder Structure](#files-and-folder-structure)

## Project Templates VSCode Extension

Visual Studio code extension that allows you to quickly create new projects based on custom templates.

## Install

1. In Visual Studio code, Press F1 to open the command menu and type `ext install cantonios.project-templates`.

2. Clone this GitHub repo:
`git clone https://github.com/thedevsaxist/ui-logic-template.git` to get the ui-logic template.
[Link to the repo](https://github.com/thedevsaxist/ui-logic-template)

3. In the cloned repo, open the `ui_logic_template` folder.

>**NOTE:** Make sure you create the template using just this folder, to avoid adding some unnecessary files.

4. Use the Command Palette to execute the command `Project: Save Project As Template`. Enter the name for your template: `ui & logic template`. The contents of your root workspace directory will be copied to a new template folder.

- If called from the context menu, the contents of the selected folder will be copied to the new template folder.
Placeholders

## Usage

Extension commands can be executed from the Command Palette or from the context menu when selecting a folder.

### Creating a Project from a Template

- In VSCode, open a folder that will contain your new project. Use the Command Palette to execute the command `Project: Create Project From Template`. A list of available templates should appear. Select the `ui & logic template` template. The contents of the template will be copied to the current root workspace directory.

- If called from the context menu, the contents of the template will instead be copied to the selected folder.

#### Optional

By default, this extension expects the project templates to be placed within the user's data directory for VSCode, which is OS-specific. For the non-portable version of VSCode, this is typically

```bash
$HOME/.config/Code/User/ProjectTemplates                       # Linux

$HOME/Library/Application Support/Code/User/ProjectTemplates   # macOS

%APPDATA%\Code\User\ProjectTemplates                           # Windows
```

For the portable version of vscode, or if a `--user-data-dir` is specified at the command-line, the default template location is

```$USER_DATA_DIR/User/ProjectTemplates```

You can change the templates location by adding the following to your user or workspace settings:

`"projectTemplates.templatesDirectory": "path/to/my/templates"`

## Files and Folder Structure

### Commons.dart

Use this file as a general *import* for all libraries and modules used in the app. This way you just import a single file in your files which can also help with quick refactoring, changing or adding libraries

Just add

```dart
import 'package:artizan_square/commons.dart';
```

in every file to have access to all the libraries and modules you'll need in this project.

### Screens

This is the folder where all the screens of an app go. Each screen has its own folder, which contains two files: `page_name_ui.dart` and `page_name_logic.dart`. These are the pages **UI** and **Logic** respectively. This folders and files, are autogenerated by the `ui & logic template` template.

### Widgets

This is the folder where all the reusable widgets of the app go. In this folder you can save files like `custom_scaffold` and all the “recyclers” or list item widgets.

### Services

This is basically all the external services used in the apps. Classes here usually include connection to a *REST API* that feeds data to the app.

### Models

Following the Services folder, always keep your `Models` *(object classes)* in a separated folder named Models. An example of a Model for dictionary terms:

``` dart
class TermVO {
  int? id;
  String? title;
  String? description;
  String? language;


  TermVO(
      {this.id, this.title, this.description, this.language});

  TermVO.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    description = json['description'];
    language = json['language'];

  }
}
```

### Utils

This folder is the home of all *“helper”* files for external APIs or local libraries. Here you will keep things like *firebase* helper class, *OneSignal* helper class or even your own *StringHelper* class which includes functions to format Strings in your project.

### Styles

This is straight forward as it includes the themes and measurements for the app