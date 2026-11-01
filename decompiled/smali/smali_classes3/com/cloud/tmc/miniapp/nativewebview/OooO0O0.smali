.class public final Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;
.super Lcom/cloud/tmc/kernel/minicover/base/BaseNativeComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0$OooO00o;
    }
.end annotation


# instance fields
.field public final OooO00o:Lcom/cloud/tmc/kernel/render/IRender;

.field public final OooO0O0:Ljava/lang/String;

.field public final OooO0OO:Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;

.field public final OooO0Oo:Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0$OooO00o;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/render/IRender;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "renderId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "render"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/cloud/tmc/kernel/minicover/base/BaseNativeComponent;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/render/IRender;)V

    iput-object p4, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;->OooO00o:Lcom/cloud/tmc/kernel/render/IRender;

    const-string p2, "NativeWebViewComponent"

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;->OooO0O0:Ljava/lang/String;

    new-instance p2, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-interface {p4}, Lcom/cloud/tmc/kernel/render/IRender;->getActivity()Landroid/app/Activity;

    move-result-object p4

    invoke-direct {v0, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    const/4 p4, 0x0

    invoke-direct {p2, p3, p1, v0, p4}, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;-><init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/ref/WeakReference;Landroid/util/AttributeSet;)V

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;->OooO0OO:Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;

    new-instance p1, Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0$OooO00o;

    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0$OooO00o;-><init>(Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;)V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;->OooO0Oo:Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0$OooO00o;

    return-void
.end method


# virtual methods
.method public getComponentName()Ljava/lang/String;
    .locals 1

    const-string v0, "native-webview"

    return-object v0
.end method

.method public getComponentView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;->OooO0OO:Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;

    return-object v0
.end method

