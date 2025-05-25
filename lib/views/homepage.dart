import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:music_app/views/serviceDetailsScreen.dart';
import 'package:music_app/widgets/topHeader.dart';
import 'package:music_app/widgets/CustomNavBar.dart';
import 'package:provider/provider.dart';
import '../injection.dart';
import '../viewModels/service_viewmodel.dart';
import '../widgets/service_card.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ServiceViewModel>(
      create: (_) {
        final viewModel = locator<ServiceViewModel>();
        viewModel.loadServices();
        return viewModel;
      },
      // create: (_) => viewModel..loadServices(),
      child: Scaffold(
        backgroundColor: Color.fromRGBO(24, 23, 28, 1),
        body: Column(
          children: [
            SizedBox(height: 350.h, child: Topheader()),
            SizedBox(height: 24.h),
            Text(
              'Hire hand-picked Pros for popular music services',
              style: TextStyle(
                fontFamily: 'Syne',
                fontSize: 15.sp,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 24.h),
            Expanded(
              child: Consumer<ServiceViewModel>(
                builder: (context, viewModel, child) {
                  if (viewModel.services.isEmpty) {
                    return const Center(child: CircularProgressIndicator());
                  }
                  return ListView.builder(
                    padding: const EdgeInsets.only(top: 0, bottom: 0),
                    itemCount: viewModel.services.length,
                    itemBuilder: (context, index) {
                      final service = viewModel.services[index];
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder:
                                  (context) =>
                                      ServiceDetailScreen(title: service.title),
                            ),
                          );
                        },
                        child: ServiceTile(service: service),
                      );
                    },
                  );
                },
              ),
            ),
            CustomBottomNavBar(selectedIndex: 0, onItemTapped: (v) {}),
          ],
        ),
      ),
    );
  }
}
