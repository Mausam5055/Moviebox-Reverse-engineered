.class Lcom/mbridge/msdk/splash/manager/c;
.super Lcom/mbridge/msdk/splash/manager/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mbridge/msdk/splash/manager/c$d;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/mbridge/msdk/splash/manager/a;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mbridge/msdk/splash/manager/c$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/mbridge/msdk/splash/manager/c;-><init>()V

    return-void
.end method

.method public static a()Lcom/mbridge/msdk/splash/manager/c;
    .locals 1

    invoke-static {}, Lcom/mbridge/msdk/splash/manager/c$d;->a()Lcom/mbridge/msdk/splash/manager/c;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected a(Ljava/util/List;Lcom/mbridge/msdk/splash/view/MBSplashView;Lcom/mbridge/msdk/splash/common/c;Lcom/mbridge/msdk/splash/inter/a;)V
    .locals 8
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

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/mbridge/msdk/setting/h;->b()Lcom/mbridge/msdk/setting/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mbridge/msdk/setting/h;->d(Ljava/lang/String;)Lcom/mbridge/msdk/setting/g;

    new-instance v0, Lcom/mbridge/msdk/dycreator/wrapper/DyOption$Builder;

    invoke-direct {v0}, Lcom/mbridge/msdk/dycreator/wrapper/DyOption$Builder;-><init>()V

    invoke-virtual {p3}, Lcom/mbridge/msdk/splash/common/c;->b()Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/dycreator/wrapper/DyOption$Builder;->campaignEx(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)Lcom/mbridge/msdk/dycreator/wrapper/DyOption$IViewOptionBuilder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mbridge/msdk/dycreator/wrapper/DyOption$IViewOptionBuilder;->fileDirs(Ljava/util/List;)Lcom/mbridge/msdk/dycreator/wrapper/DyOption$IViewOptionBuilder;

    move-result-object p1

    sget-object v0, Lcom/mbridge/msdk/dycreator/wrapper/DyAdType;->SPLASH:Lcom/mbridge/msdk/dycreator/wrapper/DyAdType;

    invoke-interface {p1, v0}, Lcom/mbridge/msdk/dycreator/wrapper/DyOption$IViewOptionBuilder;->dyAdType(Lcom/mbridge/msdk/dycreator/wrapper/DyAdType;)Lcom/mbridge/msdk/dycreator/wrapper/DyOption$IViewOptionBuilder;

    move-result-object p1

    invoke-virtual {p3}, Lcom/mbridge/msdk/splash/common/c;->m()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/mbridge/msdk/dycreator/wrapper/DyOption$IViewOptionBuilder;->canSkip(Z)Lcom/mbridge/msdk/dycreator/wrapper/DyOption$IViewOptionBuilder;

    move-result-object p1

    invoke-virtual {p3}, Lcom/mbridge/msdk/splash/common/c;->f()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-interface {p1, v0}, Lcom/mbridge/msdk/dycreator/wrapper/DyOption$IViewOptionBuilder;->isScreenClick(Z)Lcom/mbridge/msdk/dycreator/wrapper/DyOption$IViewOptionBuilder;

    move-result-object p1

    invoke-virtual {p3}, Lcom/mbridge/msdk/splash/common/c;->c()I

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    invoke-interface {p1, v0}, Lcom/mbridge/msdk/dycreator/wrapper/DyOption$IViewOptionBuilder;->isClickButtonVisible(Z)Lcom/mbridge/msdk/dycreator/wrapper/DyOption$IViewOptionBuilder;

    move-result-object p1

    invoke-virtual {p3}, Lcom/mbridge/msdk/splash/common/c;->i()I

    move-result v0

    if-ne v0, v2, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    invoke-interface {p1, v0}, Lcom/mbridge/msdk/dycreator/wrapper/DyOption$IViewOptionBuilder;->isShakeVisible(Z)Lcom/mbridge/msdk/dycreator/wrapper/DyOption$IViewOptionBuilder;

    move-result-object p1

    invoke-virtual {p3}, Lcom/mbridge/msdk/splash/common/c;->a()I

    move-result v0

    if-nez v0, :cond_3

    move v0, v2

    goto :goto_3

    :cond_3
    move v0, v1

    :goto_3
    invoke-interface {p1, v0}, Lcom/mbridge/msdk/dycreator/wrapper/DyOption$IViewOptionBuilder;->isApkInfoVisible(Z)Lcom/mbridge/msdk/dycreator/wrapper/DyOption$IViewOptionBuilder;

    move-result-object p1

    invoke-virtual {p3}, Lcom/mbridge/msdk/splash/common/c;->e()I

    move-result v0

    if-ne v0, v2, :cond_4

    move v1, v2

    :cond_4
    invoke-interface {p1, v1}, Lcom/mbridge/msdk/dycreator/wrapper/DyOption$IViewOptionBuilder;->isLogoVisible(Z)Lcom/mbridge/msdk/dycreator/wrapper/DyOption$IViewOptionBuilder;

    move-result-object p1

    invoke-virtual {p3}, Lcom/mbridge/msdk/splash/common/c;->j()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/mbridge/msdk/dycreator/wrapper/DyOption$IViewOptionBuilder;->shakeStrenght(I)Lcom/mbridge/msdk/dycreator/wrapper/DyOption$IViewOptionBuilder;

    move-result-object p1

    invoke-virtual {p3}, Lcom/mbridge/msdk/splash/common/c;->k()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/mbridge/msdk/dycreator/wrapper/DyOption$IViewOptionBuilder;->shakeTime(I)Lcom/mbridge/msdk/dycreator/wrapper/DyOption$IViewOptionBuilder;

    move-result-object p1

    invoke-virtual {p3}, Lcom/mbridge/msdk/splash/common/c;->g()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/mbridge/msdk/dycreator/wrapper/DyOption$IViewOptionBuilder;->orientation(I)Lcom/mbridge/msdk/dycreator/wrapper/DyOption$IViewOptionBuilder;

    move-result-object p1

    invoke-virtual {p3}, Lcom/mbridge/msdk/splash/common/c;->d()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/mbridge/msdk/dycreator/wrapper/DyOption$IViewOptionBuilder;->countDownTime(I)Lcom/mbridge/msdk/dycreator/wrapper/DyOption$IViewOptionBuilder;

    move-result-object p1

    invoke-virtual {p3}, Lcom/mbridge/msdk/splash/common/c;->b()Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/mbridge/msdk/dycreator/wrapper/DyOption$IViewOptionBuilder;->adChoiceLink(Ljava/lang/String;)Lcom/mbridge/msdk/dycreator/wrapper/DyOption$IViewOptionBuilder;

    move-result-object p1

    invoke-interface {p1}, Lcom/mbridge/msdk/dycreator/wrapper/DyOption$IViewOptionBuilder;->build()Lcom/mbridge/msdk/dycreator/wrapper/DyOption;

    move-result-object p1

    new-instance v0, Lcom/mbridge/msdk/splash/manager/c$a;

    invoke-direct {v0, p0, p1}, Lcom/mbridge/msdk/splash/manager/c$a;-><init>(Lcom/mbridge/msdk/splash/manager/c;Lcom/mbridge/msdk/dycreator/wrapper/DyOption;)V

    invoke-virtual {p2, v0}, Lcom/mbridge/msdk/splash/view/MBSplashView;->setDyCountDownListener(Lcom/mbridge/msdk/dycreator/listener/DyCountDownListener;)V

    invoke-static {}, Lcom/mbridge/msdk/dycreator/wrapper/DynamicViewCreator;->getInstance()Lcom/mbridge/msdk/dycreator/wrapper/DynamicViewCreator;

    move-result-object v6

    new-instance v7, Lcom/mbridge/msdk/splash/manager/c$b;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p4

    move-object v3, p2

    move-object v4, p3

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/mbridge/msdk/splash/manager/c$b;-><init>(Lcom/mbridge/msdk/splash/manager/c;Lcom/mbridge/msdk/splash/inter/a;Lcom/mbridge/msdk/splash/view/MBSplashView;Lcom/mbridge/msdk/splash/common/c;Lcom/mbridge/msdk/dycreator/wrapper/DyOption;)V

    invoke-virtual {v6, p1, v7}, Lcom/mbridge/msdk/dycreator/wrapper/DynamicViewCreator;->createDynamicView(Lcom/mbridge/msdk/dycreator/wrapper/DyOption;Lcom/mbridge/msdk/dycreator/wrapper/DynamicViewBackListener;)V

    return-void
.end method
