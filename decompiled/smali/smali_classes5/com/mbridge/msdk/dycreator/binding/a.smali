.class public Lcom/mbridge/msdk/dycreator/binding/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lcom/mbridge/msdk/dycreator/viewdata/base/a;


# direct methods
.method public constructor <init>(Lcom/mbridge/msdk/dycreator/viewdata/base/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mbridge/msdk/dycreator/binding/a;->a:Lcom/mbridge/msdk/dycreator/viewdata/base/a;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    if-eqz p1, :cond_3

    instance-of v0, p1, Lcom/mbridge/msdk/dycreator/baseview/inter/InterBase;

    if-eqz v0, :cond_3

    instance-of v0, p1, Lcom/mbridge/msdk/dycreator/baseview/MBCountDownView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/binding/a;->a:Lcom/mbridge/msdk/dycreator/viewdata/base/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/mbridge/msdk/dycreator/viewdata/base/a;->getEffectData()Lcom/mbridge/msdk/dycreator/wrapper/DyOption;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/binding/a;->a:Lcom/mbridge/msdk/dycreator/viewdata/base/a;

    invoke-interface {v0}, Lcom/mbridge/msdk/dycreator/viewdata/base/a;->getEffectData()Lcom/mbridge/msdk/dycreator/wrapper/DyOption;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/dycreator/wrapper/DyOption;->isCanSkip()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/binding/a;->a:Lcom/mbridge/msdk/dycreator/viewdata/base/a;

    if-eqz v0, :cond_1

    instance-of v1, p1, Lcom/mbridge/msdk/dycreator/baseview/MBRelativeLayout;

    if-eqz v1, :cond_1

    invoke-static {p1, v0}, Lcom/mbridge/msdk/dycreator/utils/d;->a(Landroid/view/View;Lcom/mbridge/msdk/dycreator/viewdata/base/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/binding/a;->a:Lcom/mbridge/msdk/dycreator/viewdata/base/a;

    instance-of v1, v0, Lcom/mbridge/msdk/dycreator/bridge/MBSplashData;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/mbridge/msdk/dycreator/bridge/MBSplashData;

    move-object v1, p1

    check-cast v1, Lcom/mbridge/msdk/dycreator/baseview/MBRelativeLayout;

    invoke-virtual {v1}, Lcom/mbridge/msdk/dycreator/baseview/MBRelativeLayout;->getxInScreen()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/mbridge/msdk/dycreator/bridge/MBSplashData;->setxInScreen(F)V

    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/binding/a;->a:Lcom/mbridge/msdk/dycreator/viewdata/base/a;

    check-cast v0, Lcom/mbridge/msdk/dycreator/bridge/MBSplashData;

    invoke-virtual {v1}, Lcom/mbridge/msdk/dycreator/baseview/MBRelativeLayout;->getyInScreen()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/dycreator/bridge/MBSplashData;->setyInScreen(F)V

    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/binding/a;->a:Lcom/mbridge/msdk/dycreator/viewdata/base/a;

    check-cast v0, Lcom/mbridge/msdk/dycreator/bridge/MBSplashData;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/dycreator/bridge/MBSplashData;->setClickType(I)V

    :cond_1
    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/binding/a;->a:Lcom/mbridge/msdk/dycreator/viewdata/base/a;

    if-eqz v0, :cond_2

    instance-of v1, p1, Lcom/mbridge/msdk/dycreator/baseview/MBLinearLayout;

    if-eqz v1, :cond_2

    invoke-static {p1, v0}, Lcom/mbridge/msdk/dycreator/utils/d;->a(Landroid/view/View;Lcom/mbridge/msdk/dycreator/viewdata/base/a;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/binding/a;->a:Lcom/mbridge/msdk/dycreator/viewdata/base/a;

    instance-of v1, v0, Lcom/mbridge/msdk/dycreator/bridge/MBSplashData;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/mbridge/msdk/dycreator/bridge/MBSplashData;

    move-object v1, p1

    check-cast v1, Lcom/mbridge/msdk/dycreator/baseview/MBLinearLayout;

    invoke-virtual {v1}, Lcom/mbridge/msdk/dycreator/baseview/MBLinearLayout;->getxInScreen()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/mbridge/msdk/dycreator/bridge/MBSplashData;->setxInScreen(F)V

    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/binding/a;->a:Lcom/mbridge/msdk/dycreator/viewdata/base/a;

    check-cast v0, Lcom/mbridge/msdk/dycreator/bridge/MBSplashData;

    invoke-virtual {v1}, Lcom/mbridge/msdk/dycreator/baseview/MBLinearLayout;->getyInScreen()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/dycreator/bridge/MBSplashData;->setyInScreen(F)V

    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/binding/a;->a:Lcom/mbridge/msdk/dycreator/viewdata/base/a;

    check-cast v0, Lcom/mbridge/msdk/dycreator/bridge/MBSplashData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/dycreator/bridge/MBSplashData;->setClickType(I)V

    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/mbridge/msdk/dycreator/baseview/inter/InterBase;

    invoke-interface {v0}, Lcom/mbridge/msdk/dycreator/baseview/inter/InterBase;->getStrategyDes()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/mbridge/msdk/dycreator/binding/c;->a()Lcom/mbridge/msdk/dycreator/binding/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mbridge/msdk/dycreator/binding/c;->a(Ljava/lang/String;)Lcom/mbridge/msdk/dycreator/binding/base/BaseStrategy;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/mbridge/msdk/dycreator/binding/a;->a:Lcom/mbridge/msdk/dycreator/viewdata/base/a;

    invoke-interface {v0, p1, v1}, Lcom/mbridge/msdk/dycreator/binding/base/BaseStrategy;->bindClickData(Landroid/view/View;Lcom/mbridge/msdk/dycreator/viewdata/base/a;)V

    :cond_3
    return-void
.end method
