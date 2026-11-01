.class public final Lcom/cloud/tmc/miniapp/defaultimpl/AuthorityProxyImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/integration/proxy/AuthorityProxy;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkFullScreenAuthority(Lcom/cloud/tmc/integration/structure/Page;)Z
    .locals 1

    sget-object v0, Lcom/cloud/tmc/miniapp/utils/OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/utils/OooO00o;

    invoke-virtual {v0, p1}, Lcom/cloud/tmc/miniapp/utils/OooO00o;->OooO00o(Lcom/cloud/tmc/integration/structure/Page;)Z

    move-result p1

    return p1
.end method

.method public clearPermissionData(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Lcom/cloud/tmc/miniapp/utils/ScopeUtils;->OooO00o:Lcom/cloud/tmc/miniapp/utils/ScopeUtils;

    invoke-virtual {v0, p1, p2}, Lcom/cloud/tmc/miniapp/utils/ScopeUtils;->OooO0OO(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string p2, "AuthorityProxyImpl"

    const-string v0, "clearPermissionData"

    invoke-static {p2, v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
