## [0.11.6](https://gitlab.com/xebis/shellib/compare/v0.11.5...v0.11.6) (2022-11-17)


### Bug Fixes

* wording ([159d79c](https://gitlab.com/xebis/shellib/commit/159d79c750c8bdbb4067873cda9541217efcb643))

## [0.11.5](https://gitlab.com/xebis/shellib/compare/v0.11.4...v0.11.5) (2022-10-09)


### Bug Fixes

* version bump is written to incorrect file ([0c99860](https://gitlab.com/xebis/shellib/commit/0c9986059d0e2b6460c84e3c61ec01f98f5c75ee))

## [0.11.4](https://gitlab.com/xebis/shellib/compare/v0.11.3...v0.11.4) (2022-08-15)


### Bug Fixes

* skip pre-commit hook variable doesn't work without gitlab token ([830db83](https://gitlab.com/xebis/shellib/commit/830db83fdbf591033fa0108752f51a635ee7f3ce))

## [0.11.3](https://gitlab.com/xebis/shellib/compare/v0.11.2...v0.11.3) (2022-01-08)


### Bug Fixes

* pkg shouldn't fail on package specification with colon ([7bbd880](https://gitlab.com/xebis/shellib/commit/7bbd880d796264f2c93321013db4a0867f5c8cac))

## [0.11.2](https://gitlab.com/xebis/shellib/compare/v0.11.1...v0.11.2) (2022-01-08)


### Bug Fixes

* apt_add shouldn't fail on added repository ([7889d37](https://gitlab.com/xebis/shellib/commit/7889d37d8c856da2094138a8b54d0d839a7b3cb0))

## [0.11.1](https://gitlab.com/xebis/shellib/compare/v0.11.0...v0.11.1) (2022-01-08)


### Bug Fixes

* apt_add fails on apt-key not found even if it is present ([a1fcfa2](https://gitlab.com/xebis/shellib/commit/a1fcfa22766ae16b0a7b1b5b39c746f3a96444c3))

# [0.11.0](https://gitlab.com/xebis/shellib/compare/v0.10.0...v0.11.0) (2022-01-07)


### Features

* add apt_add to add deb repository ([f4b22f0](https://gitlab.com/xebis/shellib/commit/f4b22f09f5b6412180f2556a5a5101c3ef056ffc))

# [0.10.0](https://gitlab.com/xebis/shellib/compare/v0.9.0...v0.10.0) (2022-01-07)


### Features

* curl2bash_install ([f1a9faa](https://gitlab.com/xebis/shellib/commit/f1a9faa2be3a0e96dec7cda66a47f4cd0e1c6086))

# [0.9.0](https://gitlab.com/xebis/shellib/compare/v0.8.1...v0.9.0) (2022-01-03)


### Features

* add pkgs snap support ([fde3ad5](https://gitlab.com/xebis/shellib/commit/fde3ad50793580e537eaa76bdcda0c8545ca6561))

## [0.8.1](https://gitlab.com/xebis/shellib/compare/v0.8.0...v0.8.1) (2022-01-03)


### Bug Fixes

* npm_install always installs package when npm returns non-zero exit ([97f87d0](https://gitlab.com/xebis/shellib/commit/97f87d01447c7873e7a951238e7c23c7a4230ff9))

# [0.8.0](https://gitlab.com/xebis/shellib/compare/v0.7.1...v0.8.0) (2022-01-03)


### Features

* add pkgs npm support ([db2ac2c](https://gitlab.com/xebis/shellib/commit/db2ac2c5e6522a22caf721a18a493dbfce0f3aa0))

## [0.7.1](https://gitlab.com/xebis/shellib/compare/v0.7.0...v0.7.1) (2022-01-03)


### Bug Fixes

* apt_install doesn't recognize installed packages correctly ([8a499ee](https://gitlab.com/xebis/shellib/commit/8a499ee636c42fcb121c4868d1b4e9bcd86af6f9))

# [0.7.0](https://gitlab.com/xebis/shellib/compare/v0.6.0...v0.7.0) (2022-01-02)


### Bug Fixes

* change messages marking packages from apt and pip to deb and python ([3782da3](https://gitlab.com/xebis/shellib/commit/3782da3601f08a8c81df9c7cbe159d614d5ffee9))


### Features

* add apt as supported package manager for pkgs ([b70566f](https://gitlab.com/xebis/shellib/commit/b70566fb8997e22d8be25cd34da645f1dd20abc6))
* add pip as supported package manager for pkgs ([6556730](https://gitlab.com/xebis/shellib/commit/6556730d454155938f0375450b4b57fcde151ec9))
* add pkgs and pkg install function ([b462a99](https://gitlab.com/xebis/shellib/commit/b462a993913eebf29c5c814ee637f93c55824685))

# [0.6.0](https://gitlab.com/xebis/shellib/compare/v0.5.0...v0.6.0) (2022-01-02)


### Features

* add is_root function ([1851105](https://gitlab.com/xebis/shellib/commit/1851105a4d4ca5b33996b24993d109485ab65a47))

# [0.5.0](https://gitlab.com/xebis/shellib/compare/v0.4.0...v0.5.0) (2022-01-01)


### Features

* add event functions err, sec, warn, notice, and info ([568e1da](https://gitlab.com/xebis/shellib/commit/568e1dacdf1f3ad891d3d3a71a31f10b4a2117e8))
* add events module ([57e386a](https://gitlab.com/xebis/shellib/commit/57e386a6b5c2b2e0087746da46ab82c1a443e101))
* add events possibility to override command by an argument ([c913a3e](https://gitlab.com/xebis/shellib/commit/c913a3e448d879eea61c539206fa9f02efd65b08))

# [0.4.0](https://gitlab.com/xebis/shellib/compare/v0.3.0...v0.4.0) (2021-12-31)


### Bug Fixes

* shellib couldn't be sourced outside of the repository root ([9e70ed4](https://gitlab.com/xebis/shellib/commit/9e70ed4aae5e483fcd838b1b786fe5bfdbf00b11))


### Features

* modular shellib ([5ed2d2f](https://gitlab.com/xebis/shellib/commit/5ed2d2f1a7840a53c4cf4d1ef14711ac316101c5))
* separate output functions from global module ([b89ff2a](https://gitlab.com/xebis/shellib/commit/b89ff2aae275d196ed0d38e83046b48fe60466a7))

# [0.3.0](https://gitlab.com/xebis/shellib/compare/v0.2.0...v0.3.0) (2021-12-19)


### Features

* add functions out, err, constants status, and symbol ([fb2fd04](https://gitlab.com/xebis/shellib/commit/fb2fd04890f2de8c6068d48443f15bbad55f9edf))
* shellib should be sourced as bash only ([4c89b5e](https://gitlab.com/xebis/shellib/commit/4c89b5e8a6feab5ceaef7323466211173c3ab443))
* throw notice when sourced multiple times ([c33a525](https://gitlab.com/xebis/shellib/commit/c33a5259e1bb9a129d1f0aadb433d2d77ed4c2dd))
