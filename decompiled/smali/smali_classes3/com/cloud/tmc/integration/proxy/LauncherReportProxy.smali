.class public interface abstract Lcom/cloud/tmc/integration/proxy/LauncherReportProxy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/proxy/Proxiable;


# annotations
.annotation runtime Lcom/cloud/tmc/kernel/annotation/DefaultImpl;
    value = "com.cloud.tmc.miniapp.defaultimpl.LauncherReport"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0000\u0008g\u0018\u00002\u00020\u0001J\u001c\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H&J\u0012\u0010\u0008\u001a\u00020\u00032\u0008\u0010\t\u001a\u0004\u0018\u00010\u0005H&J\u0012\u0010\n\u001a\u00020\u00032\u0008\u0010\t\u001a\u0004\u0018\u00010\u0005H&J\u0010\u0010\u000b\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0005H&J&\u0010\u000c\u001a\u00020\u00032\u0008\u0010\t\u001a\u0004\u0018\u00010\u00052\u0008\u0010\r\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0005H&J\"\u0010\u000f\u001a\u00020\u00032\u0008\u0010\t\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0005H&J\u001a\u0010\u0013\u001a\u00020\u00032\u0008\u0010\t\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0014\u001a\u00020\u0011H&J\u0010\u0010\u0015\u001a\u00020\u00032\u0006\u0010\u0016\u001a\u00020\u0017H&\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/proxy/LauncherReportProxy;",
        "Lcom/cloud/tmc/kernel/proxy/Proxiable;",
        "report",
        "",
        "tag",
        "",
        "bundle",
        "Landroid/os/Bundle;",
        "reportAllCacheData",
        "appId",
        "reportCacheData",
        "reportMiniAddhomeSuccess",
        "reportMiniAppStartRecord",
        "appName",
        "appLogo",
        "reportMiniAppStartTime",
        "startTime",
        "",
        "startType",
        "reportMiniAppUseTime",
        "usageTime",
        "reportMiniProcessId",
        "pid",
        "",
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
.method public abstract report(Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract reportAllCacheData(Ljava/lang/String;)V
.end method

.method public abstract reportCacheData(Ljava/lang/String;)V
.end method

.method public abstract reportMiniAddhomeSuccess(Ljava/lang/String;)V
.end method

.method public abstract reportMiniAppStartRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract reportMiniAppStartTime(Ljava/lang/String;JLjava/lang/String;)V
.end method

.method public abstract reportMiniAppUseTime(Ljava/lang/String;J)V
.end method

.method public abstract reportMiniProcessId(I)V
.end method
