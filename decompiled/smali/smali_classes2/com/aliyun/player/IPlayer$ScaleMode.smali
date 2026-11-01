.class public final enum Lcom/aliyun/player/IPlayer$ScaleMode;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aliyun/player/IPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScaleMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/aliyun/player/IPlayer$ScaleMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/aliyun/player/IPlayer$ScaleMode;

.field public static final enum SCALE_ASPECT_FILL:Lcom/aliyun/player/IPlayer$ScaleMode;

.field public static final enum SCALE_ASPECT_FIT:Lcom/aliyun/player/IPlayer$ScaleMode;

.field public static final enum SCALE_TO_FILL:Lcom/aliyun/player/IPlayer$ScaleMode;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/aliyun/player/IPlayer$ScaleMode;

    const-string v1, "SCALE_ASPECT_FIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/aliyun/player/IPlayer$ScaleMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/aliyun/player/IPlayer$ScaleMode;->SCALE_ASPECT_FIT:Lcom/aliyun/player/IPlayer$ScaleMode;

    new-instance v1, Lcom/aliyun/player/IPlayer$ScaleMode;

    const-string v3, "SCALE_ASPECT_FILL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/aliyun/player/IPlayer$ScaleMode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/aliyun/player/IPlayer$ScaleMode;->SCALE_ASPECT_FILL:Lcom/aliyun/player/IPlayer$ScaleMode;

    new-instance v3, Lcom/aliyun/player/IPlayer$ScaleMode;

    const-string v5, "SCALE_TO_FILL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/aliyun/player/IPlayer$ScaleMode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/aliyun/player/IPlayer$ScaleMode;->SCALE_TO_FILL:Lcom/aliyun/player/IPlayer$ScaleMode;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/aliyun/player/IPlayer$ScaleMode;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/aliyun/player/IPlayer$ScaleMode;->$VALUES:[Lcom/aliyun/player/IPlayer$ScaleMode;

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

    iput p3, p0, Lcom/aliyun/player/IPlayer$ScaleMode;->mValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/aliyun/player/IPlayer$ScaleMode;
    .locals 1

    const-class v0, Lcom/aliyun/player/IPlayer$ScaleMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/aliyun/player/IPlayer$ScaleMode;

    return-object p0
.end method

.method public static values()[Lcom/aliyun/player/IPlayer$ScaleMode;
    .locals 1

    sget-object v0, Lcom/aliyun/player/IPlayer$ScaleMode;->$VALUES:[Lcom/aliyun/player/IPlayer$ScaleMode;

    invoke-virtual {v0}, [Lcom/aliyun/player/IPlayer$ScaleMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/aliyun/player/IPlayer$ScaleMode;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/aliyun/player/IPlayer$ScaleMode;->mValue:I

    return v0
.end method
