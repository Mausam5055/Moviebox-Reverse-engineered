.class public final Lcom/cloud/tmc/kernel/deftimpl/DefaultSDKConfig;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/intf/ISDKConfig;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016J\u0008\u0010\u0005\u001a\u00020\u0006H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/cloud/tmc/kernel/deftimpl/DefaultSDKConfig;",
        "Lcom/cloud/tmc/kernel/intf/ISDKConfig;",
        "()V",
        "getAppVersion",
        "",
        "openShareTarget",
        "",
        "com.cloud.tmc.kernel"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppVersion()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public openShareTarget()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
