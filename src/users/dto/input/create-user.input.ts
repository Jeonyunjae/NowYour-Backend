import { Field, InputType } from "@nestjs/graphql";
import { IsEmail, isNotEmpty, IsNotEmpty } from "class-validator";
import internal from "stream";

@InputType()
export class CreateUserInput {
    
    @Field()
    id: number;

    @Field()
    avatar: string;

    @Field()
    @IsNotEmpty()
    phoneNumber: string;

    @Field()
    @IsNotEmpty()
    password: string;

    @Field()
    @IsNotEmpty()
    @IsEmail()
    email: string;

    @Field()
    @IsNotEmpty()
    age: number;

    @Field()
    @IsNotEmpty()
    createdAt: Date;

    @Field()
    @IsNotEmpty()
    updatedAt: Date;
}