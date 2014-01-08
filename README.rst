#####
Corba
#####

Creating examples with OmniOrb in Python and C++ (maybe also using JacOrb for Java)

==========
Assignment
==========
Verwenden Sie das Paket ORBacus oder omniORB bzw. JacORB um Java und C++ ORB
-Implementationen zum Laufen zu bringen.

Passen Sie eines der Demoprogramme so an, dass Sie einen Namingservice 
verwenden, welches ein Objekt anbietet, das von jeweils einer anderen Sprache 
(Java/C++) verteilt angesprochen wird. Beachten Sie dabei, dass eine IDL
-Implementierung vorhanden ist um die unterschiedlichen Sprachen abgleichen 
zu können.

Vorschlag: Verwenden Sie für die Implementierungsumgebung eine Linux
-Distribution, da eine optionale Kompilierung einfacher zu konfigurieren ist.



============
Working time
============
+-----------------------------+-----------+--------------+---------+---------+-----------+
| Task                        | Who?      | Date         | From    | To      | Duration  |
|                             +-----------+--------------+---------+---------+-----------+
|                             | [name]    | [YYYY-MM-DD] | [HH:MM] | [HH:MM] |    [H:MM] |
+=============================+===========+==============+=========+=========+===========+
| Recherche                   | jklepp    |  2013-12-13  |  15:10  |  16:00  |     0:50  |
+-----------------------------+-----------+--------------+---------+---------+-----------+
| Makefile                    | jklepp    |  2013-11-29  |  14:10  |  16:00  |     1:50  |
+-----------------------------+-----------+--------------+---------+---------+-----------+
| Makefile                    | jklepp    |  2014-01-05  |  19:20  |  22:10  |     2:50  |
+-----------------------------+-----------+--------------+---------+---------+-----------+
| Getting compiled stuff      | jklepp    |  2014-01-05  |  23:50  |  00:30  |     0:30  |
| running                     |           |              |         |         |           |
+-----------------------------+-----------+--------------+---------+---------+-----------+
| getting python side running | jklepp    |  2014-01-06  |  10:20  |  10:40  |     0:20  |
+-----------------------------+-----------+--------------+---------+---------+-----------+
| merging python & c++ idl    | jklepp    |  2014-01-06  |  10:40  |  10:30  |     0:50  |
| + fixing resulting errors   |           |              |         |         |           |
+-----------------------------+-----------+--------------+---------+---------+-----------+
| testing                     | jklepp    |  2014-01-06  |  11:30  |  11:50  |     0:20  |
+-----------------------------+-----------+--------------+---------+---------+-----------+
| utilizing Nameservice       | jklepp    |  2014-01-08  |  15:15  |  15:40  |     0:20  |
+-----------------------------+-----------+--------------+---------+---------+-----------+
| research/configuration      | jklepp    |  2014-01-08  |  15:40  |  16:50  |     1:10  |
| omniNames                   |           |              |         |         |           |
+-----------------------------+-----------+--------------+---------+---------+-----------+
| c++/python interoperability | jklepp    |  2014-01-08  |  16:50  |  17:10  |     0:20  |
+-----------------------------+-----------+--------------+---------+---------+-----------+
| documentation               | jklepp    |  2014-01-08  |  18:00  |  17:10  |     0:20  |
+-----------------------------+-----------+--------------+---------+---------+-----------+

=========
Resources
=========

.. _1:

[1] omniORB source tarball with examples
    
    http://sourceforge.net/projects/omniorb/files/omniORB/omniORB-4.1.7/omniORB-4.1.7.tar.bz2
    (last viewed 08.01.2014)

.. _2:

[2] omniORBpy source tarball with examples
    
    http://sourceforge.net/projects/omniorb/files/omniORBpy/omniORBpy-3.7/omniORBpy-3.7.tar.bz2
    (last viewed 08.01.2014)

.. _3:

[3] omniORB documetation
    
    http://omniorb.sourceforge.net/omni41/omniORB.pdf
    (last viewed 08.01.2014)

.. _4:

[4] omniORBpy documetation
    
    http://omniorb.sourceforge.net/omnipy3/omniORBpy.pdf
    (last viewed 08.01.2014)

[5] CORBA Tutorial
    
    http://www.yolinux.com/TUTORIALS/CORBA.html
    (last viewed 08.01.2014)

.. header::

    +-------------+----------------+------------+
    | Titel       | Autor          | Date       |
    +=============+================+============+
    | ###Title### | Stefan Pitirut | 08.01.2014 |
    |             | & Jakob Klepp  |            |
    +-------------+----------------+------------+

.. footer::

    ###Page### / ###Total###
