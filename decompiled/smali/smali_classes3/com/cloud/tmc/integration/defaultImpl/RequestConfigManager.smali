.class public final Lcom/cloud/tmc/integration/defaultImpl/RequestConfigManager;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/integration/proxy/IRequestConfigProxy;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0005\u001a\u00020\u0006H\u0016J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/defaultImpl/RequestConfigManager;",
        "Lcom/cloud/tmc/integration/proxy/IRequestConfigProxy;",
        "()V",
        "requestConfigBean",
        "Lcom/cloud/tmc/integration/model/RequestConfigBean;",
        "preLoadConfig",
        "",
        "repairIntToFloat",
        "",
        "com.cloud.tmc.integration"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private requestConfigBean:Lcom/cloud/tmc/integration/model/RequestConfigBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public preLoadConfig()V
    .locals 3

    sget-object v0, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->INSTANCE:Lcom/cloud/tmc/integration/MiniAppConfigHelper;

    const-string v1, "requestConfig"

    const-string v2, "{\"repairIntToFloat\":true}"

    invoke-virtual {v0, v1, v2}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->getConfigTargetStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lcom/cloud/tmc/integration/model/RequestConfigBean;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/model/RequestConfigBean;

    iput-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/RequestConfigManager;->requestConfigBean:Lcom/cloud/tmc/integration/model/RequestConfigBean;

    return-void
.end method

.method public repairIntToFloat()Z
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/RequestConfigManager;->requestConfigBean:Lcom/cloud/tmc/integration/model/RequestConfigBean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/RequestConfigBean;->getRepairIntToFloat()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method
