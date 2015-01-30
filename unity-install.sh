echo "clean up old dlls"
rm -fr $1/Assets/Arcadia/Infrastructure/*.dll
rm -fr $1/Assets/Arcadia/Compiled/*.dll

echo "copy infrastructure"
cp bin/3.5/Release/{Clojure,Microsoft.{Dynamic,Scripting,Scripting.{Core,Metadata}}}.dll $1/Assets/Arcadia/Infrastructure

echo "copy AOT'd clojure files"
cp bin/3.5/Release/*.clj.dll $1/Assets/Arcadia/Compiled

echo "copy clojure source"
rm -fr $1/Assets/Arcadia/Source/clojure
cp -r bin/3.5/Release/clojure $1/Assets/Arcadia/Source
rm -fr $1/Assets/Arcadia/Source/clojure/*samples*
rm -fr $1/Assets/Arcadia/Source/clojure/*run_tests*
rm -fr $1/Assets/Arcadia/Source/clojure/*dm-test*
rm -fr $1/Assets/Arcadia/Source/clojure/*test_*
