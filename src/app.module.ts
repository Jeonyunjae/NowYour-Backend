import { Module } from '@nestjs/common';
import { MoviesModule } from './movies/movies.module';
import { AppController } from './app.controller';
import { LocationModule } from './location/location.module';

@Module({
  imports: [MoviesModule,LocationModule],
  controllers: [AppController],
  providers: [],
})

export class AppModule {}
