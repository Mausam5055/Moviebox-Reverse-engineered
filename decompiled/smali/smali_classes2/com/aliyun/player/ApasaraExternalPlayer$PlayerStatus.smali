.class public final enum Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aliyun/player/ApasaraExternalPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PlayerStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

.field public static final enum PLAYER_COMPLETION:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

.field public static final enum PLAYER_ERROR:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

.field public static final enum PLAYER_IDLE:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

.field public static final enum PLAYER_INITIALZED:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

.field public static final enum PLAYER_PAUSED:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

.field public static final enum PLAYER_PLAYING:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

.field public static final enum PLAYER_PREPARED:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

.field public static final enum PLAYER_PREPARING:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

.field public static final enum PLAYER_PREPARINIT:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

.field public static final enum PLAYER_STOPPED:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    const-string v1, "PLAYER_IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_IDLE:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    new-instance v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    const-string v3, "PLAYER_INITIALZED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_INITIALZED:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    new-instance v3, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    const-string v5, "PLAYER_PREPARINIT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_PREPARINIT:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    new-instance v5, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    const-string v7, "PLAYER_PREPARING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_PREPARING:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    new-instance v7, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    const-string v9, "PLAYER_PREPARED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_PREPARED:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    new-instance v9, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    const-string v11, "PLAYER_PLAYING"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_PLAYING:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    new-instance v11, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    const-string v13, "PLAYER_PAUSED"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_PAUSED:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    new-instance v13, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    const-string v15, "PLAYER_STOPPED"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_STOPPED:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    new-instance v15, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    const-string v14, "PLAYER_COMPLETION"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_COMPLETION:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    new-instance v14, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    const/16 v12, 0x9

    const/16 v10, 0x63

    const-string v8, "PLAYER_ERROR"

    invoke-direct {v14, v8, v12, v10}, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_ERROR:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    const/16 v8, 0xa

    new-array v8, v8, [Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    aput-object v0, v8, v2

    aput-object v1, v8, v4

    aput-object v3, v8, v6

    const/4 v0, 0x3

    aput-object v5, v8, v0

    const/4 v0, 0x4

    aput-object v7, v8, v0

    const/4 v0, 0x5

    aput-object v9, v8, v0

    const/4 v0, 0x6

    aput-object v11, v8, v0

    const/4 v0, 0x7

    aput-object v13, v8, v0

    const/16 v0, 0x8

    aput-object v15, v8, v0

    aput-object v14, v8, v12

    sput-object v8, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->$VALUES:[Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

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

    iput p3, p0, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->mValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;
    .locals 1

    const-class v0, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    return-object p0
.end method

.method public static values()[Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;
    .locals 1

    sget-object v0, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->$VALUES:[Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    invoke-virtual {v0}, [Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->mValue:I

    return v0
.end method
