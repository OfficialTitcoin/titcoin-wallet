Titcoin integration/staging tree
================================

Copyright (c) 2009-2013 Bitcoin Developers
Copyright (c) 2013-2014 Titcoin Developers

What is Titcoin?
----------------

Titcoin is a free open source peer-to-peer electronic cash 
system that is completely decentralized, without the need for
a central server or trusted parties.  Users hold the crypto 
keys to their own money and transact directly with each 
other, with the help of a P2P network to check for double-spending.

License
-------

Titcoin is released under the terms of the MIT license. See `COPYING` for more
information or see http://opensource.org/licenses/MIT.

Titcoin is based on Bitcoin.
Its development tracks Bitcoin's, the following information applies to Bitcoin's developemnt.

Testing
-------

Testing and code review is the bottleneck for development; we get more pull
requests than we can review and test. Please be patient and help out, and
remember this is a security-critical project where any mistake might cost people
lots of money.

### Automated Testing

Developers are strongly encouraged to write unit tests for new code, and to
submit new unit tests for old code.

Unit tests for the core code are in `src/test/`. To compile and run them:

    cd src; make -f makefile.unix test

Unit tests for the GUI code are in `src/qt/test/`. To compile and run them:

    qmake BITCOIN_QT_TEST=1 -o Makefile.test bitcoin-qt.pro
    make -f Makefile.test
    ./bitcoin-qt_test

Every pull request is built for both Windows and Linux on a dedicated server,
and unit and sanity tests are automatically run. The binaries produced may be
used for manual QA testing — a link to them will appear in a comment on the
pull request posted by [BitcoinPullTester](https://github.com/BitcoinPullTester). See https://github.com/TheBlueMatt/test-scripts
for the build/test scripts.

### Manual Quality Assurance (QA) Testing

Large changes should have a test plan, and should be tested by somebody other
than the developer who wrote the code.

See https://github.com/bitcoin/QA/ for how to create a test plan.
