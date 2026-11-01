.class public Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0$OooO00o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/integration/callback/LocalAuthPermissionWithNotShowAgainCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;->OooO00o(Lcom/cloud/tmc/integration/structure/Page;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/NativeCallContext;Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;Lcom/cloud/tmc/kernel/model/permission/PermissionModel;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public OooO00o:Z

.field public final synthetic OooO0O0:Ljava/lang/String;

.field public final synthetic OooO0OO:Ljava/lang/String;

.field public final synthetic OooO0Oo:Ljava/lang/String;

.field public final synthetic OooO0o:Ljava/lang/String;

.field public final synthetic OooO0o0:Ljava/lang/String;

.field public final synthetic OooO0oO:Lcom/cloud/tmc/integration/structure/Page;

.field public final synthetic OooO0oo:Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/integration/structure/Page;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0$OooO00o;->OooO0oo:Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0$OooO00o;->OooO0O0:Ljava/lang/String;

    iput-object p3, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0$OooO00o;->OooO0OO:Ljava/lang/String;

    iput-object p4, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0$OooO00o;->OooO0Oo:Ljava/lang/String;

    iput-object p5, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0$OooO00o;->OooO0o0:Ljava/lang/String;

    iput-object p6, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0$OooO00o;->OooO0o:Ljava/lang/String;

    iput-object p7, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0$OooO00o;->OooO0oO:Lcom/cloud/tmc/integration/structure/Page;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0$OooO00o;->OooO00o:Z

    return-void
.end method


# virtual methods
.method public clickNotShowAgagin(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0$OooO00o;->OooO00o:Z

    return-void
.end method

.method public onDenied()V
    .locals 11

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0$OooO00o;->OooO0oo:Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0$OooO00o;->OooO0O0:Ljava/lang/String;

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0$OooO00o;->OooO0OO:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;->OooO0O0(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Tmcintegration:LocalAuthPermissionManager"

    const-string v1, "checkShowPermissionDialog...cancel"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/cloud/tmc/miniapp/utils/ScopeUtils;->OooO00o:Lcom/cloud/tmc/miniapp/utils/ScopeUtils;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0$OooO00o;->OooO0oo:Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;

    iget-object v3, v1, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;->OooO00o:Landroid/content/Context;

    iget-object v4, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0$OooO00o;->OooO0OO:Ljava/lang/String;

    iget-object v5, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0$OooO00o;->OooO0Oo:Ljava/lang/String;

    iget-object v7, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0$OooO00o;->OooO0o0:Ljava/lang/String;

    iget-object v8, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0$OooO00o;->OooO0o:Ljava/lang/String;

    const-string v1, "context"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "scopeName"

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "appId"

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v6, 0x0

    move-object v2, v0

    invoke-virtual/range {v2 .. v10}, Lcom/cloud/tmc/miniapp/utils/ScopeUtils;->OooO00o(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZ)V

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0$OooO00o;->OooO0oo:Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;

    iget-object v1, v1, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;->OooO0O0:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0$OooO00o;->OooO0OO:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0$OooO00o;->OooO0oo:Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;

    iget-object v1, v1, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;->OooO00o:Landroid/content/Context;

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0$OooO00o;->OooO0Oo:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0$OooO00o;->OooO00o:Z

    iget-object v4, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0$OooO00o;->OooO0OO:Ljava/lang/String;

    const-string v5, "notifyMessage"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    invoke-virtual {v0, v1, v2, v3}, Lcom/cloud/tmc/miniapp/utils/ScopeUtils;->OooO00o(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public onGranted(Ljava/lang/Object;)V
    .locals 9
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    sget-object v0, Lcom/cloud/tmc/miniapp/utils/ScopeUtils;->OooO00o:Lcom/cloud/tmc/miniapp/utils/ScopeUtils;

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0$OooO00o;->OooO0oo:Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;

    iget-object v1, p1, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;->OooO00o:Landroid/content/Context;

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0$OooO00o;->OooO0OO:Ljava/lang/String;

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0$OooO00o;->OooO0Oo:Ljava/lang/String;

    iget-object v5, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0$OooO00o;->OooO0o0:Ljava/lang/String;

    iget-object v6, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0$OooO00o;->OooO0o:Ljava/lang/String;

    const-string p1, "context"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "scopeName"

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "appId"

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v4, 0x1

    invoke-virtual/range {v0 .. v8}, Lcom/cloud/tmc/miniapp/utils/ScopeUtils;->OooO00o(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZ)V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0$OooO00o;->OooO0oo:Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0$OooO00o;->OooO0oO:Lcom/cloud/tmc/integration/structure/Page;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0$OooO00o;->OooO0O0:Ljava/lang/String;

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0$OooO00o;->OooO0OO:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v3

    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/App;->getEngineProxy()Lcom/cloud/tmc/kernel/engine/IEngine;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, p1, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;->OooO0O0:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    iget-object p1, p1, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;->OooO0O0:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0$OooO0O0;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendResult...action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Tmcintegration:LocalAuthPermissionManager"

    invoke-static {v4, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v3

    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/App;->getEngineProxy()Lcom/cloud/tmc/kernel/engine/IEngine;

    move-result-object v3

    invoke-interface {v3}, Lcom/cloud/tmc/kernel/engine/IEngine;->getBridge()Lcom/cloud/tmc/kernel/bridge/NativeBridge;

    move-result-object v3

    iget-object v5, v2, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0$OooO0O0;->OooO00o:Lcom/cloud/tmc/kernel/bridge/NativeCallContext;

    iget-object v2, v2, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0$OooO0O0;->OooO0O0:Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;

    invoke-virtual {v2}, Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;->getInnerBridgeResponse()Lcom/cloud/tmc/kernel/bridge/SendToNativeCallback;

    move-result-object v2

    const/4 v6, 0x0

    invoke-interface {v3, v5, v2, v6}, Lcom/cloud/tmc/kernel/bridge/NativeBridge;->sendToNative(Lcom/cloud/tmc/kernel/bridge/NativeCallContext;Lcom/cloud/tmc/kernel/bridge/SendToNativeCallback;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "use local permission send result error:\t"

    invoke-static {v3}, Lcom/cloud/tmc/miniapp/OooO00o;->OooO00o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0$OooO00o;->OooO0oo:Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;

    iget-object p1, p1, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;->OooO00o:Landroid/content/Context;

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0$OooO00o;->OooO0Oo:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0$OooO00o;->OooO00o:Z

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0$OooO00o;->OooO0OO:Ljava/lang/String;

    const-string v3, "notifyMessage"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    sget-object v2, Lcom/cloud/tmc/miniapp/utils/ScopeUtils;->OooO00o:Lcom/cloud/tmc/miniapp/utils/ScopeUtils;

    invoke-virtual {v2, p1, v0, v1}, Lcom/cloud/tmc/miniapp/utils/ScopeUtils;->OooO00o(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_2
    return-void
.end method
