.class public final Lcom/cloud/tmc/integration/defaultImpl/RenderWebviewStrategyCache;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/render/IRenderWebivewStrategyCache;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\n\u0010\u0003\u001a\u0004\u0018\u00010\u0004H\u0002J\u0008\u0010\u0005\u001a\u00020\u0006H\u0016J\u0008\u0010\u0007\u001a\u00020\u0006H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/defaultImpl/RenderWebviewStrategyCache;",
        "Lcom/cloud/tmc/render/IRenderWebivewStrategyCache;",
        "()V",
        "getData",
        "Lcom/cloud/tmc/render/bean/WebviewCacheStrategyBean;",
        "getShellWebviewCacheStrategy",
        "",
        "getSystemWebviewCacheStrategy",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getData()Lcom/cloud/tmc/render/bean/WebviewCacheStrategyBean;
    .locals 3

    :try_start_0
    sget-object v0, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->INSTANCE:Lcom/cloud/tmc/integration/MiniAppConfigHelper;

    const-string v1, "webviewCacheStrategy"

    const-string v2, "{\"systemWebView\": true, \"shellWebView\": true}"

    invoke-virtual {v0, v1, v2}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->getConfigTargetStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/cloud/tmc/render/bean/WebviewCacheStrategyBean;

    invoke-static {v0, v1}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/render/bean/WebviewCacheStrategyBean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public getShellWebviewCacheStrategy()Z
    .locals 1

    invoke-direct {p0}, Lcom/cloud/tmc/integration/defaultImpl/RenderWebviewStrategyCache;->getData()Lcom/cloud/tmc/render/bean/WebviewCacheStrategyBean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/tmc/render/bean/WebviewCacheStrategyBean;->getShellWebView()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public getSystemWebviewCacheStrategy()Z
    .locals 1

    invoke-direct {p0}, Lcom/cloud/tmc/integration/defaultImpl/RenderWebviewStrategyCache;->getData()Lcom/cloud/tmc/render/bean/WebviewCacheStrategyBean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/tmc/render/bean/WebviewCacheStrategyBean;->getSystemWebView()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method
