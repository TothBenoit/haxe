package unit.issues;

import unit.Test;

class Issue9220 extends Test {
	#if jvm
	public function test() {
		eq("12.200", jvm.NativeString.format(java.util.Locale.US, '%.3f', 12.2));
	}
	#end
}
