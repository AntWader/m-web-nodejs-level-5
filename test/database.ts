import { Module } from "@nestjs/common";
import { TypeOrmModule } from "@nestjs/typeorm";
import { antwader4nestjsDbConfig } from "../src/database/database.config";
import { MysqlConnectionOptions } from "typeorm/driver/mysql/MysqlConnectionOptions";

export const test_db: MysqlConnectionOptions = {
    type: 'mysql',
    host: 'test-db',
    port: 3106,
    username: 'root',
    password: 'root',
    database: 'test_db',
    entities: [
        __dirname + '/../**/*.entity{.ts,.js}',
    ],
    synchronize: true,
}

/**
 * This module provides access to test database.
 */
@Module({
    imports: [TypeOrmModule.forRoot(test_db)],
    exports: [TypeOrmModule.forRoot(test_db)],
})
export class TestDatabaseModule { }

/**
 * This module provides access to cloud test database.
 */
// @Module({
//     imports: [TypeOrmModule.forRoot(antwader4nestjsDbConfig)],
//     exports: [TypeOrmModule.forRoot(antwader4nestjsDbConfig)],
// })
// export class TestDatabaseModule { }