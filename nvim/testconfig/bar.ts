import { foo } from './foo'

export function bar() {
	console.log('run from bar')
	foo()
}
