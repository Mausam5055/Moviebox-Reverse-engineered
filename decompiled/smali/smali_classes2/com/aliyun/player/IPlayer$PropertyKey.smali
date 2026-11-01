.class public final enum Lcom/aliyun/player/IPlayer$PropertyKey;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aliyun/player/IPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PropertyKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/aliyun/player/IPlayer$PropertyKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/aliyun/player/IPlayer$PropertyKey;

.field public static final enum CONNECT_INFO:Lcom/aliyun/player/IPlayer$PropertyKey;

.field public static final enum RESPONSE_INFO:Lcom/aliyun/player/IPlayer$PropertyKey;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/aliyun/player/IPlayer$PropertyKey;

    const-string v1, "RESPONSE_INFO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/aliyun/player/IPlayer$PropertyKey;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/aliyun/player/IPlayer$PropertyKey;->RESPONSE_INFO:Lcom/aliyun/player/IPlayer$PropertyKey;

    new-instance v1, Lcom/aliyun/player/IPlayer$PropertyKey;

    const-string v3, "CONNECT_INFO"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/aliyun/player/IPlayer$PropertyKey;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/aliyun/player/IPlayer$PropertyKey;->CONNECT_INFO:Lcom/aliyun/player/IPlayer$PropertyKey;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/aliyun/player/IPlayer$PropertyKey;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/aliyun/player/IPlayer$PropertyKey;->$VALUES:[Lcom/aliyun/player/IPlayer$PropertyKey;

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

    iput p3, p0, Lcom/aliyun/player/IPlayer$PropertyKey;->mValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/aliyun/player/IPlayer$PropertyKey;
    .locals 1

    const-class v0, Lcom/aliyun/player/IPlayer$PropertyKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/aliyun/player/IPlayer$PropertyKey;

    return-object p0
.end method

.method public static values()[Lcom/aliyun/player/IPlayer$PropertyKey;
    .locals 1

    sget-object v0, Lcom/aliyun/player/IPlayer$PropertyKey;->$VALUES:[Lcom/aliyun/player/IPlayer$PropertyKey;

    invoke-virtual {v0}, [Lcom/aliyun/player/IPlayer$PropertyKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/aliyun/player/IPlayer$PropertyKey;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/aliyun/player/IPlayer$PropertyKey;->mValue:I

    return v0
.end method
