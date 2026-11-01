.class public final Lcom/cloud/tmc/miniapp/defaultimpl/WebViewImp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/proxy/render/IWebViewFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final OooO00o(Lcom/cloud/tmc/kernel/render/IWebView;)Lcom/cloud/tmc/kernel/render/IWebView;
    .locals 3

    const-class v0, Lcom/cloud/tmc/kernel/service/ConfigService;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/service/ConfigService;

    sget-object v1, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->INSTANCE:Lcom/cloud/tmc/integration/MiniAppConfigHelper;

    invoke-virtual {v1}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->getDEFAULT_KEY_LAYER_HARDWARE()Z

    move-result v1

    const-string v2, "layerHardware"

    invoke-interface {v0, v2, v1}, Lcom/cloud/tmc/kernel/service/ConfigService;->getConfigBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    return-object p1
.end method

.method public clear()V
    .locals 0

    return-void
.end method

.method public createWebView(Landroid/content/Context;)Lcom/cloud/tmc/kernel/render/IWebView;
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/cloud/tmc/render/system/SystemWebView;

    const/4 v2, 0x2

    invoke-direct {v1, p1, v0, v2, v0}, Lcom/cloud/tmc/render/system/SystemWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, v1}, Lcom/cloud/tmc/miniapp/defaultimpl/WebViewImp;->OooO00o(Lcom/cloud/tmc/kernel/render/IWebView;)Lcom/cloud/tmc/kernel/render/IWebView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "miniapp create webview fail : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "miniapp"

    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public createWebView(Landroid/content/Context;I)Lcom/cloud/tmc/kernel/render/IWebView;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/cloud/tmc/integration/utils/AppPrepareUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppPrepareUtils;

    invoke-virtual {v1, p2}, Lcom/cloud/tmc/integration/utils/BaseAppPrepareUtils;->isShellType(I)Z

    move-result p2

    const/4 v1, 0x2

    if-eqz p2, :cond_0

    new-instance p2, Lcom/cloud/tmc/render/system/ShellWebView;

    invoke-direct {p2, p1, v0, v1, v0}, Lcom/cloud/tmc/render/system/ShellWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, p2}, Lcom/cloud/tmc/miniapp/defaultimpl/WebViewImp;->OooO00o(Lcom/cloud/tmc/kernel/render/IWebView;)Lcom/cloud/tmc/kernel/render/IWebView;

    :goto_0
    move-object v0, p2

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    new-instance p2, Lcom/cloud/tmc/render/system/SystemWebView;

    invoke-direct {p2, p1, v0, v1, v0}, Lcom/cloud/tmc/render/system/SystemWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, p2}, Lcom/cloud/tmc/miniapp/defaultimpl/WebViewImp;->OooO00o(Lcom/cloud/tmc/kernel/render/IWebView;)Lcom/cloud/tmc/kernel/render/IWebView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "miniapp create webview fail : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "miniapp"

    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-object v0
.end method
