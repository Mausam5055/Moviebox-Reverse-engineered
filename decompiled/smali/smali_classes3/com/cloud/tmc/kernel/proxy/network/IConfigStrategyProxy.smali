.class public interface abstract Lcom/cloud/tmc/kernel/proxy/network/IConfigStrategyProxy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/proxy/Proxiable;


# annotations
.annotation runtime Lcom/cloud/tmc/kernel/annotation/DefaultImpl;
    value = "com.cloud.tmc.miniapp.ConfigImpl"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\n\u0008g\u0018\u00002\u00020\u0001J\u001c\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H&J\u0008\u0010\u0008\u001a\u00020\u0007H&J\u0010\u0010\t\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u0007H&J\u0008\u0010\u000c\u001a\u00020\u0007H&J\u0008\u0010\r\u001a\u00020\u0007H&J\u0008\u0010\u000e\u001a\u00020\u0007H&J\u0008\u0010\u000f\u001a\u00020\u0007H&J\u0008\u0010\u0010\u001a\u00020\u0007H&\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/cloud/tmc/kernel/proxy/network/IConfigStrategyProxy;",
        "Lcom/cloud/tmc/kernel/proxy/Proxiable;",
        "checkAddHomeHost",
        "",
        "context",
        "Landroid/content/Context;",
        "packageName",
        "",
        "getAbilitiesCdnUrl",
        "getConfigKey",
        "getMiniAppVersion",
        "version",
        "getMyByteAppRecommendListCdnUrl",
        "getOfflineConfigDefaultValue",
        "getOfflineConfigKey",
        "getPreStrategyCdnUrl",
        "getPreStrategyConfigFilePath",
        "com.cloud.tmc.kernel"
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
.method public abstract checkAddHomeHost(Landroid/content/Context;Ljava/lang/String;)Z
.end method

.method public abstract getAbilitiesCdnUrl()Ljava/lang/String;
.end method

.method public abstract getConfigKey(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract getMiniAppVersion(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getMyByteAppRecommendListCdnUrl()Ljava/lang/String;
.end method

.method public abstract getOfflineConfigDefaultValue()Ljava/lang/String;
.end method

.method public abstract getOfflineConfigKey()Ljava/lang/String;
.end method

.method public abstract getPreStrategyCdnUrl()Ljava/lang/String;
.end method

.method public abstract getPreStrategyConfigFilePath()Ljava/lang/String;
.end method
