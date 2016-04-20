# package-managers
Collection of scripts / config files for building packages of the ContentMine software

Currently just includes choco packages but will probably also include brew and so on in the future.

The key things to make an updated choco package are:

1. Edit the version numbers in `norma.nuspec` and `ami.nuspec`
1. Update the packageSourceUrl to point to the new zip file (not sure if this is actually important. The element is there in the example config but I can't see it in the nuspec Spec)
1. Update the chocolateyinstall.ps1 to include the new source URL
1. run `choco pack`
1. Upload the new package-version.nupkg to our stream (currently at myget.com)
