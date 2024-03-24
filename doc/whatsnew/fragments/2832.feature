Checks for generators that use contextmanagers that don't handle cleanup properly.
Is meant to raise visibilty on the case that a generator is not fully exhausted and the contextmanager is not cleaned up properly.
A contextmanager must yield a non constant value and not handle cleanup for GeneratorExit.
The using generator must attempt to use the yielded context value `with x() as y` and not just `with x()`.

Closes #2832
