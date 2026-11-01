.class public interface abstract Lcom/cloud/tmc/offline/download/utils/NetworkConnectivity;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008f\u0018\u00002\u00020\u0001J\n\u0010\u0002\u001a\u0004\u0018\u00010\u0003H&J\u0008\u0010\u0004\u001a\u00020\u0005H&J\u0008\u0010\u0006\u001a\u00020\u0005H&J\u0008\u0010\u0007\u001a\u00020\u0005H&J\u0008\u0010\u0008\u001a\u00020\u0005H&\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/cloud/tmc/offline/download/utils/NetworkConnectivity;",
        "",
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


# virtual methods
.method public abstract getNetworkInfo()Landroid/net/NetworkInfo;
.end method

.method public abstract isConnected()Z
.end method

.method public abstract isMobileConn()Z
.end method

.method public abstract isOnline()Z
.end method

.method public abstract isWifiConn()Z
.end method
