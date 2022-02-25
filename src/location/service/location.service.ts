import { Injectable, NotFoundException } from '@nestjs/common';\
import { CreateLocationDTO } from '../dto/create-location.dto';
import { UpdateLocationDTO } from '../dto/update-location.dto';
import { Location } from '../entities/location.entity';

@Injectable()
export class LocationService {
  private locations: Location[] = [];

  getAll(): Location[] {
    return this.locations;
  }

  getOne(id: number): Location {
    client.userLocation.findMany
    const location = this.locations.find((location) => location.id === +id);
    if (!location) {
      throw new NotFoundException(`Location with ID: ${id} not found.`);
    }
    return location;
  }

  deleteOne(id: number): boolean {
    this.locations.filter((location) => location.id !== +id);
    return true;
  }

  create(locationData: CreateLocationDTO) {
    this.locations.push({
      id: this.locations.length + 1,
      ...locationData,
    });
  }

  update(id: number, updateData: UpdateLocationDTO) {
    const location = this.getOne(id);
    this.deleteOne(id);
    this.locations.push({ ...location, ...updateData });
  }
}
