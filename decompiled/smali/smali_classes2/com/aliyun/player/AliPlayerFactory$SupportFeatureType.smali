.class public final enum Lcom/aliyun/player/AliPlayerFactory$SupportFeatureType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aliyun/player/AliPlayerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SupportFeatureType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/aliyun/player/AliPlayerFactory$SupportFeatureType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/aliyun/player/AliPlayerFactory$SupportFeatureType;

.field public static final enum FeatureDolbyAudio:Lcom/aliyun/player/AliPlayerFactory$SupportFeatureType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/aliyun/player/AliPlayerFactory$SupportFeatureType;

    const-string v1, "FeatureDolbyAudio"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/aliyun/player/AliPlayerFactory$SupportFeatureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aliyun/player/AliPlayerFactory$SupportFeatureType;->FeatureDolbyAudio:Lcom/aliyun/player/AliPlayerFactory$SupportFeatureType;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/aliyun/player/AliPlayerFactory$SupportFeatureType;

    aput-object v0, v1, v2

    sput-object v1, Lcom/aliyun/player/AliPlayerFactory$SupportFeatureType;->$VALUES:[Lcom/aliyun/player/AliPlayerFactory$SupportFeatureType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/aliyun/player/AliPlayerFactory$SupportFeatureType;
    .locals 1

    const-class v0, Lcom/aliyun/player/AliPlayerFactory$SupportFeatureType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/aliyun/player/AliPlayerFactory$SupportFeatureType;

    return-object p0
.end method

.method public static values()[Lcom/aliyun/player/AliPlayerFactory$SupportFeatureType;
    .locals 1

    sget-object v0, Lcom/aliyun/player/AliPlayerFactory$SupportFeatureType;->$VALUES:[Lcom/aliyun/player/AliPlayerFactory$SupportFeatureType;

    invoke-virtual {v0}, [Lcom/aliyun/player/AliPlayerFactory$SupportFeatureType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/aliyun/player/AliPlayerFactory$SupportFeatureType;

    return-object v0
.end method
