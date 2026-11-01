.class Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$n;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mbridge/msdk/out/NativeListener$NativeTrackingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$n;->a:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissLoading(Lcom/mbridge/msdk/out/Campaign;)V
    .locals 0

    return-void
.end method

.method public onDownloadFinish(Lcom/mbridge/msdk/out/Campaign;)V
    .locals 0

    return-void
.end method

.method public onDownloadProgress(I)V
    .locals 0

    return-void
.end method

.method public onDownloadStart(Lcom/mbridge/msdk/out/Campaign;)V
    .locals 0

    return-void
.end method

.method public onFinishRedirection(Lcom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$n;->a:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;

    invoke-static {v0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->h(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)V

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$n;->a:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;

    invoke-static {v0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->i(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)V

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$n;->a:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;

    invoke-static {v0, p1, p2}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->c(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;Lcom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BaseMBMediaView"

    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onInterceptDefaultLoadingDialog()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onRedirectionFailed(Lcom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$n;->a:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;

    invoke-static {v0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->h(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)V

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$n;->a:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;

    invoke-static {v0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->i(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)V

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$n;->a:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;

    invoke-static {v0, p1, p2}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->b(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;Lcom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BaseMBMediaView"

    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onShowLoading(Lcom/mbridge/msdk/out/Campaign;)V
    .locals 0

    return-void
.end method

.method public onStartRedirection(Lcom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$n;->a:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;

    invoke-static {v0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->f(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)V

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$n;->a:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;

    invoke-static {v0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->g(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)V

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$n;->a:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;

    invoke-static {v0, p1, p2}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->a(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;Lcom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BaseMBMediaView"

    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
