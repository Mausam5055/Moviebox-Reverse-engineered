.class public final enum Lcom/aliyun/player/IPlayer$RotateMode;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aliyun/player/IPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RotateMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/aliyun/player/IPlayer$RotateMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/aliyun/player/IPlayer$RotateMode;

.field public static final enum ROTATE_0:Lcom/aliyun/player/IPlayer$RotateMode;

.field public static final enum ROTATE_180:Lcom/aliyun/player/IPlayer$RotateMode;

.field public static final enum ROTATE_270:Lcom/aliyun/player/IPlayer$RotateMode;

.field public static final enum ROTATE_90:Lcom/aliyun/player/IPlayer$RotateMode;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/aliyun/player/IPlayer$RotateMode;

    const-string v1, "ROTATE_0"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/aliyun/player/IPlayer$RotateMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/aliyun/player/IPlayer$RotateMode;->ROTATE_0:Lcom/aliyun/player/IPlayer$RotateMode;

    new-instance v1, Lcom/aliyun/player/IPlayer$RotateMode;

    const/4 v3, 0x1

    const/16 v4, 0x5a

    const-string v5, "ROTATE_90"

    invoke-direct {v1, v5, v3, v4}, Lcom/aliyun/player/IPlayer$RotateMode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/aliyun/player/IPlayer$RotateMode;->ROTATE_90:Lcom/aliyun/player/IPlayer$RotateMode;

    new-instance v4, Lcom/aliyun/player/IPlayer$RotateMode;

    const/4 v5, 0x2

    const/16 v6, 0xb4

    const-string v7, "ROTATE_180"

    invoke-direct {v4, v7, v5, v6}, Lcom/aliyun/player/IPlayer$RotateMode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/aliyun/player/IPlayer$RotateMode;->ROTATE_180:Lcom/aliyun/player/IPlayer$RotateMode;

    new-instance v6, Lcom/aliyun/player/IPlayer$RotateMode;

    const/4 v7, 0x3

    const/16 v8, 0x10e

    const-string v9, "ROTATE_270"

    invoke-direct {v6, v9, v7, v8}, Lcom/aliyun/player/IPlayer$RotateMode;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/aliyun/player/IPlayer$RotateMode;->ROTATE_270:Lcom/aliyun/player/IPlayer$RotateMode;

    const/4 v8, 0x4

    new-array v8, v8, [Lcom/aliyun/player/IPlayer$RotateMode;

    aput-object v0, v8, v2

    aput-object v1, v8, v3

    aput-object v4, v8, v5

    aput-object v6, v8, v7

    sput-object v8, Lcom/aliyun/player/IPlayer$RotateMode;->$VALUES:[Lcom/aliyun/player/IPlayer$RotateMode;

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

    iput p3, p0, Lcom/aliyun/player/IPlayer$RotateMode;->mValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/aliyun/player/IPlayer$RotateMode;
    .locals 1

    const-class v0, Lcom/aliyun/player/IPlayer$RotateMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/aliyun/player/IPlayer$RotateMode;

    return-object p0
.end method

.method public static values()[Lcom/aliyun/player/IPlayer$RotateMode;
    .locals 1

    sget-object v0, Lcom/aliyun/player/IPlayer$RotateMode;->$VALUES:[Lcom/aliyun/player/IPlayer$RotateMode;

    invoke-virtual {v0}, [Lcom/aliyun/player/IPlayer$RotateMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/aliyun/player/IPlayer$RotateMode;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/aliyun/player/IPlayer$RotateMode;->mValue:I

    return v0
.end method
