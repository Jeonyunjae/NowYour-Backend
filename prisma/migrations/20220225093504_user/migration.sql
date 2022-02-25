/*
  Warnings:

  - You are about to drop the column `firstName` on the `User` table. All the data in the column will be lost.
  - You are about to drop the column `lastName` on the `User` table. All the data in the column will be lost.
  - You are about to drop the column `userName` on the `User` table. All the data in the column will be lost.
  - You are about to drop the `Product_Ca1` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Product_Ca2` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Product_Ca3` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Product_Ca4` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Product_Ca5` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Product_Ca6` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `UserLocation` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "Product_Ca1" DROP CONSTRAINT "Product_Ca1_userId_fkey";

-- DropForeignKey
ALTER TABLE "Product_Ca2" DROP CONSTRAINT "Product_Ca2_userId_fkey";

-- DropForeignKey
ALTER TABLE "Product_Ca3" DROP CONSTRAINT "Product_Ca3_userId_fkey";

-- DropForeignKey
ALTER TABLE "Product_Ca4" DROP CONSTRAINT "Product_Ca4_userId_fkey";

-- DropForeignKey
ALTER TABLE "Product_Ca5" DROP CONSTRAINT "Product_Ca5_userId_fkey";

-- DropForeignKey
ALTER TABLE "Product_Ca6" DROP CONSTRAINT "Product_Ca6_userId_fkey";

-- DropForeignKey
ALTER TABLE "UserLocation" DROP CONSTRAINT "UserLocation_userId_fkey";

-- DropIndex
DROP INDEX "User_userName_key";

-- AlterTable
ALTER TABLE "User" DROP COLUMN "firstName",
DROP COLUMN "lastName",
DROP COLUMN "userName";

-- DropTable
DROP TABLE "Product_Ca1";

-- DropTable
DROP TABLE "Product_Ca2";

-- DropTable
DROP TABLE "Product_Ca3";

-- DropTable
DROP TABLE "Product_Ca4";

-- DropTable
DROP TABLE "Product_Ca5";

-- DropTable
DROP TABLE "Product_Ca6";

-- DropTable
DROP TABLE "UserLocation";

-- DropEnum
DROP TYPE "UserState";
