#include <v8.h>
#include <node.h>

using namespace v8;

void Method(const FunctionCallbackInfo<Value> &args) {
	Isolate* isolate = args.GetIsolate();

	int limit = args[0]->Int32Value();
	int result = 0;
	for (int i = 1; i <= limit; i++) {
		result += i;
	}

	args.GetReturnValue().Set(Number::New(isolate, result));
}

void init(Local<Object> exports) {
	Isolate* isolate = exports->GetIsolate();
	exports->Set(String::NewFromUtf8(isolate, "name"), String::NewFromUtf8(isolate, "Value"));

	NODE_SET_METHOD(exports, "method", Method);
}

NODE_MODULE(module_name, init)