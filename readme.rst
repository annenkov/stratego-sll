===========================================================
Simple Lazy Language: interpreter and minimal supercompiler
===========================================================

What is it
----------
This project has several goals.

* use strategic term rewriting as DSL for program transformation to build interpreter and supercompiler (explore pros and cons);
* reuse interpreter (or it's parts) to write configuration tree builder;
* build environment to experiment with supercompiler.

Running the project
-------------------
1. You need Eclipse. Tested for Eclipse 3.5.0 (Helios) and 4.2.0 (Juno)
2. Install Spoofax 1.1 (use "Help/Install New Software...", update site URL: http://download.spoofax.org/update/stable/). Details `here <http://metaborg.org/wiki/spoofax/download>`_
3. Clone this project and add to workspace.
4. Build project (from menu "Project/Build Project" or right-click on build.main.xml and choose "Run as/Ant Build")
5. Now you can run examples from "test" folder.

Eclipse can mark some files with errors even after successful build. But when you open such files this mark goes away. I think, it's a Spoofax issue.

Simple Lazy Language (SLL)
--------------------------
This project is inspired by minimal supercompiler written in Haskell [1]_. Language considered in the project is "Simple Lazy Language" - a first-order functional language that corresponds to M\ :sub:`0` \ language from [2]_.

Spoofax and Startego
--------------------
Spoofax Language Workbench [3]_ used as primary tool for writing interpreter and supercompiler. Spoofax is based on Stratego, which is a transformation language with programmable rewriting strategies and Syntax Definition Formalism, as language for grammar definition.
Spoofax works on Eclipse platform and allows one to create full-featured IDE plugin with syntax highlighting, perform semantic analysis and context completion.

.. image:: https://github.com/annenkov/stratego-sll/raw/master/media/sll-editor.png

You can run, trace, apply transformations to source program and immediately get the result.

.. image:: https://github.com/annenkov/stratego-sll/raw/master/media/sll-editor-run.png
.. image:: https://github.com/annenkov/stratego-sll/raw/master/media/sll-editor-deforest.png

As a result of transformation (deforestation, for example) you get another program that can be ran from the same "Transformation" menu.

Already done
------------
* interpreter
* tracer(as list of interpreter steps)
* configuration tree building/folding (no generalization yet)
* program generation
* deforestation

To be done
----------
* generalization
* positive information propagation
* explicit parameterization of configuration tree builder by folding strategy

Stratego pros and cons
----------------------
Pros
~~~~
It's convenient to build rewriting interpreters. See, for example [4]_.
Configuration tree manipulations also very convenient with generic rewriting strategies.

   For example, simplification used to deforest program::

      simplify = bottomup(try(remove-transient))

      remove-transient: Node(t, Transient(n)) -> n
        where <not(is-base(|t))> n

      is-base(|t) = collect-one(?Fold(t, _))

Great support from Spoofax and Eclipse environment.

Cons
~~~~

Dynamic typing. This is significant for writing big programs.
But here we have some interesting alternatives:

* `Kiama (Scala library) <http://code.google.com/p/kiama/>`_
* `KURE (Haskell library) <http://hackage.haskell.org/package/kure>`_

Poorly documented some features - dynamic rules, Name Binding Analysis (NaBL).

References
----------
.. [1] Ilya Klyuchnikov. The ideas and methods of supercompilation. `Practice of Functional Programming <http://fprog.ru/2011/issue7/>`_, 7, 2011. In Russian.
.. [2] Sørensen M. H.— Turchin’s Supercompiler Revisited: an Operational Theory of Positive Information Propagation. — Master’s thesis, Københavns Universitet, Datalogisk Institut, 1994.
.. [3] http://strategoxt.org/Spoofax
.. [4] Eelco Dolstra, Eelco Visser. `Building Interpreters with Rewriting Strategies <http://www.sciencedirect.com/science/article/pii/S1571066104804274>`_
