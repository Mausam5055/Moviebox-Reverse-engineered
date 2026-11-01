.class public Lcom/mbridge/msdk/dycreator/viewmodel/MBRewardViewVModel;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mbridge/msdk/dycreator/viewmodel/BaseViewModel;


# instance fields
.field private a:Lcom/mbridge/msdk/dycreator/viewobserver/d;

.field private b:Lcom/mbridge/msdk/dycreator/viewobserver/c;

.field private c:Lcom/mbridge/msdk/dycreator/viewobserver/f;

.field private d:Lcom/mbridge/msdk/dycreator/viewobserver/h;

.field private e:Lcom/mbridge/msdk/dycreator/wrapper/DynamicViewBackListener;

.field private f:Lcom/mbridge/msdk/dycreator/wrapper/DyOption;


# direct methods
.method public constructor <init>(Lcom/mbridge/msdk/dycreator/wrapper/DyOption;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mbridge/msdk/dycreator/viewmodel/MBRewardViewVModel;->f:Lcom/mbridge/msdk/dycreator/wrapper/DyOption;

    invoke-static {}, Lcom/mbridge/msdk/dycreator/bus/EventBus;->getDefault()Lcom/mbridge/msdk/dycreator/bus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/mbridge/msdk/dycreator/bus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method private a(Lcom/mbridge/msdk/dycreator/binding/response/SplashResData;)V
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/viewmodel/MBRewardViewVModel;->e:Lcom/mbridge/msdk/dycreator/wrapper/DynamicViewBackListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/mbridge/msdk/dycreator/wrapper/DynamicViewBackListener;->viewClicked(Lcom/mbridge/msdk/dycreator/binding/response/base/BaseRespData;)V

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/viewmodel/MBRewardViewVModel;->b:Lcom/mbridge/msdk/dycreator/viewobserver/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/dycreator/viewobserver/c;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private b(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/viewmodel/MBRewardViewVModel;->a:Lcom/mbridge/msdk/dycreator/viewobserver/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/dycreator/viewobserver/d;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private c(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/viewmodel/MBRewardViewVModel;->c:Lcom/mbridge/msdk/dycreator/viewobserver/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/dycreator/viewobserver/f;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private d(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/viewmodel/MBRewardViewVModel;->d:Lcom/mbridge/msdk/dycreator/viewobserver/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/dycreator/viewobserver/h;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onEventMainThread(Lcom/mbridge/msdk/dycreator/binding/response/SplashResData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/dycreator/viewmodel/MBRewardViewVModel;->a(Lcom/mbridge/msdk/dycreator/binding/response/SplashResData;)V

    return-void
.end method

.method public setClickSubject(Lcom/mbridge/msdk/dycreator/viewobserver/c;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/mbridge/msdk/dycreator/viewmodel/MBRewardViewVModel;->b:Lcom/mbridge/msdk/dycreator/viewobserver/c;

    :cond_0
    return-void
.end method

.method public setConcreteSubject(Lcom/mbridge/msdk/dycreator/viewobserver/d;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/mbridge/msdk/dycreator/viewmodel/MBRewardViewVModel;->a:Lcom/mbridge/msdk/dycreator/viewobserver/d;

    :cond_0
    return-void
.end method

.method public setDynamicViewBackListener(Lcom/mbridge/msdk/dycreator/wrapper/DynamicViewBackListener;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/mbridge/msdk/dycreator/viewmodel/MBRewardViewVModel;->e:Lcom/mbridge/msdk/dycreator/wrapper/DynamicViewBackListener;

    :cond_0
    return-void
.end method

.method public setEffectSubject(Lcom/mbridge/msdk/dycreator/viewobserver/f;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/mbridge/msdk/dycreator/viewmodel/MBRewardViewVModel;->c:Lcom/mbridge/msdk/dycreator/viewobserver/f;

    :cond_0
    return-void
.end method

.method public setModelDataAndBind()V
    .locals 2

    new-instance v0, Lcom/mbridge/msdk/dycreator/viewdata/a;

    iget-object v1, p0, Lcom/mbridge/msdk/dycreator/viewmodel/MBRewardViewVModel;->f:Lcom/mbridge/msdk/dycreator/wrapper/DyOption;

    invoke-direct {v0, v1}, Lcom/mbridge/msdk/dycreator/viewdata/a;-><init>(Lcom/mbridge/msdk/dycreator/wrapper/DyOption;)V

    invoke-direct {p0, v0}, Lcom/mbridge/msdk/dycreator/viewmodel/MBRewardViewVModel;->b(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/mbridge/msdk/dycreator/viewmodel/MBRewardViewVModel;->a(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/mbridge/msdk/dycreator/viewmodel/MBRewardViewVModel;->c(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/mbridge/msdk/dycreator/viewmodel/MBRewardViewVModel;->d(Ljava/lang/Object;)V

    return-void
.end method

.method public setReportSubject(Lcom/mbridge/msdk/dycreator/viewobserver/h;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/mbridge/msdk/dycreator/viewmodel/MBRewardViewVModel;->d:Lcom/mbridge/msdk/dycreator/viewobserver/h;

    :cond_0
    return-void
.end method
