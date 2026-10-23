import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
	const Settings({super.key});

	@override
	SettingsState createState() => SettingsState();
}

class SettingsState extends State<Settings> {
	@override
	Widget build(BuildContext context) {
		return Scaffold(
			backgroundColor: const Color(0xFFFDFFFC),
			body: SafeArea(
				child: SingleChildScrollView(
					padding: const EdgeInsets.all(40),
					child: Column(
						crossAxisAlignment: CrossAxisAlignment.start,
						children: [
							Container(
								margin: const EdgeInsets.only(bottom: 106),
								width: double.infinity,
								child: const Text(
									"Settings",
									style: TextStyle(
										color: Color(0xFF000000),
										fontSize: 22,
									),
								),
							),
							Container(
								padding: const EdgeInsets.symmetric(vertical: 9),
								margin: const EdgeInsets.only(bottom: 106),
								width: double.infinity,
								child: Column(
									crossAxisAlignment: CrossAxisAlignment.start,
									children: [
										Container(
											margin: const EdgeInsets.only(bottom: 35),
											child: const Text(
												"Timer (minutes)",
												style: TextStyle(
													color: Color(0xFF000000),
													fontSize: 16,
												),
											),
										),
										Container(
											margin: const EdgeInsets.only(bottom: 30),
											width: double.infinity,
											child: Column(
												crossAxisAlignment: CrossAxisAlignment.start,
												children: [
													Container(
														margin: const EdgeInsets.only(bottom: 7),
														child: const Text(
															"Work time",
															style: TextStyle(
																color: Color(0xFF1E1E1E),
																fontSize: 14,
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
														height: 40,
														width: double.infinity,
														child: const SizedBox(),
													),
												],
											),
										),
										Container(
											margin: const EdgeInsets.only(bottom: 30),
											width: double.infinity,
											child: Column(
												crossAxisAlignment: CrossAxisAlignment.start,
												children: [
													Container(
														margin: const EdgeInsets.only(bottom: 7),
														child: const Text(
															"Short break",
															style: TextStyle(
																color: Color(0xFF1E1E1E),
																fontSize: 14,
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
														height: 40,
														width: double.infinity,
														child: const SizedBox(),
													),
												],
											),
										),
										SizedBox(
											width: double.infinity,
											child: Column(
												crossAxisAlignment: CrossAxisAlignment.start,
												children: [
													Container(
														margin: const EdgeInsets.only(bottom: 7),
														child: const Text(
															"Long break",
															style: TextStyle(
																color: Color(0xFF1E1E1E),
																fontSize: 14,
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
														height: 40,
														width: double.infinity,
														child: const SizedBox(),
													),
												],
											),
										),
									],
								),
							),
							Container(
								padding: const EdgeInsets.only(top: 7, right: 14),
								margin: const EdgeInsets.only(bottom: 106),
								width: double.infinity,
								child: Column(
									crossAxisAlignment: CrossAxisAlignment.start,
									children: [
										Container(
											margin: const EdgeInsets.only(bottom: 31, left: 1),
											child: const Text(
												"Intervals",
												style: TextStyle(
													color: Color(0xFF000000),
													fontSize: 16,
												),
											),
										),
										SizedBox(
											width: double.infinity,
											child: Column(
												crossAxisAlignment: CrossAxisAlignment.start,
												children: [
													Container(
														margin: const EdgeInsets.only(bottom: 8),
														child: const Text(
															"Intervals before log break",
															style: TextStyle(
																color: Color(0xFF1E1E1E),
																fontSize: 14,
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
														height: 40,
														width: double.infinity,
														child: const SizedBox(),
													),
												],
											),
										),
									],
								),
							),
							Container(
								decoration: BoxDecoration(
									borderRadius: BorderRadius.circular(100),
									color: const Color(0xFFCD6262),
								),
								margin: const EdgeInsets.symmetric(vertical: 4),
								width: double.infinity,
								child: Center(
									child: Container(
										padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
										child: const Text(
											"Save",
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
			),
		);
	}
}
