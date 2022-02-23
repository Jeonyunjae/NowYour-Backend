import { Module } from '@nestjs/common';
import { LocationController } from './controller/location.controller';
import { LocationService } from './service/location.service';

@Module({
    imports:[],
    controllers: [LocationController],
    providers: [LocationService],
})
export class LocationModule {}
