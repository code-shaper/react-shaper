import yargs from 'yargs/yargs';
import { reactShaper } from './react-shaper';

async function main() {
  // Parse command line
  const argv = await yargs().parse(process.argv.slice(2));
  const { _, $0: command, ...options } = argv; // eslint-disable-line

  // Specify pluginId and generator
  const pluginId = '@code-shaper/react-starter';
  options['generator'] = 'app';

  // Run reactShaper
  await reactShaper.run(pluginId, options);
}

main().catch((err) => console.error('Error:', err));
