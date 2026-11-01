.class public final Lcom/cloud/tmc/miniapp/nativewebview/interfaces/NativeWebviewInterface;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScrollChanged(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "viewId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Lcom/cloud/tmc/integration/minicover/NativeComponentManager;->INSTANCE:Lcom/cloud/tmc/integration/minicover/NativeComponentManager;

    invoke-virtual {v0, p1}, Lcom/cloud/tmc/integration/minicover/NativeComponentManager;->getComponentView(Ljava/lang/String;)Lcom/cloud/tmc/kernel/minicover/base/BaseNativeComponent;

    move-result-object p1

    instance-of v0, p1, Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;->OooO0OO:Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    :try_start_1
    iget-boolean v0, p1, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooOOo:Z

    if-eqz v0, :cond_1

    const-class v0, Lcom/cloud/tmc/integration/proxy/IKeyboardProxy;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/proxy/IKeyboardProxy;

    invoke-interface {v0, p1}, Lcom/cloud/tmc/integration/proxy/IKeyboardProxy;->hideKeyboard(Landroid/view/View;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    :try_start_2
    iget-object p1, p1, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO0OO:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :goto_1
    const-string v0, "receiveUrlIcon"

    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    return-void
.end method

.method public final receiveUrlIcon(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "onReceivedIcon"

    const-string v1, "icon"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "viewId"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    sget-object v1, Lcom/cloud/tmc/integration/minicover/NativeComponentManager;->INSTANCE:Lcom/cloud/tmc/integration/minicover/NativeComponentManager;

    invoke-virtual {v1, p2}, Lcom/cloud/tmc/integration/minicover/NativeComponentManager;->getComponentView(Ljava/lang/String;)Lcom/cloud/tmc/kernel/minicover/base/BaseNativeComponent;

    move-result-object p2

    instance-of v1, p2, Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;

    if-eqz v1, :cond_0

    check-cast p2, Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    iget-object p2, p2, Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;->OooO0OO:Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;

    if-eqz p2, :cond_1

    const-string v1, "iconUrl"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils;->create()Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v1, v2, v0}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    move-result-object v1

    const-string v2, "favicon"

    invoke-virtual {v1, v2, p1}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->build()Lcom/google/gson/JsonObject;

    move-result-object p1

    const-string v1, "create().addProperty(KEY\u2026FAVICON, iconUrl).build()"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p2, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO0o:Lcom/cloud/tmc/miniapp/nativewebview/listener/OooO00o;

    if-eqz p2, :cond_1

    invoke-interface {p2, v0, p1}, Lcom/cloud/tmc/miniapp/nativewebview/listener/OooO00o;->OooO00o(Ljava/lang/String;Lcom/google/gson/JsonObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    const-string p2, "receiveUrlIcon"

    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    return-void
.end method
