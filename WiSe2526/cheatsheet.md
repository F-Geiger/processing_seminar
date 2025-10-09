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

## Formen

```js
    rect(10, 20, 30, 40); // x, y, width, height  -  x und y meinen die obere linke Ecke des Rechteckes
    circle(10, 20, 30); // x, y, radius  -  x und y meinen die Mitte des Kreises
    // Weitere Formen: https://p5js.org/reference/#Shape
```

## Farben

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

## Variablen

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

## If

Mit `if` können wir eine Abzweigung im Programmverlauf vornehmen. `if` benötigt eine Kondition und einen Programmblock. Wenn die Kondition sich erfüllt (wahr ist), dann wird der Programmblock ausgeführt. Wenn sich die Kondition nicht erfüllt (falsch ist), wird der Programmblock *nicht* ausgeführt.

```js
if (Kondition) {
    // Tue etwas
}
```

In der letzten Sitzung sind wir mit `if` sichergegangen, das der fallende Ball niemals den Canvas verlässt. Wenn der Ball tiefer als das Ende vom Canvas ist, dann soll der Ball genau auf dem Ende des Canvas liegen und sich seine Geschwindigkeit umdrehen.

```js
if (ballY >= height) {
    ballY = height;
    velocityY = velocityY * -1;
}
```

## Objekte

Wollten wir mit einer größeren Menge an Dingen arbeiten, z.B. mit 10 Bällen, die im Canvas hin und her springen, wäre es lästig für alle Bälle jeweils 4 Variablen zu pflegen (x, y, velocityX, velocityY). Stattdessen können wir für jeden Ball ein Objekt definieren, dass alle 4 Werte in sich hält.

```js
let ball1 = {
    x: 10,
    y: 20,
    veloctiyX: 2,
    velocityY: 5
};
```

Um jetzt auf die Werte zuzugreifen, müssen wir folgendes tun:

```js
ball1.velocityY = ball1.velocityY + GRAVITY;
ball1.y = ball1.y + ball1.velolictyY;
```

Hier mag es erstmal so vorkommen, dass Objekte höchsten eine angenehmere Schreibweise sind. Spätestens mit Schleifen und Listen aber, werden Objekte äußerst praktisch sein.

## Funktionen

Funktionen sind nützlich, um Code mehrfach zu verwenden. Beim Beispiel mit dem Ball-Objekt können wir die gesamte update-Logik in eine Funktion schreiben, um sie unabhägig von einem ball-Objekt für alle beliebigen ball-Objekte benutzen zu können.

```js

function draw() {
    ball1 = updateBall(ball1);
    ball2 = updateBall(ball2);
    ball3 = updateBall(ball3);

    // ...
}

function updateBall(ball) {
    // ändere ball Werte
    return ball; //gibt den veränderten Ball zurück
}
```

Der gesamte Code ist hier zu finden: https://editor.p5js.org/f.geigr/sketches/eoXKML4aw

Es ist natürlich auch denkbar, dass wir eine komplizierte Form in einer Funktion auslagern, um diese Form dann immer wieder zu zeichnen.

```js
function draw() {
    smiley(10, 10, 100, 100);
    smiley(50, 200, 200, 200);

    // ...
}

function smiley(x, y, width, height) {
    circle(x, y, width height) // Kopf
    // ... Augen, Mund, etc.
}
```

## For-Schleife

Es ist natürlich müselig, wenn wir z.B. 30 Kreise zeichnen wollen, tatsächlich 30 Mal `circle(...)` zu schreiben und anzupassen. Einfacher wäre es, wir könnten eine Programmstelle 30 Mal laufen lassen. Oder 50 Mal, oder 100, oder ...

Dafür können wir Schleifen verwenden. Und an dieser Stelle nutzen wir for-Schleifen. Mit `for` können wir einen Programmblock beliebig häufig ausführen lassen. Bei `for` tragen wir dann durch alle Durchläufe eine Variable mit (meist `i` genannt). `i` zeigt uns an, in welchem Durchlauf wir uns befinden: im 1. oder im 23. oder ...

Um `i` zu verwenden braucht es drei Dinge:
1. Einen Startwert. (Im Code `1` siehe: `let i = 0`)
2. Einen Grenzwert, also bis wann wir die Schleife wiederholen wollen. (Im Code 30 Mal: `i <= 30`)
3. Eine Schrittgröße (Im Code 1: `i += 1`, wobei `i += 1` das gleiche ist wie `i = i + 1` nur kürzer)

```js
stroke(255);
fill(0);
for (let i = 1; i <= 30; i += 1) {
    circle(i * 10, i * 10, i * 3);
}
```

Dieser Code zeichnet uns 30 Kreise, angefangen in der linken oberen Ecke, diagonal versetzt in das Bild hinein.