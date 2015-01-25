echo "clean up old dlls"
rm -fr $1/Assets/Arcadia/*.dll

echo "copy infrastructure"
cp bin/3.5/Release/{Clojure,Microsoft.{Dynamic,Scripting,Scripting.{Core,Metadata}}}.dll $1/Assets/Arcadia/

echo "copy AOT'd clojure files"
cp bin/3.5/Release/*.clj.dll $1/Assets/Arcadia/

echo "copy clojure source"
rm -fr $1/Assets/Arcadia/clojure
cp -r bin/3.5/Release/clojure $1/Assets/Arcadia
rm -fr $1/Assets/Arcadia/clojure/*samples*
rm -fr $1/Assets/Arcadia/clojure/*run_tests*
rm -fr $1/Assets/Arcadia/clojure/*dm-test*
rm -fr $1/Assets/Arcadia/clojure/*test_*
