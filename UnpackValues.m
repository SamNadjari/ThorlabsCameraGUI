function [ExposureTime, ScaleFactor, Background, Normalization, ...
    OriginX, OriginY, Width, Height, BinX, BinY]  = UnpackValues(map)
    Background = values(map, {'Background Image'});
    Background = Background{1};
    Normalization = values(map, {'Normalization Image'});
    Normalization = Normalization{1};
    ScaleFactor = values(map, {'Scale Factor'});
    ScaleFactor = ScaleFactor{1};
    ExposureTime = values(map, {'Exposure Time'});
    ExposureTime = ExposureTime{1};
    ROIAndBin = values(map, {'ROI and Bin'});
    OriginX = values(ROIAndBin{1}, {'Origin X'});
    OriginX = OriginX{1};
    OriginY = values(ROIAndBin{1}, {'Origin Y'});
    OriginY = OriginY{1};
    Width = values(ROIAndBin{1}, {'Width'});
    Width = Width{1};
    Height = values(ROIAndBin{1}, {'Height'});
    Height = Height{1};
    BinX = values(ROIAndBin{1}, {'Bin X'});
    BinX = BinX{1};
    BinY = values(ROIAndBin{1}, {'Bin Y'});
    BinY = BinY{1};
end