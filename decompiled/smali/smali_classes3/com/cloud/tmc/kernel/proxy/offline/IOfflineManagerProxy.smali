.class public interface abstract Lcom/cloud/tmc/kernel/proxy/offline/IOfflineManagerProxy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/proxy/Proxiable;


# annotations
.annotation runtime Lcom/cloud/tmc/kernel/annotation/DefaultImpl;
    value = "com.cloud.tmc.miniapp.defaultimpl.TmcOfflineManagerProxyImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/kernel/proxy/offline/IOfflineManagerProxy$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008g\u0018\u00002\u00020\u0001JR\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u00052\u0018\u0008\u0002\u0010\u000b\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\r\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u000cH&J\u001a\u0010\u000e\u001a\u00020\u00032\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0010\u001a\u00020\u0011H&J\u0012\u0010\u0012\u001a\u00020\u00112\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0005H&J2\u0010\u0014\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u00052\u0018\u0008\u0002\u0010\u000b\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\r\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u000cH&J\u001e\u0010\u0015\u001a\u0004\u0018\u00010\u00162\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0005H&J\u001c\u0010\u0018\u001a\u00020\u00112\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0005H&\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/cloud/tmc/kernel/proxy/offline/IOfflineManagerProxy;",
        "Lcom/cloud/tmc/kernel/proxy/Proxiable;",
        "downloadPkg",
        "",
        "app",
        "",
        "group",
        "networkType",
        "pkgEncrypted",
        "pkgUrl",
        "paths",
        "callback",
        "Lkotlin/Function1;",
        "Lcom/google/gson/JsonObject;",
        "downloadPkgFromPlatform",
        "packageName",
        "antiShake",
        "",
        "enableVerifyServerFile",
        "appId",
        "getOfflinePkgCachePath",
        "getOfflineResources",
        "Ljava/io/File;",
        "url",
        "verifyServerFile",
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
.method public abstract downloadPkg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/google/gson/JsonObject;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract downloadPkgFromPlatform(Ljava/lang/String;Z)V
.end method

.method public abstract enableVerifyServerFile(Ljava/lang/String;)Z
.end method

.method public abstract getOfflinePkgCachePath(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/google/gson/JsonObject;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getOfflineResources(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
.end method

.method public abstract verifyServerFile(Ljava/lang/String;Ljava/lang/String;)Z
.end method
