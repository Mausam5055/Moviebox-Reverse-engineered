.class public final enum Lcom/aliyun/player/IPlayer$MirrorMode;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aliyun/player/IPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MirrorMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/aliyun/player/IPlayer$MirrorMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/aliyun/player/IPlayer$MirrorMode;

.field public static final enum MIRROR_MODE_HORIZONTAL:Lcom/aliyun/player/IPlayer$MirrorMode;

.field public static final enum MIRROR_MODE_NONE:Lcom/aliyun/player/IPlayer$MirrorMode;

.field public static final enum MIRROR_MODE_VERTICAL:Lcom/aliyun/player/IPlayer$MirrorMode;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/aliyun/player/IPlayer$MirrorMode;

    const-string v1, "MIRROR_MODE_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/aliyun/player/IPlayer$MirrorMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/aliyun/player/IPlayer$MirrorMode;->MIRROR_MODE_NONE:Lcom/aliyun/player/IPlayer$MirrorMode;

    new-instance v1, Lcom/aliyun/player/IPlayer$MirrorMode;

    const-string v3, "MIRROR_MODE_HORIZONTAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/aliyun/player/IPlayer$MirrorMode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/aliyun/player/IPlayer$MirrorMode;->MIRROR_MODE_HORIZONTAL:Lcom/aliyun/player/IPlayer$MirrorMode;

    new-instance v3, Lcom/aliyun/player/IPlayer$MirrorMode;

    const-string v5, "MIRROR_MODE_VERTICAL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/aliyun/player/IPlayer$MirrorMode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/aliyun/player/IPlayer$MirrorMode;->MIRROR_MODE_VERTICAL:Lcom/aliyun/player/IPlayer$MirrorMode;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/aliyun/player/IPlayer$MirrorMode;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/aliyun/player/IPlayer$MirrorMode;->$VALUES:[Lcom/aliyun/player/IPlayer$MirrorMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/aliyun/player/IPlayer$MirrorMode;->mValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/aliyun/player/IPlayer$MirrorMode;
    .locals 1

    const-class v0, Lcom/aliyun/player/IPlayer$MirrorMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/aliyun/player/IPlayer$MirrorMode;

    return-object p0
.end method

.method public static values()[Lcom/aliyun/player/IPlayer$MirrorMode;
    .locals 1

    sget-object v0, Lcom/aliyun/player/IPlayer$MirrorMode;->$VALUES:[Lcom/aliyun/player/IPlayer$MirrorMode;

    invoke-virtual {v0}, [Lcom/aliyun/player/IPlayer$MirrorMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/aliyun/player/IPlayer$MirrorMode;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/aliyun/player/IPlayer$MirrorMode;->mValue:I

    return v0
.end method
