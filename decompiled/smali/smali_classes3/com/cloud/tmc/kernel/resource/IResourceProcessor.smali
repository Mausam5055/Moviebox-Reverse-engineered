.class public interface abstract Lcom/cloud/tmc/kernel/resource/IResourceProcessor;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/proxy/Proxiable;


# annotations
.annotation runtime Lcom/cloud/tmc/kernel/annotation/DefaultImpl;
    value = "com.cloud.tmc.integration.resource.BaseResourceProcessor"
.end annotation


# virtual methods
.method public abstract fuzzySearch(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
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

.method public abstract get(Landroid/webkit/WebResourceRequest;Ljava/lang/String;Lcom/cloud/tmc/kernel/node/Node;)Landroid/webkit/WebResourceResponse;
.end method

.method public abstract get(Landroid/webkit/WebResourceRequest;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/node/Node;)Landroid/webkit/WebResourceResponse;
.end method

.method public abstract get(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
.end method

.method public abstract get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
.end method

.method public abstract shouldIntercept(Landroid/webkit/WebResourceRequest;Ljava/lang/String;)Z
.end method

.method public abstract shouldIntercept(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract shouldInterceptFuzzySearch(Ljava/lang/String;)Z
.end method
