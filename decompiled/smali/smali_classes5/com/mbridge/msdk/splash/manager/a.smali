.class public Lcom/mbridge/msdk/splash/manager/a;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;Lcom/mbridge/msdk/splash/view/MBSplashView;Lcom/mbridge/msdk/splash/common/c;Lcom/mbridge/msdk/splash/inter/a;)V
    .locals 1

    :try_start_0
    new-instance v0, Lcom/mbridge/msdk/splash/view/MBSplashNativeView;

    invoke-direct {v0, p1, p2, p3}, Lcom/mbridge/msdk/splash/view/MBSplashNativeView;-><init>(Landroid/content/Context;Lcom/mbridge/msdk/splash/view/MBSplashView;Lcom/mbridge/msdk/splash/common/c;)V

    if-eqz p4, :cond_0

    invoke-interface {p4, v0}, Lcom/mbridge/msdk/splash/inter/a;->a(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    if-eqz p4, :cond_0

    const-string p1, "View render error."

    invoke-interface {p4, p1}, Lcom/mbridge/msdk/splash/inter/a;->onError(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method protected a(Lcom/mbridge/msdk/dycreator/viewdata/base/a;Lcom/mbridge/msdk/splash/middle/a;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V
    .locals 2

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/mbridge/msdk/dycreator/bridge/MBSplashData;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/mbridge/msdk/dycreator/bridge/MBSplashData;

    invoke-virtual {p1}, Lcom/mbridge/msdk/dycreator/bridge/MBSplashData;->getxInScreen()F

    move-result v0

    invoke-virtual {p1}, Lcom/mbridge/msdk/dycreator/bridge/MBSplashData;->getyInScreen()F

    move-result v1

    invoke-virtual {p1}, Lcom/mbridge/msdk/dycreator/bridge/MBSplashData;->getClickType()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 p1, 0x0

    move v1, v0

    :goto_0
    if-eqz p2, :cond_1

    :try_start_0
    invoke-static {p1, v0, v1}, Lcom/mbridge/msdk/splash/common/util/a;->a(IFF)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p3}, Lcom/mbridge/msdk/splash/common/util/a;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/mbridge/msdk/splash/middle/a;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-interface {p2, p3}, Lcom/mbridge/msdk/splash/middle/a;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    :cond_1
    :goto_1
    return-void
.end method

.method protected a(Lcom/mbridge/msdk/splash/middle/a;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Lcom/mbridge/msdk/dycreator/viewdata/base/a;)V
    .locals 5

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v1

    if-eqz p3, :cond_0

    invoke-interface {p3}, Lcom/mbridge/msdk/dycreator/viewdata/base/a;->getEffectData()Lcom/mbridge/msdk/dycreator/wrapper/DyOption;

    move-result-object p3

    invoke-virtual {p3}, Lcom/mbridge/msdk/dycreator/wrapper/DyOption;->getCurrentCountDown()I

    move-result p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    const/4 v2, 0x1

    invoke-interface {p1, v2, p3}, Lcom/mbridge/msdk/splash/middle/a;->a(II)V

    invoke-static {}, Lcom/mbridge/msdk/foundation/feedback/b;->b()Lcom/mbridge/msdk/foundation/feedback/b;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mbridge/msdk/foundation/feedback/b;->b(Ljava/lang/String;)Lcom/mbridge/msdk/foundation/feedback/bean/a;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2, p2}, Lcom/mbridge/msdk/foundation/feedback/bean/a;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    invoke-static {}, Lcom/mbridge/msdk/foundation/feedback/b;->b()Lcom/mbridge/msdk/foundation/feedback/b;

    move-result-object p2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/mbridge/msdk/splash/manager/a$a;

    invoke-direct {v1, p0, p1, p3}, Lcom/mbridge/msdk/splash/manager/a$a;-><init>(Lcom/mbridge/msdk/splash/manager/a;Lcom/mbridge/msdk/splash/middle/a;I)V

    invoke-virtual {p2, v0, v1}, Lcom/mbridge/msdk/foundation/feedback/b;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/feedback/a;)V

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/feedback/bean/a;->p()V

    :cond_1
    return-void
.end method

.method public a(Lcom/mbridge/msdk/splash/view/MBSplashView;Lcom/mbridge/msdk/splash/common/c;Lcom/mbridge/msdk/splash/inter/a;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v0

    :cond_0
    if-nez p2, :cond_1

    if-eqz p3, :cond_1

    const-string p1, "The render parameters is unavailable."

    invoke-interface {p3, p1}, Lcom/mbridge/msdk/splash/inter/a;->onError(Ljava/lang/String;)V

    return-void

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/mbridge/msdk/splash/common/c;->b()Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Lcom/mbridge/msdk/splash/common/c;->b()Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getAdZip()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mbridge/msdk/foundation/tools/x;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    const-string v1, ""

    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lcom/mbridge/msdk/splash/common/c;->b()Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {p2}, Lcom/mbridge/msdk/splash/common/c;->b()Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getAdZip()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v2, p1, p2, p3}, Lcom/mbridge/msdk/splash/manager/a;->a(Ljava/util/List;Lcom/mbridge/msdk/splash/view/MBSplashView;Lcom/mbridge/msdk/splash/common/c;Lcom/mbridge/msdk/splash/inter/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/mbridge/msdk/splash/manager/a;->a(Landroid/content/Context;Lcom/mbridge/msdk/splash/view/MBSplashView;Lcom/mbridge/msdk/splash/common/c;Lcom/mbridge/msdk/splash/inter/a;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/mbridge/msdk/splash/manager/a;->a(Landroid/content/Context;Lcom/mbridge/msdk/splash/view/MBSplashView;Lcom/mbridge/msdk/splash/common/c;Lcom/mbridge/msdk/splash/inter/a;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/mbridge/msdk/splash/manager/a;->a(Landroid/content/Context;Lcom/mbridge/msdk/splash/view/MBSplashView;Lcom/mbridge/msdk/splash/common/c;Lcom/mbridge/msdk/splash/inter/a;)V

    :cond_5
    :goto_1
    return-void
.end method

.method protected a(Ljava/util/List;Lcom/mbridge/msdk/splash/view/MBSplashView;Lcom/mbridge/msdk/splash/common/c;Lcom/mbridge/msdk/splash/inter/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mbridge/msdk/splash/view/MBSplashView;",
            "Lcom/mbridge/msdk/splash/common/c;",
            "Lcom/mbridge/msdk/splash/inter/a;",
            ")V"
        }
    .end annotation

    const/4 p1, 0x0

    throw p1
.end method
