import 'package:book_task_flutter/model/book.dart';
import '../constants/constants.dart';

final _book1 = Book(image: img1,
    book: 'Yves Saint Laurent',
    name: 'Suzy Menkes',
    price: '\$46.99',
    des: 'A spectacular visual journey through 40 years of haute couture from one of the best-known and most trend-setting brands in fashion.');
final _book2 = Book(image: img2,
    book: 'The Book of Signs',
    name: 'Rudolf Koch  ',
    price: '\$99.99',
    des: 'A spectacular visual journey through 40 years of haute couture from one of the best-known and most trend-setting brands in fashion.');

 List <Book> books = [_book1, _book2, _book1, _book2, _book1,];