.method public onAddView(Lcom/google/gson/JsonObject;Lcom/cloud/tmc/kernel/minicover/callback/OnViewChangeCallback;)V
    .locals 2

    const-string v0, "onViewChangeCallback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;->OooO0OO:Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;->OooO0Oo:Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0$OooO00o;

    iput-object v1, v0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO0o:Lcom/cloud/tmc/miniapp/nativewebview/listener/OooO00o;

    sget-object v1, Lcom/cloud/tmc/kernel/minicover/lifecycle/BaseComponentLifecycle$ViewAction;->ON_ADD_VIEW:Lcom/cloud/tmc/kernel/minicover/lifecycle/BaseComponentLifecycle$ViewAction;

    invoke-virtual {v0, p1, v1}, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO00o(Lcom/google/gson/JsonObject;Lcom/cloud/tmc/kernel/minicover/lifecycle/BaseComponentLifecycle$ViewAction;)V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;->OooO00o:Lcom/cloud/tmc/kernel/render/IRender;

    invoke-interface {p1}, Lcom/cloud/tmc/kernel/render/IRender;->getPage()Lcom/cloud/tmc/kernel/node/Node;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;->OooO0OO:Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;

    invoke-virtual {v0, p1}, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO00o(Lcom/cloud/tmc/kernel/node/Node;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;->OooO0OO:Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "node"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    instance-of v1, p1, Lcom/cloud/tmc/integration/structure/node/PageNode;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/cloud/tmc/integration/structure/node/PageNode;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Lcom/cloud/tmc/integration/structure/node/PageNode;->addOnKeyboardListener(Lcom/cloud/tmc/kernel/listener/OnKeyboardListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    :try_start_2
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO0OO:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_3

    :cond_1
    :goto_2
    invoke-interface {p2}, Lcom/cloud/tmc/kernel/minicover/callback/OnViewChangeCallback;->onSuccess()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    :goto_3
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;->OooO0O0:Ljava/lang/String;

    const-string v0, "onAddView"

    invoke-static {p2, v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    return-void
.end method

.method public onDestory()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;->OooO0OO:Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO0o()V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;->OooO0OO:Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;->OooO00o:Lcom/cloud/tmc/kernel/render/IRender;

    invoke-interface {v1}, Lcom/cloud/tmc/kernel/render/IRender;->getPage()Lcom/cloud/tmc/kernel/node/Node;

    move-result-object v1

    const-string v2, "render.page"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "node"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    instance-of v2, v1, Lcom/cloud/tmc/integration/structure/node/PageNode;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/cloud/tmc/integration/structure/node/PageNode;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Lcom/cloud/tmc/integration/structure/node/PageNode;->removeOnKeyboardListener(Lcom/cloud/tmc/kernel/listener/OnKeyboardListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    :try_start_2
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO0OO:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v0, v2, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;->OooO0O0:Ljava/lang/String;

    const-string v2, "onDestory"

    invoke-static {v1, v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    return-void
.end method

.method public onEventMessage(Ljava/lang/String;Lcom/google/gson/JsonObject;Lcom/cloud/tmc/kernel/minicover/callback/OnEventCallback;)V
    .locals 5

    const-string v0, "methodName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;->OooO0O0:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEventMessage method = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", args = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_6

    :sswitch_0
    const-string v0, "loadUrl"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_6

    :cond_0
    const-string p1, "url"

    invoke-virtual {p2, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :cond_1
    move-object p1, v2

    :goto_0
    if-nez p1, :cond_2

    return-void

    :cond_2
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;->OooO0OO:Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;

    invoke-virtual {p2, p1}, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO0O0(Ljava/lang/String;)V

    invoke-static {p3, v2, v1, v2}, Lcom/cloud/tmc/kernel/minicover/callback/OnEventCallback$DefaultImpls;->onSuccess$default(Lcom/cloud/tmc/kernel/minicover/callback/OnEventCallback;Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;ILjava/lang/Object;)V

    goto/16 :goto_6

    :sswitch_1
    const-string p2, "getPageUrl"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_6

    :cond_3
    invoke-static {}, Lcom/cloud/tmc/kernel/utils/JsonObjectUtils;->create()Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;

    move-result-object p1

    const-string p2, "pageUrl"

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;->OooO0OO:Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->getPageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/cloud/tmc/kernel/minicover/callback/OnEventCallback;->onSuccess(Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;)V

    goto/16 :goto_6

    :sswitch_2
    const-string p2, "goForward"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto/16 :goto_6

    :cond_4
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;->OooO0OO:Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;

    iget-object p1, p1, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO0o0:Lcom/cloud/tmc/miniapp/nativewebview/view/OooO00o;

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoForward()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;->OooO0OO:Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;

    iget-object p1, p1, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO0o0:Lcom/cloud/tmc/miniapp/nativewebview/view/OooO00o;

    invoke-virtual {p1}, Landroid/webkit/WebView;->goForward()V

    invoke-static {p3, v2, v1, v2}, Lcom/cloud/tmc/kernel/minicover/callback/OnEventCallback$DefaultImpls;->onSuccess$default(Lcom/cloud/tmc/kernel/minicover/callback/OnEventCallback;Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;ILjava/lang/Object;)V

    :cond_5
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;->OooO0OO:Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooOO0o()V

    goto/16 :goto_6

    :sswitch_3
    const-string p2, "reload"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto/16 :goto_6

    :cond_6
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;->OooO0OO:Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooOO0O()V

    invoke-static {p3, v2, v1, v2}, Lcom/cloud/tmc/kernel/minicover/callback/OnEventCallback$DefaultImpls;->onSuccess$default(Lcom/cloud/tmc/kernel/minicover/callback/OnEventCallback;Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;ILjava/lang/Object;)V

    goto/16 :goto_6

    :sswitch_4
    const-string p2, "goBack"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto/16 :goto_6

    :cond_7
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;->OooO0OO:Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO00o()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-static {p3, v2, v1, v2}, Lcom/cloud/tmc/kernel/minicover/callback/OnEventCallback$DefaultImpls;->onSuccess$default(Lcom/cloud/tmc/kernel/minicover/callback/OnEventCallback;Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;ILjava/lang/Object;)V

    :cond_8
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;->OooO0OO:Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooOO0o()V

    goto :goto_6

    :sswitch_5
    const-string v0, "loadDataWithBaseURL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_6

    :cond_9
    const-string p1, "baseUrl"

    invoke-virtual {p2, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_a
    move-object p1, v2

    :goto_1
    if-nez p1, :cond_b

    return-void

    :cond_b
    const-string v0, "pageHtmlData"

    invoke-virtual {p2, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_c
    move-object v0, v2

    :goto_2
    if-nez v0, :cond_d

    return-void

    :cond_d
    const-string v3, "mimeType"

    invoke-virtual {p2, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    if-eqz v3, :cond_e

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_e
    move-object v3, v2

    :goto_3
    if-nez v3, :cond_f

    const-string v3, "text/html"

    :cond_f
    const-string v4, "encoding"

    invoke-virtual {p2, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p2

    if-eqz p2, :cond_10

    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p2

    goto :goto_4

    :cond_10
    move-object p2, v2

    :goto_4
    if-nez p2, :cond_11

    const-string p2, "UTF-8"

    :cond_11
    iget-object v4, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;->OooO0OO:Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;

    invoke-virtual {v4, p1, v0, v3, p2}, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO00o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p3, v2, v1, v2}, Lcom/cloud/tmc/kernel/minicover/callback/OnEventCallback$DefaultImpls;->onSuccess$default(Lcom/cloud/tmc/kernel/minicover/callback/OnEventCallback;Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_6

    :goto_5
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;->OooO0O0:Ljava/lang/String;

    const-string p3, "onEventMessage"

    invoke-static {p2, p3, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_6
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x64cbea98 -> :sswitch_5
        -0x4a012e11 -> :sswitch_4
        -0x37b57e67 -> :sswitch_3
        -0x12f8b743 -> :sswitch_2
        0xde7e82a -> :sswitch_1
        0x141096a9 -> :sswitch_0
    .end sparse-switch
.end method

.method public onInterceptBackPressed()Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;->OooO0O0:Ljava/lang/String;

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;->OooO0OO:Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO0Oo()Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hide keyboard->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;->OooO0OO:Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;

    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO0Oo()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    :try_start_1
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;->OooO00o:Lcom/cloud/tmc/kernel/render/IRender;

    invoke-interface {v1}, Lcom/cloud/tmc/kernel/render/IRender;->getPage()Lcom/cloud/tmc/kernel/node/Node;

    move-result-object v1

    instance-of v3, v1, Lcom/cloud/tmc/integration/structure/node/PageNode;

    if-eqz v3, :cond_0

    check-cast v1, Lcom/cloud/tmc/integration/structure/node/PageNode;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/cloud/tmc/integration/structure/node/PageNode;->getPageContext()Lcom/cloud/tmc/integration/structure/PageContext;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/PageContext;->getContentView()Landroid/view/ViewGroup;

    move-result-object v1

    if-eqz v1, :cond_1

    const-class v3, Lcom/cloud/tmc/integration/proxy/IKeyboardProxy;

    invoke-static {v3}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cloud/tmc/integration/proxy/IKeyboardProxy;

    invoke-interface {v3, v1}, Lcom/cloud/tmc/integration/proxy/IKeyboardProxy;->hideKeyboard(Landroid/view/View;)V

    :cond_1
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;->OooO0O0:Ljava/lang/String;

    const-string v3, "hide keyboard"

    invoke-static {v1, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v2

    :goto_1
    :try_start_2
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;->OooO0O0:Ljava/lang/String;

    const-string v3, "hide keyboard error "

    invoke-static {v2, v3, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0

    :catchall_1
    move-exception v1

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;->OooO0OO:Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;

    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO00o()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;->OooO0O0:Ljava/lang/String;

    const-string v3, "onInterceptBackPressed -> true"

    invoke-static {v1, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;->OooO0OO:Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;

    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooOO0o()V

    return v2

    :cond_3
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;->OooO0O0:Ljava/lang/String;

    const-string v2, "onInterceptBackPressed -> false"

    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return v0

    :goto_2
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;->OooO0O0:Ljava/lang/String;

    const-string v3, "onInterceptBackPressed"

    invoke-static {v2, v3, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method public onPause()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;->OooO0OO:Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO0oO()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;->OooO0O0:Ljava/lang/String;

    const-string v2, "onPause"

    invoke-static {v1, v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onRemove()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;->OooO0OO:Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO0oo()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;->OooO0O0:Ljava/lang/String;

    const-string v2, "onRemove"

    invoke-static {v1, v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;->OooO0OO:Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;->OooO0O0:Ljava/lang/String;

    const-string v2, "onResume"

    invoke-static {v1, v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onStop()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;->OooO0OO:Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooOO0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;->OooO0O0:Ljava/lang/String;

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onUpdateView(Lcom/google/gson/JsonObject;Lcom/cloud/tmc/kernel/minicover/callback/OnViewChangeCallback;)V
    .locals 2

    const-string v0, "onViewChangeCallback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;->OooO0OO:Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;

    sget-object v1, Lcom/cloud/tmc/kernel/minicover/lifecycle/BaseComponentLifecycle$ViewAction;->ON_UPDATE_VIEW:Lcom/cloud/tmc/kernel/minicover/lifecycle/BaseComponentLifecycle$ViewAction;

    invoke-virtual {v0, p1, v1}, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO00o(Lcom/google/gson/JsonObject;Lcom/cloud/tmc/kernel/minicover/lifecycle/BaseComponentLifecycle$ViewAction;)V

    invoke-interface {p2}, Lcom/cloud/tmc/kernel/minicover/callback/OnViewChangeCallback;->onSuccess()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0O0;->OooO0O0:Ljava/lang/String;

    const-string v0, "onUpdateView"

    invoke-static {p2, v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
