.class Lcom/mbridge/msdk/interstitial/controller/a$a;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/interstitial/controller/a;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/interstitial/controller/a;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/interstitial/controller/a;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/interstitial/controller/a$a;->a:Lcom/mbridge/msdk/interstitial/controller/a;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    const/4 v2, 0x2

    const-string v3, "can\'t show because unknow error"

    const-string v4, ""

    if-eq v0, v2, :cond_7

    const/4 v2, 0x3

    if-eq v0, v2, :cond_6

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    const/4 p1, 0x6

    if-eq v0, p1, :cond_2

    const/4 p1, 0x7

    if-eq v0, p1, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-object p1, p0, Lcom/mbridge/msdk/interstitial/controller/a$a;->a:Lcom/mbridge/msdk/interstitial/controller/a;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/mbridge/msdk/interstitial/controller/a;->j:Z

    invoke-static {p1}, Lcom/mbridge/msdk/interstitial/controller/a;->a(Lcom/mbridge/msdk/interstitial/controller/a;)Lcom/mbridge/msdk/out/InterstitialListener;

    move-result-object p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/mbridge/msdk/interstitial/controller/a$a;->a:Lcom/mbridge/msdk/interstitial/controller/a;

    invoke-static {p1}, Lcom/mbridge/msdk/interstitial/controller/a;->a(Lcom/mbridge/msdk/interstitial/controller/a;)Lcom/mbridge/msdk/out/InterstitialListener;

    move-result-object p1

    iget-object v0, p0, Lcom/mbridge/msdk/interstitial/controller/a$a;->a:Lcom/mbridge/msdk/interstitial/controller/a;

    invoke-static {v0}, Lcom/mbridge/msdk/interstitial/controller/a;->b(Lcom/mbridge/msdk/interstitial/controller/a;)Lcom/mbridge/msdk/out/MBridgeIds;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/mbridge/msdk/out/InterstitialListener;->onInterstitialClosed(Lcom/mbridge/msdk/out/MBridgeIds;)V

    goto/16 :goto_2

    :cond_2
    iget-object p1, p0, Lcom/mbridge/msdk/interstitial/controller/a$a;->a:Lcom/mbridge/msdk/interstitial/controller/a;

    invoke-static {p1}, Lcom/mbridge/msdk/interstitial/controller/a;->a(Lcom/mbridge/msdk/interstitial/controller/a;)Lcom/mbridge/msdk/out/InterstitialListener;

    move-result-object p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/mbridge/msdk/interstitial/controller/a$a;->a:Lcom/mbridge/msdk/interstitial/controller/a;

    invoke-static {p1}, Lcom/mbridge/msdk/interstitial/controller/a;->a(Lcom/mbridge/msdk/interstitial/controller/a;)Lcom/mbridge/msdk/out/InterstitialListener;

    move-result-object p1

    iget-object v0, p0, Lcom/mbridge/msdk/interstitial/controller/a$a;->a:Lcom/mbridge/msdk/interstitial/controller/a;

    invoke-static {v0}, Lcom/mbridge/msdk/interstitial/controller/a;->b(Lcom/mbridge/msdk/interstitial/controller/a;)Lcom/mbridge/msdk/out/MBridgeIds;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/mbridge/msdk/out/InterstitialListener;->onInterstitialAdClick(Lcom/mbridge/msdk/out/MBridgeIds;)V

    goto/16 :goto_2

    :cond_3
    iget-object v0, p0, Lcom/mbridge/msdk/interstitial/controller/a$a;->a:Lcom/mbridge/msdk/interstitial/controller/a;

    invoke-static {v0}, Lcom/mbridge/msdk/interstitial/controller/a;->a(Lcom/mbridge/msdk/interstitial/controller/a;)Lcom/mbridge/msdk/out/InterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_4

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_4

    move-object v4, p1

    check-cast v4, Ljava/lang/String;

    :cond_4
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_5
    move-object v3, v4

    :goto_0
    iget-object p1, p0, Lcom/mbridge/msdk/interstitial/controller/a$a;->a:Lcom/mbridge/msdk/interstitial/controller/a;

    invoke-static {p1}, Lcom/mbridge/msdk/interstitial/controller/a;->a(Lcom/mbridge/msdk/interstitial/controller/a;)Lcom/mbridge/msdk/out/InterstitialListener;

    move-result-object p1

    iget-object v0, p0, Lcom/mbridge/msdk/interstitial/controller/a$a;->a:Lcom/mbridge/msdk/interstitial/controller/a;

    invoke-static {v0}, Lcom/mbridge/msdk/interstitial/controller/a;->b(Lcom/mbridge/msdk/interstitial/controller/a;)Lcom/mbridge/msdk/out/MBridgeIds;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Lcom/mbridge/msdk/out/InterstitialListener;->onInterstitialShowFail(Lcom/mbridge/msdk/out/MBridgeIds;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    iget-object p1, p0, Lcom/mbridge/msdk/interstitial/controller/a$a;->a:Lcom/mbridge/msdk/interstitial/controller/a;

    iput-boolean v1, p1, Lcom/mbridge/msdk/interstitial/controller/a;->j:Z

    invoke-static {p1}, Lcom/mbridge/msdk/interstitial/controller/a;->a(Lcom/mbridge/msdk/interstitial/controller/a;)Lcom/mbridge/msdk/out/InterstitialListener;

    move-result-object p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/mbridge/msdk/interstitial/controller/a$a;->a:Lcom/mbridge/msdk/interstitial/controller/a;

    invoke-static {p1}, Lcom/mbridge/msdk/interstitial/controller/a;->a(Lcom/mbridge/msdk/interstitial/controller/a;)Lcom/mbridge/msdk/out/InterstitialListener;

    move-result-object p1

    iget-object v0, p0, Lcom/mbridge/msdk/interstitial/controller/a$a;->a:Lcom/mbridge/msdk/interstitial/controller/a;

    invoke-static {v0}, Lcom/mbridge/msdk/interstitial/controller/a;->b(Lcom/mbridge/msdk/interstitial/controller/a;)Lcom/mbridge/msdk/out/MBridgeIds;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/mbridge/msdk/out/InterstitialListener;->onInterstitialShowSuccess(Lcom/mbridge/msdk/out/MBridgeIds;)V

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/mbridge/msdk/interstitial/controller/a$a;->a:Lcom/mbridge/msdk/interstitial/controller/a;

    invoke-static {v0}, Lcom/mbridge/msdk/interstitial/controller/a;->a(Lcom/mbridge/msdk/interstitial/controller/a;)Lcom/mbridge/msdk/out/InterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_8

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_8

    move-object v4, p1

    check-cast v4, Ljava/lang/String;

    :cond_8
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_1

    :cond_9
    move-object v3, v4

    :goto_1
    iget-object p1, p0, Lcom/mbridge/msdk/interstitial/controller/a$a;->a:Lcom/mbridge/msdk/interstitial/controller/a;

    invoke-static {p1}, Lcom/mbridge/msdk/interstitial/controller/a;->a(Lcom/mbridge/msdk/interstitial/controller/a;)Lcom/mbridge/msdk/out/InterstitialListener;

    move-result-object p1

    iget-object v0, p0, Lcom/mbridge/msdk/interstitial/controller/a$a;->a:Lcom/mbridge/msdk/interstitial/controller/a;

    invoke-static {v0}, Lcom/mbridge/msdk/interstitial/controller/a;->b(Lcom/mbridge/msdk/interstitial/controller/a;)Lcom/mbridge/msdk/out/MBridgeIds;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Lcom/mbridge/msdk/out/InterstitialListener;->onInterstitialLoadFail(Lcom/mbridge/msdk/out/MBridgeIds;Ljava/lang/String;)V

    goto :goto_2

    :cond_a
    iget-object p1, p0, Lcom/mbridge/msdk/interstitial/controller/a$a;->a:Lcom/mbridge/msdk/interstitial/controller/a;

    invoke-static {p1}, Lcom/mbridge/msdk/interstitial/controller/a;->a(Lcom/mbridge/msdk/interstitial/controller/a;)Lcom/mbridge/msdk/out/InterstitialListener;

    move-result-object p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/mbridge/msdk/interstitial/controller/a$a;->a:Lcom/mbridge/msdk/interstitial/controller/a;

    invoke-static {p1}, Lcom/mbridge/msdk/interstitial/controller/a;->a(Lcom/mbridge/msdk/interstitial/controller/a;)Lcom/mbridge/msdk/out/InterstitialListener;

    move-result-object p1

    iget-object v0, p0, Lcom/mbridge/msdk/interstitial/controller/a$a;->a:Lcom/mbridge/msdk/interstitial/controller/a;

    invoke-static {v0}, Lcom/mbridge/msdk/interstitial/controller/a;->b(Lcom/mbridge/msdk/interstitial/controller/a;)Lcom/mbridge/msdk/out/MBridgeIds;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/mbridge/msdk/out/InterstitialListener;->onInterstitialLoadSuccess(Lcom/mbridge/msdk/out/MBridgeIds;)V

    :cond_b
    :goto_2
    return-void
.end method
