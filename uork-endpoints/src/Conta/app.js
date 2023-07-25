const axios = require('axios');
const readline = require('readline');

const BASE_URL = 'https://uork.org/search/status/check-account.php?id=';

function getUserInput(question) {
  const rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout,
  });

  return new Promise((resolve) => {
    rl.question(question, (answer) => {
      rl.close();
      resolve(answer);
    });
  });
}

async function main() {
  try {
    const userInput = await getUserInput('Insira o ID ou e-mail do usuário: ');

    const url = BASE_URL + userInput;
    const response = await axios.get(url);
    const status = response.data;

    console.log(status);
  } catch (error) {
    console.error('Ocorreu um erro:', error.message);
  }
}

main();
