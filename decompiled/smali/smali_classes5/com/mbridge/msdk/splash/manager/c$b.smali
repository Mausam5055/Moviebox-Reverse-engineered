.class Lcom/mbridge/msdk/splash/manager/c$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mbridge/msdk/dycreator/wrapper/DynamicViewBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/splash/manager/c;->a(Ljava/util/List;Lcom/mbridge/msdk/splash/view/MBSplashView;Lcom/mbridge/msdk/splash/common/c;Lcom/mbridge/msdk/splash/inter/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/splash/inter/a;

.field final synthetic b:Lcom/mbridge/msdk/splash/view/MBSplashView;

.field final synthetic c:Lcom/mbridge/msdk/splash/common/c;

.field final synthetic d:Lcom/mbridge/msdk/dycreator/wrapper/DyOption;

.field final synthetic e:Lcom/mbridge/msdk/splash/manager/c;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/splash/manager/c;Lcom/mbridge/msdk/splash/inter/a;Lcom/mbridge/msdk/splash/view/MBSplashView;Lcom/mbridge/msdk/splash/common/c;Lcom/mbridge/msdk/dycreator/wrapper/DyOption;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/mbridge/msdk/splash/manager/c$b;->e:Lcom/mbridge/msdk/splash/manager/c;

    iput-object p2, p0, Lcom/mbridge/msdk/splash/manager/c$b;->a:Lcom/mbridge/msdk/splash/inter/a;

    iput-object p3, p0, Lcom/mbridge/msdk/splash/manager/c$b;->b:Lcom/mbridge/msdk/splash/view/MBSplashView;

    iput-object p4, p0, Lcom/mbridge/msdk/splash/manager/c$b;->c:Lcom/mbridge/msdk/splash/common/c;

    iput-object p5, p0, Lcom/mbridge/msdk/splash/manager/c$b;->d:Lcom/mbridge/msdk/dycreator/wrapper/DyOption;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public viewClicked(Lcom/mbridge/msdk/dycreator/binding/response/base/BaseRespData;)V
    .locals 4

    iget-object v0, p0, Lcom/mbridge/msdk/splash/manager/c$b;->b:Lcom/mbridge/msdk/splash/view/MBSplashView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mbridge/msdk/splash/view/MBSplashView;->getSplashSignalCommunicationImpl()Lcom/mbridge/msdk/splash/signal/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mbridge/msdk/splash/signal/a;->a()Lcom/mbridge/msdk/splash/middle/a;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iget-object v2, p0, Lcom/mbridge/msdk/splash/manager/c$b;->d:Lcom/mbridge/msdk/dycreator/wrapper/DyOption;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/mbridge/msdk/dycreator/wrapper/DyOption;->getCampaignEx()Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    instance-of v3, p1, Lcom/mbridge/msdk/dycreator/binding/response/SplashResData;

    if-eqz v3, :cond_2

    move-object v1, p1

    check-cast v1, Lcom/mbridge/msdk/dycreator/binding/response/SplashResData;

    invoke-virtual {v1}, Lcom/mbridge/msdk/dycreator/binding/response/SplashResData;->geteAction()Lcom/mbridge/msdk/dycreator/listener/action/EAction;

    move-result-object v1

    :cond_2
    if-eqz v1, :cond_8

    sget-object v3, Lcom/mbridge/msdk/splash/manager/c$c;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v3, v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_6

    const/4 v3, 0x2

    if-eq v1, v3, :cond_5

    const/4 v3, 0x3

    if-eq v1, v3, :cond_4

    const/4 v3, 0x4

    if-eq v1, v3, :cond_3

    goto :goto_2

    :cond_3
    if-eqz p1, :cond_8

    instance-of v1, p1, Lcom/mbridge/msdk/dycreator/binding/response/SplashResData;

    if-eqz v1, :cond_8

    check-cast p1, Lcom/mbridge/msdk/dycreator/binding/response/SplashResData;

    invoke-virtual {p1}, Lcom/mbridge/msdk/dycreator/binding/response/SplashResData;->getBaseViewData()Lcom/mbridge/msdk/dycreator/viewdata/base/a;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {p1}, Lcom/mbridge/msdk/dycreator/binding/response/SplashResData;->getBaseViewData()Lcom/mbridge/msdk/dycreator/viewdata/base/a;

    move-result-object p1

    iget-object v1, p0, Lcom/mbridge/msdk/splash/manager/c$b;->e:Lcom/mbridge/msdk/splash/manager/c;

    invoke-virtual {v1, v0, v2, p1}, Lcom/mbridge/msdk/splash/manager/a;->a(Lcom/mbridge/msdk/splash/middle/a;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Lcom/mbridge/msdk/dycreator/viewdata/base/a;)V

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/mbridge/msdk/splash/manager/c$b;->d:Lcom/mbridge/msdk/dycreator/wrapper/DyOption;

    if-eqz p1, :cond_8

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/mbridge/msdk/splash/manager/c$b;->d:Lcom/mbridge/msdk/dycreator/wrapper/DyOption;

    invoke-virtual {v0}, Lcom/mbridge/msdk/dycreator/wrapper/DyOption;->getAdChoiceLink()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/mbridge/msdk/click/c;->e(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    if-eqz v0, :cond_8

    invoke-interface {v0}, Lcom/mbridge/msdk/splash/middle/a;->close()V

    goto :goto_2

    :cond_6
    if-eqz v0, :cond_8

    if-eqz p1, :cond_7

    instance-of v1, p1, Lcom/mbridge/msdk/dycreator/binding/response/SplashResData;

    if-eqz v1, :cond_8

    check-cast p1, Lcom/mbridge/msdk/dycreator/binding/response/SplashResData;

    invoke-virtual {p1}, Lcom/mbridge/msdk/dycreator/binding/response/SplashResData;->getBaseViewData()Lcom/mbridge/msdk/dycreator/viewdata/base/a;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {p1}, Lcom/mbridge/msdk/dycreator/binding/response/SplashResData;->getBaseViewData()Lcom/mbridge/msdk/dycreator/viewdata/base/a;

    move-result-object p1

    iget-object v1, p0, Lcom/mbridge/msdk/splash/manager/c$b;->e:Lcom/mbridge/msdk/splash/manager/c;

    invoke-virtual {v1, p1, v0, v2}, Lcom/mbridge/msdk/splash/manager/a;->a(Lcom/mbridge/msdk/dycreator/viewdata/base/a;Lcom/mbridge/msdk/splash/middle/a;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    goto :goto_2

    :cond_7
    invoke-interface {v0, v2}, Lcom/mbridge/msdk/splash/middle/a;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    :cond_8
    :goto_2
    return-void
.end method

.method public viewCreateFail(Lcom/mbridge/msdk/dycreator/error/a;)V
    .locals 4

    iget-object p1, p0, Lcom/mbridge/msdk/splash/manager/c$b;->b:Lcom/mbridge/msdk/splash/view/MBSplashView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/splash/manager/c$b;->e:Lcom/mbridge/msdk/splash/manager/c;

    iget-object v1, p0, Lcom/mbridge/msdk/splash/manager/c$b;->b:Lcom/mbridge/msdk/splash/view/MBSplashView;

    iget-object v2, p0, Lcom/mbridge/msdk/splash/manager/c$b;->c:Lcom/mbridge/msdk/splash/common/c;

    iget-object v3, p0, Lcom/mbridge/msdk/splash/manager/c$b;->a:Lcom/mbridge/msdk/splash/inter/a;

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/mbridge/msdk/splash/manager/a;->a(Landroid/content/Context;Lcom/mbridge/msdk/splash/view/MBSplashView;Lcom/mbridge/msdk/splash/common/c;Lcom/mbridge/msdk/splash/inter/a;)V

    :cond_1
    return-void
.end method

.method public viewCreatedSuccess(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/splash/manager/c$b;->a:Lcom/mbridge/msdk/splash/inter/a;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {v0, p1}, Lcom/mbridge/msdk/splash/inter/a;->a(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const-string p1, "View render error."

    invoke-interface {v0, p1}, Lcom/mbridge/msdk/splash/inter/a;->onError(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
