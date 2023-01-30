#include <v8.h>
#include <node.h>

using namespace v8;

void init(Local<Object> exports) {
	// Isolate 객체를 생성해야 기본 자료형을 만들 수 있습니다.
	Isolate* isolate = exports->GetIsolate();
	exports->Set(String::NewFromUtf8(isolate, "name"), String::NewFromUtf8(isolate, "Value"));
}

NODE_MODULE(module_name, init)