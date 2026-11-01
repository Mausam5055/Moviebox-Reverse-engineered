.class public Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedWebview;
.super Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;


# static fields
.field private static final t:Ljava/lang/String; = "MBNativeAdvancedWebview"


# instance fields
.field private r:Lcom/iab/omid/library/mmadbridge/adsession/b;

.field private s:Lcom/mbridge/msdk/advanced/common/NetWorkStateReceiver;


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
    iget-object v1, p0, Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedWebview;->r:Lcom/iab/omid/library/mmadbridge/adsession/b;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/iab/omid/library/mmadbridge/adsession/b;->c()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedWebview;->r:Lcom/iab/omid/library/mmadbridge/adsession/b;

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

    iget-object v0, p0, Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedWebview;->r:Lcom/iab/omid/library/mmadbridge/adsession/b;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/webkit/WebView;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedWebview;->registerNetWorkReceiver()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/webkit/WebView;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedWebview;->unregisterNetWorkReceiver()V

    return-void
.end method

.method public registerNetWorkReceiver()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedWebview;->s:Lcom/mbridge/msdk/advanced/common/NetWorkStateReceiver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/mbridge/msdk/advanced/common/NetWorkStateReceiver;

    invoke-direct {v0, p0}, Lcom/mbridge/msdk/advanced/common/NetWorkStateReceiver;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedWebview;->s:Lcom/mbridge/msdk/advanced/common/NetWorkStateReceiver;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedWebview;->s:Lcom/mbridge/msdk/advanced/common/NetWorkStateReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object v1, Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedWebview;->t:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public setAdSession(Lcom/iab/omid/library/mmadbridge/adsession/b;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedWebview;->r:Lcom/iab/omid/library/mmadbridge/adsession/b;

    return-void
.end method

.method public unregisterNetWorkReceiver()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedWebview;->s:Lcom/mbridge/msdk/advanced/common/NetWorkStateReceiver;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mbridge/msdk/advanced/common/NetWorkStateReceiver;->a()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedWebview;->s:Lcom/mbridge/msdk/advanced/common/NetWorkStateReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedWebview;->t:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method
