import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';

class CardSwiper extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      // height: 500,
      height: size.height * 0.5,
      // color: Colors.yellow,
      child: Swiper(
        itemCount: 10,
        layout: SwiperLayout.STACK,
        itemWidth: size.width * 0.6,
        itemHeight: size.height * 0.4,
        // Builder , es algo que se va a estar construyendo de manera dinamica o cuando sea necesario, es una funcion que se va a disparar para construir wse nuevo widgets
        itemBuilder: ( _ , int index){
          // lo importante es regresar un widget ya que este mismo es utilizado para renderizar la tarjeta
          return GestureDetector(
            // cunado alguien tap en esta imagen en particular voy hacer la navegacion hacia la otra pantalla
            onTap: () => Navigator.pushNamed(context, 'details', arguments: 'movie-instance'),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: FadeInImage(
                placeholder: AssetImage('assets/no-image.jpg'),
                image: NetworkImage('https://via.placeholder.com/300x400'),
                fit: BoxFit.cover,
              ),
            ),
          );
        },
      ),
    );
  }
}