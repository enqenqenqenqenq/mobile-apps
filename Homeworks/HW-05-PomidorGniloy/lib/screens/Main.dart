import 'package:flutter/material.dart';

class Main extends StatefulWidget {
	const Main({super.key});

	@override
	MainState createState() => MainState();
}

class MainState extends State<Main> {
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
								padding: const EdgeInsets.symmetric(vertical: 23),
								width: double.infinity,
								child: Row(
									mainAxisAlignment: MainAxisAlignment.end,
									children: [
										Container(
											margin: const EdgeInsets.only(right: 20),
											child: const Text(
												"Report\n",
												style: TextStyle(
													color: Color(0xFF000000),
													fontSize: 16,
												),
											),
										),
										Container(
											margin: const EdgeInsets.only(right: 40),
											width: 42,
											height: 38,
											child: Image.network(
												"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/fQF9v1sR03/vy02ss8n_expires_30_days.png",
												fit: BoxFit.fill,
											),
										),
									],
								),
							),
							Container(
								padding: const EdgeInsets.symmetric(vertical: 163),
								width: double.infinity,
								child: Column(
									children: [
										Container(
											margin: const EdgeInsets.only(bottom: 235),
											width: 264,
											height: 260,
											child: Image.network(
												"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/fQF9v1sR03/r3120x8x_expires_30_days.png",
												fit: BoxFit.fill,
											),
										),
										InkWell(
											onTap: () {
												debugPrint('Pressed');
											},
											child: Container(
												decoration: BoxDecoration(
													borderRadius: BorderRadius.circular(100),
													color: const Color(0xFFCD6262),
												),
												padding: const EdgeInsets.only(top: 10, bottom: 10, left: 16, right: 16),
												margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
												child: Row(
													mainAxisSize: MainAxisSize.min,
													children: [
														Container(
															margin: const EdgeInsets.only(right: 8),
															width: 20,
															height: 20,
															child: Image.network(
																"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/fQF9v1sR03/ncaabqqr_expires_30_days.png",
																fit: BoxFit.fill,
															),
														),
														const Text(
															"Start focusing",
															style: TextStyle(
																color: Color(0xFFFFFFFF),
																fontSize: 14,
															),
														),
													],
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
