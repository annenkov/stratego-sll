===========================================================
Simple Lazy Language: interpreter and minimal supercompiler
===========================================================

What is it
----------
This project has several goals.

* use strategic term rewriting as DSL for program transformation to build interpreter and supercompiler (explore pros and cons);
* reuse interpreter (or it's parts) to write configuration tree builder;
* build environment to experiment with supercompiler.

Simple Lazy Language (SLL)
--------------------------
This project is inspired by minimal supercompiler written in Haskell [1]_. Language considered in the project is "Simple Lazy Language" - a first-order functional language that corresponds to M\ :sub:`0` \ language from [2]_.

Spoofax and Startego
--------------------
Spoofax Language Workbench [3]_ used as primary tool for writing interpreter and supercompiler. Spoofax is based on Stratego, which is a transformation language with programmable rewriting strategies and Syntax Definition Formalism, as language for grammar definition.
Spoofax works on Eclipse platform and allows one to create full-featured IDE plugin with syntax highlighting, perform semantic analysis and context completion.

.. image:: /ib_soft/stratego-sll/raw/default/media/sll-editor.png

You can run, trace, apply transformations to source program and immediately get the result.

.. image:: /ib_soft/stratego-sll/raw/default/media/sll-editor-run.png
.. image:: /ib_soft/stratego-sll/raw/default/media/sll-editor-deforest.png

As a result of transformation (deforestation, for example) you get another program that can be runned from the same "Transformation" menu.

References
----------
.. [1] Ilya Klyuchnikov. The ideas and methods of supercompilation. _Practice of Functional Programming: http://fprog.ru/2011/issue7/, 7, 2011. In Russian.
.. [2] Sørensen M. H.— Turchin’s Supercompiler Revisited: an Operational The-ory of Positive Information Propagation. — Master’s thesis, Københavns Universitet, Datalogisk Institut, 1994.
.. [3] http://strategoxt.org/Spoofax