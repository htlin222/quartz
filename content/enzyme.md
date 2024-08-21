---
title: enzyme
slug: 'enzyme'
date: "2023-02-01"
enableToc: false
---

# enzyme

create a folder with same name as the file copy the file.md into the folder rename the origin file as origin\_file.md read the file.md in the folder add file name in front of each level two title and add double square brake to make it as a wiki link e.g. ## a title to ## \[\[filename - a title\]\] then create series of new file name "filename - a title.md" clip the content between two level two heading into the new file, then delete the original content

Unfortunately, as a language model, I don't have the ability to create files or execute actions on a file system. Here are the steps to achieve the desired outcome:

1.  Create a folder with the same name as the file.
2.  Copy the `file.md` into the folder.
3.  Rename the origin file as `origin_file.md`.
4.  Read the `file.md` in the folder.
5.  Add the file name in front of each level two title and add double square brackets to make it a wiki link.
6.  Create a series of new files named `filename - a title.md`.
7.  Clip the content between two level two headings into the new file.
8.  Delete the original content.

write a python script to do create a folder with same name as the file copy the file.md into the folder rename the origin file as origin\_file.md read the file.md in the folder add file name in front of each level two title and add double square brake to make it as a wiki link e.g. ## a title to ## \[\[filename - a title\]\] then create series of new file name "filename - a title.md" clip the content between two level two heading into the new file, then delete the original content

Here's a Python script that does the steps you specified:

python

```python
import os

def process_file(file_path):
    # Get the file name without the .md extension
    file_name = os.path.splitext(os.path.basename(file_path))[0]

    # Create a folder with the same name as the file
    folder_path = file_name
    os.makedirs(folder_path, exist_ok=True)

    # Copy the file.md into the folder
    new_file_path = os.path.join(folder_path, os.path.basename(file_path))
    os.system(f"cp {file_path} {new_file_path}")

    # Rename the origin file as origin_file.md
    origin_file_path = os.path.join(os.path.dirname(file_path), "origin_file.md")
    os.rename(file_path, origin_file_path)

    # Read the file.md in the folder
    with open(new_file_path, "r") as file:
        content = file.readlines()

    # Add the file name in front of each level two title and add double square brackets to make it a wiki link
    new_content = []
    for line in content:
        if line.startswith("## "):
            line = f"## [[{file_name} - {line[3:]}"
        new_content.append(line)

    # Write the modified content back to the file
    with open(new_file_path, "w") as file:
        file.writelines(new_content)

    # Create series of new file name "filename - a title.md"
    # Clip the content between two level two heading into the new file
    # Delete the original content
    section_start = None
    for i, line in enumerate(new_content):
        if line.startswith("## "):
            if section_start is not None:
                section_end = i - 1
                section_content = new_content[section_start:section_end]

                section_file_name = f"{file_name} - {section_content[0][3:-1]}.md"
                section_file_path = os.path.join(folder_path, section_file_name)
                with open(section_file_path, "w") as file:
                    file.writelines(section_content)

            section_start = i + 1

    # Remove the section content from the original file
    with open(new_file_path, "w") as file:
        file.writelines(new_content[:section_start])

# Run the script on a file named "file.md"
process_file("file.md")
```
