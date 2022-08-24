sample1() {
  Future(() => print("f1"));
  Future(() => print('f2'));
//f3执行后会立刻同步执行then 3
  Future(() => print('f3')).then((_) => print('then 3'));
//then 4会加入微任务队列，尽快执行
  Future(() => null).then((_) => print('then 4'));
  print('then 5');
}

String _data = '0';

void getData() async {
  print('1-开始data=$_data');
  await Future(() {
    for (int i = 0; i < 100000000; i++) {
      _data = '网络数据';
    }
    print('2-结束data=$_data');
  });

   print('3-结束data=$_data');
}

void main() {
   getData();
   print('4-做其他事');
}
