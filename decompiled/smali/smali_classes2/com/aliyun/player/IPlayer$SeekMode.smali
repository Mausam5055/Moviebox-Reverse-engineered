.class public final enum Lcom/aliyun/player/IPlayer$SeekMode;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aliyun/player/IPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SeekMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/aliyun/player/IPlayer$SeekMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/aliyun/player/IPlayer$SeekMode;

.field public static final enum Accurate:Lcom/aliyun/player/IPlayer$SeekMode;

.field public static final enum Inaccurate:Lcom/aliyun/player/IPlayer$SeekMode;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/aliyun/player/IPlayer$SeekMode;

    const-string v1, "Accurate"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/aliyun/player/IPlayer$SeekMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/aliyun/player/IPlayer$SeekMode;->Accurate:Lcom/aliyun/player/IPlayer$SeekMode;

    new-instance v1, Lcom/aliyun/player/IPlayer$SeekMode;

    const-string v4, "Inaccurate"

    const/16 v5, 0x10

    invoke-direct {v1, v4, v3, v5}, Lcom/aliyun/player/IPlayer$SeekMode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/aliyun/player/IPlayer$SeekMode;->Inaccurate:Lcom/aliyun/player/IPlayer$SeekMode;

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/aliyun/player/IPlayer$SeekMode;

    aput-object v0, v4, v2

    aput-object v1, v4, v3

    sput-object v4, Lcom/aliyun/player/IPlayer$SeekMode;->$VALUES:[Lcom/aliyun/player/IPlayer$SeekMode;

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

    iput p3, p0, Lcom/aliyun/player/IPlayer$SeekMode;->mValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/aliyun/player/IPlayer$SeekMode;
    .locals 1

    const-class v0, Lcom/aliyun/player/IPlayer$SeekMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/aliyun/player/IPlayer$SeekMode;

    return-object p0
.end method

.method public static values()[Lcom/aliyun/player/IPlayer$SeekMode;
    .locals 1

    sget-object v0, Lcom/aliyun/player/IPlayer$SeekMode;->$VALUES:[Lcom/aliyun/player/IPlayer$SeekMode;

    invoke-virtual {v0}, [Lcom/aliyun/player/IPlayer$SeekMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/aliyun/player/IPlayer$SeekMode;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/aliyun/player/IPlayer$SeekMode;->mValue:I

    return v0
.end method
