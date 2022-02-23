import { PartialType } from '@nestjs/mapped-types';
import { IsNumber, IsString } from 'class-validator';
import { CreateLocationDTO } from './create-location.dto';

export class UpdateLocationDTO extends PartialType(CreateLocationDTO){

}
