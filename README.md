# Flutter Rounded Progressbar
Custom Progressbar

![Screenshot](screenshot/a1.gif)

## Usage
simple rounded progress bar.
```
RoundedProgressBar(
    childLeft: Text("$percent%",
        style: TextStyle(color: Colors.white)),
    percent: percent,
    theme: RoundedProgressBarTheme.green)
```
![Screenshot](screenshot/1.png)

custom style progress bar.
```
RoundedProgressBar(
    style: RoundedProgressBarStyle(
        widthShadow: 30, colorBorder: Colors.blue[200]),
    percent: percent,
    reverse: true,
),
RoundedProgressBar(
    style: RoundedProgressBarStyle(
        borderWidth: 0, 
        widthShadow: 0),
    margin: EdgeInsets.symmetric(vertical: 16),
    borderRadius: BorderRadius.circular(24),
    percent: percent,
),       
```
![Screenshot](screenshot/3.png)


## Theme
```
RoundedProgressBarTheme.blue, 
RoundedProgressBarTheme.red
RoundedProgressBarTheme.green
RoundedProgressBarTheme.purple
RoundedProgressBarTheme.yellow 
RoundedProgressBarTheme.midnight
```

## Widget
childCenter , childLeft , childRight 
![Screenshot](screenshot/2.png)
