import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import '../widgets/movie_card.dart';
import 'detail_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final String apiKey = '3242c7290e07fcbb7a70f386feecd190'; 
  List movies = [];

  @override
  void initState() {
    super.initState();
    fetchMovies();
  }

  Future<void> fetchMovies() async {
    final url = Uri.parse(
        'https://api.themoviedb.org/3/movie/popular?api_key=$apiKey&language=en-US&page=1');
    final response = await http.get(url);
    final data = json.decode(response.body);
    setState(() {
      movies = data['results'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return movies.isEmpty
        ? Center(child: CircularProgressIndicator())
        : ListView.builder(
            itemCount: movies.length,
            itemBuilder: (context, index) {
              final movie = movies[index];
              return GestureDetector(
                child: MovieCard(movie: movie),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => DetailPage(movie: movie),
                    ),
                  );
                },
              );
            },
          );
  }
}
