.class public interface abstract Lcom/cloud/tmc/kernel/proxy/network/IUploadCallback;
.super Ljava/lang/Object;


# virtual methods
.method public abstract onFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onFinish(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract progressUpdate(Ljava/lang/String;ILjava/lang/String;JJ)V
.end method
