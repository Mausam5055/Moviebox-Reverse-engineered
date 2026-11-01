.class public final enum Lcom/hisavana/mintegral/check/MBridgeSDKManager$MBridgeSDKInitializeState;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisavana/mintegral/check/MBridgeSDKManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MBridgeSDKInitializeState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hisavana/mintegral/check/MBridgeSDKManager$MBridgeSDKInitializeState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum SDK_STATE_INITIALIZE_FAILURE:Lcom/hisavana/mintegral/check/MBridgeSDKManager$MBridgeSDKInitializeState;

.field public static final enum SDK_STATE_INITIALIZE_SUCCESS:Lcom/hisavana/mintegral/check/MBridgeSDKManager$MBridgeSDKInitializeState;

.field public static final enum SDK_STATE_INITIALIZING:Lcom/hisavana/mintegral/check/MBridgeSDKManager$MBridgeSDKInitializeState;

.field public static final enum SDK_STATE_UN_INITIALIZE:Lcom/hisavana/mintegral/check/MBridgeSDKManager$MBridgeSDKInitializeState;

.field private static final synthetic a:[Lcom/hisavana/mintegral/check/MBridgeSDKManager$MBridgeSDKInitializeState;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/hisavana/mintegral/check/MBridgeSDKManager$MBridgeSDKInitializeState;

    const-string v1, "SDK_STATE_UN_INITIALIZE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hisavana/mintegral/check/MBridgeSDKManager$MBridgeSDKInitializeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hisavana/mintegral/check/MBridgeSDKManager$MBridgeSDKInitializeState;->SDK_STATE_UN_INITIALIZE:Lcom/hisavana/mintegral/check/MBridgeSDKManager$MBridgeSDKInitializeState;

    new-instance v0, Lcom/hisavana/mintegral/check/MBridgeSDKManager$MBridgeSDKInitializeState;

    const-string v1, "SDK_STATE_INITIALIZING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/hisavana/mintegral/check/MBridgeSDKManager$MBridgeSDKInitializeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hisavana/mintegral/check/MBridgeSDKManager$MBridgeSDKInitializeState;->SDK_STATE_INITIALIZING:Lcom/hisavana/mintegral/check/MBridgeSDKManager$MBridgeSDKInitializeState;

    new-instance v0, Lcom/hisavana/mintegral/check/MBridgeSDKManager$MBridgeSDKInitializeState;

    const-string v1, "SDK_STATE_INITIALIZE_SUCCESS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/hisavana/mintegral/check/MBridgeSDKManager$MBridgeSDKInitializeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hisavana/mintegral/check/MBridgeSDKManager$MBridgeSDKInitializeState;->SDK_STATE_INITIALIZE_SUCCESS:Lcom/hisavana/mintegral/check/MBridgeSDKManager$MBridgeSDKInitializeState;

    new-instance v0, Lcom/hisavana/mintegral/check/MBridgeSDKManager$MBridgeSDKInitializeState;

    const-string v1, "SDK_STATE_INITIALIZE_FAILURE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/hisavana/mintegral/check/MBridgeSDKManager$MBridgeSDKInitializeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hisavana/mintegral/check/MBridgeSDKManager$MBridgeSDKInitializeState;->SDK_STATE_INITIALIZE_FAILURE:Lcom/hisavana/mintegral/check/MBridgeSDKManager$MBridgeSDKInitializeState;

    invoke-static {}, Lcom/hisavana/mintegral/check/MBridgeSDKManager$MBridgeSDKInitializeState;->a()[Lcom/hisavana/mintegral/check/MBridgeSDKManager$MBridgeSDKInitializeState;

    move-result-object v0

    sput-object v0, Lcom/hisavana/mintegral/check/MBridgeSDKManager$MBridgeSDKInitializeState;->a:[Lcom/hisavana/mintegral/check/MBridgeSDKManager$MBridgeSDKInitializeState;

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

.method private static synthetic a()[Lcom/hisavana/mintegral/check/MBridgeSDKManager$MBridgeSDKInitializeState;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/hisavana/mintegral/check/MBridgeSDKManager$MBridgeSDKInitializeState;

    sget-object v1, Lcom/hisavana/mintegral/check/MBridgeSDKManager$MBridgeSDKInitializeState;->SDK_STATE_UN_INITIALIZE:Lcom/hisavana/mintegral/check/MBridgeSDKManager$MBridgeSDKInitializeState;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/hisavana/mintegral/check/MBridgeSDKManager$MBridgeSDKInitializeState;->SDK_STATE_INITIALIZING:Lcom/hisavana/mintegral/check/MBridgeSDKManager$MBridgeSDKInitializeState;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/hisavana/mintegral/check/MBridgeSDKManager$MBridgeSDKInitializeState;->SDK_STATE_INITIALIZE_SUCCESS:Lcom/hisavana/mintegral/check/MBridgeSDKManager$MBridgeSDKInitializeState;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/hisavana/mintegral/check/MBridgeSDKManager$MBridgeSDKInitializeState;->SDK_STATE_INITIALIZE_FAILURE:Lcom/hisavana/mintegral/check/MBridgeSDKManager$MBridgeSDKInitializeState;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hisavana/mintegral/check/MBridgeSDKManager$MBridgeSDKInitializeState;
    .locals 1

    const-class v0, Lcom/hisavana/mintegral/check/MBridgeSDKManager$MBridgeSDKInitializeState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hisavana/mintegral/check/MBridgeSDKManager$MBridgeSDKInitializeState;

    return-object p0
.end method

.method public static values()[Lcom/hisavana/mintegral/check/MBridgeSDKManager$MBridgeSDKInitializeState;
    .locals 1

    sget-object v0, Lcom/hisavana/mintegral/check/MBridgeSDKManager$MBridgeSDKInitializeState;->a:[Lcom/hisavana/mintegral/check/MBridgeSDKManager$MBridgeSDKInitializeState;

    invoke-virtual {v0}, [Lcom/hisavana/mintegral/check/MBridgeSDKManager$MBridgeSDKInitializeState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hisavana/mintegral/check/MBridgeSDKManager$MBridgeSDKInitializeState;

    return-object v0
.end method
