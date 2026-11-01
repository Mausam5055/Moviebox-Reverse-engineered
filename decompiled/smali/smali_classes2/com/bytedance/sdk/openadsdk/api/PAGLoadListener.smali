.class public interface abstract Lcom/bytedance/sdk/openadsdk/api/PAGLoadListener;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/common/vS;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Ad:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bytedance/sdk/openadsdk/common/vS;"
    }
.end annotation


# virtual methods
.method public abstract onAdLoaded(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAd;)V"
        }
    .end annotation
.end method

.method public abstract onError(ILjava/lang/String;)V
.end method
