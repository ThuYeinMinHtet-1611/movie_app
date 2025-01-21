import 'package:flutter/material.dart';
import 'package:movie_channel_app/data.dart';
import 'package:movie_channel_app/widget/scrollable.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _deviceheight;
  var _devicewidth;
  var _selectedPage;
  @override
  void initState() {
    super.initState();
    _selectedPage = 0;
  }

  @override
  Widget build(BuildContext context) {
    _deviceheight = MediaQuery.of(context).size.height;
    _devicewidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          _featuredMovie(),
          _gradientWidget(),
          _topWidget(),
        ],
      ),
    );
  }

  Widget _featuredMovie() {
    return SizedBox(
        height: _deviceheight * 0.45,
        width: _devicewidth,
        child: PageView(
          onPageChanged: (_index) {
            setState(() {
              _selectedPage = _index;
            });
          },
          scrollDirection: Axis.horizontal,
          children: featuredmovies.map((movie) {
            return Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(movie.coverImage.url),
                ),
              ),
            );
          }).toList(),
        ));
  }

  Widget _gradientWidget() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: _deviceheight * 0.80,
        width: _devicewidth,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(35, 45, 59, 1.0),
              Colors.transparent,
            ],
            stops: [0.68, 1.0],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
        ),
      ),
    );
  }

  Widget _topWidget() {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: _devicewidth * 0.05, vertical: _deviceheight * 0.005),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _topbarWidget(),
          SizedBox(
            height: _deviceheight * 0.10,
          ),
          _featuredMovieInfoWidget(),
          Padding(
            padding: EdgeInsets.symmetric(vertical: _deviceheight * 0.01),
            child: ScrollableMovies(
                _deviceheight * 0.24, _devicewidth, true, movies),
          ),
          _featuredMovieBanner(),
          Padding(
            padding: EdgeInsets.symmetric(vertical: _deviceheight * 0.01),
            child: ScrollableMovies(
                _deviceheight * 0.22, _devicewidth, false, serie),
          )
        ],
      ),
    );
  }

  Widget _topbarWidget() {
    return SizedBox(
      height: _deviceheight * 0.13,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Icon(
            Icons.menu,
            color: Colors.white,
            size: 30,
          ),
          Row(
            children: [
              const Icon(
                Icons.search,
                color: Colors.white,
                size: 30,
              ),
              SizedBox(
                width: _devicewidth * 0.03,
              ),
              const Icon(
                Icons.notification_add,
                color: Colors.white,
                size: 30,
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _featuredMovieInfoWidget() {
    return SizedBox(
      height: _deviceheight * 0.12,
      width: _devicewidth,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            featuredmovies[_selectedPage].title,
            maxLines: 2,
            style:
                TextStyle(color: Colors.white, fontSize: _deviceheight * 0.040),
          ),
          SizedBox(
            height: _deviceheight * 0.05,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: featuredmovies.map((_movie) {
              bool _isActive =
                  _movie.title == featuredmovies[_selectedPage].title;
              double _circleRadius = _deviceheight * 0.004;
              return Container(
                margin: EdgeInsets.only(right: _devicewidth * 0.015),
                height: _circleRadius * 2,
                width: _circleRadius * 2,
                decoration: BoxDecoration(
                    color: _isActive ? Colors.green : Colors.grey,
                    borderRadius: BorderRadius.circular(100)),
              );
            }).toList(),
          )
        ],
      ),
    );
  }

  Widget _featuredMovieBanner() {
    return Container(
      height: _deviceheight * 0.13,
      width: _devicewidth,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(featuredmovies[3].coverImage.url),
          )),
    );
  }
}
