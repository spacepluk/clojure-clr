echo "clean up old dlls"
rm -fr $1/Infrastructure/*.dll
rm -fr $1/Compiled/*.dll

echo "copy infrastructure"
cp bin/3.5/Release/{Clojure,Microsoft.{Dynamic,Scripting,Scripting.{Core,Metadata}}}.dll $1/Infrastructure

echo "copy AOT'd clojure files"
cp bin/3.5/Release/*.clj.dll $1/Compiled

echo "copy clojure source"
rm -fr $1/Source/clojure
cp -r bin/3.5/Release/clojure $1/Source
rm -fr $1/Source/clojure/*samples*
rm -fr $1/Source/clojure/*run_tests*
rm -fr $1/Source/clojure/*dm-test*
rm -fr $1/Source/clojure/*test_*
