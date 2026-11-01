.class public final Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager$a;
    }
.end annotation


# instance fields
.field private a:Lcom/transsion/player/longvideo/ui/LongVodUiType;

.field private b:Z

.field private c:Lho/j;

.field private d:Lgo/a;

.field private e:Landroid/widget/FrameLayout;

.field private f:Lcom/transsion/player/longvideo/intercept/d;

.field private g:I

.field private h:Ljava/lang/String;

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Lkotlin/jvm/functions/Function0;

.field private p:Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/transsion/player/longvideo/ui/LongVodUiType;->PORTRAIT:Lcom/transsion/player/longvideo/ui/LongVodUiType;

    iput-object v0, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->a:Lcom/transsion/player/longvideo/ui/LongVodUiType;

    const/16 v0, 0x1388

    iput v0, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->g:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->i:Z

    return-void
.end method

.method private static final A(Lcom/transsion/player/longvideo/intercept/d;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/player/longvideo/intercept/d;->onComplete()V

    :cond_0
    return-void
.end method

.method private final B(Lgo/a;Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;Lcom/transsion/player/longvideo/ui/LongVodUiType;Lcom/transsion/player/longvideo/intercept/d;)V
    .locals 8

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p4

    goto :goto_0

    :cond_0
    move-object p4, p3

    :goto_0
    instance-of v0, p4, Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v0, :cond_1

    move-object p3, p4

    check-cast p3, Landroidx/appcompat/app/AppCompatActivity;

    :cond_1
    move-object v1, p3

    if-eqz v1, :cond_2

    invoke-static {v1}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object p3

    new-instance p4, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager$loadLandPauseAd$1$1;

    const/4 v5, 0x0

    move-object v0, p4

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager$loadLandPauseAd$1$1;-><init>(Landroidx/appcompat/app/AppCompatActivity;Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;Lgo/a;Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p3

    move-object v5, p4

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    :cond_2
    return-void
.end method

.method private static final E(Lcom/transsion/player/longvideo/intercept/d;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/player/longvideo/intercept/d;->onComplete()V

    :cond_0
    return-void
.end method

.method private static final F(Lcom/transsion/player/longvideo/intercept/d;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/player/longvideo/intercept/d;->onComplete()V

    :cond_0
    return-void
.end method

.method private static final I(Lcom/transsion/player/longvideo/intercept/d;Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/player/longvideo/intercept/d;->onComplete()V

    :cond_0
    const/4 p0, 0x0

    iput-boolean p0, p1, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->i:Z

    return-void
.end method

.method private static final J(Lcom/transsion/player/longvideo/intercept/d;Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/player/longvideo/intercept/d;->onComplete()V

    :cond_0
    const/4 p0, 0x0

    iput-boolean p0, p1, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->i:Z

    return-void
.end method

.method private static final K(Lcom/transsion/player/longvideo/intercept/d;Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/player/longvideo/intercept/d;->onComplete()V

    :cond_0
    const/4 p0, 0x0

    iput-boolean p0, p1, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->i:Z

    return-void
.end method

.method private static final L(Lcom/transsion/player/longvideo/intercept/d;Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/player/longvideo/intercept/d;->onComplete()V

    :cond_0
    const/4 p0, 0x0

    iput-boolean p0, p1, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->i:Z

    return-void
.end method

.method private static final U(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method private static final V(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public static synthetic X(Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;ZLjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->W(ZLjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private static final Y(Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;)Lkotlin/Unit;
    .locals 2

    iget-object v0, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->c:Lho/j;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lho/j;->c:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->b:Z

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final Z()Lkotlin/Unit;
    .locals 1

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method public static synthetic a()Lkotlin/Unit;
    .locals 1

    invoke-static {}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->b0()Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

.method private static final a0(Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;)Lkotlin/Unit;
    .locals 2

    iget-object v0, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->e:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->b:Z

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public static synthetic b(Lcom/transsion/player/longvideo/intercept/d;Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->L(Lcom/transsion/player/longvideo/intercept/d;Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;)V

    return-void
.end method

.method private static final b0()Lkotlin/Unit;
    .locals 1

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method public static synthetic c(Lcom/transsion/player/longvideo/intercept/d;Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->J(Lcom/transsion/player/longvideo/intercept/d;Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;)V

    return-void
.end method

.method public static synthetic d()Lkotlin/Unit;
    .locals 1

    invoke-static {}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->Z()Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic e(Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->a0(Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->Y(Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->U(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic h(Lcom/transsion/player/longvideo/intercept/d;Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->K(Lcom/transsion/player/longvideo/intercept/d;Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;)V

    return-void
.end method

.method public static synthetic i(Lcom/transsion/player/longvideo/intercept/d;Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->I(Lcom/transsion/player/longvideo/intercept/d;Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;)V

    return-void
.end method

.method public static synthetic j(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->V(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic k(Lcom/transsion/player/longvideo/intercept/d;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->F(Lcom/transsion/player/longvideo/intercept/d;)V

    return-void
.end method

.method public static synthetic l(Lcom/transsion/player/longvideo/intercept/d;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->A(Lcom/transsion/player/longvideo/intercept/d;)V

    return-void
.end method

.method public static synthetic m(Lcom/transsion/player/longvideo/intercept/d;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->z(Lcom/transsion/player/longvideo/intercept/d;)V

    return-void
.end method

.method public static synthetic n(Lcom/transsion/player/longvideo/intercept/d;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->E(Lcom/transsion/player/longvideo/intercept/d;)V

    return-void
.end method

.method public static final synthetic o(Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;)Lcom/transsion/player/longvideo/intercept/d;
    .locals 0

    iget-object p0, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->f:Lcom/transsion/player/longvideo/intercept/d;

    return-object p0
.end method

.method public static final synthetic p(Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->x()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic q(Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;)Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;
    .locals 0

    iget-object p0, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->p:Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;

    return-object p0
.end method

.method public static final synthetic r(Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->l:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic s(Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;)Lho/j;
    .locals 0

    iget-object p0, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->c:Lho/j;

    return-object p0
.end method

.method public static final synthetic t(Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->j:Z

    return-void
.end method

.method public static final synthetic u(Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->p:Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;

    return-void
.end method

.method public static final synthetic v(Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->i:Z

    return-void
.end method

.method private final x()Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getSimpleName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private static final z(Lcom/transsion/player/longvideo/intercept/d;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/player/longvideo/intercept/d;->onComplete()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final C()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->f:Lcom/transsion/player/longvideo/intercept/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/player/longvideo/intercept/d;->b()V

    :cond_0
    return-void
.end method

.method public final D(Lao/e;Lgo/a;Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;Lcom/transsion/player/longvideo/intercept/d;)V
    .locals 8

    sget-object p1, Llg/a;->a:Llg/a$a;

    invoke-direct {p0}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->x()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " --> onCompletion()"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "premium_p"

    const/4 v3, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lgo/a;->m()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lgo/a;->m()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    :goto_1
    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "premium_p"

    const-string v2, "PlaybackInterceptionManager --> onRenderFirstFrame() --> \u6559\u80b2\u3001\u97f3\u4e50\u4e0d\u5c55\u793a -- \u7ed3\u675f\u5e7f\u544a"

    const/4 v3, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    :cond_3
    :goto_2
    const-wide/16 v6, 0xc8

    if-nez p2, :cond_5

    invoke-direct {p0}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->x()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " --> onCompletion() --> bean ==null"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "premium_p"

    const/4 v3, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    if-eqz p3, :cond_4

    new-instance p1, Lcom/transsion/player/longvideo/intercept/v;

    invoke-direct {p1, p4}, Lcom/transsion/player/longvideo/intercept/v;-><init>(Lcom/transsion/player/longvideo/intercept/d;)V

    invoke-virtual {p3, p1, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    return-void

    :cond_5
    if-eqz p3, :cond_6

    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_6

    new-instance p1, Lcom/transsion/player/longvideo/intercept/w;

    invoke-direct {p1, p4}, Lcom/transsion/player/longvideo/intercept/w;-><init>(Lcom/transsion/player/longvideo/intercept/d;)V

    invoke-virtual {p3, p1, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_6
    sget-object p1, Lak/o;->a:Lak/o;

    invoke-virtual {p1}, Lak/o;->g()Z

    move-result p1

    if-nez p1, :cond_8

    sget-object p1, Lak/g;->a:Lak/g;

    invoke-virtual {p1}, Lak/g;->b()Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_3

    :cond_7
    if-eqz p3, :cond_8

    new-instance p1, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager$c;

    invoke-direct {p1, p0, p3, p4}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager$c;-><init>(Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;Lcom/transsion/player/longvideo/intercept/d;)V

    const-string p4, "VideoEndBidScene"

    invoke-virtual {p3, p4, p0, p2, p1}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;->loadNativeAd(Ljava/lang/String;Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;Lgo/a;Lcom/transsion/player/longvideo/intercept/d;)V

    :cond_8
    :goto_3
    return-void
.end method

.method public final G(JLgo/a;Lcom/transsion/player/ui/longvideo/a;Lho/j;)V
    .locals 14

    move-object v6, p0

    move-wide v0, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    const-string v4, "viewBinding"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lcom/transsion/player/longvideo/intercept/h0;->a:Lcom/transsion/player/longvideo/intercept/h0;

    if-eqz v2, :cond_0

    invoke-virtual/range {p3 .. p3}, Lgo/a;->m()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v5

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v4, v5}, Lcom/transsion/player/longvideo/intercept/h0;->d(Lcom/transsion/moviedetailapi/bean/Subject;)Z

    move-result v4

    if-nez v4, :cond_1

    return-void

    :cond_1
    iget-boolean v4, v6, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->i:Z

    if-eqz v4, :cond_2

    sget-object v7, Llg/a;->a:Llg/a$a;

    invoke-direct {p0}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->x()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " --> onProgress() --> \u5f53\u524d\u4e0d\u5904\u7406\uff0cisStartInterceptWorking = true"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x4

    const/4 v12, 0x0

    const-string v8, "premium_p"

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    :cond_2
    iget-boolean v4, v6, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->j:Z

    if-eqz v4, :cond_3

    return-void

    :cond_3
    const-class v4, Lcom/transsion/memberapi/IPremiumApi;

    const/4 v5, 0x0

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v4, v7}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/memberapi/IPremiumApi;

    if-eqz v4, :cond_4

    invoke-interface {v4}, Lcom/transsion/memberapi/IPremiumApi;->c()Z

    move-result v5

    :cond_4
    if-eqz v5, :cond_5

    return-void

    :cond_5
    iget-boolean v4, v6, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->k:Z

    if-nez v4, :cond_6

    return-void

    :cond_6
    iget v4, v6, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->g:I

    int-to-long v4, v4

    const-wide/16 v7, 0x3e8

    mul-long/2addr v4, v7

    cmp-long v7, v0, v4

    if-lez v7, :cond_8

    sget-object v8, Llg/a;->a:Llg/a$a;

    invoke-direct {p0}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->x()Ljava/lang/String;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " --> onProgress() --> \u514d\u8d39\u89c2\u770b\u65f6\u957f\u7528\u5b8c\uff0c\u6fc0\u52b1\u62e6\u622a --> preview = "

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " -- progress = "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x4

    const/4 v13, 0x0

    const-string v9, "premium_p"

    const/4 v11, 0x0

    invoke-static/range {v8 .. v13}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    if-eqz p4, :cond_7

    invoke-interface/range {p4 .. p4}, Lcom/transsion/player/orplayer/g;->pause()V

    :cond_7
    new-instance v0, Lcom/transsion/player/longvideo/intercept/VideoContentInterceptManager;

    invoke-direct {v0}, Lcom/transsion/player/longvideo/intercept/VideoContentInterceptManager;-><init>()V

    new-instance v5, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager$d;

    invoke-direct {v5, p0, v3, v2}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager$d;-><init>(Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;Lho/j;Lgo/a;)V

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    move-object/from16 v3, p4

    move-object v4, p0

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/player/longvideo/intercept/VideoContentInterceptManager;->n(Lgo/a;Lho/j;Lcom/transsion/player/ui/longvideo/a;Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;Lcom/transsion/player/longvideo/intercept/d;)V

    :cond_8
    return-void
.end method

.method public final H(Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;Lcom/transsion/player/longvideo/intercept/VideoContentInterceptView;Lgo/a;Lcom/transsion/player/longvideo/intercept/d;)V
    .locals 10

    sget-object v0, Lcom/transsion/player/longvideo/intercept/h0;->a:Lcom/transsion/player/longvideo/intercept/h0;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lgo/a;->m()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/transsion/player/longvideo/intercept/h0;->d(Lcom/transsion/moviedetailapi/bean/Subject;)Z

    move-result v0

    const-wide/16 v1, 0xc8

    if-nez v0, :cond_2

    sget-object v3, Llg/a;->a:Llg/a$a;

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v4, "premium_p"

    const-string v5, "PlaybackInterceptionManager --> onRenderFirstFrame() --> \u975e\u7535\u5f71\u7535\u89c6\u5267 -- \u542f\u64ad\u5e7f\u544a"

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    if-eqz p1, :cond_1

    new-instance p2, Lcom/transsion/player/longvideo/intercept/m;

    invoke-direct {p2, p4, p0}, Lcom/transsion/player/longvideo/intercept/m;-><init>(Lcom/transsion/player/longvideo/intercept/d;Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;)V

    invoke-virtual {p1, p2, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void

    :cond_2
    const-class v0, Lcom/transsion/memberapi/IPremiumApi;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0, v4}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/memberapi/IPremiumApi;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/transsion/memberapi/IPremiumApi;->c()Z

    move-result v3

    :cond_3
    if-eqz v3, :cond_6

    sget-object v4, Llg/a;->a:Llg/a$a;

    const/4 v8, 0x4

    const/4 v9, 0x0

    const-string v5, "premium_p"

    const-string v6, "PlaybackInterceptionManager --> onRenderFirstFrame() --> \u5f53\u524d\u662f\u4f1a\u5458\uff0c\u4e0d\u8fdb\u884c\u62e6\u622a"

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object p2, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->c:Lho/j;

    if-eqz p2, :cond_4

    iget-object p2, p2, Lho/j;->o:Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView;->setPremiumTip()V

    :cond_4
    if-eqz p1, :cond_5

    new-instance p2, Lcom/transsion/player/longvideo/intercept/n;

    invoke-direct {p2, p4, p0}, Lcom/transsion/player/longvideo/intercept/n;-><init>(Lcom/transsion/player/longvideo/intercept/d;Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;)V

    invoke-virtual {p1, p2, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    return-void

    :cond_6
    if-nez p3, :cond_8

    sget-object v3, Llg/a;->a:Llg/a$a;

    invoke-direct {p0}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->x()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " --> onRenderFirstFrame() --> bean ==null"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v4, "premium_p"

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    if-eqz p1, :cond_7

    new-instance p2, Lcom/transsion/player/longvideo/intercept/o;

    invoke-direct {p2, p4, p0}, Lcom/transsion/player/longvideo/intercept/o;-><init>(Lcom/transsion/player/longvideo/intercept/d;Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;)V

    invoke-virtual {p1, p2, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_7
    return-void

    :cond_8
    sget-object v0, Lak/o;->a:Lak/o;

    invoke-virtual {v0}, Lak/o;->i()Z

    move-result v0

    if-nez v0, :cond_b

    sget-object v0, Lak/g;->a:Lak/g;

    invoke-virtual {v0}, Lak/g;->b()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_1

    :cond_9
    if-eqz p1, :cond_a

    new-instance v0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager$e;

    move-object v3, v0

    move-object v4, p0

    move-object v5, p3

    move-object v6, p1

    move-object v7, p2

    move-object v8, p4

    invoke-direct/range {v3 .. v8}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager$e;-><init>(Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;Lgo/a;Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;Lcom/transsion/player/longvideo/intercept/VideoContentInterceptView;Lcom/transsion/player/longvideo/intercept/d;)V

    const-string p2, "VideoStartBidScene"

    invoke-virtual {p1, p2, p0, p3, v0}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;->loadNativeAd(Ljava/lang/String;Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;Lgo/a;Lcom/transsion/player/longvideo/intercept/d;)V

    :cond_a
    return-void

    :cond_b
    :goto_1
    sget-object v3, Llg/a;->a:Llg/a$a;

    invoke-direct {p0}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->x()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " --> onRenderFirstFrame() --> \u7279\u6b8a\u6a21\u5f0f"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v4, "premium_p"

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    if-eqz p1, :cond_c

    new-instance p2, Lcom/transsion/player/longvideo/intercept/p;

    invoke-direct {p2, p4, p0}, Lcom/transsion/player/longvideo/intercept/p;-><init>(Lcom/transsion/player/longvideo/intercept/d;Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;)V

    invoke-virtual {p1, p2, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_c
    return-void
.end method

.method public final M(Lcom/transsion/player/longvideo/ui/LongVodUiType;Lho/j;)V
    .locals 7

    const-string v0, "uiType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewBinding"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Llg/a;->a:Llg/a$a;

    invoke-direct {p0}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->x()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " --> onUiTypeChanged()"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "premium_p"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iput-object p1, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->a:Lcom/transsion/player/longvideo/ui/LongVodUiType;

    iget-boolean v0, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->b:Z

    iget-object v1, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->m:Ljava/lang/String;

    const-string v2, ""

    if-nez v1, :cond_0

    move-object v1, v2

    :cond_0
    iget-object v3, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->n:Ljava/lang/String;

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    const/4 v3, 0x1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->W(ZLjava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p2, Lho/j;->p:Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;->onUiTypeChanged(Lcom/transsion/player/longvideo/ui/LongVodUiType;Lho/j;)V

    return-void
.end method

.method public final N(Lcom/transsion/player/longvideo/intercept/VideoContentInterceptView;)V
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    invoke-direct {p0}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->x()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " --> onVideoPause()"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "premium_p"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public final O(Lao/e;Lcom/transsion/player/longvideo/intercept/VideoContentInterceptView;Lcom/transsion/player/ui/longvideo/a;)V
    .locals 6

    const-string p1, "playbackInterceptView"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "playerControl"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Llg/a;->a:Llg/a$a;

    invoke-direct {p0}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->x()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " --> onVideoStart()"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "premium_p"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->p:Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->V()V

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->p:Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;

    iget-object p1, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->c:Lho/j;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lho/j;->p:Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;->cannelPauseAd()V

    :cond_1
    return-void
.end method

.method public final P()V
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    invoke-direct {p0}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->x()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> onViewPause()"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "premium_p"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public final Q()V
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    invoke-direct {p0}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->x()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> onViewResume()"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "premium_p"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public final R(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->o:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final S(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    iput-object p1, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->h:Ljava/lang/String;

    sget-object v0, Lcom/transsion/player/longvideo/intercept/h0;->a:Lcom/transsion/player/longvideo/intercept/h0;

    iget-object v1, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->d:Lgo/a;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lgo/a;->m()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1, p1}, Lcom/transsion/player/longvideo/intercept/h0;->e(Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->k:Z

    sget-object v1, Llg/a;->a:Llg/a$a;

    invoke-direct {p0}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->x()Ljava/lang/String;

    move-result-object v0

    iget-boolean v2, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->k:Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " --> setCurPlayStream() --> isVipResolutionRatio = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " --> resolutions = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " --> msg = "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "premium_p"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public final T(Lgo/a;Lho/j;Landroid/widget/FrameLayout;Ljava/lang/String;Lcom/transsion/player/longvideo/intercept/d;)V
    .locals 6

    const-string v0, "bean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewBinding"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->d:Lgo/a;

    iput-object p2, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->c:Lho/j;

    iput-object p3, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->e:Landroid/widget/FrameLayout;

    iput-object p5, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->f:Lcom/transsion/player/longvideo/intercept/d;

    iput-object p4, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->l:Ljava/lang/String;

    if-eqz p3, :cond_0

    new-instance p4, Lcom/transsion/player/longvideo/intercept/x;

    invoke-direct {p4}, Lcom/transsion/player/longvideo/intercept/x;-><init>()V

    invoke-virtual {p3, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object p3, p2, Lho/j;->o:Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView;

    new-instance p4, Lcom/transsion/player/longvideo/intercept/y;

    invoke-direct {p4}, Lcom/transsion/player/longvideo/intercept/y;-><init>()V

    invoke-virtual {p3, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object p3, Lcom/transsion/player/longvideo/intercept/h0;->a:Lcom/transsion/player/longvideo/intercept/h0;

    invoke-virtual {p1}, Lgo/a;->m()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/transsion/player/longvideo/intercept/h0;->b(Lcom/transsion/moviedetailapi/bean/Subject;)I

    move-result p4

    iput p4, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->g:I

    invoke-virtual {p1}, Lgo/a;->m()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/transsion/player/longvideo/intercept/h0;->f(Lcom/transsion/moviedetailapi/bean/Subject;)Z

    move-result p3

    sget-object v0, Llg/a;->a:Llg/a$a;

    invoke-direct {p0}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->x()Ljava/lang/String;

    move-result-object p4

    iget p5, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->g:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " --> setDataSource(\u8bbe\u7f6e\u64ad\u653e\u8d44\u6e90) --> previewSeconds = "

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " --> isVipSource = "

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, " --> playBean = "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "premium_p"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    const-string p1, ""

    iput-object p1, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->m:Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->n:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->j:Z

    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->i:Z

    iput-boolean p1, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->k:Z

    iget-object p1, p2, Lho/j;->j:Lho/i;

    iget-object p1, p1, Lho/i;->g:Landroid/widget/TextView;

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p2, Lho/j;->n:Lcom/transsion/player/longvideo/intercept/VideoContentInterceptView;

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p2, Lho/j;->p:Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p2, Lho/j;->p:Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;

    invoke-virtual {p1}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;->destroy()V

    return-void
.end method

.method public final W(ZLjava/lang/String;Ljava/lang/String;Z)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v10, p2

    move-object/from16 v9, p3

    const-string v2, "sceneId"

    invoke-static {v10, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "traceId"

    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-boolean v1, v0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->b:Z

    iput-object v10, v0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->m:Ljava/lang/String;

    iput-object v9, v0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->n:Ljava/lang/String;

    sget-object v3, Llg/a;->a:Llg/a$a;

    invoke-direct/range {p0 .. p0}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->x()Ljava/lang/String;

    move-result-object v2

    iget-boolean v4, v0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->b:Z

    iget-object v5, v0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->a:Lcom/transsion/player/longvideo/ui/LongVodUiType;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " --> setPremiumViewShowState() --> isShowPremiumView = "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " -- uiType = "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v4, "premium_p"

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    const/16 v14, 0x8

    if-eqz v1, :cond_13

    iget-object v1, v0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->o:Lkotlin/jvm/functions/Function0;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    iget-object v1, v0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->a:Lcom/transsion/player/longvideo/ui/LongVodUiType;

    sget-object v2, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager$a;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    const/4 v15, -0x1

    const-class v3, Lcom/transsion/memberapi/IPremiumApi;

    const/4 v13, 0x0

    const/16 v16, 0x0

    if-eq v1, v2, :cond_a

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v1

    :cond_2
    :goto_0
    iget-object v1, v0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->e:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_8

    new-array v1, v13, [Ljava/lang/Object;

    invoke-static {v3, v1}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/memberapi/IPremiumApi;

    if-eqz v1, :cond_4

    new-instance v4, Lcom/transsion/player/longvideo/intercept/t;

    invoke-direct {v4, v0}, Lcom/transsion/player/longvideo/intercept/t;-><init>(Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;)V

    new-instance v5, Lcom/transsion/player/longvideo/intercept/u;

    invoke-direct {v5}, Lcom/transsion/player/longvideo/intercept/u;-><init>()V

    sget-object v6, Lcom/transsion/memberapi/MemberSource;->SOURCE_LANDSCAPE_PLAY:Lcom/transsion/memberapi/MemberSource;

    iget-object v8, v0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->l:Ljava/lang/String;

    iget-object v3, v0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->d:Lgo/a;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lgo/a;->m()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    move-result-object v3

    move-object v11, v3

    goto :goto_1

    :cond_3
    move-object/from16 v11, v16

    :goto_1
    const/16 v12, 0x20

    const/16 v17, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x0

    move-object/from16 v9, p3

    move-object/from16 v10, p2

    move-object/from16 v13, v17

    invoke-static/range {v1 .. v13}, Lcom/transsion/memberapi/IPremiumApi$a;->a(Lcom/transsion/memberapi/IPremiumApi;Landroid/content/Context;ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/transsion/memberapi/MemberSource;Lkotlin/jvm/functions/Function2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Landroid/view/View;

    move-result-object v1

    goto :goto_2

    :cond_4
    move-object/from16 v1, v16

    :goto_2
    if-eqz v1, :cond_8

    iget-object v2, v0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->e:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_8

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    if-eq v2, v15, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_6

    move-object/from16 v16, v2

    check-cast v16, Landroid/view/ViewGroup;

    :cond_6
    move-object/from16 v2, v16

    if-eqz v2, :cond_7

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_7
    iget-object v2, v0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->e:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_8

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_8
    :goto_3
    iget-object v1, v0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->c:Lho/j;

    if-eqz v1, :cond_9

    iget-object v1, v1, Lho/j;->c:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_9

    invoke-virtual {v1, v14}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    iget-object v1, v0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->e:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_15

    const/4 v13, 0x0

    invoke-virtual {v1, v13}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_7

    :cond_a
    iget-object v1, v0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->c:Lho/j;

    if-eqz v1, :cond_10

    iget-object v1, v1, Lho/j;->c:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_10

    new-array v1, v13, [Ljava/lang/Object;

    invoke-static {v3, v1}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/memberapi/IPremiumApi;

    if-eqz v1, :cond_c

    new-instance v4, Lcom/transsion/player/longvideo/intercept/r;

    invoke-direct {v4, v0}, Lcom/transsion/player/longvideo/intercept/r;-><init>(Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;)V

    new-instance v5, Lcom/transsion/player/longvideo/intercept/s;

    invoke-direct {v5}, Lcom/transsion/player/longvideo/intercept/s;-><init>()V

    sget-object v6, Lcom/transsion/memberapi/MemberSource;->SOURCE_LANDSCAPE_PLAY:Lcom/transsion/memberapi/MemberSource;

    iget-object v8, v0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->l:Ljava/lang/String;

    iget-object v3, v0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->d:Lgo/a;

    if-eqz v3, :cond_b

    invoke-virtual {v3}, Lgo/a;->m()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    move-result-object v3

    move-object v11, v3

    goto :goto_4

    :cond_b
    move-object/from16 v11, v16

    :goto_4
    const/16 v12, 0x20

    const/16 v17, 0x0

    const/4 v3, 0x1

    const/4 v7, 0x0

    move-object/from16 v9, p3

    move-object/from16 v10, p2

    move v14, v13

    move-object/from16 v13, v17

    invoke-static/range {v1 .. v13}, Lcom/transsion/memberapi/IPremiumApi$a;->a(Lcom/transsion/memberapi/IPremiumApi;Landroid/content/Context;ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/transsion/memberapi/MemberSource;Lkotlin/jvm/functions/Function2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Landroid/view/View;

    move-result-object v1

    goto :goto_5

    :cond_c
    move v14, v13

    move-object/from16 v1, v16

    :goto_5
    if-eqz v1, :cond_11

    iget-object v2, v0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->c:Lho/j;

    if-eqz v2, :cond_11

    iget-object v2, v2, Lho/j;->c:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_11

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    if-eq v2, v15, :cond_d

    goto :goto_6

    :cond_d
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_e

    move-object/from16 v16, v2

    check-cast v16, Landroid/view/ViewGroup;

    :cond_e
    move-object/from16 v2, v16

    if-eqz v2, :cond_f

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_f
    iget-object v2, v0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->c:Lho/j;

    if-eqz v2, :cond_11

    iget-object v2, v2, Lho/j;->c:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_11

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_6

    :cond_10
    move v14, v13

    :cond_11
    :goto_6
    iget-object v1, v0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->c:Lho/j;

    if-eqz v1, :cond_12

    iget-object v1, v1, Lho/j;->c:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_12

    invoke-virtual {v1, v14}, Landroid/view/View;->setVisibility(I)V

    :cond_12
    iget-object v1, v0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->e:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_15

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7

    :cond_13
    move v2, v14

    iget-object v1, v0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->c:Lho/j;

    if-eqz v1, :cond_14

    iget-object v1, v1, Lho/j;->c:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_14

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_14
    iget-object v1, v0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->e:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_15

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_15
    :goto_7
    return-void
.end method

.method public final w()V
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    invoke-direct {p0}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->x()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> destroy()"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "premium_p"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->c:Lho/j;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lho/j;->p:Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;->destroy()V

    :cond_0
    iget-object v0, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->c:Lho/j;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lho/j;->o:Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView;->destroy()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->o:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final y(Lgo/a;Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;Lcom/transsion/player/longvideo/ui/LongVodUiType;Lcom/transsion/player/longvideo/intercept/d;)V
    .locals 9

    const-string v0, "uiType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Llg/a;->a:Llg/a$a;

    invoke-direct {p0}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->x()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> handlePause(\u52a0\u8f7d\u6682\u505c\u5e7f\u544a)"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "premium_p"

    const/4 v4, 0x0

    move-object v1, v0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    sget-object v1, Lcom/transsion/player/longvideo/intercept/h0;->a:Lcom/transsion/player/longvideo/intercept/h0;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lgo/a;->m()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Lcom/transsion/player/longvideo/intercept/h0;->d(Lcom/transsion/moviedetailapi/bean/Subject;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "premium_p"

    const-string v3, "PlaybackInterceptionManager --> onRenderFirstFrame() --> \u975e\u7535\u5f71\u7535\u89c6\u5267 -- \u6682\u505c\u5e7f\u544a"

    const/4 v4, 0x0

    move-object v1, v0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    :cond_1
    const-wide/16 v7, 0xc8

    if-nez p1, :cond_3

    invoke-direct {p0}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->x()Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " --> handlePause() --> bean ==null"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "premium_p"

    const/4 v4, 0x0

    move-object v1, v0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    if-eqz p2, :cond_2

    new-instance p1, Lcom/transsion/player/longvideo/intercept/l;

    invoke-direct {p1, p4}, Lcom/transsion/player/longvideo/intercept/l;-><init>(Lcom/transsion/player/longvideo/intercept/d;)V

    invoke-virtual {p2, p1, v7, v8}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void

    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    new-instance p1, Lcom/transsion/player/longvideo/intercept/q;

    invoke-direct {p1, p4}, Lcom/transsion/player/longvideo/intercept/q;-><init>(Lcom/transsion/player/longvideo/intercept/d;)V

    invoke-virtual {p2, p1, v7, v8}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_4
    sget-object v0, Lak/o;->a:Lak/o;

    invoke-virtual {v0}, Lak/o;->g()Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lak/g;->a:Lak/g;

    invoke-virtual {v0}, Lak/g;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    sget-object v0, Lcom/transsion/player/longvideo/ui/LongVodUiType;->LAND:Lcom/transsion/player/longvideo/ui/LongVodUiType;

    if-ne p3, v0, :cond_6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->B(Lgo/a;Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;Lcom/transsion/player/longvideo/ui/LongVodUiType;Lcom/transsion/player/longvideo/intercept/d;)V

    goto :goto_1

    :cond_6
    if-eqz p2, :cond_7

    new-instance p3, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager$b;

    invoke-direct {p3, p0, p2, p4}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager$b;-><init>(Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;Lcom/transsion/player/longvideo/intercept/d;)V

    const-string p4, "VerticalPauseScene"

    invoke-virtual {p2, p4, p0, p1, p3}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;->loadNativeAd(Ljava/lang/String;Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;Lgo/a;Lcom/transsion/player/longvideo/intercept/d;)V

    :cond_7
    :goto_1
    return-void
.end method
