.class public interface abstract Lcom/cloud/tmc/kernel/resource/IFileResourceManager;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/proxy/Proxiable;


# annotations
.annotation runtime Lcom/cloud/tmc/kernel/annotation/DefaultImpl;
    value = "com.cloud.tmc.integration.resource.FileResourceManager"
.end annotation


# virtual methods
.method public abstract fuzzySearchByVUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract generateVUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract generateVUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
.end method

.method public abstract getFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getVhost(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract init(Ljava/lang/String;)V
.end method

.method public abstract removeByFilePath(Ljava/lang/String;)V
.end method

.method public abstract removeByVUrl(Ljava/lang/String;)V
.end method
