.class public Lcom/cloud/tmc/miniapp/defaultimpl/OooO00o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic OooO00o:Ljava/lang/String;

.field public final synthetic OooO0O0:Ljava/lang/String;

.field public final synthetic OooO0OO:Lcom/cloud/tmc/integration/model/AppModel;

.field public final synthetic OooO0Oo:Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/integration/model/AppModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO00o;->OooO0Oo:Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO00o;->OooO00o:Ljava/lang/String;

    iput-object p3, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO00o;->OooO0O0:Ljava/lang/String;

    iput-object p4, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO00o;->OooO0OO:Lcom/cloud/tmc/integration/model/AppModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    :try_start_0
    sget-object v0, Lcom/cloud/tmc/miniapp/utils/ScopeUtils;->OooO00o:Lcom/cloud/tmc/miniapp/utils/ScopeUtils;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO00o;->OooO0Oo:Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;

    iget-object v1, v1, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;->OooO00o:Landroid/content/Context;

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO00o;->OooO00o:Ljava/lang/String;

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO00o;->OooO0O0:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/cloud/tmc/miniapp/utils/ScopeUtils;->OooO00o(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO00o;->OooO0Oo:Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;

    iget-object v1, v1, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0O0;->OooO00o:Landroid/content/Context;

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO00o;->OooO00o:Ljava/lang/String;

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO00o;->OooO0O0:Ljava/lang/String;

    iget-object v4, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO00o;->OooO0OO:Lcom/cloud/tmc/integration/model/AppModel;

    invoke-virtual {v4}, Lcom/cloud/tmc/integration/model/AppModel;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object v4, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO00o;->OooO0OO:Lcom/cloud/tmc/integration/model/AppModel;

    invoke-virtual {v4}, Lcom/cloud/tmc/integration/model/AppModel;->getLogo()Ljava/lang/String;

    move-result-object v6

    const-string v4, "context"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "scopeName"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "appId"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/cloud/tmc/miniapp/utils/ScopeUtils;->OooO00o(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "Tmcintegration:LocalAuthPermissionManager"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
