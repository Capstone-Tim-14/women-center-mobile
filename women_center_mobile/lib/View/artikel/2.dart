// ...

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text('Container Color Changer'),
    ),
    body: Padding(
      padding: const EdgeInsets.only(left: 20, top: 30),
      child: Column(
        children: [
          Row(
            children: [
              GestureDetector(
                onTap: () => _changeColor(1),
                child: Container(
                  width: 120,
                  height: 31,
                  decoration: BoxDecoration(
                    color: _containerColor1,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Center(
                    child: Text(
                      'Berita Wanita',
                      style: TextStyle(
                        color: _textColor1,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 15),
              GestureDetector(
                onTap: () => _changeColor(2),
                child: Container(
                  width: 120,
                  height: 31,
                  decoration: BoxDecoration(
                    color: _containerColor2,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Center(
                    child: Text(
                      'Karier',
                      style: TextStyle(
                        color: _textColor2,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 15),
            ],
          ),
          SizedBox(height: 20), // Adding space between the rows

          Row(
            children: [
              GestureDetector(
                onTap: () => _changeColor(3),
                child: Container(
                  width: 120,
                  height: 31,
                  decoration: BoxDecoration(
                    color: _containerColor3,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Center(
                    child: Text(
                      'Gaya Hidup',
                      style: TextStyle(
                        color: _textColor3,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 15),
              GestureDetector(
                onTap: () => _changeColor(4),
                child: Container(
                  width: 120,
                  height: 31,
                  decoration: BoxDecoration(
                    color: _containerColor4,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Center(
                    child: Text(
                      'Some Text',
                      style: TextStyle(
                        color: _textColor4,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 15),
              GestureDetector(
                onTap: () => _changeColor(5),
                child: Container(
                  width: 120,
                  height: 31,
                  decoration: BoxDecoration(
                    color: _containerColor5,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Center(
                    child: Text(
                      'More Text',
                      style: TextStyle(
                        color: _textColor5,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 15),
            ],
          ),
          // Add more rows with containers if needed
        ],
      ),
    ),
  );
}
// ...
