.class public Lcom/aliyun/subtitle/SubtitleView$DefaultValueBuilder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aliyun/subtitle/SubtitleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultValueBuilder"
.end annotation


# instance fields
.field mLocation:I

.field mTextColor:Ljava/lang/String;

.field mTextSize:I

.field mTextSizePercent:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x18

    iput v0, p0, Lcom/aliyun/subtitle/SubtitleView$DefaultValueBuilder;->mLocation:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/aliyun/subtitle/SubtitleView$DefaultValueBuilder;->mTextSize:I

    const v0, 0x3da3d70a    # 0.08f

    iput v0, p0, Lcom/aliyun/subtitle/SubtitleView$DefaultValueBuilder;->mTextSizePercent:F

    const-string v0, "#FFFFFFFF"

    iput-object v0, p0, Lcom/aliyun/subtitle/SubtitleView$DefaultValueBuilder;->mTextColor:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public setColor(Ljava/lang/String;)Lcom/aliyun/subtitle/SubtitleView$DefaultValueBuilder;
    .locals 0

    iput-object p1, p0, Lcom/aliyun/subtitle/SubtitleView$DefaultValueBuilder;->mTextColor:Ljava/lang/String;

    return-object p0
.end method

.method public setLocation(I)Lcom/aliyun/subtitle/SubtitleView$DefaultValueBuilder;
    .locals 0

    iput p1, p0, Lcom/aliyun/subtitle/SubtitleView$DefaultValueBuilder;->mLocation:I

    return-object p0
.end method

.method public setSize(I)Lcom/aliyun/subtitle/SubtitleView$DefaultValueBuilder;
    .locals 0

    iput p1, p0, Lcom/aliyun/subtitle/SubtitleView$DefaultValueBuilder;->mTextSize:I

    return-object p0
.end method

.method public setSizePercent(F)Lcom/aliyun/subtitle/SubtitleView$DefaultValueBuilder;
    .locals 0

    iput p1, p0, Lcom/aliyun/subtitle/SubtitleView$DefaultValueBuilder;->mTextSizePercent:F

    return-object p0
.end method
