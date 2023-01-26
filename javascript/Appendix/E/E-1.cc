#include <v8.h>
#include <node.h>

using namespace v8;

void init(Local<Object> exports) {
	Isolate* isolate = exports->GetIsolate();
}

NODE_MODULE(module_name, init)