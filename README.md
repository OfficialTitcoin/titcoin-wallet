Titcoin integration/staging tree
================================

Copyright (c) 2009-2013 Bitcoin Developers </br>  
Copyright (c) 2013-2014 Titcoin Developers
Copyright (c) 2018-2018 TittieCoin Developers


Intro
-----

Titcoin recently aquiered by the TittieCoin developers is an
open source peer-to-peer electronic cash system that is completely 
decentralized, without the need for a central server or trusted parties. 
Users hold the crypto keys to their own money and transact directly with each 
other, with the help of a P2P network to check for double-spending.

Titcoin-Qt is the original Titcoin client and it builds the 
backbone of the network. However, it downloads and stores the 
entire history of Titcoin transactions; depending on the speed
of your computer and network connection, the synchronization 
process can take anywhere from a few hours to a day or more.

December 2013 - Alpha Test </br>  
January 2014 - Beta Test </br>  
February 2014 - Final Release </br>  

License
-------

Titcoin is released under the terms of the MIT license. See `COPYING` for more
information or see http://opensource.org/licenses/MIT.

Titcoin is based on the Bitcoin source code.

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
