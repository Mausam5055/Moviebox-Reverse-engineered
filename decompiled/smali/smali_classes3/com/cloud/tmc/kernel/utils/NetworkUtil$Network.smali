.class public final enum Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/kernel/utils/NetworkUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Network"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;

.field public static final enum NETWORK_MOBILE_FAST:Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;

.field public static final enum NETWORK_MOBILE_MIDDLE:Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;

.field public static final enum NETWORK_MOBILE_SLOW:Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;

.field public static final enum NETWORK_MOBILE_VERY_FAST:Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;

.field public static final enum NETWORK_NO_CONNECTION:Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;

.field public static final enum NETWORK_TYPE_UNKNOWN:Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;

.field public static final enum NETWORK_WIFI:Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;


# direct methods
.method private static synthetic $values()[Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;

    sget-object v1, Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;->NETWORK_WIFI:Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;->NETWORK_MOBILE_FAST:Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;->NETWORK_MOBILE_VERY_FAST:Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;->NETWORK_MOBILE_MIDDLE:Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;->NETWORK_MOBILE_SLOW:Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;->NETWORK_NO_CONNECTION:Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;->NETWORK_TYPE_UNKNOWN:Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;

    const-string v1, "NETWORK_WIFI"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;->NETWORK_WIFI:Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;

    new-instance v0, Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;

    const-string v1, "NETWORK_MOBILE_FAST"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;->NETWORK_MOBILE_FAST:Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;

    new-instance v0, Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;

    const-string v1, "NETWORK_MOBILE_VERY_FAST"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;->NETWORK_MOBILE_VERY_FAST:Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;

    new-instance v0, Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;

    const-string v1, "NETWORK_MOBILE_MIDDLE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;->NETWORK_MOBILE_MIDDLE:Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;

    new-instance v0, Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;

    const-string v1, "NETWORK_MOBILE_SLOW"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;->NETWORK_MOBILE_SLOW:Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;

    new-instance v0, Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;

    const-string v1, "NETWORK_NO_CONNECTION"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;->NETWORK_NO_CONNECTION:Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;

    new-instance v0, Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;

    const-string v1, "NETWORK_TYPE_UNKNOWN"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;->NETWORK_TYPE_UNKNOWN:Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;

    invoke-static {}, Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;->$values()[Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;

    move-result-object v0

    sput-object v0, Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;->$VALUES:[Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;

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

.method public static valueOf(Ljava/lang/String;)Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;
    .locals 1

    const-class v0, Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;

    return-object p0
.end method

.method public static values()[Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;
    .locals 1

    sget-object v0, Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;->$VALUES:[Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;

    invoke-virtual {v0}, [Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;

    return-object v0
.end method
