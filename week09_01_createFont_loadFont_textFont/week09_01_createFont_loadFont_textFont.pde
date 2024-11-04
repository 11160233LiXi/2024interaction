//week09_01_createFont_loadFont_textFont
size(500,500);
background(0);
textSize(50);
text("Hello",50,50);

PFont font = createFont("標楷體",50);
textFont(font);
text("可以看到中文了",50,150);

PFont font2 = createFont("elffont-rock.otf",50);
textFont(font2);//記得字型檔案要安裝
text("ㄇㄚ ㄉㄜ",50,250);
