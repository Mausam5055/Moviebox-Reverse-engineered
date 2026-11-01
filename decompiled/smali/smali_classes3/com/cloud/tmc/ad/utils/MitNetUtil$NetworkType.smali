.class public final enum Lcom/cloud/tmc/ad/utils/MitNetUtil$NetworkType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/ad/utils/MitNetUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NetworkType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cloud/tmc/ad/utils/MitNetUtil$NetworkType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\t\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/cloud/tmc/ad/utils/MitNetUtil$NetworkType;",
        "",
        "(Ljava/lang/String;I)V",
        "NETWORK_UNKNOWN",
        "NETWORK_WIFI",
        "NETWORK_2G",
        "NETWORK_3G",
        "NETWORK_4G",
        "NETWORK_5G",
        "NETWORK_ETHERNET",
        "com.cloud.tmc.miniad"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cloud/tmc/ad/utils/MitNetUtil$NetworkType;

.field public static final enum NETWORK_2G:Lcom/cloud/tmc/ad/utils/MitNetUtil$NetworkType;

.field public static final enum NETWORK_3G:Lcom/cloud/tmc/ad/utils/MitNetUtil$NetworkType;

.field public static final enum NETWORK_4G:Lcom/cloud/tmc/ad/utils/MitNetUtil$NetworkType;

.field public static final enum NETWORK_5G:Lcom/cloud/tmc/ad/utils/MitNetUtil$NetworkType;

.field public static final enum NETWORK_ETHERNET:Lcom/cloud/tmc/ad/utils/MitNetUtil$NetworkType;

.field public static final enum NETWORK_UNKNOWN:Lcom/cloud/tmc/ad/utils/MitNetUtil$NetworkType;

.field public static final enum NETWORK_WIFI:Lcom/cloud/tmc/ad/utils/MitNetUtil$NetworkType;


# direct methods
.method private static final synthetic $values()[Lcom/cloud/tmc/ad/utils/MitNetUtil$NetworkType;
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/cloud/tmc/ad/utils/MitNetUtil$NetworkType;

    sget-object v1, Lcom/cloud/tmc/ad/utils/MitNetUtil$NetworkType;->NETWORK_UNKNOWN:Lcom/cloud/tmc/ad/utils/MitNetUtil$NetworkType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/ad/utils/MitNetUtil$NetworkType;->NETWORK_WIFI:Lcom/cloud/tmc/ad/utils/MitNetUtil$NetworkType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/ad/utils/MitNetUtil$NetworkType;->NETWORK_2G:Lcom/cloud/tmc/ad/utils/MitNetUtil$NetworkType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/ad/utils/MitNetUtil$NetworkType;->NETWORK_3G:Lcom/cloud/tmc/ad/utils/MitNetUtil$NetworkType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/ad/utils/MitNetUtil$NetworkType;->NETWORK_4G:Lcom/cloud/tmc/ad/utils/MitNetUtil$NetworkType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/ad/utils/MitNetUtil$NetworkType;->NETWORK_5G:Lcom/cloud/tmc/ad/utils/MitNetUtil$NetworkType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/ad/utils/MitNetUtil$NetworkType;->NETWORK_ETHERNET:Lcom/cloud/tmc/ad/utils/MitNetUtil$NetworkType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/cloud/tmc/ad/utils/MitNetUtil$NetworkType;

    const-string v1, "NETWORK_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/ad/utils/MitNetUtil$NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cloud/tmc/ad/utils/MitNetUtil$NetworkType;->NETWORK_UNKNOWN:Lcom/cloud/tmc/ad/utils/MitNetUtil$NetworkType;

    new-instance v0, Lcom/cloud/tmc/ad/utils/MitNetUtil$NetworkType;

    const-string v1, "NETWORK_WIFI"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/ad/utils/MitNetUtil$NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cloud/tmc/ad/utils/MitNetUtil$NetworkType;->NETWORK_WIFI:Lcom/cloud/tmc/ad/utils/MitNetUtil$NetworkType;

    new-instance v0, Lcom/cloud/tmc/ad/utils/MitNetUtil$NetworkType;

    const-string v1, "NETWORK_2G"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/ad/utils/MitNetUtil$NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cloud/tmc/ad/utils/MitNetUtil$NetworkType;->NETWORK_2G:Lcom/cloud/tmc/ad/utils/MitNetUtil$NetworkType;

    new-instance v0, Lcom/cloud/tmc/ad/utils/MitNetUtil$NetworkType;

    const-string v1, "NETWORK_3G"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/ad/utils/MitNetUtil$NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cloud/tmc/ad/utils/MitNetUtil$NetworkType;->NETWORK_3G:Lcom/cloud/tmc/ad/utils/MitNetUtil$NetworkType;

    new-instance v0, Lcom/cloud/tmc/ad/utils/MitNetUtil$NetworkType;

    const-string v1, "NETWORK_4G"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/ad/utils/MitNetUtil$NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cloud/tmc/ad/utils/MitNetUtil$NetworkType;->NETWORK_4G:Lcom/cloud/tmc/ad/utils/MitNetUtil$NetworkType;

    new-instance v0, Lcom/cloud/tmc/ad/utils/MitNetUtil$NetworkType;

    const-string v1, "NETWORK_5G"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/ad/utils/MitNetUtil$NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cloud/tmc/ad/utils/MitNetUtil$NetworkType;->NETWORK_5G:Lcom/cloud/tmc/ad/utils/MitNetUtil$NetworkType;

    new-instance v0, Lcom/cloud/tmc/ad/utils/MitNetUtil$NetworkType;

    const-string v1, "NETWORK_ETHERNET"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/ad/utils/MitNetUtil$NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cloud/tmc/ad/utils/MitNetUtil$NetworkType;->NETWORK_ETHERNET:Lcom/cloud/tmc/ad/utils/MitNetUtil$NetworkType;

    invoke-static {}, Lcom/cloud/tmc/ad/utils/MitNetUtil$NetworkType;->$values()[Lcom/cloud/tmc/ad/utils/MitNetUtil$NetworkType;

    move-result-object v0

    sput-object v0, Lcom/cloud/tmc/ad/utils/MitNetUtil$NetworkType;->$VALUES:[Lcom/cloud/tmc/ad/utils/MitNetUtil$NetworkType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/cloud/tmc/ad/utils/MitNetUtil$NetworkType;
    .locals 1

    const-class v0, Lcom/cloud/tmc/ad/utils/MitNetUtil$NetworkType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cloud/tmc/ad/utils/MitNetUtil$NetworkType;

    return-object p0
.end method

.method public static values()[Lcom/cloud/tmc/ad/utils/MitNetUtil$NetworkType;
    .locals 1

    sget-object v0, Lcom/cloud/tmc/ad/utils/MitNetUtil$NetworkType;->$VALUES:[Lcom/cloud/tmc/ad/utils/MitNetUtil$NetworkType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cloud/tmc/ad/utils/MitNetUtil$NetworkType;

    return-object v0
.end method
