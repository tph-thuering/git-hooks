This repository contains.. well.. git-hooks..

Usage:
------
* e.g. add travis lint as a [pre-push](http://git-scm.com/docs/githooks#_pre-push) hook. This prevents syntax errors to be pushed upstream when .travis.yml is changed
```
ln -s git-hooks/travis-lint.sh openmalaria/.git/hooks/pre-push
```

Further information about [git-hooks](http://git-scm.com/docs/githooks).
