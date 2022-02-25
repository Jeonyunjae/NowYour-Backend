import { Resolver, Query, Args, Mutation } from '@nestjs/graphql';
import { Prisma } from '@prisma/client';
import { GetUserArgs } from './dto/args/get-user.args';
import { GetUsersArgs } from './dto/args/get-users.args';
import { CreateUserInput } from './dto/input/create-user.input';
import { DeleteUserInput } from './dto/input/delete-user.input';
import { UpdateUserInput } from './dto/input/update-user.input';

import { User } from '@prisma/client';
import { UsersService } from './users.service';

@Resolver(() => User)
export class UsersResolver {
  constructor(private readonly usersService: UsersService) {}

  @Query()
  getUser(@Args() userWhereUniqueInput: Prisma.UserWhereUniqueInput): Promise<User> {
    return this.usersService.user(userWhereUniqueInput);
  }

  @Query()
  getUsers(): Promise<User[]> {
    return this.usersService.users();
  }

  @Mutation()
  createUser(
    @Args('createUserData') data: Prisma.UserCreateInput,
  ): Promise<User> {
    return this.usersService.createUser(data);
  }

  @Mutation()
  updateUser(
    @Args('updateUserData')
    params: {
      where: Prisma.UserWhereUniqueInput;
      data: Prisma.UserUpdateInput;
    },
  ): Promise<User> {
    return this.usersService.updateUser(params);
  }

  @Mutation()
  deleteUser(
    @Args('deleteUserData') where: Prisma.UserWhereUniqueInput,
  ): Promise<User> {
    return this.usersService.deleteUser(where);
  }
}
