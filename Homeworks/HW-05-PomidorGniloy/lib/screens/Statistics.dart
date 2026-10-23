import 'package:flutter/material.dart';

class Statistics extends StatefulWidget {
	const Statistics({super.key});

	@override
	StatisticsState createState() => StatisticsState();
}

class StatisticsState extends State<Statistics> {
	@override
	Widget build(BuildContext context) {
		return Scaffold(
			backgroundColor: const Color(0xFFFDFFFC),
			body: SafeArea(
				child: SingleChildScrollView(
					padding: const EdgeInsets.symmetric(vertical: 40),
					child: Column(
						crossAxisAlignment: CrossAxisAlignment.start,
						children: [
							Container(
								padding: const EdgeInsets.symmetric(vertical: 11),
								margin: const EdgeInsets.only(bottom: 38, left: 40, right: 40),
								width: double.infinity,
								child: Column(
									crossAxisAlignment: CrossAxisAlignment.start,
									children: [
										Container(
											margin: const EdgeInsets.only(bottom: 22),
											child: const Text(
												"Statistics",
												style: TextStyle(
													color: Color(0xFF000000),
													fontSize: 22,
												),
											),
										),
										const SizedBox(
											width: double.infinity,
											child: Text(
												"Track your progress to optimize your workflow",
												style: TextStyle(
													color: Color(0xFF895353),
													fontSize: 14,
												),
											),
										),
									],
								),
							),
							Container(
								margin: const EdgeInsets.only(bottom: 38, left: 40, right: 40),
								width: double.infinity,
								child: Column(
									crossAxisAlignment: CrossAxisAlignment.start,
									children: [
										Container(
											padding: const EdgeInsets.only(top: 1, bottom: 1, left: 2, right: 2),
											margin: const EdgeInsets.only(bottom: 10),
											width: double.infinity,
											child: Row(
												children: [
													SizedBox(
														width: 24,
														height: 24,
														child: Image.network(
															"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/fQF9v1sR03/2ym4pf59_expires_30_days.png",
															fit: BoxFit.fill,
														),
													),
													Container(
														margin: const EdgeInsets.only(right: 1),
														child: const Text(
															"This week",
															style: TextStyle(
																color: Color(0xFF000000),
																fontSize: 16,
															),
														),
													),
													SizedBox(
														width: 24,
														height: 24,
														child: Image.network(
															"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/fQF9v1sR03/vh85lxay_expires_30_days.png",
															fit: BoxFit.fill,
														),
													),
												],
											),
										),
										SizedBox(
											width: double.infinity,
											child: Row(
												children: [
													Expanded(
														child: Container(
															decoration: BoxDecoration(
																border: Border.all(
																	color: const Color(0xFFD9D9D9),
																	width: 1,
																),
																borderRadius: BorderRadius.circular(10),
															),
															padding: const EdgeInsets.symmetric(vertical: 14),
															margin: const EdgeInsets.only(right: 13),
															width: double.infinity,
															child: Column(
																children: [
																	Container(
																		margin: const EdgeInsets.only(bottom: 15, left: 5, right: 5),
																		width: double.infinity,
																		child: const Text(
																			"Completed intervals",
																			style: TextStyle(
																				color: Color(0xFF000000),
																				fontSize: 14,
															),
																			textAlign: TextAlign.center,
																		),
																	),
																	const Text(
																		"25",
																		style: TextStyle(
																			color: Color(0xFF000000),
																			fontSize: 22,
																		),
																	),
																],
															),
														),
													),
													Expanded(
														child: Container(
															decoration: BoxDecoration(
																border: Border.all(
																	color: const Color(0xFFD9D9D9),
																	width: 1,
																),
																borderRadius: BorderRadius.circular(10),
															),
															padding: const EdgeInsets.symmetric(vertical: 14),
															margin: const EdgeInsets.only(right: 12),
															width: double.infinity,
															child: Column(
																children: [
																	Container(
																		margin: const EdgeInsets.only(bottom: 14, left: 6, right: 6),
																		width: double.infinity,
																		child: const Text(
																			"Total focus time",
																			style: TextStyle(
																				color: Color(0xFF000000),
																				fontSize: 14,
																			),
																			textAlign: TextAlign.center,
																		),
																	),
																	const Text(
																		"12h 30m",
																		style: TextStyle(
																			color: Color(0xFF000000),
																			fontSize: 22,
																		),
																	),
																],
															),
														),
													),
													Expanded(
														child: Container(
															decoration: BoxDecoration(
																border: Border.all(
																	color: const Color(0xFFD9D9D9),
																	width: 1,
																),
																borderRadius: BorderRadius.circular(10),
															),
															padding: const EdgeInsets.symmetric(vertical: 14),
															width: double.infinity,
															child: Column(
																children: [
																	Container(
																		margin: const EdgeInsets.only(bottom: 15, left: 5, right: 5),
																		width: double.infinity,
																		child: const Text(
																			"Average focus time",
																			style: TextStyle(
																				color: Color(0xFF000000),
																				fontSize: 14,
																			),
																			textAlign: TextAlign.center,
																		),
																	),
																	const Text(
																		"25m",
																		style: TextStyle(
																			color: Color(0xFF000000),
																			fontSize: 22,
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
							Container(
								margin: const EdgeInsets.only(bottom: 38, left: 41, right: 41),
								width: double.infinity,
								child: Column(
									crossAxisAlignment: CrossAxisAlignment.start,
									children: [
										Container(
											margin: const EdgeInsets.only(bottom: 22),
											child: const Text(
												"Weekly Overview",
												style: TextStyle(
													color: Color(0xFF000000),
													fontSize: 16,
												),
											),
										),
										Container(
											margin: const EdgeInsets.only(bottom: 20, left: 1),
											child: const Text(
												"Completed intervals",
												style: TextStyle(
													color: Color(0xFF895353),
													fontSize: 14,
												),
											),
										),
										SizedBox(
											width: double.infinity,
											child: Row(
												crossAxisAlignment: CrossAxisAlignment.start,
												children: [
													Expanded(
														child: Container(
															padding: const EdgeInsets.only(bottom: 2),
															margin: const EdgeInsets.only(top: 211, right: 16),
															width: double.infinity,
															child: Column(
																children: [
																	Container(
																		color: const Color(0x4DCD6262),
																		margin: const EdgeInsets.only(bottom: 15),
																		height: 18,
																		width: double.infinity,
																		child: const SizedBox(),
																	),
																	const Text(
																		"Mon",
																		style: TextStyle(
																			color: Color(0xFF895353),
																			fontSize: 14,
																		),
																	),
																],
															),
														),
													),
													Expanded(
														child: Container(
															padding: const EdgeInsets.only(bottom: 2),
															margin: const EdgeInsets.only(top: 160, right: 16),
															width: double.infinity,
															child: Column(
																children: [
																	Container(
																		color: const Color(0x4DCD6262),
																		margin: const EdgeInsets.only(bottom: 15),
																		height: 69,
																		width: double.infinity,
																		child: const SizedBox(),
																	),
																	const Text(
																		"Tue",
																		style: TextStyle(
																			color: Color(0xFF895353),
																			fontSize: 14,
																		),
																	),
																],
															),
														),
													),
													Expanded(
														child: Container(
															padding: const EdgeInsets.only(top: 181),
															margin: const EdgeInsets.only(right: 16),
															width: double.infinity,
															child: Column(
																crossAxisAlignment: CrossAxisAlignment.start,
																children: [
																	Container(
																		color: const Color(0x4DCD6262),
																		margin: const EdgeInsets.only(bottom: 14),
																		width: 38,
																		height: 48,
																		child: const SizedBox(),
																	),
																	Container(
																		margin: const EdgeInsets.only(bottom: 3),
																		child: const Text(
																			"Wed",
																			style: TextStyle(
																				color: Color(0xFF895353),
																				fontSize: 14,
																			),
																		),
																	),
																],
															),
														),
													),
													Expanded(
														child: Container(
															padding: const EdgeInsets.only(top: 99),
															margin: const EdgeInsets.only(right: 16),
															width: double.infinity,
															child: Column(
																children: [
																	Container(
																		color: const Color(0x4DCD6262),
																		margin: const EdgeInsets.only(bottom: 14),
																		height: 130,
																		width: double.infinity,
																		child: const SizedBox(),
																	),
																	Container(
																		margin: const EdgeInsets.only(bottom: 3),
																		child: const Text(
																			"Thu",
																			style: TextStyle(
																				color: Color(0xFF895353),
																				fontSize: 14,
																			),
																		),
																	),
																],
															),
														),
													),
													Expanded(
														child: Container(
															padding: const EdgeInsets.only(top: 54),
															margin: const EdgeInsets.only(right: 16),
															width: double.infinity,
															child: Column(
																children: [
																	Container(
																		color: const Color(0x4DCD6262),
																		margin: const EdgeInsets.only(bottom: 14),
																		height: 175,
																		width: double.infinity,
																		child: const SizedBox(),
																	),
																	Container(
																		margin: const EdgeInsets.only(bottom: 3),
																		child: const Text(
																			"Fri",
																			style: TextStyle(
																				color: Color(0xFF895353),
																				fontSize: 14,
																			),
																		),
																	),
																],
															),
														),
													),
													Expanded(
														child: Container(
															padding: const EdgeInsets.only(top: 182),
															margin: const EdgeInsets.only(right: 16),
															width: double.infinity,
															child: Column(
																crossAxisAlignment: CrossAxisAlignment.start,
																children: [
																	Container(
																		color: const Color(0x4DCD6262),
																		margin: const EdgeInsets.only(bottom: 14),
																		width: 38,
																		height: 47,
																		child: const SizedBox(),
																	),
																	Container(
																		margin: const EdgeInsets.only(bottom: 3),
																		child: const Text(
																			"Sat",
																			style: TextStyle(
																				color: Color(0xFF895353),
																				fontSize: 14,
																			),
																		),
																	),
																],
															),
														),
													),
													Expanded(
														child: Container(
															padding: const EdgeInsets.only(top: 132),
															width: double.infinity,
															child: Column(
																children: [
																	Container(
																		color: const Color(0x4DCD6262),
																		margin: const EdgeInsets.only(bottom: 14),
																		height: 97,
																		width: double.infinity,
																		child: const SizedBox(),
																	),
																	Container(
																		margin: const EdgeInsets.only(bottom: 3),
																		child: const Text(
																			"Sun",
																			style: TextStyle(
																				color: Color(0xFF895353),
																				fontSize: 14,
																			),
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
							Container(
								margin: const EdgeInsets.symmetric(horizontal: 40),
								width: double.infinity,
								child: Column(
									crossAxisAlignment: CrossAxisAlignment.start,
									children: [
										const SizedBox(
											width: 133,
											child: Text(
												"Insights",
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
														padding: const EdgeInsets.only(top: 21, bottom: 21, left: 1, right: 1),
														width: double.infinity,
														child: Row(
															children: [
																Container(
																	margin: const EdgeInsets.only(right: 42),
																	child: const Text(
																		"Most Productive Day",
																		style: TextStyle(
																			color: Color(0xFF895353),
																			fontSize: 14,
																		),
																	),
																),
																const Text(
																	"Friday",
																	style: TextStyle(
																		color: Color(0xFF000000),
																		fontSize: 14,
																	),
																),
															],
														),
													),
													Container(
														padding: const EdgeInsets.symmetric(vertical: 21),
														width: double.infinity,
														child: Row(
															children: [
																Container(
																	margin: const EdgeInsets.only(right: 11),
																	child: const Text(
																		"Average intervals per Day",
																		style: TextStyle(
																			color: Color(0xFF895353),
																			fontSize: 14,
																		),
																	),
																),
																const Text(
																	"5",
																	style: TextStyle(
																		color: Color(0xFF000000),
																		fontSize: 14,
																	),
																),
															],
														),
													),
													Container(
														padding: const EdgeInsets.only(top: 21, bottom: 21, left: 1, right: 1),
														width: double.infinity,
														child: Row(
															children: [
																Container(
																	margin: const EdgeInsets.only(right: 30),
																	child: const Text(
																		"Longest focus Session",
																		style: TextStyle(
																			color: Color(0xFF895353),
																			fontSize: 14,
																		),
																	),
																),
																const Text(
																	"50m",
																	style: TextStyle(
																		color: Color(0xFF000000),
																		fontSize: 14,
																	),
																),
															],
														),
													),
												],
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
