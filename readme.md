# Dank Linux Packages
This is a bunch of buildroot packages, which have been created for use with Dank Linux. YMMV trying to use these yourself.

## How to use?
Grab a copy of Buildroot 2024.2.11. I'm aware a new LTS just came out but I have yet to port it yet.<br>
Apply the "config.patch" file to `packages/Config.in` in tthe buildroot folder. Then copy all the package folders into your buildroot's `package` folder as well.
You should be good to go at this point<br><br>

If you wish to use the "devicegcc" package, you should also apply the "devicegcc-makefile.patch" patch file to your builldroot install's `Makefile` file. This will enable copying of system headers and stuff for on device compiling

## License
Any .patch files for packages provided are generally licensed under the original project's license. For example, the .patch files for GIMP 2.4.7 are licensed under the license that upstream GIMP uses, etc<br>
anything else does not have a license for now...mostly because I am lazy
