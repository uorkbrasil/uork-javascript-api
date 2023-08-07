const axios = require('axios');
const readline = require('readline');

const apiKey = 'YOUR_API_KEY';
const api = `https://uork.org/search/status/check-account.php?apikey=${apiKey}&id=`;

function getUserInput(quest) {
    const rl = readline.createInterface({
        input: process.stdin,
        output: process.stdout,
    
});


return new Promise((resolve) => {
    rl.question(quest, (resposta) => {
        rl.close();
        resolve(resposta);
    });
});
}


async function main() {
    try {
        const userInput = await getUserInput('Insira o ID ou e-mail do usuário: ');
       
        const api2 = api + userInput;
        const response = await axios.get(api2);

        const info = response.data;

        console.log(info);
    } catch (error) {
        console.error('error encontrado', error.message);
    }
    }
    

    main(); 
