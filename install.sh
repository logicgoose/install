
# wget -o- thisfile | bash

echo ""
echo "Installing LogicgooseUI."
echo ""
echo "Required tools for install:"
echo "  yum"
echo "  curl"
echo "  unzip"
echo "  odbc"
echo "  nodejs12 (or above)"
echo ""

VERSION=0.0.2

echo "Downloading LogicgooseUI-server@$VERSION"
curl -L https://github.com/logicgoose/LogicgooseUI-server/archive/refs/tags/$VERSION.zip --output server.zip
unzip server.zip
mv LogicgooseUI-server-$VERSION/* ./

rm -rf LogicgooseUI-server-$VERSION
rm -rf server.zip

echo "Downloading LogicgooseUI@$VERSION"
cd public
curl -L https://github.com/logicgoose/LogicgooseUI/releases/download/0.0.1/build.zip --output public.zip
unzip public.zip
rm -rf public.zip

echo ""
echo "Running npm install"
npm i

echo ""
echo " ____ ____ ____ ____ ____ ____ ____ ____ ____ ____ ____ ____ "
echo "||L |||o |||g |||i |||c |||g |||o |||o |||s |||e |||U |||I ||"
echo "||__|||__|||__|||__|||__|||__|||__|||__|||__|||__|||__|||__||"
echo "|/__\|/__\|/__\|/__\|/__\|/__\|/__\|/__\|/__\|/__\|/__\|/__\|"
echo ""
echo "If you see this, that means the install was a success! Thanks for trying LogicgooseUI."
echo ""
echo "Next, you can start LogicgooseUI with 'node index' and eventually you will want to keep it running (using something like pm2!)"
echo "Following for that, check out the data/data.json file. You can setup things like the application PORT and database connection."
echo ""
