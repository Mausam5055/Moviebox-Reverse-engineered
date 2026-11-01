.class public interface abstract Lcom/aliyun/loader/VodMediaLoader$OnLoadStatusListener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aliyun/loader/VodMediaLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnLoadStatusListener"
.end annotation


# virtual methods
.method public abstract onCanceled(Ljava/lang/String;I)V
.end method

.method public abstract onCompleted(Ljava/lang/String;I)V
.end method

.method public abstract onError(Ljava/lang/String;IILjava/lang/String;)V
.end method

.method public abstract onPrepared(Lcom/aliyun/player/nativeclass/MediaInfo;)V
.end method
