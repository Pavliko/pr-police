
ln -s /node_modules/* ./node_modules/
ls -la ./node_modules
PATH=$PATH:/app/node_modules/.bin

node index.js
