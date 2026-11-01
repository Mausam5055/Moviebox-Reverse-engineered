.class Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity$c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mbridge/msdk/out/NativeListener$NativeTrackingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->clickTracking()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity$c;->a:Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;

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
    .locals 0

    :try_start_0
    iget-object p1, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity$c;->a:Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;

    invoke-virtual {p1}, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->hideLoading()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onInterceptDefaultLoadingDialog()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onRedirectionFailed(Lcom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity$c;->a:Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;

    invoke-virtual {p1}, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->hideLoading()V

    return-void
.end method

.method public onShowLoading(Lcom/mbridge/msdk/out/Campaign;)V
    .locals 0

    return-void
.end method

.method public onStartRedirection(Lcom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V
    .locals 0

    :try_start_0
    iget-object p1, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity$c;->a:Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;

    invoke-virtual {p1}, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->showLoading()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
