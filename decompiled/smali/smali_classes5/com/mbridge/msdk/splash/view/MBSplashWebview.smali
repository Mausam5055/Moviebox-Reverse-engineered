.class public Lcom/mbridge/msdk/splash/view/MBSplashWebview;
.super Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;


# instance fields
.field private r:Ljava/lang/String;

.field private s:Lcom/iab/omid/library/mmadbridge/adsession/b;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method


# virtual methods
.method public finishAdSession()V
    .locals 2

    const-string v0, "OMSDK"

    :try_start_0
    iget-object v1, p0, Lcom/mbridge/msdk/splash/view/MBSplashWebview;->s:Lcom/iab/omid/library/mmadbridge/adsession/b;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/iab/omid/library/mmadbridge/adsession/b;->c()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mbridge/msdk/splash/view/MBSplashWebview;->s:Lcom/iab/omid/library/mmadbridge/adsession/b;

    const-string v1, "finish adSession"

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public getAdSession()Lcom/iab/omid/library/mmadbridge/adsession/b;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashWebview;->s:Lcom/iab/omid/library/mmadbridge/adsession/b;

    return-object v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashWebview;->r:Ljava/lang/String;

    return-object v0
.end method

.method public setAdSession(Lcom/iab/omid/library/mmadbridge/adsession/b;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/splash/view/MBSplashWebview;->s:Lcom/iab/omid/library/mmadbridge/adsession/b;

    return-void
.end method

.method public setRequestId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/splash/view/MBSplashWebview;->r:Ljava/lang/String;

    return-void
.end method
