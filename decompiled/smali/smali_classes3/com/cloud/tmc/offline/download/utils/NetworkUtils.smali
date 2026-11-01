.class public final Lcom/cloud/tmc/offline/download/utils/NetworkUtils;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\n\u0010\u0003\u001a\u0004\u0018\u00010\u0004H\u0007J\u0008\u0010\u0005\u001a\u00020\u0006H\u0007J\u0008\u0010\u0007\u001a\u00020\u0006H\u0007J\u0008\u0010\u0008\u001a\u00020\u0006H\u0007J\u0008\u0010\t\u001a\u00020\u0006H\u0007\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/cloud/tmc/offline/download/utils/NetworkUtils;",
        "",
        "()V",
        "getNetworkInfo",
        "Landroid/net/NetworkInfo;",
        "isConnected",
        "",
        "isMobileConn",
        "isOnline",
        "isWifiConn",
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


# static fields
.field public static final INSTANCE:Lcom/cloud/tmc/offline/download/utils/NetworkUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cloud/tmc/offline/download/utils/NetworkUtils;

    invoke-direct {v0}, Lcom/cloud/tmc/offline/download/utils/NetworkUtils;-><init>()V

    sput-object v0, Lcom/cloud/tmc/offline/download/utils/NetworkUtils;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/NetworkUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getNetworkInfo()Landroid/net/NetworkInfo;
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/cloud/tmc/offline/download/OfflineManager;->isInit$com_cloud_tmc_offline_download()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/cloud/tmc/offline/download/utils/NetworkHelper;

    invoke-static {}, Lcom/cloud/tmc/offline/download/OfflineManager;->getContext$com_cloud_tmc_offline_download()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/cloud/tmc/offline/download/utils/NetworkHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/cloud/tmc/offline/download/utils/NetworkHelper;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static final isConnected()Z
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/cloud/tmc/offline/download/OfflineManager;->isInit$com_cloud_tmc_offline_download()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/cloud/tmc/offline/download/utils/NetworkHelper;

    invoke-static {}, Lcom/cloud/tmc/offline/download/OfflineManager;->getContext$com_cloud_tmc_offline_download()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/cloud/tmc/offline/download/utils/NetworkHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/cloud/tmc/offline/download/utils/NetworkHelper;->isConnected()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static final isMobileConn()Z
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/cloud/tmc/offline/download/OfflineManager;->isInit$com_cloud_tmc_offline_download()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/cloud/tmc/offline/download/utils/NetworkHelper;

    invoke-static {}, Lcom/cloud/tmc/offline/download/OfflineManager;->getContext$com_cloud_tmc_offline_download()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/cloud/tmc/offline/download/utils/NetworkHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/cloud/tmc/offline/download/utils/NetworkHelper;->isMobileConn()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static final isOnline()Z
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/cloud/tmc/offline/download/OfflineManager;->isInit$com_cloud_tmc_offline_download()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/cloud/tmc/offline/download/utils/NetworkHelper;

    invoke-static {}, Lcom/cloud/tmc/offline/download/OfflineManager;->getContext$com_cloud_tmc_offline_download()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/cloud/tmc/offline/download/utils/NetworkHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/cloud/tmc/offline/download/utils/NetworkHelper;->isOnline()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static final isWifiConn()Z
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/cloud/tmc/offline/download/OfflineManager;->isInit$com_cloud_tmc_offline_download()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/cloud/tmc/offline/download/utils/NetworkHelper;

    invoke-static {}, Lcom/cloud/tmc/offline/download/OfflineManager;->getContext$com_cloud_tmc_offline_download()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/cloud/tmc/offline/download/utils/NetworkHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/cloud/tmc/offline/download/utils/NetworkHelper;->isWifiConn()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
