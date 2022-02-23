import { ValidationPipe } from '@nestjs/common';
import { NestFactory } from '@nestjs/core';
import { AppModule } from './app.module';
import { kdTree } from 'kd-tree-javascript';
import { PrismaClient } from '@prisma/client';

async function bootstrap() {
  const prisma = new PrismaClient()

  prisma.$queryRawUnsafe

  const app = await NestFactory.create(AppModule);

  // whiteList -> 엔티티 데코레이터에 없는 프로퍼티 값은 무조건 거름
  // forbidNonWhitelisted -> 엔티티 데코레이터에 없는 값 인입시 그 값에 대한 에러메세지 알려줌
  // transform -> 컨트롤러가 값을 받을때 컨트롤러에 정의한 타입으로 형변환
  app.useGlobalPipes(
    new ValidationPipe({ 
      whitelist: true, 
      forbidNonWhitelisted: true 
    }),
  );
  await app.listen(3000);

  const points = [
    {x: 1, y: 2},
    {x: 3, y: 4},
    {x: 3, y: 4},
    {x: 5, y: 6},
    {x: 7, y: 8}
  ];
  
  const distance = function(a:any, b:any){
    return Math.pow(a.x - b.x, 2) +  Math.pow(a.y - b.y, 2);
  }
  
  const tree = new kdTree(points, distance, ["x", "y"]);
  
  const nearest = tree.nearest({ x: 3, y: 4 }, 2);
  
  console.log(nearest);





}
bootstrap();
