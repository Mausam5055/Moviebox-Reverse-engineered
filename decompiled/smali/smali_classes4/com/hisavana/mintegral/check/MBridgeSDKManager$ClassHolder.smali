.class final Lcom/hisavana/mintegral/check/MBridgeSDKManager$ClassHolder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisavana/mintegral/check/MBridgeSDKManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ClassHolder"
.end annotation


# static fields
.field private static final a:Lcom/hisavana/mintegral/check/MBridgeSDKManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/hisavana/mintegral/check/MBridgeSDKManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/hisavana/mintegral/check/MBridgeSDKManager;-><init>(Lcom/hisavana/mintegral/check/MBridgeSDKManager$1;)V

    sput-object v0, Lcom/hisavana/mintegral/check/MBridgeSDKManager$ClassHolder;->a:Lcom/hisavana/mintegral/check/MBridgeSDKManager;

    return-void
.end method

.method static synthetic a()Lcom/hisavana/mintegral/check/MBridgeSDKManager;
    .locals 1

    sget-object v0, Lcom/hisavana/mintegral/check/MBridgeSDKManager$ClassHolder;->a:Lcom/hisavana/mintegral/check/MBridgeSDKManager;

    return-object v0
.end method
