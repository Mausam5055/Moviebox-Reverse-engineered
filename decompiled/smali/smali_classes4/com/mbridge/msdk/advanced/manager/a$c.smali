.class Lcom/mbridge/msdk/advanced/manager/a$c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mbridge/msdk/advanced/middle/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/advanced/manager/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/advanced/manager/a;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/advanced/manager/a;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/advanced/manager/a$c;->a:Lcom/mbridge/msdk/advanced/manager/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    iget-object v0, p0, Lcom/mbridge/msdk/advanced/manager/a$c;->a:Lcom/mbridge/msdk/advanced/manager/a;

    invoke-static {v0}, Lcom/mbridge/msdk/advanced/manager/a;->b(Lcom/mbridge/msdk/advanced/manager/a;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetCountdown"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V
    .locals 3

    iget-object v0, p0, Lcom/mbridge/msdk/advanced/manager/a$c;->a:Lcom/mbridge/msdk/advanced/manager/a;

    const/4 v1, 0x0

    const-string v2, ""

    invoke-virtual {v0, p1, v1, v2}, Lcom/mbridge/msdk/advanced/manager/a;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;ZLjava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/advanced/manager/a$c;->a:Lcom/mbridge/msdk/advanced/manager/a;

    iget-object v1, v0, Lcom/mbridge/msdk/advanced/manager/a;->d:Lcom/mbridge/msdk/advanced/middle/d;

    if-eqz v1, :cond_1

    invoke-static {v0, p1}, Lcom/mbridge/msdk/advanced/manager/a;->a(Lcom/mbridge/msdk/advanced/manager/a;Z)Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/mbridge/msdk/advanced/manager/a$c;->a:Lcom/mbridge/msdk/advanced/manager/a;

    iget-object v0, p1, Lcom/mbridge/msdk/advanced/manager/a;->d:Lcom/mbridge/msdk/advanced/middle/d;

    iget-object p1, p1, Lcom/mbridge/msdk/advanced/manager/a;->l:Lcom/mbridge/msdk/out/MBridgeIds;

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/advanced/middle/d;->f(Lcom/mbridge/msdk/out/MBridgeIds;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/mbridge/msdk/advanced/manager/a$c;->a:Lcom/mbridge/msdk/advanced/manager/a;

    iget-object v0, p1, Lcom/mbridge/msdk/advanced/manager/a;->d:Lcom/mbridge/msdk/advanced/middle/d;

    iget-object p1, p1, Lcom/mbridge/msdk/advanced/manager/a;->l:Lcom/mbridge/msdk/out/MBridgeIds;

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/advanced/middle/d;->a(Lcom/mbridge/msdk/out/MBridgeIds;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(ZLjava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/advanced/manager/a$c;->a:Lcom/mbridge/msdk/advanced/manager/a;

    iget-object v0, v0, Lcom/mbridge/msdk/advanced/manager/a;->d:Lcom/mbridge/msdk/advanced/middle/d;

    if-eqz v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/mbridge/msdk/advanced/manager/a$c;->a:Lcom/mbridge/msdk/advanced/manager/a;

    iget-object p2, p1, Lcom/mbridge/msdk/advanced/manager/a;->d:Lcom/mbridge/msdk/advanced/middle/d;

    iget-object p1, p1, Lcom/mbridge/msdk/advanced/manager/a;->l:Lcom/mbridge/msdk/out/MBridgeIds;

    invoke-virtual {p2, p1}, Lcom/mbridge/msdk/advanced/middle/d;->b(Lcom/mbridge/msdk/out/MBridgeIds;)V

    iget-object p1, p0, Lcom/mbridge/msdk/advanced/manager/a$c;->a:Lcom/mbridge/msdk/advanced/manager/a;

    iget-object p2, p1, Lcom/mbridge/msdk/advanced/manager/a;->d:Lcom/mbridge/msdk/advanced/middle/d;

    iget-object p1, p1, Lcom/mbridge/msdk/advanced/manager/a;->l:Lcom/mbridge/msdk/out/MBridgeIds;

    invoke-virtual {p2, p1}, Lcom/mbridge/msdk/advanced/middle/d;->d(Lcom/mbridge/msdk/out/MBridgeIds;)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/advanced/manager/a$c;->a:Lcom/mbridge/msdk/advanced/manager/a;

    iget-object v0, v0, Lcom/mbridge/msdk/advanced/manager/a;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->campaignToJsonObject(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->parseCampaignWithBackData(Lorg/json/JSONObject;)Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setClickTempSource(I)V

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setClickType(I)V

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setTriggerClickSource(I)V

    invoke-virtual {v0, p2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setClickURL(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mbridge/msdk/advanced/manager/a$c;->a:Lcom/mbridge/msdk/advanced/manager/a;

    invoke-virtual {v1, v0, p1, p2}, Lcom/mbridge/msdk/advanced/manager/a;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    iget-object p2, p0, Lcom/mbridge/msdk/advanced/manager/a$c;->a:Lcom/mbridge/msdk/advanced/manager/a;

    invoke-static {p2}, Lcom/mbridge/msdk/advanced/manager/a;->b(Lcom/mbridge/msdk/advanced/manager/a;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void
.end method

.method public close()V
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/advanced/manager/a$c;->a:Lcom/mbridge/msdk/advanced/manager/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mbridge/msdk/advanced/manager/a;->a(Lcom/mbridge/msdk/advanced/manager/a;I)V

    return-void
.end method

.method public toggleCloseBtn(I)V
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/advanced/manager/a$c;->a:Lcom/mbridge/msdk/advanced/manager/a;

    invoke-static {v0, p1}, Lcom/mbridge/msdk/advanced/manager/a;->b(Lcom/mbridge/msdk/advanced/manager/a;I)I

    iget-object v0, p0, Lcom/mbridge/msdk/advanced/manager/a$c;->a:Lcom/mbridge/msdk/advanced/manager/a;

    iget-object v0, v0, Lcom/mbridge/msdk/advanced/manager/a;->c:Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedView;->changeCloseBtnState(I)V

    :cond_0
    return-void
.end method

.method public triggerCloseBtn(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/mbridge/msdk/advanced/manager/a$c;->a:Lcom/mbridge/msdk/advanced/manager/a;

    iget-object p1, p1, Lcom/mbridge/msdk/advanced/manager/a;->c:Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedView;

    if-eqz p1, :cond_0

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object p1, p0, Lcom/mbridge/msdk/advanced/manager/a$c;->a:Lcom/mbridge/msdk/advanced/manager/a;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/mbridge/msdk/advanced/manager/a;->a(Lcom/mbridge/msdk/advanced/manager/a;I)V

    return-void
.end method
