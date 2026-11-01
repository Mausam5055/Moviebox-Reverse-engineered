.class public final Lcom/cloud/tmc/miniapp/defaultimpl/GetNodeSourceImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/node/IGetNodeSource;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNodeSource(Lcom/cloud/tmc/kernel/node/Node;)Ljava/lang/String;
    .locals 3

    const-string v0, "otherPage"

    const-string v1, "node"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    instance-of v1, p1, Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v1, :cond_3

    check-cast p1, Lcom/cloud/tmc/integration/structure/Page;

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->getPageContext()Lcom/cloud/tmc/integration/structure/PageContext;

    move-result-object p1

    instance-of v1, p1, Lcom/cloud/tmc/miniapp/ui/MiniFragment;

    if-eqz v1, :cond_0

    const-string v0, "normalPage"

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    instance-of v1, p1, Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;

    if-eqz v1, :cond_1

    const-string v0, "h5MixedPage"

    goto :goto_0

    :cond_1
    instance-of p1, p1, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;

    if-eqz p1, :cond_2

    const-string v0, "miniShellPage"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    return-object v0

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Tmc"

    invoke-static {v2, v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    return-object v0
.end method
