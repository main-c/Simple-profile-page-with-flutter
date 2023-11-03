class Transaction {
  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final String image;
  final String category;

  Transaction(
      {required this.id,
      required this.title,
      required this.amount,
      required this.date,
      required this.image,
      required this.category});

  static List<Transaction> currentTransactions = [
    Transaction(
        id: '1',
        title: 'Steam',
        amount: 19.99,
        date: DateTime.parse('2023-11-02 03:34:53'),
        image: 'https://i.imgur.com/Steam_logo.png',
        category: 'Entertainment'),
    Transaction(
        id: '2',
        title: 'YouTube Premium',
        amount: 11.99,
        date: DateTime.parse('2023-11-01 12:00:00'),
        image: 'https://i.imgur.com/YouTube_Premium_logo.png',
        category: 'Entertainment'),
    Transaction(
        id: '3',
        title: 'Disney+',
        amount: 7.99,
        date: DateTime.parse('2023-10-30 23:59:59'),
        image: 'https://i.imgur.com/Disney_logo.png',
        category: 'Entertainment'),
    Transaction(
        id: '4',
        title: 'HBO Max',
        amount: 14.99,
        date: DateTime.parse('2023-10-29 22:59:58'),
        image: 'https://i.imgur.com/HBO_Max_logo.png',
        category: 'Entertainment'),
    Transaction(
        id: '5',
        title: 'Apple Music',
        amount: 9.99,
        date: DateTime.parse('2023-10-28 21:59:57'),
        image: 'https://i.imgur.com/Apple_Music_logo.png',
        category: 'Entertainment'),
    Transaction(
        id: '6',
        title: 'Amazon',
        amount: 49.99,
        date: DateTime.parse('2023-11-02 03:34:53'),
        image: 'https://i.imgur.com/Amazon_logo.png',
        category: 'Shopping'),
    Transaction(
        id: '7',
        title: 'eBay',
        amount: 29.99,
        date: DateTime.parse('2023-11-01 12:00:00'),
        image: 'https://i.imgur.com/eBay_logo.png',
        category: 'Shopping'),
    Transaction(
        id: '8',
        title: 'Walmart',
        amount: 39.99,
        date: DateTime.parse('2023-10-30 23:59:59'),
        image: 'https://i.imgur.com/Walmart_logo.png',
        category: 'Shopping'),
    Transaction(
        id: '9',
        title: 'Target',
        amount: 59.99,
        date: DateTime.parse('2023-10-29 22:59:58'),
        image: 'https://i.imgur.com/Target_logo.png',
        category: 'Shopping'),
    Transaction(
        id: '10',
        title: 'Best Buy',
        amount: 79.99,
        date: DateTime.parse('2023-10-28 21:59:57'),
        image: 'https://i.imgur.com/Best_Buy_logo.png',
        category: 'Shopping'),
    Transaction(
        id: '11',
        title: 'Uber',
        amount: 12.99,
        date: DateTime.parse('2023-11-02 03:34:53'),
        image: 'https://i.imgur.com/Uber',
        category: 'Shopping'),
    Transaction(
        id: '5',
        title: 'Apple Music',
        amount: 9.99,
        date: DateTime.parse('2023-10-28 21:59:57'),
        image: 'https://i.imgur.com/Apple_Music_logo.png',
        category: 'Entertainment'),
    Transaction(
        id: '6',
        title: 'Amazon',
        amount: 49.99,
        date: DateTime.parse('2023-11-02 03:34:53'),
        image: 'https://i.imgur.com/Amazon_logo.png',
        category: 'Shopping'),
    Transaction(
        id: '7',
        title: 'eBay',
        amount: 29.99,
        date: DateTime.parse('2023-11-01 12:00:00'),
        image: 'https://i.imgur.com/eBay_logo.png',
        category: 'Shopping'),
    Transaction(
        id: '8',
        title: 'Walmart',
        amount: 39.99,
        date: DateTime.parse('2023-10-30 23:59:59'),
        image: 'https://i.imgur.com/Walmart_logo.png',
        category: 'Shopping'),
    Transaction(
        id: '9',
        title: 'Target',
        amount: 59.99,
        date: DateTime.parse('2023-10-29 22:59:58'),
        image: 'https://i.imgur.com/Target_logo.png',
        category: 'Shopping'),
    Transaction(
        id: '10',
        title: 'Best Buy',
        amount: 79.99,
        date: DateTime.parse('2023-10-28 21:59:57'),
        image: 'https://i.imgur.com/Best_Buy_logo.png',
        category: 'Shopping'),
    Transaction(
        id: '11',
        title: 'Uber',
        amount: 12.99,
        date: DateTime.parse('2023-11-02 03:34:53'),
        image: 'https://i.imgur.com/Uber',
        category: 'Shopping'),
    Transaction(
        id: '5',
        title: 'Apple Music',
        amount: 9.99,
        date: DateTime.parse('2023-10-28 21:59:57'),
        image: 'https://i.imgur.com/Apple_Music_logo.png',
        category: 'Entertainment'),
    Transaction(
        id: '6',
        title: 'Amazon',
        amount: 49.99,
        date: DateTime.parse('2023-11-02 03:34:53'),
        image: 'https://i.imgur.com/Amazon_logo.png',
        category: 'Shopping'),
    Transaction(
        id: '7',
        title: 'eBay',
        amount: 29.99,
        date: DateTime.parse('2023-11-01 12:00:00'),
        image: 'https://i.imgur.com/eBay_logo.png',
        category: 'Shopping'),
    Transaction(
        id: '8',
        title: 'Walmart',
        amount: 39.99,
        date: DateTime.parse('2023-10-30 23:59:59'),
        image: 'https://i.imgur.com/Walmart_logo.png',
        category: 'Shopping'),
    Transaction(
        id: '9',
        title: 'Target',
        amount: 59.99,
        date: DateTime.parse('2023-10-29 22:59:58'),
        image: 'https://i.imgur.com/Target_logo.png',
        category: 'Shopping'),
    Transaction(
        id: '10',
        title: 'Best Buy',
        amount: 79.99,
        date: DateTime.parse('2023-10-28 21:59:57'),
        image: 'https://i.imgur.com/Best_Buy_logo.png',
        category: 'Shopping'),
    Transaction(
        id: '11',
        title: 'Uber',
        amount: 12.99,
        date: DateTime.parse('2023-11-02 03:34:53'),
        image: 'https://i.imgur.com/Uber',
        category: 'Shopping'),
    Transaction(
        id: '5',
        title: 'Apple Music',
        amount: 9.99,
        date: DateTime.parse('2023-10-28 21:59:57'),
        image: 'https://i.imgur.com/Apple_Music_logo.png',
        category: 'Entertainment'),
    Transaction(
        id: '6',
        title: 'Amazon',
        amount: 49.99,
        date: DateTime.parse('2023-11-02 03:34:53'),
        image: 'https://i.imgur.com/Amazon_logo.png',
        category: 'Shopping'),
    Transaction(
        id: '7',
        title: 'eBay',
        amount: 29.99,
        date: DateTime.parse('2023-11-01 12:00:00'),
        image: 'https://i.imgur.com/eBay_logo.png',
        category: 'Shopping'),
    Transaction(
        id: '8',
        title: 'Walmart',
        amount: 39.99,
        date: DateTime.parse('2023-10-30 23:59:59'),
        image: 'https://i.imgur.com/Walmart_logo.png',
        category: 'Shopping'),
    Transaction(
        id: '9',
        title: 'Target',
        amount: 59.99,
        date: DateTime.parse('2023-10-29 22:59:58'),
        image: 'https://i.imgur.com/Target_logo.png',
        category: 'Shopping'),
    Transaction(
        id: '10',
        title: 'Best Buy',
        amount: 79.99,
        date: DateTime.parse('2023-10-28 21:59:57'),
        image: 'https://i.imgur.com/Best_Buy_logo.png',
        category: 'Shopping'),
    Transaction(
        id: '11',
        title: 'Uber',
        amount: 12.99,
        date: DateTime.parse('2023-11-02 03:34:53'),
        image: 'https://i.imgur.com/Uber',
        category: 'Shopping'),
  ];
}
