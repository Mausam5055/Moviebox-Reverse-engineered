.class public interface abstract Lcom/cloud/tmc/offline/download/resource/IOfflineResourceManagerProxy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/proxy/Proxiable;


# annotations
.annotation runtime Lcom/cloud/tmc/kernel/annotation/DefaultImpl;
    value = "com.cloud.tmc.offline.download.resource.OfflineResourceManagerProxyImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/offline/download/resource/IOfflineResourceManagerProxy$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008g\u0018\u00002\u00020\u0001J2\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0008\u001a\u00020\tH&J\u0014\u0010\n\u001a\u0004\u0018\u00010\u00032\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0003H&J\u0010\u0010\u000c\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0003H&J\u001c\u0010\r\u001a\u00020\u000e2\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0008\u001a\u00020\tH&J\u001c\u0010\u000f\u001a\u00020\u000e2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0008\u001a\u00020\tH&\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/cloud/tmc/offline/download/resource/IOfflineResourceManagerProxy;",
        "Lcom/cloud/tmc/kernel/proxy/Proxiable;",
        "generateVUrl",
        "",
        "filePath",
        "appId",
        "fileName",
        "path",
        "needPersistence",
        "",
        "getFilePath",
        "vUrl",
        "getVhost",
        "removeByFilePath",
        "",
        "removeByVUrl",
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
.method public abstract generateVUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
.end method

.method public abstract getFilePath(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getVhost(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract removeByFilePath(Ljava/lang/String;Z)V
.end method

.method public abstract removeByVUrl(Ljava/lang/String;Z)V
.end method
