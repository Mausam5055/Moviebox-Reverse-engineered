.class public interface abstract Lcom/cloud/tmc/integration/proxy/IRefreshProxy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/proxy/Proxiable;


# annotations
.annotation runtime Lcom/cloud/tmc/kernel/annotation/DefaultImpl;
    value = "com.cloud.tmc.miniapp.defaultimpl.RefreshProxyImpl"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008g\u0018\u00002\u00020\u0001J\u001a\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&J\u001a\u0010\u0008\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&J\u0012\u0010\t\u001a\u00020\u00072\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H&J\u0012\u0010\n\u001a\u00020\u00072\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H&J\u0012\u0010\u000b\u001a\u00020\u00072\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H&\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/proxy/IRefreshProxy;",
        "Lcom/cloud/tmc/kernel/proxy/Proxiable;",
        "enableLoadMore",
        "",
        "tmcFragment",
        "Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;",
        "enable",
        "",
        "enableRefresh",
        "startPullDownRefresh",
        "stopPullDownRefresh",
        "stopPullUpRefresh",
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


# virtual methods
.method public abstract enableLoadMore(Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;Z)V
.end method

.method public abstract enableRefresh(Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;Z)V
.end method

.method public abstract startPullDownRefresh(Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;)Z
.end method

.method public abstract stopPullDownRefresh(Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;)Z
.end method

.method public abstract stopPullUpRefresh(Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;)Z
.end method
