.class Lcom/mbridge/msdk/splash/manager/b$h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mbridge/msdk/splash/middle/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/splash/manager/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "h"
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/splash/manager/b;


# direct methods
.method private constructor <init>(Lcom/mbridge/msdk/splash/manager/b;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/splash/manager/b$h;->a:Lcom/mbridge/msdk/splash/manager/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mbridge/msdk/splash/manager/b;Lcom/mbridge/msdk/splash/manager/b$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/splash/manager/b$h;-><init>(Lcom/mbridge/msdk/splash/manager/b;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resetCountdown"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SplashShowManager"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mbridge/msdk/splash/manager/b$h;->a:Lcom/mbridge/msdk/splash/manager/b;

    iput p1, v0, Lcom/mbridge/msdk/splash/manager/b;->l:I

    iget-object p1, v0, Lcom/mbridge/msdk/splash/manager/b;->y:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/mbridge/msdk/splash/manager/b$h;->a:Lcom/mbridge/msdk/splash/manager/b;

    iget-object p1, p1, Lcom/mbridge/msdk/splash/manager/b;->y:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public a(II)V
    .locals 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v1, p0, Lcom/mbridge/msdk/splash/manager/b$h;->a:Lcom/mbridge/msdk/splash/manager/b;

    iget-object v1, v1, Lcom/mbridge/msdk/splash/manager/b;->y:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/mbridge/msdk/splash/manager/b$h;->a:Lcom/mbridge/msdk/splash/manager/b;

    iput p2, p1, Lcom/mbridge/msdk/splash/manager/b;->l:I

    iget-object p1, p1, Lcom/mbridge/msdk/splash/manager/b;->y:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/mbridge/msdk/splash/manager/b$h;->a:Lcom/mbridge/msdk/splash/manager/b;

    iget-object p1, p1, Lcom/mbridge/msdk/splash/manager/b;->y:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void
.end method

.method public a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V
    .locals 3

    iget-object v0, p0, Lcom/mbridge/msdk/splash/manager/b$h;->a:Lcom/mbridge/msdk/splash/manager/b;

    const/4 v1, 0x0

    const-string v2, ""

    invoke-virtual {v0, p1, v1, v2}, Lcom/mbridge/msdk/splash/manager/b;->b(Lcom/mbridge/msdk/foundation/entity/CampaignEx;ZLjava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/mbridge/msdk/splash/manager/b$h;->a:Lcom/mbridge/msdk/splash/manager/b;

    iget-object p1, p1, Lcom/mbridge/msdk/splash/manager/b;->y:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method public a(ZLjava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object p1, p0, Lcom/mbridge/msdk/splash/manager/b$h;->a:Lcom/mbridge/msdk/splash/manager/b;

    iget-object p1, p1, Lcom/mbridge/msdk/splash/manager/b;->d:Lcom/mbridge/msdk/splash/middle/d;

    if-eqz p1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/mbridge/msdk/splash/manager/b$h;->a:Lcom/mbridge/msdk/splash/manager/b;

    iget-object p2, p1, Lcom/mbridge/msdk/splash/manager/b;->d:Lcom/mbridge/msdk/splash/middle/d;

    iget-object p1, p1, Lcom/mbridge/msdk/splash/manager/b;->k:Lcom/mbridge/msdk/out/MBridgeIds;

    invoke-virtual {p2, p1}, Lcom/mbridge/msdk/splash/middle/d;->a(Lcom/mbridge/msdk/out/MBridgeIds;)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/mbridge/msdk/splash/manager/b$h;->a:Lcom/mbridge/msdk/splash/manager/b;

    invoke-static {p1}, Lcom/mbridge/msdk/splash/manager/b;->d(Lcom/mbridge/msdk/splash/manager/b;)Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object p1

    invoke-static {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->campaignToJsonObject(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->parseCampaignWithBackData(Lorg/json/JSONObject;)Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setClickTempSource(I)V

    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setClickType(I)V

    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setTriggerClickSource(I)V

    invoke-virtual {p1, p2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setClickURL(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mbridge/msdk/splash/manager/b$h;->a:Lcom/mbridge/msdk/splash/manager/b;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p2}, Lcom/mbridge/msdk/splash/manager/b;->b(Lcom/mbridge/msdk/foundation/entity/CampaignEx;ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SplashShowManager"

    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void
.end method

.method public close()V
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/splash/manager/b$h;->a:Lcom/mbridge/msdk/splash/manager/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/splash/manager/b;->b(I)V

    return-void
.end method

.method public toggleCloseBtn(I)V
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/splash/manager/b$h;->a:Lcom/mbridge/msdk/splash/manager/b;

    iget-object v0, v0, Lcom/mbridge/msdk/splash/manager/b;->c:Lcom/mbridge/msdk/splash/view/MBSplashView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/splash/view/MBSplashView;->changeCloseBtnState(I)V

    :cond_0
    return-void
.end method

.method public triggerCloseBtn(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/mbridge/msdk/splash/manager/b$h;->a:Lcom/mbridge/msdk/splash/manager/b;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/mbridge/msdk/splash/manager/b;->b(I)V

    return-void
.end method
