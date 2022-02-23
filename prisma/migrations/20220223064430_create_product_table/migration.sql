/*
  Warnings:

  - Added the required column `address` to the `UserLocation` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "UserLocation" ADD COLUMN     "address" INTEGER NOT NULL;

-- CreateTable
CREATE TABLE "Product_Ca1" (
    "id" SERIAL NOT NULL,
    "userId" INTEGER NOT NULL,
    "Catalogue1" INTEGER NOT NULL,
    "Catalogue2" INTEGER NOT NULL,
    "file" TEXT NOT NULL,
    "caption" TEXT,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "status" INTEGER NOT NULL,

    CONSTRAINT "Product_Ca1_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Product_Ca2" (
    "id" SERIAL NOT NULL,
    "userId" INTEGER NOT NULL,
    "Catalogue1" INTEGER NOT NULL,
    "Catalogue2" INTEGER NOT NULL,
    "file" TEXT NOT NULL,
    "caption" TEXT,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "status" INTEGER NOT NULL,

    CONSTRAINT "Product_Ca2_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Product_Ca3" (
    "id" SERIAL NOT NULL,
    "userId" INTEGER NOT NULL,
    "Catalogue1" INTEGER NOT NULL,
    "Catalogue2" INTEGER NOT NULL,
    "file" TEXT NOT NULL,
    "caption" TEXT,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "status" INTEGER NOT NULL,

    CONSTRAINT "Product_Ca3_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Product_Ca4" (
    "id" SERIAL NOT NULL,
    "userId" INTEGER NOT NULL,
    "Catalogue1" INTEGER NOT NULL,
    "Catalogue2" INTEGER NOT NULL,
    "file" TEXT NOT NULL,
    "caption" TEXT,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "status" INTEGER NOT NULL,

    CONSTRAINT "Product_Ca4_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Product_Ca5" (
    "id" SERIAL NOT NULL,
    "userId" INTEGER NOT NULL,
    "Catalogue1" INTEGER NOT NULL,
    "Catalogue2" INTEGER NOT NULL,
    "file" TEXT NOT NULL,
    "caption" TEXT,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "status" INTEGER NOT NULL,

    CONSTRAINT "Product_Ca5_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Product_Ca6" (
    "id" SERIAL NOT NULL,
    "userId" INTEGER NOT NULL,
    "Catalogue1" INTEGER NOT NULL,
    "Catalogue2" INTEGER NOT NULL,
    "file" TEXT NOT NULL,
    "caption" TEXT,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "status" INTEGER NOT NULL,

    CONSTRAINT "Product_Ca6_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "Product_Ca1" ADD CONSTRAINT "Product_Ca1_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Product_Ca2" ADD CONSTRAINT "Product_Ca2_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Product_Ca3" ADD CONSTRAINT "Product_Ca3_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Product_Ca4" ADD CONSTRAINT "Product_Ca4_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Product_Ca5" ADD CONSTRAINT "Product_Ca5_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Product_Ca6" ADD CONSTRAINT "Product_Ca6_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
