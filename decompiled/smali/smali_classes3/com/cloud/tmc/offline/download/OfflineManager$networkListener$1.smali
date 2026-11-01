.class public final Lcom/cloud/tmc/offline/download/OfflineManager$networkListener$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/utils/NetworkUtil$NetworkListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/offline/download/OfflineManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001c\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/cloud/tmc/offline/download/OfflineManager$networkListener$1",
        "Lcom/cloud/tmc/kernel/utils/NetworkUtil$NetworkListener;",
        "onNetworkChanged",
        "",
        "ot",
        "Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;",
        "nt",
        "com.cloud.tmc.offline_download"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNetworkChanged(Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;)V
    .locals 7

    :try_start_0
    invoke-static {p2}, Lcom/cloud/tmc/kernel/utils/NetworkUtil;->transferNetworkType(Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "none"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "UNKNOWN"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/cloud/tmc/offline/download/OfflineManager;->access$getNetworkLoad()Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object v0, Lcom/cloud/tmc/offline/download/OfflineManager;->INSTANCE:Lcom/cloud/tmc/offline/download/OfflineManager;

    const-string v1, "condition_change_network"

    const/16 v5, 0xe

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lcom/cloud/tmc/offline/download/OfflineManager;->loadConfig$default(Lcom/cloud/tmc/offline/download/OfflineManager;Ljava/lang/String;Ljava/lang/String;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :goto_1
    const-string p2, "TmcOfflineDownload: OfflineManager"

    const-string v0, "network failed!"

    invoke-static {p2, v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    return-void
.end method
