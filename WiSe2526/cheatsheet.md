# Cheat Sheet - P5.js - Programmieren für die künstlerische Praxis

## Programmaufbau

```js
function setup() {
    createCanvas(300, 300);

    // Alle Dinge, die wir laden müssen, bevor das Programm startet
    // Und auch Dinge, die sich nicht ändern werden (z.B. wenn alles ohne Stroke gezeichnet werden soll: noStroke())
}

function draw() {
    // background() überschreibt alles auf dem Canvas mit der angegeben Farbe. 
    // Wenn background() weggelassen wird, bleiben die Pixel aus dem letzten draw() durchlauf erhalten
    background('#000000');
    
    // Alle Dinge, die sich verändern sollen (z.B. Formen, die sich bewegen, oder Farben, die sich verändern)
}
```

## Shapes

```js
    rect(10, 20, 30, 40); // x, y, width, height  -  x und y meinen die obere linke Ecke des Rechteckes
    circle(10, 20, 30); // x, y, radius  -  x und y meinen die Mitte des Kreises
    // Weitere Formen: https://p5js.org/reference/#Shape
```

## Color

```js
    background('#ffffff'); // Überschreibt alle Pixel
    
    fill('#000000'); // Füllt alle nachfolgenden Formen in der angegeben Farbe

    stroke('#000000'); // Färbt den Rand aller nachfolgenden Formen in der angebenen Farbe

    noFill(); // Alle nachfolgenden Formen haben keine Füllung 

    noStroke(); // Alle nachfolgenden Formen haben keinen Rand
```

Farben können angegeben werden als:
* drei Zahlen (r, g, b) im Wertebereich 0-255
* eine Zahl (Grauwert) im Wertebereich 0-255
* Hex-Wert in der Form `#00FF11`, wobei r, g und b jeweils von zwei Ziffern im Wertebereich 00-FF (hexadezimal für 0-255) beschrieben werden. ([Wikipedia: Hexadezimal](https://de.wikipedia.org/wiki/Hexadezimalsystem))

Außerdem kann sowohl bei der dezimal als auch bei der hexadezimal Schreibweise ein Alphakanal angegeben werden (Transparenz):
* `fill(20, 40, 20, 125)`
* `fill('#FF0022AA')`

## variables

Variablen bieten die Möglichkeit Werte zu "speichern" und dann mehrfach zu verwenden. Mit Variablen können auch Zustände über einen draw()-Durchgang hinaus "gespeichert" werden.

```js
let step = 0;
let stepSize = 0.1;

function setup() {
    createCanvas(300, 300);
    // ...
}

function draw() {
    // circleX und circleY bleiben nur innerhalb von einem draw()-Durchgang erhalten
    let circleX = step * step;
    let circleY = (step * step) + 10);

    // step und stepSize bleiben über einen draw()-Durchgang hinaus erhalten. Dadurch kann step einen Zustand "speichern", mit dem wir kontinuierlich weiterarbeiten können
    step = step + stepSize; 
}
```

## Arithmetik

Mit Zahlen kann natürlich gerechnet werden:

```js
circle(mouseX + 10, mouseY + 10, 20); // Additionoperator: +
circle(mouseX - 10, mouseY - 10, 20); // Subtraktionsoperator: -
circle(mouseX * 10, mouseY * 10, 20); // Multiplikationsoperator: *
circle(mouseX / 10, mouseY / 10, 20); // Divisionsoperator: /
circle(mouseX % 10, mouseY % 10, 20); // Modulooperator: % (hatten wir noch nicht)
```

## Maus Variablen

P5.js bietet bereits eine Menge an "vorbefüllten" Variablen. Mit diesen können wir z.B. die Position der Maus bekommen oder schauen, ob die Maus gerade gedrückt wird. Ihr erinnert Euch vermutlich an die erste Sitzung mit dem "Paint"-Verschnitt.

```js
// ... andere Dinge

if (mouseIsPressed) {
    circle(mouseX, mouseY, 20);
}

// ... andere Dinge
```

## random

`random` gibt uns eine komplett ([pseudo-](https://de.wikipedia.org/wiki/Pseudozufall))zufällige Zahl zwischen 0.0 und 1.0 zurück. Es ist aber auch möglich einen Wertebereich anzugeben.

```js
random(); // gibt eine Zahl von 0.0 bis 1.0 zurück
random(22); // gibt eine Zahl von 0.0 bis 22.0 zurück
random(14, 98); // gibt eine Zahl von 14.0 bis 98.0 zurück
```

## noise

Ähnlich wie `random` gibt uns `noise` eine Zahl zwischen 0.0 und 1.0 zurück. Allerdings wirken die Zahlen nicht komplett ([pseudo-](https://de.wikipedia.org/wiki/Pseudozufall))zufällig. Viel eher wirken die Zahlen so, als würden sie zueinander gehören (wir hatten das Beispiel mit der Kerze, deren Bewegung wir zwar nicht wirklich vorhersagen können, aber deren Bewegung trotzdem als zusammenhängen wahrnehmen).

```js
function draw() {
    // ... andere Dinge

    let circleX = noise(step) * width;

    circle(circleX, 100, 20); // Zeichnet einen Kreis, der sich durch noise zwischen auf der Canvasfläche hin und her bewegt.

    step = step + stepSize;

    // ... andere Dinge
}
```