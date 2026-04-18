// VELAZQUEZ MATEO, COM5, TP1, IPMI 2026
PImage miImagen;

void setup() {
  size(800, 400);
  miImagen = loadImage ("data/miescultura.jpg");
}

void draw() {
  background(#762626);
  image(miImagen, 0, 0, 400, 400);

  // brazos, torso y cabeza

  noStroke();
  fill(#F5D5AD, 255);
  rect(571, 81, 49, 105);
  ellipse(586, 50, 76, 76);
  triangle(541, 70, 551, 31, 554, 61);
  triangle(541, 70, 538, 52, 551, 31);
  triangle(556, 118, 581, 169, 621, 63);
  triangle(619, 145, 619, 188, 646, 168);
  triangle(571, 163, 538, 193, 572, 186);
  ellipse(617, 90, 16, 40);
  rect(545, 186, 127, 400);
  beginShape();
  vertex (540, 192);
  vertex (532, 191);
  vertex (534, 196);
  vertex (517, 196);
  vertex (509, 204);
  vertex (494, 227);
  vertex (489, 242);
  vertex (486, 252);
  vertex (486, 263);
  vertex (474, 278);
  vertex (469, 294);
  vertex (466, 306);
  vertex (445, 236);
  vertex (427, 219);
  vertex (415, 219);
  vertex (417, 254);
  vertex (426, 324);
  vertex (447, 386);
  vertex (452, 390);
  vertex (474, 383);
  vertex (498, 344);
  vertex (514, 328);
  vertex (528, 288);
  vertex (535, 312);
  vertex (546, 360);
  vertex (535, 400);
  vertex (547, 400);
  vertex (547, 190);
  endShape (CLOSE);
  beginShape ();
  vertex (555, 118);
  vertex (548, 105);
  vertex (546, 86);
  vertex (542, 77);
  vertex (541, 70);
  vertex (538, 56);
  vertex (602, 50);
  vertex (602, 193);
  vertex (645, 165);
  vertex (664, 163);
  vertex (682, 167);
  vertex (706, 182);
  vertex (711, 191);
  vertex (727, 192);
  vertex (747, 205);
  vertex (742, 182);
  vertex (738, 165);
  vertex (756, 142);
  vertex (762, 143);
  vertex (782, 184);
  vertex (794, 225);
  vertex (798, 248);
  vertex (785, 267);
  vertex (746, 266);
  vertex (714, 263);
  vertex (682, 242);
  vertex (675, 276);
  vertex (680, 300);
  vertex (675, 320);
  vertex (676, 351);
  vertex (673, 373);
  vertex (674, 400);
  vertex (670, 400);
  vertex (670, 186);
  vertex (617, 186);
  endShape (CLOSE);

  // sombras grises

  fill (0, 30);
  quad (690, 216, 682, 235, 714, 261, 718, 245);
  beginShape ();
  vertex (582, 167);
  vertex (590, 165);
  vertex (604, 154);
  vertex (602, 199);
  vertex (586, 183);
  endShape ();
  triangle (529, 267, 541, 330, 554, 290);
  ellipse (460, 344, 20, 80);
  triangle (618, 153, 634, 164, 612, 182);
  triangle (618, 400, 603, 318, 622, 354);
  triangle (618, 62, 578, 71, 604, 94);
  quad (590, 67, 582, 47, 623, 47, 619, 66);
  quad (582, 168, 599, 150, 615, 114, 605, 158);

  //sombras negras
  fill (0, 100);
  triangle (584, 167, 599, 158, 588, 185);
  triangle (686, 221, 702, 255, 678, 238);
  triangle (743, 163, 755, 204, 755, 158);
  rect (734, 257, 46, 10);
  triangle (537, 319, 526, 284, 530, 266);
  triangle (454, 383, 438, 335, 474, 374);
  rect (718, 236, 20, 8);
  quad (572, 140, 581, 138, 592, 140, 575, 151);
  quad (642, 400, 645, 368, 671, 376, 648, 377);
  ellipse (670, 263, 7, 10);
  triangle (562, 300, 608, 283, 597, 294);
  triangle (620, 281, 670, 281, 650, 289);
  ellipse (617, 86, 4, 10);
  triangle (770, 400, 800, 365, 800, 800);
  triangle (421, 400, 400, 365, 400, 400);
  triangle (400, 0, 420, 0, 400, 31);
  triangle (772, 0, 800, 40, 800, 0);

  // iluminacion suave

  fill(#FFEECB, 120);
  quad(757, 142, 740, 162, 739, 173, 762, 149);
  quad (428, 220, 414, 220, 423, 230, 444, 235);
  rect (419, 227, 7, 50);
  triangle (569, 135, 582, 129, 568, 118);
  ellipse (616, 375, 90, 130);
  triangle (541, 282, 562, 303, 543, 350);
  quad (739, 246, 711, 237, 718, 193, 750, 218);
  quad (551, 362, 534, 400, 578, 400, 574, 366);
  quad (580, 400, 578, 366, 616, 363, 617, 400);
  quad (621, 400, 619, 362, 649, 372, 646, 400);
  quad (647, 400, 652, 374, 670, 371, 672, 400);
  quad (546, 83, 539, 68, 583, 48, 590, 69);
  triangle (751, 218, 762, 242, 738, 249);
  quad (610, 286, 564, 302, 536, 270, 588, 231);
  quad (666, 282, 619, 282, 615, 231, 685, 208);
  triangle (767, 249, 734, 254, 768, 258);
  quad (604, 193, 606, 152, 615, 122, 610, 182);
  triangle (571, 165, 542, 190, 586, 194);
  quad (571, 150, 581, 165, 582, 188, 572, 170);
  quad (478, 276, 503, 260, 501, 312, 473, 323);


  // iluminacion fuerte
  
  fill (255, 90);
  rect (548, 306, 20, 50);
  triangle (512, 204, 486, 251, 556, 199);
  triangle (479, 316, 467, 306, 481, 274);
  ellipse (559, 285, 7, 10);
  ellipse (565, 131, 8, 8);
  quad (619, 301, 613, 218, 588, 192, 599, 234);
  quad (714, 238, 691, 210, 697, 195, 720, 191);
  quad (548, 86, 578, 76, 592, 87, 548, 101);
  rect (562, 103, 4, 30);
  triangle (575, 113, 593, 98, 589, 130);
  triangle (554, 118, 564, 134, 562, 116);

}
