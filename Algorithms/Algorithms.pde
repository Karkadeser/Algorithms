BubbleSort bubbleSort;
SellectionSort sellectionSort;

String[] lines;

void setup() {
  size(640, 480);
  textSize(24);
  lines = new String[height / 24];
  bubbleSort = new BubbleSort(10);
  PrintText("Not sorted: " + bubbleSort.GetArray());
  bubbleSort.Sort();
  PrintText("Sorted: " + bubbleSort.GetArray());
  sellectionSort = new SellectionSort(10);
  PrintText("Not sorted: " + sellectionSort.GetArray());
  sellectionSort.Sort();
  PrintText("Sorted: " + sellectionSort.GetArray());
}

void draw() {
  background(18);
  for (int i = 0; i < lines.length; i++) {
    if (lines[i] != null && lines[i] != "") {
      color c = color(255, 255, 255, 255 - (i + 1) * 12);
      fill(c);
      text(lines[i], 10, (i + 1) * 24);
    }
  }
}

void PrintText(String line) {
  for (int i = lines.length - 1; i > 0; i--) {
    if (lines[i - 1] != "") {
      lines[i] = lines[i - 1];
      lines[i - 1] = "";
    }
  }
  lines[0] = line;
}