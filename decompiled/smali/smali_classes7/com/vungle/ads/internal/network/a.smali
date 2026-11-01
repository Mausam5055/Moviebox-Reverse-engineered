.class public interface abstract Lcom/vungle/ads/internal/network/a;
.super Ljava/lang/Object;


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract enqueue(Lcom/vungle/ads/internal/network/b;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/ads/internal/network/b;",
            ")V"
        }
    .end annotation
.end method

.method public abstract execute()Lcom/vungle/ads/internal/network/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vungle/ads/internal/network/e;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract isCanceled()Z
.end method
