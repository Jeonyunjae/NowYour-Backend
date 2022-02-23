import {
  Controller,
  Get,
  Param,
  Post,
  Delete,
  Patch,
  Body,
  Query,
} from '@nestjs/common';
import { CreateLocationDTO } from '../dto/create-location.dto';
import { UpdateLocationDTO } from '../dto/update-location.dto';
import { Location } from '../entities/location.entity';
import { LocationService } from '../service/location.service';

@Controller('location')
export class LocationController {
  constructor(private readonly locationService: LocationService) {}

  @Get()
  getAll(): Location[] {
    return this.locationService.getAll();
  }

  @Get(':id')
  getOne(@Param('id') locationId: number): Location {
    return this.locationService.getOne(locationId);
  }

  @Post()
  create(@Body() locationData: CreateLocationDTO) {
    return this.locationService.create(locationData);
  }

  @Delete(':id')
  remove(@Param('id') locationId: number) {
      return this.locationService.deleteOne(locationId);
  }

  @Patch(':id')
  patch(@Param('id') locationId: number, @Body() updateData: CreateLocationDTO) {
    return this.locationService.update(locationId, updateData);
  }
}
