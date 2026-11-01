.class public final Lcom/cloud/tmc/miniapp/defaultimpl/OfflineAppProxyImp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/integration/proxy/OfflineAppProxy;


# instance fields
.field public OooO00o:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/cloud/tmc/integration/proxy/OfflineAppProxy$CreateShortCutsListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OfflineAppProxyImp;->OooO00o:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-void
.end method


# virtual methods
.method public addShortCutListener(Lcom/cloud/tmc/integration/proxy/OfflineAppProxy$CreateShortCutsListener;)V
    .locals 3

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OfflineAppProxyImp;->OooO00o:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    const-string p1, "sam"

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OfflineAppProxyImp;->OooO00o:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addShortCutListener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public downloadIcon(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "appId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "logoUrl"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/cloud/tmc/miniapp/offlineapps/download/OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/offlineapps/download/OooO0O0;

    invoke-virtual {v0, p1, p2}, Lcom/cloud/tmc/miniapp/offlineapps/download/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getOfflineAppsForBridgeApi(ZLcom/cloud/tmc/integration/proxy/OfflineAppProxy$Callback;)V
    .locals 2

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/cloud/tmc/miniapp/defaultimpl/OfflineAppProxyImp$OooO00o;

    invoke-direct {v0, p2}, Lcom/cloud/tmc/miniapp/defaultimpl/OfflineAppProxyImp$OooO00o;-><init>(Lcom/cloud/tmc/integration/proxy/OfflineAppProxy$Callback;)V

    sget-object p2, Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;->SCAN_BRIDGEAPI:Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;

    const-string v1, "scanScene"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/cloud/tmc/miniapp/offlineapps/scan/OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/offlineapps/scan/OooO0O0;

    invoke-virtual {v1, p1, p2, v0}, Lcom/cloud/tmc/miniapp/offlineapps/scan/OooO0O0;->OooO00o(ZLcom/cloud/tmc/miniapp/offlineapps/ScanScene;Lcom/cloud/tmc/miniapp/offlineapps/scan/OooO00o;)V

    return-void
.end method

.method public notifyCreateShortCutsSuccess(Ljava/lang/String;)V
    .locals 5

    const-string v0, "appId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OfflineAppProxyImp;->OooO00o:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "offlineAppsShortCutListeners.iterator()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "sam"

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OfflineAppProxyImp;->OooO00o:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyCreateShortCutsSuccess:appId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/integration/proxy/OfflineAppProxy$CreateShortCutsListener;

    invoke-interface {v1, p1}, Lcom/cloud/tmc/integration/proxy/OfflineAppProxy$CreateShortCutsListener;->createSuccess(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public removeShortCutListener(Lcom/cloud/tmc/integration/proxy/OfflineAppProxy$CreateShortCutsListener;)V
    .locals 3

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OfflineAppProxyImp;->OooO00o:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    const-string p1, "sam"

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OfflineAppProxyImp;->OooO00o:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeShortCutListener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public scanForOfflineDownloadDelete()V
    .locals 4

    sget-object v0, Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;->SCAN_DELETE_OFFLINEDOWNLOAD_APP:Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;

    const-string v1, "scanScene"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/cloud/tmc/miniapp/offlineapps/scan/OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/offlineapps/scan/OooO0O0;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/cloud/tmc/miniapp/offlineapps/scan/OooO0O0;->OooO00o(ZLcom/cloud/tmc/miniapp/offlineapps/ScanScene;Lcom/cloud/tmc/miniapp/offlineapps/scan/OooO00o;)V

    return-void
.end method

.method public scanForOfflineDownloadSuccess()V
    .locals 4

    sget-object v0, Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;->SCAN_OFFLINEDOWNLOAD_APP:Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;

    const-string v1, "scanScene"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/cloud/tmc/miniapp/offlineapps/scan/OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/offlineapps/scan/OooO0O0;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/cloud/tmc/miniapp/offlineapps/scan/OooO0O0;->OooO00o(ZLcom/cloud/tmc/miniapp/offlineapps/ScanScene;Lcom/cloud/tmc/miniapp/offlineapps/scan/OooO00o;)V

    return-void
.end method

.method public scanForUsedAppDelete()V
    .locals 4

    sget-object v0, Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;->SCAN_DELETE_USED_APP:Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;

    const-string v1, "scanScene"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/cloud/tmc/miniapp/offlineapps/scan/OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/offlineapps/scan/OooO0O0;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/cloud/tmc/miniapp/offlineapps/scan/OooO0O0;->OooO00o(ZLcom/cloud/tmc/miniapp/offlineapps/ScanScene;Lcom/cloud/tmc/miniapp/offlineapps/scan/OooO00o;)V

    return-void
.end method
