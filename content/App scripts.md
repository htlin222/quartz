---
title: "App scripts"
slug: "app-scripts"
date: "2023-06-20"
enableToc: false
tags:
- building
---

> [!info]
>
> 🌱 來自: [[程式語言]]

# App scripts

```javascript
function createSlidesFromGistMarkdown() {
  var gistId = "YOUR_GIST_ID"; // Replace with the actual Gist ID
  var gistRawUrl = "https://gist.githubusercontent.com/raw/" + gistId;

  var response = UrlFetchApp.fetch(gistRawUrl);
  var markdown = response.getContentText();

  var markdownSlides = markdown.split("\n\n"); // Split the markdown by double line breaks

  var presentation = SlidesApp.create("New Presentation");

  for (var i = 0; i < markdownSlides.length; i++) {
    var slideContent = markdownSlides[i];

    if (slideContent.length > 0) {
      var slide = presentation.appendSlide(SlidesApp.PredefinedLayout.BLANK);

      var contentLines = slideContent.split("\n");
      var title = contentLines[0].replace("## ", "");

      var titleShape = slide.insertShape(SlidesApp.ShapeType.TEXT_BOX, 50, 50, 400, 50);
      titleShape.getText().setText(title);

      var contentShape = slide.insertShape(SlidesApp.ShapeType.TEXT_BOX, 50, 120, 400, 200);
      contentShape.getText().setText(contentLines.slice(1).join("\n"));
    }
  }
}
```
