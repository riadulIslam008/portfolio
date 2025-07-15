import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ProjectImageDialog extends StatefulWidget {
  final List<String> images;

  const ProjectImageDialog({super.key, required this.images});

  @override
  State<ProjectImageDialog> createState() => _ProjectImageDialogState();
}

class _ProjectImageDialogState extends State<ProjectImageDialog> {
  final CarouselSliderController carouselController =
      CarouselSliderController();
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: const EdgeInsets.all(20),
      backgroundColor: Colors.black,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      
      // TO KNOW THE AVAILABLE SPACE, LAYOUT BUILDER USED
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Stack(
            children: [
              SizedBox(
                width: (constraints.maxWidth <= 800) ? constraints.maxWidth: 800,
                height: 400,
                child: Column(
                  children: [
                    const SizedBox(height: 40),
                    
                    //IMAGE SECTION
                    Expanded(
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          /// IMAGE LIST
                          CarouselSlider(
                            carouselController: carouselController,
                            options: CarouselOptions(
                              enableInfiniteScroll: false,
                              viewportFraction: 1.0,
                              height: 300,
                              onPageChanged: (index, reason) {
                                setState(() {
                                  _currentIndex = index;
                                });
                              },
                            ),
                            items: widget.images.map((url) {
                              return CachedNetworkImage(
                                imageUrl: url,
                                placeholder: (ctx, _) => const Center(
                                  child: CircularProgressIndicator(),
                                ),
                                errorWidget: (ctx, _, __) =>
                                    const Icon(Icons.error, color: Colors.red),
                                fit: BoxFit.contain,
                                width: double.infinity,
                              );
                            }).toList(),
                          ),

                          // ARROW BUTTON LEFT
                          Positioned(
                            left: 0,
                            child: IconButton(
                              icon: const Icon(
                                Icons.arrow_back_ios,
                                color: Colors.white,
                              ),
                              onPressed: _prev,
                            ),
                          ),

                          // ARROW BUTTON RIGHT
                          Positioned(
                            right: 0,
                            child: IconButton(
                              icon: const Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.white,
                              ),
                              onPressed: _next,
                            ),
                          ),
                        ],
                      ),
                    ),

                    //IMAGE INDICATOR
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      spacing: 5,
                      children: [
                        for (int i = 0; i < widget.images.length; i++)
                          CircleAvatar(
                            radius: 5,
                            backgroundColor: (_currentIndex == i)
                                ? Colors.blue
                                : Colors.grey[400],
                          ),
                      ],
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              ),

              // CANCEL BUTTON
              Positioned(
                top: 10,
                right: 10,
                child: IconButton(
                  icon: const Icon(Icons.close, color: Colors.white),
                  onPressed: () => Navigator.of(context).pop(),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  void _next() {
    if (_currentIndex < widget.images.length - 1) {
      carouselController.nextPage();
    }
  }

  void _prev() {
    if (_currentIndex > 0) {
      carouselController.previousPage();
    }
  }
}
