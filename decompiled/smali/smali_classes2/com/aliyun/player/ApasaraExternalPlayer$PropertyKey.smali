.class public final enum Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aliyun/player/ApasaraExternalPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PropertyKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;

.field public static final enum PROPERTY_KEY_CONNECT_INFO:Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;

.field public static final enum PROPERTY_KEY_DELAY_INFO:Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;

.field public static final enum PROPERTY_KEY_NETWORK_IS_CONNECTED:Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;

.field public static final enum PROPERTY_KEY_OPEN_TIME_STR:Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;

.field public static final enum PROPERTY_KEY_PROBE_STR:Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;

.field public static final enum PROPERTY_KEY_REMAIN_LIVE_SEG:Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;

.field public static final enum PROPERTY_KEY_RESPONSE_INFO:Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;

.field public static final enum PROPERTY_KEY_VIDEO_BUFFER_LEN:Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;

    const-string v1, "PROPERTY_KEY_RESPONSE_INFO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;->PROPERTY_KEY_RESPONSE_INFO:Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;

    new-instance v1, Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;

    const-string v3, "PROPERTY_KEY_CONNECT_INFO"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;->PROPERTY_KEY_CONNECT_INFO:Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;

    new-instance v3, Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;

    const-string v5, "PROPERTY_KEY_OPEN_TIME_STR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;->PROPERTY_KEY_OPEN_TIME_STR:Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;

    new-instance v5, Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;

    const-string v7, "PROPERTY_KEY_PROBE_STR"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;->PROPERTY_KEY_PROBE_STR:Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;

    new-instance v7, Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;

    const-string v9, "PROPERTY_KEY_VIDEO_BUFFER_LEN"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;->PROPERTY_KEY_VIDEO_BUFFER_LEN:Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;

    new-instance v9, Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;

    const-string v11, "PROPERTY_KEY_DELAY_INFO"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;->PROPERTY_KEY_DELAY_INFO:Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;

    new-instance v11, Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;

    const-string v13, "PROPERTY_KEY_REMAIN_LIVE_SEG"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;->PROPERTY_KEY_REMAIN_LIVE_SEG:Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;

    new-instance v13, Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;

    const-string v15, "PROPERTY_KEY_NETWORK_IS_CONNECTED"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;->PROPERTY_KEY_NETWORK_IS_CONNECTED:Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;

    const/16 v15, 0x8

    new-array v15, v15, [Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    sput-object v15, Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;->$VALUES:[Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;

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

.method public static valueOf(Ljava/lang/String;)Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;
    .locals 1

    const-class v0, Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;

    return-object p0
.end method

.method public static values()[Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;
    .locals 1

    sget-object v0, Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;->$VALUES:[Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;

    invoke-virtual {v0}, [Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;

    return-object v0
.end method
