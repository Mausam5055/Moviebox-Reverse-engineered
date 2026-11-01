.class public Lcom/mbridge/msdk/video/signal/impl/a$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mbridge/msdk/video/signal/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/video/signal/impl/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Lcom/mbridge/msdk/video/signal/d;

.field private b:Lcom/mbridge/msdk/video/signal/a$a;


# direct methods
.method public constructor <init>(Lcom/mbridge/msdk/video/signal/d;Lcom/mbridge/msdk/video/signal/a$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mbridge/msdk/video/signal/impl/a$b;->a:Lcom/mbridge/msdk/video/signal/d;

    iput-object p2, p0, Lcom/mbridge/msdk/video/signal/impl/a$b;->b:Lcom/mbridge/msdk/video/signal/a$a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/impl/a$b;->b:Lcom/mbridge/msdk/video/signal/a$a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/mbridge/msdk/video/signal/a$a;->a()V

    :cond_0
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/impl/a$b;->b:Lcom/mbridge/msdk/video/signal/a$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/mbridge/msdk/video/signal/a$a;->a(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/impl/a$b;->b:Lcom/mbridge/msdk/video/signal/a$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/mbridge/msdk/video/signal/a$a;->a(Z)V

    :cond_0
    return-void
.end method

.method public onDismissLoading(Lcom/mbridge/msdk/out/Campaign;)V
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/impl/a$b;->b:Lcom/mbridge/msdk/video/signal/a$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/mbridge/msdk/out/NativeListener$NativeTrackingListener;->onDismissLoading(Lcom/mbridge/msdk/out/Campaign;)V

    :cond_0
    return-void
.end method

.method public onDownloadFinish(Lcom/mbridge/msdk/out/Campaign;)V
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/impl/a$b;->b:Lcom/mbridge/msdk/video/signal/a$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/mbridge/msdk/out/NativeListener$NativeTrackingListener;->onDownloadFinish(Lcom/mbridge/msdk/out/Campaign;)V

    :cond_0
    return-void
.end method

.method public onDownloadProgress(I)V
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/impl/a$b;->b:Lcom/mbridge/msdk/video/signal/a$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/mbridge/msdk/out/NativeListener$NativeTrackingListener;->onDownloadProgress(I)V

    :cond_0
    return-void
.end method

.method public onDownloadStart(Lcom/mbridge/msdk/out/Campaign;)V
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/impl/a$b;->b:Lcom/mbridge/msdk/video/signal/a$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/mbridge/msdk/out/NativeListener$NativeTrackingListener;->onDownloadStart(Lcom/mbridge/msdk/out/Campaign;)V

    :cond_0
    return-void
.end method

.method public onFinishRedirection(Lcom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/impl/a$b;->b:Lcom/mbridge/msdk/video/signal/a$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/mbridge/msdk/out/BaseTrackingListener;->onFinishRedirection(Lcom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/mbridge/msdk/video/signal/impl/a$b;->a:Lcom/mbridge/msdk/video/signal/d;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/mbridge/msdk/video/signal/a;->f()V

    :cond_1
    return-void
.end method

.method public onInitSuccess()V
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/impl/a$b;->b:Lcom/mbridge/msdk/video/signal/a$a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/mbridge/msdk/video/signal/a$a;->onInitSuccess()V

    :cond_0
    return-void
.end method

.method public onInterceptDefaultLoadingDialog()Z
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/impl/a$b;->b:Lcom/mbridge/msdk/video/signal/a$a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/mbridge/msdk/out/NativeListener$NativeTrackingListener;->onInterceptDefaultLoadingDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onRedirectionFailed(Lcom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/impl/a$b;->b:Lcom/mbridge/msdk/video/signal/a$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/mbridge/msdk/out/BaseTrackingListener;->onRedirectionFailed(Lcom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/mbridge/msdk/video/signal/impl/a$b;->a:Lcom/mbridge/msdk/video/signal/d;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/mbridge/msdk/video/signal/a;->f()V

    :cond_1
    return-void
.end method

.method public onShowLoading(Lcom/mbridge/msdk/out/Campaign;)V
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/impl/a$b;->b:Lcom/mbridge/msdk/video/signal/a$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/mbridge/msdk/out/NativeListener$NativeTrackingListener;->onShowLoading(Lcom/mbridge/msdk/out/Campaign;)V

    :cond_0
    return-void
.end method

.method public onStartRedirection(Lcom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/impl/a$b;->b:Lcom/mbridge/msdk/video/signal/a$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/mbridge/msdk/out/BaseTrackingListener;->onStartRedirection(Lcom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
