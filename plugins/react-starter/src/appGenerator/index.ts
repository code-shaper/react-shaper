import { cc, FileUtils, Generator, Options } from '@code-shaper/shaper-utils';
import inquirer from 'inquirer';
import path from 'path';

export const appGenerator: Generator = {
  id: 'app',
  name: 'Application',
  description: 'generates a React application',
  generate: generateApp,
};

async function generateApp(rootDir: string, inputOptions: Options) {
  const questions = [
    {
      type: 'input',
      name: 'itemName',
      message: 'Application name? (e.g. "movie-magic")',
    },
  ];

  const options = await inquirer.prompt(questions, inputOptions);
  const { itemName } = options;

  // --------------------------------------------------------------------------
  // Add more options for code generation here
  // --------------------------------------------------------------------------
  // Example: itemName = movie-magic

  // itemNameKebabCase = movie-magic
  options['itemNameKebabCase'] = cc.kebabCase(itemName);

  // itemNameCamelCase = movieMagic
  options['itemNameCamelCase'] = cc.camelCase(itemName);

  // itemNamePascalCase = MovieMagic
  options['itemNamePascalCase'] = cc.pascalCase(itemName);

  // itemNameCapitalCase = Movie Magic
  options['itemNameCapitalCase'] = cc.capitalCase(itemName);
  // --------------------------------------------------------------------------

  const { itemNameKebabCase } = options;

  const srcDir = path.join(__dirname, 'templates');
  const dstDir = path.join(rootDir, itemNameKebabCase);

  console.log();
  console.log(`Creating ${itemName}...`);

  FileUtils.transformFiles(srcDir, dstDir, options);

  console.log();
  console.log('Done. Now run:');
  console.log();
  console.log(`  cd ${itemNameKebabCase}`);
  console.log('  git init');
  console.log('  npm install');
  console.log('  git add .');
  console.log('  git commit -m "Initial commit"');
  console.log('  npm start');
  console.log();

  return Promise.resolve();
}
