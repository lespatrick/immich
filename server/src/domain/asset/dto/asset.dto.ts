import { IsBoolean, IsString, IsNumber } from 'class-validator';
import { Optional } from '../../domain.util';
import { BulkIdsDto } from '../response-dto';

export class AssetBulkUpdateDto extends BulkIdsDto {
  @Optional()
  @IsBoolean()
  isFavorite?: boolean;

  @Optional()
  @IsBoolean()
  isArchived?: boolean;
}

export class UpdateAssetDto {
  @Optional()
  @IsBoolean()
  isFavorite?: boolean;

  @Optional()
  @IsBoolean()
  isArchived?: boolean;

  @Optional()
  @IsString()
  description?: string;

  @Optional()
  @IsNumber()
  smallCopies?: number;

  @Optional()
  @IsNumber()
  mediumCopies?: number;

  @Optional()
  @IsNumber()
  largeCopies?: number;
}

export class UpdateAssetCopiesDto {
  @Optional()
  @IsNumber()
  smallCopies?: number;

  @Optional()
  @IsNumber()
  mediumCopies?: number;

  @Optional()
  @IsNumber()
  largeCopies?: number;
}
