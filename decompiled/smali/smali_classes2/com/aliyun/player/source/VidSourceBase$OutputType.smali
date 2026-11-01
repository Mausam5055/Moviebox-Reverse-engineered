.class public final enum Lcom/aliyun/player/source/VidSourceBase$OutputType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aliyun/player/source/VidSourceBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OutputType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/aliyun/player/source/VidSourceBase$OutputType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/aliyun/player/source/VidSourceBase$OutputType;

.field public static final enum cdn:Lcom/aliyun/player/source/VidSourceBase$OutputType;

.field public static final enum oss:Lcom/aliyun/player/source/VidSourceBase$OutputType;


# instance fields
.field private mOutputType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/aliyun/player/source/VidSourceBase$OutputType;

    const-string v1, "oss"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/aliyun/player/source/VidSourceBase$OutputType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/aliyun/player/source/VidSourceBase$OutputType;->oss:Lcom/aliyun/player/source/VidSourceBase$OutputType;

    new-instance v1, Lcom/aliyun/player/source/VidSourceBase$OutputType;

    const-string v3, "cdn"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v3}, Lcom/aliyun/player/source/VidSourceBase$OutputType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/aliyun/player/source/VidSourceBase$OutputType;->cdn:Lcom/aliyun/player/source/VidSourceBase$OutputType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/aliyun/player/source/VidSourceBase$OutputType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/aliyun/player/source/VidSourceBase$OutputType;->$VALUES:[Lcom/aliyun/player/source/VidSourceBase$OutputType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/aliyun/player/source/VidSourceBase$OutputType;->mOutputType:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/aliyun/player/source/VidSourceBase$OutputType;
    .locals 1

    const-class v0, Lcom/aliyun/player/source/VidSourceBase$OutputType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/aliyun/player/source/VidSourceBase$OutputType;

    return-object p0
.end method

.method public static values()[Lcom/aliyun/player/source/VidSourceBase$OutputType;
    .locals 1

    sget-object v0, Lcom/aliyun/player/source/VidSourceBase$OutputType;->$VALUES:[Lcom/aliyun/player/source/VidSourceBase$OutputType;

    invoke-virtual {v0}, [Lcom/aliyun/player/source/VidSourceBase$OutputType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/aliyun/player/source/VidSourceBase$OutputType;

    return-object v0
.end method


# virtual methods
.method public getOutputType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/source/VidSourceBase$OutputType;->mOutputType:Ljava/lang/String;

    return-object v0
.end method
