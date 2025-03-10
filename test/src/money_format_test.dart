/*
 * The MIT License (MIT)
 *
 * Copyright (c) 2016 - 2019 LitGroup LLC
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the 'Software'), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */

import 'package:money2/money2.dart';
import 'package:test/test.dart';

void main() {
  Currencies().register(Currency.create('LONG', 2));

  final usd10d25 = Money.fromInt(1025, code: 'USD');
  final usd10 = Money.fromInt(1000, code: 'USD');
  final long1000d90 = Money.fromInt(100090, code: 'LONG');
  final usd20cents = Money.fromInt(20, code: 'USD');
  final btc1satoshi = Money.fromInt(1, code: 'BTC');

  group('format', () {
    test('Simple Number', () {
      expect(usd10d25.toString(), equals(r'$10.25'));
      expect(usd10.format('#.#0'), equals('10.00'));
      expect(usd10d25.format('#'), equals('10'));
      expect(usd10d25.format('#.#'), equals('10.2'));
      expect(usd10d25.format('0.00'), equals('10.25'));
      expect(usd10d25.format('#,##0.##'), equals('10.25'));
      expect(long1000d90.format('#,##0.00'), equals('1,000.90'));
      expect(usd10d25.format('###,000.##'), equals('010.25'));
      expect(usd10d25.format('##.##'), equals('10.25'));
      expect(usd10d25.format('##'), equals('10'));
      expect(usd20cents.format('#,##0.00'), equals('0.20'));
      expect(btc1satoshi.format('0.00000000'), equals('0.00000001'));
    });

    test('Negative Number', () {
      expect((-usd10d25).toString(), equals(r'$-10.25'));
      expect((-usd10).format('#.#0'), equals('-10.00'));
      expect((-usd10d25).format('#'), equals('-10'));
      expect((-usd10d25).format('#.#'), equals('-10.2'));
      expect((-usd10d25).format('0.00'), equals('-10.25'));
      expect((-usd10d25).format('#,##0.##'), equals('-10.25'));
      expect((-long1000d90).format('#,##0.00'), equals('-1,000.90'));
      expect((-usd10d25).format('###,000.##'), equals('-010.25'));
      expect((-usd10d25).format('##.##'), equals('-10.25'));
      expect((-usd10d25).format('##'), equals('-10'));
      expect((-usd20cents).format('#,##0.00'), equals('-0.20'));
      expect((-usd20cents).format('S#,##0.00'), equals(r'$-0.20'));
    });

    test('Inverted Decimal Separator', () {
      final eurolarge = Money.fromInt(10000000, code: 'EUR');
      final euroSmall = Money.fromInt(1099, code: 'EUR');
      expect(eurolarge.toString(), equals('100000,00€'));
      expect(euroSmall.format('S#'), equals('€10'));
      expect(euroSmall.format('#,#'), equals('10,9'));
      expect(euroSmall.format('CCC#,#0'), equals('EUR10,99'));
      expect(euroSmall.format('###.000,##'), equals('010,99'));
      expect(eurolarge.format('###.000,00'), equals('100.000,00'));
      expect(euroSmall.format('##,##'), equals('10,99'));
      expect(euroSmall.format('##'), equals('10'));
    });
    test('Lead zero USD', () {
      expect(
          Money.fromInt(310, code: 'USD').format('000.00'), equals('003.10'));
      expect(Money.fromInt(310, code: 'USD').format('000.##'), equals('003.1'));
      expect(
          Money.fromInt(301, code: 'USD').format('000.00'), equals('003.01'));
      expect(
          Money.fromInt(301, code: 'USD').format('000.##'), equals('003.01'));
      expect(usd10d25.format('000.##'), equals('010.25'));
      expect(usd10d25.format('000'), equals('010'));
    });

    test('trailing zero USD', () {
      expect(usd10d25.format('##.000'), equals('10.250'));
      expect(usd10d25.format('000'), equals('010'));
      expect(
          Money.fromInt(301, code: 'USD').format('000.000'), equals('003.010'));
    });

    test('less than 10 cents USD in minor units', () {
      expect(Money.fromInt(01, code: 'USD').toString(), r'$0.01');
      expect(Money.fromInt(301, code: 'USD').toString(), r'$3.01');
      expect(Money.fromNum(3.01, code: 'USD').toString(), r'$3.01');
    });

    test('Symbol tests', () {
      expect(usd10d25.format('S##.##'), equals(r'$10.25'));
      expect(usd10.format('S##.00'), equals(r'$10.00'));
      expect(usd10.format('##.00 S'), equals(r'10.00 $'));
      expect(usd10d25.format('S##'), equals(r'$10'));
      expect(usd10d25.format('S##'), equals(r'$10'));
      expect(usd10d25.format('S ##'), equals(r'$ 10'));
      expect(usd10d25.format('## S'), equals(r'10 $'));
    });

    test('Currency tests', () {
      expect(usd10d25.format('C##.##'), equals('U10.25'));
      expect(usd10d25.format('CC##.##'), equals('US10.25'));
      expect(usd10d25.format('CCC##.##'), equals('USD10.25'));
      expect(usd10d25.format('##.##CCC'), equals('10.25USD'));
      expect(usd10d25.format('##.## CCC'), equals('10.25 USD'));
      expect(long1000d90.format('CCC S#,###.00'), equals(r'LONG $1,000.90'));
    });

    test('USD combos', () {
      expect(usd10d25.format('SCCC 000,000.##'), equals(r'$USD 000,010.25'));
      expect(usd10d25.format('CCC S##.##'), equals(r'USD $10.25'));
      expect(usd10d25.format('S ##.## CCC'), equals(r'$ 10.25 USD'));
    });

    test('Exchange rates', () {
      final cur1 = Currency.create('CUR1', 2);

      final Money sendAmount = Money.fromIntWithCurrency(123, cur1);
      Currencies().register(cur1);

      expect('$sendAmount', equals(r'$1.23'));

      final Currency receiveCurrency =
          Currency.create('EXC', 8, pattern: 'S0.00000000');

      Currencies().register(receiveCurrency);

      final exchangeRate = ExchangeRate.fromMinorUnits(
        212345678,
        scale: 8,
        fromCode: 'CUR1',
        toCode: receiveCurrency.code,
      );
      expect('$exchangeRate', equals(r'$2.12345678'));

      final Money receiveAmount = sendAmount.exchangeTo(exchangeRate);
      expect('$receiveAmount', equals(r'$2.61185184'));

      final exchangeTwoDigits = ExchangeRate.fromMinorUnits(100,
          scale: 2, fromCode: 'EXC', toCode: 'CUR1');

      final Money receiveAmountTwoDigits =
          receiveAmount.exchangeTo(exchangeTwoDigits);
      expect('$receiveAmountTwoDigits', equals(r'$2.61'));
    });

    test('Invalid Patterns', () {
      expect(() => usd10d25.format('0##'),
          throwsA(const TypeMatcher<IllegalPatternException>()));
      expect(() => usd10d25.format('000,'),
          throwsA(const TypeMatcher<IllegalPatternException>()));
      expect(() => usd10d25.format('000#'),
          throwsA(const TypeMatcher<IllegalPatternException>()));
      expect(() => usd10d25.format('0#'),
          throwsA(const TypeMatcher<IllegalPatternException>()));
      expect(() => usd10d25.format('0.0#'),
          throwsA(const TypeMatcher<IllegalPatternException>()));
    });

    test('Pattern sizes', () {
      expect(
          Money.fromIntWithCurrency(
                  1, Currency.create('AU', 2, pattern: '0.00'))
              .toString(),
          equals('0.01'));
      expect(
          Money.fromIntWithCurrency(
                  10, Currency.create('AU', 2, pattern: '0.00'))
              .toString(),
          equals('0.10'));
      expect(
          Money.fromIntWithCurrency(
                  100, Currency.create('AU', 2, pattern: '0.00'))
              .toString(),
          equals('1.00'));
      expect(
          Money.fromIntWithCurrency(
                  1000, Currency.create('AU', 2, pattern: '0.00'))
              .toString(),
          equals('10.00'));
      expect(
          Money.fromIntWithCurrency(
                  10000, Currency.create('AU', 2, pattern: '0.00'))
              .toString(),
          equals('100.00'));
      expect(
          Money.fromIntWithCurrency(
                  100000, Currency.create('AU', 2, pattern: '0.00'))
              .toString(),
          equals('1000.00'));
      expect(
          Money.fromIntWithCurrency(
                  100000, Currency.create('AU', 2, pattern: '#,000.00'))
              .toString(),
          equals('1,000.00'));

      expect(
          Money.fromIntWithCurrency(
                  1, Currency.create('AU', 3, pattern: '0.00'))
              .toString(),
          equals('0.00'));
      expect(
          Money.fromIntWithCurrency(
                  10, Currency.create('AU', 3, pattern: '0.00'))
              .toString(),
          equals('0.01'));
      expect(
          Money.fromIntWithCurrency(
                  100, Currency.create('AU', 3, pattern: '0.00'))
              .toString(),
          equals('0.10'));
      expect(
          Money.fromIntWithCurrency(
                  1000, Currency.create('AU', 3, pattern: '0.00'))
              .toString(),
          equals('1.00'));
      expect(
          Money.fromIntWithCurrency(
                  10000, Currency.create('AU', 3, pattern: '0.00'))
              .toString(),
          equals('10.00'));
      expect(
          Money.fromIntWithCurrency(
                  100000, Currency.create('AU', 3, pattern: '0.00'))
              .toString(),
          equals('100.00'));
      expect(
          Money.fromIntWithCurrency(
                  100000, Currency.create('AU', 3, pattern: '#,000.00'))
              .toString(),
          equals('100.00'));
      expect(
          Money.fromIntWithCurrency(
                  1000000, Currency.create('AU', 3, pattern: '#,000.00'))
              .toString(),
          equals('1,000.00'));

      expect(
          Money.fromIntWithCurrency(
                  1000000, Currency.create('AU', 3, pattern: '#,000.00'))
              .toString(),
          equals('1,000.00'));
    });

    test('large patterns', () {
      expect(
          Money.fromIntWithCurrency(
                  1, Currency.create('AU', 2, pattern: '0.000000'))
              .toString(),
          equals('0.010000'));
      expect(
          Money.fromIntWithCurrency(
                  10, Currency.create('AU', 2, pattern: '0.000000'))
              .toString(),
          equals('0.100000'));
      expect(
          Money.fromIntWithCurrency(
                  100, Currency.create('AU', 2, pattern: '0.000000'))
              .toString(),
          equals('1.000000'));
      expect(
          Money.fromIntWithCurrency(
                  1000, Currency.create('AU', 2, pattern: '0.000000'))
              .toString(),
          equals('10.000000'));
      expect(
          Money.fromIntWithCurrency(
                  10000, Currency.create('AU', 2, pattern: '0.000000'))
              .toString(),
          equals('100.000000'));
      expect(
          Money.fromIntWithCurrency(
                  100000, Currency.create('AU', 2, pattern: '0.000000'))
              .toString(),
          equals('1000.000000'));
      expect(
          Money.fromIntWithCurrency(
                  100000, Currency.create('AU', 2, pattern: '#,000.000000'))
              .toString(),
          equals('1,000.000000'));

      expect(
          Money.fromIntWithCurrency(
                  35231, Currency.create('AU', 6, pattern: '#,##0.000000'))
              .toString(),
          equals('0.035231'));

      expect(
          Money.fromIntWithCurrency(
                  35231, Currency.create('AU', 6, pattern: 'S0.000000'))
              .toString(),
          equals(r'$0.035231'));
    });
  });
}
