const http = require('https');
const wordListUrl = 'https://raw.githubusercontent.com/YihaoOct/wordle/main/words.txt';

http.get(wordListUrl, (res) => {
    let wordList = '';
    res.on('data', (data) => {
        wordList += data;
    });
    res.on('end', () => {
        const words = wordList.trim().split('\n');
        const word = words[Math.floor(Math.random() * words.length)];
        console.log(Buffer.from(word).toString('base64'));
    })
});
