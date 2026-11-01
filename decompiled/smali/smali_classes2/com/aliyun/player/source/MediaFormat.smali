.class public final enum Lcom/aliyun/player/source/MediaFormat;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/aliyun/player/source/MediaFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/aliyun/player/source/MediaFormat;

.field public static final enum flv:Lcom/aliyun/player/source/MediaFormat;

.field public static final enum m3u8:Lcom/aliyun/player/source/MediaFormat;

.field public static final enum mp3:Lcom/aliyun/player/source/MediaFormat;

.field public static final enum mp4:Lcom/aliyun/player/source/MediaFormat;


# instance fields
.field private mFormat:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/aliyun/player/source/MediaFormat;

    const-string v1, "mp4"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/aliyun/player/source/MediaFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/aliyun/player/source/MediaFormat;->mp4:Lcom/aliyun/player/source/MediaFormat;

    new-instance v1, Lcom/aliyun/player/source/MediaFormat;

    const-string v3, "m3u8"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v3}, Lcom/aliyun/player/source/MediaFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/aliyun/player/source/MediaFormat;->m3u8:Lcom/aliyun/player/source/MediaFormat;

    new-instance v3, Lcom/aliyun/player/source/MediaFormat;

    const-string v5, "flv"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v5}, Lcom/aliyun/player/source/MediaFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/aliyun/player/source/MediaFormat;->flv:Lcom/aliyun/player/source/MediaFormat;

    new-instance v5, Lcom/aliyun/player/source/MediaFormat;

    const-string v7, "mp3"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v7}, Lcom/aliyun/player/source/MediaFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/aliyun/player/source/MediaFormat;->mp3:Lcom/aliyun/player/source/MediaFormat;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/aliyun/player/source/MediaFormat;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/aliyun/player/source/MediaFormat;->$VALUES:[Lcom/aliyun/player/source/MediaFormat;

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

    iput-object p3, p0, Lcom/aliyun/player/source/MediaFormat;->mFormat:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/aliyun/player/source/MediaFormat;
    .locals 1

    const-class v0, Lcom/aliyun/player/source/MediaFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/aliyun/player/source/MediaFormat;

    return-object p0
.end method

.method public static values()[Lcom/aliyun/player/source/MediaFormat;
    .locals 1

    sget-object v0, Lcom/aliyun/player/source/MediaFormat;->$VALUES:[Lcom/aliyun/player/source/MediaFormat;

    invoke-virtual {v0}, [Lcom/aliyun/player/source/MediaFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/aliyun/player/source/MediaFormat;

    return-object v0
.end method


# virtual methods
.method public getFormat()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/source/MediaFormat;->mFormat:Ljava/lang/String;

    return-object v0
.end method
