import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class FormPage extends HookConsumerWidget {
  const FormPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLoading = useState(false);
    final formKey = useMemoized(GlobalKey<FormState>.new, const []);
    final email = useState("");
    final password = useState("");
    final controller = useTextEditingController(text: 'initial text');

    final onSubmit = useMemoized(
      () => () async {
        isLoading.value = true;

        await Future.delayed(const Duration(milliseconds: 1000), () {
          if (formKey.currentState!.validate()) {
            formKey.currentState!.save();
            if (kDebugMode) {
              print(email.value);
              print(password.value);
              print(controller.value.text);
            }
          }
        });

        isLoading.value = false;
      },
      [formKey],
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('フォーム画面'),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  TextFormField(onSaved: (value) => email.value = value ?? ''),
                  TextFormField(
                      onSaved: (value) => password.value = value ?? ''),
                  TextFormField(
                    controller: controller,
                    keyboardType: TextInputType.emailAddress,
                  ),
                  ElevatedButton(
                    onPressed: onSubmit,
                    child: const Text('submit'),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
