.class public final Lcom/cloud/tmc/miniapp/dialog/o0O0O00;
.super Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o<",
        "Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;",
        ">;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field public final OooO00o:Lcom/cloud/tmc/integration/structure/App;

.field public final OooO0O0:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

.field public final OooO0OO:Lkotlin/Lazy;

.field public final OooO0Oo:Lkotlin/Lazy;

.field public final OooO0o:Lkotlin/Lazy;

.field public final OooO0o0:Lkotlin/Lazy;

.field public final OooO0oO:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/dialog/o0O0O00;->OooO00o:Lcom/cloud/tmc/integration/structure/App;

    iput-object p3, p0, Lcom/cloud/tmc/miniapp/dialog/o0O0O00;->OooO0O0:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    new-instance p1, Lcom/cloud/tmc/miniapp/dialog/o0O0O00$OooO;

    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/dialog/o0O0O00$OooO;-><init>(Lcom/cloud/tmc/miniapp/dialog/o0O0O00;)V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o0O0O00;->OooO0OO:Lkotlin/Lazy;

    new-instance p1, Lcom/cloud/tmc/miniapp/dialog/o0O0O00$OooO0o;

    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/dialog/o0O0O00$OooO0o;-><init>(Lcom/cloud/tmc/miniapp/dialog/o0O0O00;)V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o0O0O00;->OooO0Oo:Lkotlin/Lazy;

    new-instance p1, Lcom/cloud/tmc/miniapp/dialog/o0O0O00$OooOO0;

    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/dialog/o0O0O00$OooOO0;-><init>(Lcom/cloud/tmc/miniapp/dialog/o0O0O00;)V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o0O0O00;->OooO0o0:Lkotlin/Lazy;

    new-instance p1, Lcom/cloud/tmc/miniapp/dialog/o0O0O00$OooO0OO;

    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/dialog/o0O0O00$OooO0OO;-><init>(Lcom/cloud/tmc/miniapp/dialog/o0O0O00;)V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o0O0O00;->OooO0o:Lkotlin/Lazy;

    new-instance p1, Lcom/cloud/tmc/miniapp/dialog/o0O0O00$OooOOO;

    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/dialog/o0O0O00$OooOOO;-><init>(Lcom/cloud/tmc/miniapp/dialog/o0O0O00;)V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o0O0O00;->OooO0oO:Lkotlin/Lazy;

    :try_start_0
    sget p1, Lcom/cloud/tmc/miniapp/R$layout;->mini_layout_privacy_agreement_smiple_dialog:I

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setContentView(I)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setBackgroundDimEnabled(Z)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setCancelable(Z)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/o0O0O00;->OooO00o()Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance p2, Lcom/cloud/tmc/miniapp/dialog/m;

    invoke-direct {p2, p0}, Lcom/cloud/tmc/miniapp/dialog/m;-><init>(Lcom/cloud/tmc/miniapp/dialog/o0O0O00;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/o0O0O00;->OooO0OO()Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance p2, Lcom/cloud/tmc/miniapp/dialog/n;

    invoke-direct {p2, p0}, Lcom/cloud/tmc/miniapp/dialog/n;-><init>(Lcom/cloud/tmc/miniapp/dialog/o0O0O00;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    new-instance p1, Lcom/cloud/tmc/miniapp/dialog/o0O0O00$OooO00o;

    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/dialog/o0O0O00$OooO00o;-><init>(Lcom/cloud/tmc/miniapp/dialog/o0O0O00;)V

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->addOnShowListener(Lcom/cloud/tmc/miniapp/dialog/OooO0O0$Oooo000;)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    new-instance p1, Lcom/cloud/tmc/miniapp/dialog/o0O0O00$OooO0O0;

    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/dialog/o0O0O00$OooO0O0;-><init>(Lcom/cloud/tmc/miniapp/dialog/o0O0O00;)V

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->addOnCancelListener(Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOOO0;)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    const-string p2, "PrivacyAgreementSimpleDialog"

    const-string p3, "updateDialogLayout"

    invoke-static {p2, p3, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method public static final OooO00o(Lcom/cloud/tmc/miniapp/dialog/o0O0O00;Landroid/view/View;)V
    .locals 8

    const-class p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    const-string v0, "PrivacyAgreementSimpleDialog"

    const-string v1, "this$0"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/dialog/o0O0O00;->OooO00o:Lcom/cloud/tmc/integration/structure/App;

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/dialog/o0O0O00;->OooO0O0:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    invoke-static {}, Lcom/cloud/tmc/integration/utils/FastClickUtil;->isFastDoubleClick()Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_7

    :cond_0
    const/4 v3, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :catchall_0
    move-exception v4

    goto :goto_1

    :cond_1
    move-object v5, v3

    :goto_0
    const-string v6, "privacy_click"

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    invoke-interface {v4, v5, v6, v7}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->recordForCommon(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    sget-object v4, Lcom/cloud/tmc/integration/utils/DeviceUtil;->INSTANCE:Lcom/cloud/tmc/integration/utils/DeviceUtil;

    const-string v5, ""

    invoke-virtual {v4, v5}, Lcom/cloud/tmc/integration/utils/DeviceUtil;->updateIsNewUserStatus(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    :try_start_1
    invoke-static {v0, v4}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :goto_2
    if-eqz v1, :cond_2

    :try_start_2
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/App;->getAppContext()Lcom/cloud/tmc/integration/structure/AppContext;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-interface {v4}, Lcom/cloud/tmc/integration/structure/AppContext;->getContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_2

    sget-object v4, Lcom/cloud/tmc/miniapp/bridge/PrivacyBridge;->Companion:Lcom/cloud/tmc/miniapp/bridge/PrivacyBridge$OooO00o;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/cloud/tmc/miniapp/bridge/PrivacyBridge;->access$getPrivacySimpleDialogMap$cp()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/cloud/tmc/miniapp/bridge/PrivacyBridge;->access$getPrivacySimpleDialogMap$cp()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-class v4, Lcom/cloud/tmc/integration/point/PermissionDialogPoint;

    invoke-static {v4}, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->as(Ljava/lang/Class;)Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->create()Lcom/cloud/tmc/kernel/extension/Extension;

    move-result-object v4

    check-cast v4, Lcom/cloud/tmc/integration/point/PermissionDialogPoint;

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v5

    const-string v6, "app.appId"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/App;->getStartToken()J

    move-result-wide v6

    invoke-interface {v4, v5, v6, v7}, Lcom/cloud/tmc/integration/point/PermissionDialogPoint;->privacyDialogDismiss(Ljava/lang/String;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v4

    :try_start_3
    const-string v5, "privacyDialogDismiss"

    invoke-static {v0, v5, v4}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p1

    goto :goto_5

    :cond_2
    :goto_3
    const-string v4, "1"

    if-eqz v2, :cond_3

    :try_start_4
    new-instance v5, Lcom/google/gson/JsonObject;

    invoke-direct {v5}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v6, "status"

    const-string v7, "agreeClick"

    invoke-virtual {v5, v6, v7}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "clickBtn"

    invoke-virtual {v5, v6, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V

    :cond_3
    if-eqz v2, :cond_4

    invoke-interface {v2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->close()V

    :cond_4
    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    if-eqz v1, :cond_5

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_5
    move-object v2, v3

    :goto_4
    const-string v5, "miniapp_agree_popup_click"

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string v7, "miniappid"

    if-eqz v1, :cond_6

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v3

    :cond_6
    invoke-virtual {v6, v7, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "content"

    invoke-virtual {v6, v1, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-interface {p1, v2, v5, v6}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->recordForCommon(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_6

    :goto_5
    :try_start_5
    const-string v1, "callback error"

    invoke-static {v0, v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :goto_6
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->dismiss()V

    :goto_7
    return-void

    :catchall_3
    move-exception p1

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->dismiss()V

    throw p1
.end method

.method public static final OooO0O0(Lcom/cloud/tmc/miniapp/dialog/o0O0O00;Landroid/view/View;)V
    .locals 6

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o0O0O00;->OooO0O0:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v1, "status"

    const-string v2, "cancel"

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "clickBtn"

    const-string v2, "2"

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o0O0O00;->OooO0O0:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    const/4 p1, 0x0

    :try_start_1
    const-class v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/dialog/o0O0O00;->OooO00o:Lcom/cloud/tmc/integration/structure/App;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, p1

    :goto_1
    const-string v2, "miniapp_agree_popup_click"

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "miniappid"

    iget-object v5, p0, Lcom/cloud/tmc/miniapp/dialog/o0O0O00;->OooO00o:Lcom/cloud/tmc/integration/structure/App;

    if-eqz v5, :cond_3

    invoke-interface {v5}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_3
    move-object v5, p1

    :goto_2
    invoke-virtual {v3, v4, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "content"

    const-string v5, "0"

    invoke-virtual {v3, v4, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-interface {v0, v1, v2, v3}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->recordForCommon(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    :try_start_2
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->dismiss()V

    sget-object v0, Lcom/cloud/tmc/miniapp/bridge/PrivacyBridge;->Companion:Lcom/cloud/tmc/miniapp/bridge/PrivacyBridge$OooO00o;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/cloud/tmc/miniapp/bridge/PrivacyBridge;->access$getPrivacySimpleDialogMap$cp()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/dialog/o0O0O00;->OooO00o:Lcom/cloud/tmc/integration/structure/App;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_4
    move-object v1, p1

    :goto_3
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/cloud/tmc/miniapp/bridge/PrivacyBridge;->access$getPrivacySimpleDialogMap$cp()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object p0, p0, Lcom/cloud/tmc/miniapp/dialog/o0O0O00;->OooO00o:Lcom/cloud/tmc/integration/structure/App;

    if-eqz p0, :cond_5

    invoke-interface {p0}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object p1

    :cond_5
    invoke-static {v0}, Lkotlin/jvm/internal/TypeIntrinsics;->d(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    :goto_4
    const-string p1, "PrivacyAgreementSimpleDialog"

    const-string v0, "tvPrivacyCancel error"

    invoke-static {p1, v0, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    :goto_5
    return-void
.end method


# virtual methods
.method public final OooO00o()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/o0O0O00;->OooO0o:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final OooO00o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)Lcom/cloud/tmc/miniapp/dialog/o0O0O00;
    .locals 19

    move-object/from16 v10, p0

    move-object/from16 v0, p1

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move/from16 v1, p9

    const-string v2, "title"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "privacyPolocyContent"

    move-object/from16 v3, p3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "userAgreementContent"

    move-object/from16 v4, p4

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "privacyPolocyUrl"

    move-object/from16 v5, p5

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "userAgreementUrl"

    move-object/from16 v8, p6

    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object v2, v10, Lcom/cloud/tmc/miniapp/dialog/o0O0O00;->OooO0OO:Lkotlin/Lazy;

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    if-eqz v1, :cond_2

    iget-object v0, v10, Lcom/cloud/tmc/miniapp/dialog/o0O0O00;->OooO0OO:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    :cond_2
    :goto_1
    if-eqz v11, :cond_4

    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/cloud/tmc/miniapp/dialog/o0O0O00;->OooO0OO()Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_2
    if-eqz v12, :cond_6

    invoke-virtual/range {p8 .. p8}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/cloud/tmc/miniapp/dialog/o0O0O00;->OooO00o()Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    :goto_3
    const-string v0, ""

    if-eqz p10, :cond_7

    move-object/from16 v1, p2

    goto :goto_5

    :cond_7
    if-eqz p11, :cond_8

    :try_start_1
    sget v1, Lcom/cloud/tmc/miniapp/R$string;->mini_privacy_reading_notice_only_en:I

    invoke-virtual {v10, v1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_9

    goto :goto_4

    :cond_8
    sget v1, Lcom/cloud/tmc/miniapp/R$string;->mini_privacy_reading_notice:I

    invoke-virtual {v10, v1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_9

    :goto_4
    move-object v1, v0

    :cond_9
    :goto_5
    if-eqz p10, :cond_a

    goto :goto_7

    :cond_a
    if-eqz p11, :cond_c

    sget v2, Lcom/cloud/tmc/miniapp/R$string;->mini_privacy_privacy_policy_only_en:I

    invoke-virtual {v10, v2}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_b

    goto :goto_6

    :cond_b
    move-object v3, v2

    goto :goto_7

    :cond_c
    sget v2, Lcom/cloud/tmc/miniapp/R$string;->mini_privacy_privacy_policy:I

    invoke-virtual {v10, v2}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_b

    :goto_6
    move-object v3, v0

    :goto_7
    if-eqz p10, :cond_d

    move-object v7, v4

    goto :goto_9

    :cond_d
    if-eqz p11, :cond_f

    sget v2, Lcom/cloud/tmc/miniapp/R$string;->mini_privacy_user_agreement_only_en:I

    invoke-virtual {v10, v2}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_e

    goto :goto_8

    :cond_e
    move-object v7, v2

    goto :goto_9

    :cond_f
    sget v2, Lcom/cloud/tmc/miniapp/R$string;->mini_privacy_user_agreement:I

    invoke-virtual {v10, v2}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_e

    :goto_8
    move-object v7, v0

    :goto_9
    if-eqz v1, :cond_10

    const-string v14, "#"

    const/16 v17, 0x6

    const/16 v18, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v13, v1

    invoke-static/range {v13 .. v18}, Lkotlin/text/StringsKt;->o0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v2

    const-string v14, "#"

    const/16 v17, 0x6

    const/16 v18, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v13, v1

    invoke-static/range {v13 .. v18}, Lkotlin/text/StringsKt;->v0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v6

    const-string v14, "*"

    const/16 v17, 0x6

    const/16 v18, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v13, v1

    invoke-static/range {v13 .. v18}, Lkotlin/text/StringsKt;->o0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v9

    const-string v14, "*"

    const/16 v17, 0x6

    const/16 v18, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v13, v1

    invoke-static/range {v13 .. v18}, Lkotlin/text/StringsKt;->v0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v13

    move-object/from16 v0, p0

    move-object/from16 v4, p5

    move v5, v6

    move v6, v9

    move-object/from16 v8, p6

    move v9, v13

    invoke-virtual/range {v0 .. v9}, Lcom/cloud/tmc/miniapp/dialog/o0O0O00;->OooO00o(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;I)V

    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/cloud/tmc/miniapp/dialog/o0O0O00;->OooO00o()Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_11

    goto :goto_a

    :cond_11
    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/cloud/tmc/miniapp/dialog/o0O0O00;->OooO0OO()Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_12

    goto :goto_b

    :cond_12
    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/cloud/tmc/miniapp/dialog/o0O0O00;->OooO0O0()Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_13

    goto :goto_c

    :cond_13
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :goto_c
    invoke-virtual/range {p0 .. p0}, Lcom/cloud/tmc/miniapp/dialog/o0O0O00;->OooO0O0()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-static {v0}, Lcom/cloud/tmc/integration/utils/ext/TextViewExtKt;->transparentHighlightColor(Landroid/widget/TextView;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_14
    return-object v10
.end method

.method public final OooO00o(Landroid/view/Window;)V
    .locals 5

    const-string v0, "window"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    const/4 v3, 0x0

    if-lt v1, v2, :cond_0

    invoke-static {p1, v3}, Lcom/cloud/tmc/miniapp/dialog/l;->a(Landroid/view/Window;Z)V

    :cond_0
    const/high16 v2, 0x8000000

    invoke-virtual {p1, v2}, Landroid/view/Window;->clearFlags(I)V

    const/high16 v2, -0x80000000

    invoke-virtual {p1, v2}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v2

    or-int/lit16 v2, v2, 0x200

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    invoke-virtual {p1, v3}, Landroid/view/Window;->setNavigationBarColor(I)V

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "uimode"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type android.app.UiModeManager"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/app/UiModeManager;

    invoke-virtual {v2}, Landroid/app/UiModeManager;->getNightMode()I

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x1a

    if-lt v1, v0, :cond_1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    or-int/lit8 v0, v0, 0x10

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_1
    return-void
.end method

.method public final OooO00o(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;I)V
    .locals 6

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/o0O0O00;->OooO0O0()Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p1, v2, p2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v3

    invoke-virtual {v3, p7}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/cloud/tmc/miniapp/R$color;->mini_color_primary:I

    invoke-virtual {p0, v4}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->getColor(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lcom/cloud/tmc/miniapp/dialog/o0O0O00$OooOO0O;

    invoke-direct {v5, p8, p0}, Lcom/cloud/tmc/miniapp/dialog/o0O0O00$OooOO0O;-><init>(Ljava/lang/String;Lcom/cloud/tmc/miniapp/dialog/o0O0O00;)V

    invoke-static {v1, v3, v4, v2, v5}, Lcom/cloud/tmc/integration/utils/ext/SpannableExtKt;->appendClickable(Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;Ljava/lang/Integer;ZLkotlin/jvm/functions/Function1;)Landroid/text/SpannableStringBuilder;

    const/16 p8, 0x21

    const/4 v3, 0x1

    :try_start_0
    new-instance v4, Landroid/text/style/StyleSpan;

    invoke-direct {v4, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p7}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, p2

    invoke-virtual {v1, v4, p2, v5, p8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    add-int/2addr p5, v3

    :try_start_1
    invoke-virtual {p1, p5, p6}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    sget p5, Lcom/cloud/tmc/miniapp/R$color;->mini_color_primary:I

    invoke-virtual {p0, p5}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->getColor(I)I

    move-result p5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    new-instance v4, Lcom/cloud/tmc/miniapp/dialog/o0O0O00$OooOOO0;

    invoke-direct {v4, p4, p0}, Lcom/cloud/tmc/miniapp/dialog/o0O0O00$OooOOO0;-><init>(Ljava/lang/String;Lcom/cloud/tmc/miniapp/dialog/o0O0O00;)V

    invoke-static {v1, p2, p5, v2, v4}, Lcom/cloud/tmc/integration/utils/ext/SpannableExtKt;->appendClickable(Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;Ljava/lang/Integer;ZLkotlin/jvm/functions/Function1;)Landroid/text/SpannableStringBuilder;

    :try_start_2
    invoke-virtual {p7}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p6, p2

    add-int/lit8 p6, p6, -0x4

    new-instance p2, Landroid/text/style/StyleSpan;

    invoke-direct {p2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/2addr p3, p6

    invoke-virtual {v1, p2, p6, p3, p8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    add-int/2addr p9, v3

    :try_start_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1, p9, p2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    new-instance p1, Landroid/text/SpannedString;

    invoke-direct {p1, v1}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public final OooO0O0()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/o0O0O00;->OooO0Oo:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final OooO0OO()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/o0O0O00;->OooO0o0:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final OooO0Oo()V
    .locals 3

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_3

    invoke-static {}, Lcom/cloud/tmc/miniutils/util/BarUtils;->getNavBarHeight()I

    move-result v0

    const/16 v1, 0x32

    if-le v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->getDialog()Lcom/cloud/tmc/miniapp/dialog/OooO0O0;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, v1}, Lcom/cloud/tmc/miniapp/dialog/o0O0O00;->OooO00o(Landroid/view/Window;)V

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/dialog/o0O0O00;->OooO0oO:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v2}, Lcom/cloud/tmc/miniutils/util/SizeUtils;->dp2px(F)I

    move-result v2

    add-int/2addr v0, v2

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/o0O0O00;->OooO0oO:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    :cond_2
    const/high16 v0, 0x41e00000    # 28.0f

    invoke-static {v0}, Lcom/cloud/tmc/miniutils/util/SizeUtils;->dp2px(F)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    const-string v1, "PrivacyAgreementSimpleDialog"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_3
    return-void
.end method
