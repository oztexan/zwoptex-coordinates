# Zwoptex Coordinates

## Intro

<a href="http://zwopple.com/zwoptex/">Zwoptex</a> comes packaged with a couple of very stable well tested coordinate formats. Sometimes game engines are using newer builds or arn't as mainstream. This repository is a collection of formats you can add through Zwoptex's preferences and use in your own documents.

## Coordinates Syntax

The coordinates syntax is based on <a href="http://mattgemmell.com/">Matt Gemmell's</a> <a href="http://svn.cocoasourcecode.com/MGTemplateEngine/">MGTemplateEngine</a> but open sourced as <a href="https://github.com/zwopple/MGKit">MGKit</a> with some modifications.

##### For Loops
```
{% for <value> in <collection> %}
	{{ currentLoop.currentIndex }} # current loop index - 0 based
	{{ currentLoop.currentIndex1 }} # current loop index - 1 based
	
	{{ currentLoop.startIndex }} # current loop start index - 0 based
	{{ currentLoop.startIndex1 }} # current loop start index - 1 based
	
	{{ currentLoop.endIndex }} # current loop end index - 0 based
	{{ currentLoop.endIndex1 }} # current loop end index - 1 based
	
	{{ currentLoop.first }} # boolean if on first object
	{{ currentLoop.last }} # boolean if on last object
{% /for %}
```

##### If / If Not Statements
```
{% if currentLoop.first %}<{% /endif %}

{% if not currentLoop.first %},{% /endif %}

{% if currentLoop.last %}<{% /endif %}
```

Matt Gemmell's page has more information on all the syntax details if you need more than for loops and if statements.

## Variables

Zwoptex inputs a lot of variables into the system for you to use. Here's a list:

##### Root

* ```metadata``` - metadata object
* ```target``` - publish target object
* ```sprites``` - array of sprite objects
* ```spritesAndAliases``` - array of sprites objects including aliases

##### Metadata

* ```version``` - Zwoptex version
* ```name``` - document name
* ```size``` - texture size as "{<width>, <height>}"
* ```sizeWidth``` - texture size width
* ```sizeHeight``` - texture size height
* ```premultipliedAlpha``` - if alpha is premultiplied ( PVR formats only )
* ```target``` - publish target object

##### Target

* ```name``` - target name
* ```textureFileName``` - target texture file name
* ```textureFileExtension``` - target texture file extension name
* ```coordinatesFileName``` - target coordinates file name
* ```coordinatesFileNameExtension``` - target coordinates file extension name
* ```premultipliedAlpha``` - if alpha is premultiplied ( PVR formats only )
* ```scale``` - scale of document in decimal where 1.0 is 100%

##### Sprite

* ```name``` - sprite name
* ```nameWithoutExtension``` - sprite name without extension
* ```sourceSize``` - source size as "{<width>, <height>}"
* ```sourceSizeHeight``` - source size width
* ```sourceSizeHeight``` - source size height
* ```sourceColorRect``` - source color rect as "{{<x>, <y>}, {<width>, <height>}}"
* ```sourceColorRectX``` - source color rect x
* ```sourceColorRectY``` - source color rect y
* ```sourceColorRectWidth``` - source color rect width
* ```sourceColorRectHeight``` - source color rect height
* ```size``` - size as "{<width>, <height>}"
* ```sizeWidth``` - size width
* ```sizeHeight``` - size height
* ```offset``` - offset as "{<x>, <y>}"
* ```offsetX``` - offset x
* ```offsetY``` - offset y
* ```isTrimmed``` - if sprite is trimmed
* ```isRotated``` - if sprite is rotated
* ```textureRect``` - textureRect as "{{<x>, <y>}, {<width>, <height>}}"
* ```textureRectX``` - texture rect x
* ```textureRectY``` - texture rect y
* ```textureRectWidth``` - texture rect width
* ```textureRectHeight``` - texture rect height
* ```aliases``` - array of alias strings


