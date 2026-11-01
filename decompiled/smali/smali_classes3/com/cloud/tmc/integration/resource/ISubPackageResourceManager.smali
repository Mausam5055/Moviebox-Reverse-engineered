.class public interface abstract Lcom/cloud/tmc/integration/resource/ISubPackageResourceManager;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/proxy/Proxiable;


# annotations
.annotation runtime Lcom/cloud/tmc/kernel/annotation/DefaultImpl;
    value = "com.cloud.tmc.integration.resource.SubPackageResourceManager"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008g\u0018\u00002\u00020\u0001J\u001e\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0003H&J\u001e\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00032\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0003H&\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/resource/ISubPackageResourceManager;",
        "Lcom/cloud/tmc/kernel/proxy/Proxiable;",
        "getFilePath",
        "",
        "appModel",
        "Lcom/cloud/tmc/integration/model/AppModel;",
        "vUrl",
        "appId",
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
.method public abstract getFilePath(Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method
