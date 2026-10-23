import 'package:flutter/material.dart';

class Registration extends StatefulWidget {
	const Registration({super.key});

	@override
	RegistrationState createState() => RegistrationState();
}

class RegistrationState extends State<Registration> {
	@override
	Widget build(BuildContext context) {
		return Scaffold(
			backgroundColor: const Color(0xFFFDFFFC),
			body: SafeArea(
				child: SingleChildScrollView(
					child: Column(
						crossAxisAlignment: CrossAxisAlignment.start,
						children: [
							Container(
								padding: const EdgeInsets.only(top: 222),
								width: double.infinity,
								child: Column(
									children: [
										Container(
											margin: const EdgeInsets.only(bottom: 31),
											width: 120,
											height: 109,
											child: Image.network(
												"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/fQF9v1sR03/lb47f3uy_expires_30_days.png",
												fit: BoxFit.fill,
											),
										),
										Container(
											margin: const EdgeInsets.only(bottom: 25),
											child: const Text(
												"Create your account",
												style: TextStyle(
													color: Color(0xFF000000),
													fontSize: 22,
												),
											),
										),
										Container(
											decoration: BoxDecoration(
												border: Border.all(
													color: const Color(0xFFD9D9D9),
													width: 1,
												),
												borderRadius: BorderRadius.circular(8),
												color: const Color(0xFFFFFFFF),
											),
											padding: const EdgeInsets.only(top: 11, bottom: 11, left: 16, right: 150),
											margin: const EdgeInsets.only(bottom: 25),
											child: const Text(
												"Username",
												style: TextStyle(
													color: Color(0xFFB3B3B3),
													fontSize: 16,
												),
											),
										),
										Container(
											decoration: BoxDecoration(
												border: Border.all(
													color: const Color(0xFFD9D9D9),
													width: 1,
												),
												borderRadius: BorderRadius.circular(8),
												color: const Color(0xFFFFFFFF),
											),
											padding: const EdgeInsets.only(top: 11, bottom: 11, left: 16, right: 187),
											margin: const EdgeInsets.only(bottom: 25),
											child: const Text(
												"email",
												style: TextStyle(
													color: Color(0xFFB3B3B3),
													fontSize: 16,
												),
											),
										),
										Container(
											decoration: BoxDecoration(
												border: Border.all(
													color: const Color(0xFFD9D9D9),
													width: 1,
												),
												borderRadius: BorderRadius.circular(8),
												color: const Color(0xFFFFFFFF),
											),
											padding: const EdgeInsets.only(top: 11, bottom: 11, left: 16, right: 154),
											margin: const EdgeInsets.only(bottom: 25),
											child: const Text(
												"Password",
												style: TextStyle(
													color: Color(0xFFB3B3B3),
													fontSize: 16,
												),
											),
										),
										Container(
											padding: const EdgeInsets.symmetric(vertical: 8),
											margin: const EdgeInsets.only(bottom: 48),
											child: InkWell(
												onTap: () {
													debugPrint('Pressed');
												},
												child: Container(
													decoration: BoxDecoration(
														borderRadius: BorderRadius.circular(100),
														color: const Color(0xFFCD6262),
													),
													padding: const EdgeInsets.only(top: 5, bottom: 5, left: 93, right: 93),
													child: const Text(
														"Register",
														style: TextStyle(
															color: Color(0xFFFFFFFF),
															fontSize: 14,
														),
													),
												),
											),
										),
									],
								),
							),
						],
					),
				),
			),
		);
	}
}
