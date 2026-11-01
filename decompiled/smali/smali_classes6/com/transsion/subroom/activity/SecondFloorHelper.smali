.class public final Lcom/transsion/subroom/activity/SecondFloorHelper;
.super Ljava/lang/Object;


# instance fields
.field private A:Lkotlin/jvm/functions/Function0;

.field private a:Lau/a;

.field private final b:J

.field private final c:J

.field private final d:Ljava/lang/String;

.field private final e:Lkotlin/Lazy;

.field private final f:Lkotlin/Lazy;

.field private final g:Lkotlin/Lazy;

.field private h:Landroid/animation/AnimatorSet;

.field private i:Landroid/animation/AnimatorSet;

.field private j:Lkotlin/jvm/functions/Function1;

.field private k:Ljava/lang/String;

.field private final l:Lkotlinx/coroutines/n0;

.field private m:Lkotlinx/coroutines/t1;

.field private n:Lkotlinx/coroutines/t1;

.field private o:Lkotlinx/coroutines/t1;

.field private p:Lkotlinx/coroutines/t1;

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Z

.field private final x:Ljava/lang/String;

.field private y:I

.field private final z:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Lau/a;)V
    .locals 2

    const-string v0, "viewBinding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->a:Lau/a;

    const-wide/16 v0, 0x190

    iput-wide v0, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->b:J

    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->c:J

    const-string p1, "TrendingTwoLevelloftScene"

    iput-object p1, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->d:Ljava/lang/String;

    new-instance p1, Lcom/transsion/subroom/activity/d0;

    invoke-direct {p1, p0}, Lcom/transsion/subroom/activity/d0;-><init>(Lcom/transsion/subroom/activity/SecondFloorHelper;)V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->e:Lkotlin/Lazy;

    new-instance p1, Lcom/transsion/subroom/activity/e0;

    invoke-direct {p1, p0}, Lcom/transsion/subroom/activity/e0;-><init>(Lcom/transsion/subroom/activity/SecondFloorHelper;)V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->f:Lkotlin/Lazy;

    new-instance p1, Lcom/transsion/subroom/activity/f0;

    invoke-direct {p1, p0}, Lcom/transsion/subroom/activity/f0;-><init>(Lcom/transsion/subroom/activity/SecondFloorHelper;)V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->g:Lkotlin/Lazy;

    const-string p1, "IDLE"

    iput-object p1, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->k:Ljava/lang/String;

    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v1, v0}, Lkotlinx/coroutines/l2;->b(Lkotlinx/coroutines/t1;ILjava/lang/Object;)Lkotlinx/coroutines/z;

    move-result-object v0

    invoke-virtual {p1, v0}, Lkotlin/coroutines/AbstractCoroutineContextElement;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->l:Lkotlinx/coroutines/n0;

    const-string p1, "show_guide"

    iput-object p1, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->x:Ljava/lang/String;

    new-instance p1, Lcom/transsion/subroom/activity/g0;

    invoke-direct {p1, p0}, Lcom/transsion/subroom/activity/g0;-><init>(Lcom/transsion/subroom/activity/SecondFloorHelper;)V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->z:Lkotlin/Lazy;

    iget-object p1, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->a:Lau/a;

    iget-object p1, p1, Lau/a;->k:Lcom/transsion/wrapperad/view/secondfloor/TrendingTwoLevelIrregularView;

    new-instance v0, Lcom/transsion/subroom/activity/h0;

    invoke-direct {v0, p0}, Lcom/transsion/subroom/activity/h0;-><init>(Lcom/transsion/subroom/activity/SecondFloorHelper;)V

    invoke-virtual {p1, v0}, Lcom/transsion/wrapperad/view/secondfloor/TrendingTwoLevelIrregularView;->setLoadCallback(Lkotlin/jvm/functions/Function1;)V

    iget-object p1, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->a:Lau/a;

    iget-object p1, p1, Lau/a;->k:Lcom/transsion/wrapperad/view/secondfloor/TrendingTwoLevelIrregularView;

    new-instance v0, Lcom/transsion/subroom/activity/i0;

    invoke-direct {v0, p0}, Lcom/transsion/subroom/activity/i0;-><init>(Lcom/transsion/subroom/activity/SecondFloorHelper;)V

    invoke-virtual {p1, v0}, Lcom/transsion/wrapperad/view/secondfloor/TrendingTwoLevelIrregularView;->setClickCallback(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private static final A(Lcom/transsion/subroom/activity/SecondFloorHelper;)F
    .locals 1

    iget-object p0, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->a:Lau/a;

    invoke-virtual {p0}, Lau/a;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 p0, p0, 0x9

    int-to-float p0, p0

    const/high16 v0, 0x41800000    # 16.0f

    div-float/2addr p0, v0

    return p0
.end method

.method private static final B(Lcom/transsion/subroom/activity/SecondFloorHelper;)F
    .locals 1

    iget-object p0, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->a:Lau/a;

    invoke-virtual {p0}, Lau/a;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 p0, p0, 0x9

    div-int/lit8 p0, p0, 0x10

    int-to-float p0, p0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p0, v0

    return p0
.end method

.method private final C()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->n:Lkotlinx/coroutines/t1;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/t1$a;->b(Lkotlinx/coroutines/t1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->o:Lkotlinx/coroutines/t1;

    if-eqz v0, :cond_1

    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/t1$a;->b(Lkotlinx/coroutines/t1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->p:Lkotlinx/coroutines/t1;

    if-eqz v0, :cond_2

    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/t1$a;->b(Lkotlinx/coroutines/t1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->m:Lkotlinx/coroutines/t1;

    if-eqz v0, :cond_3

    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/t1$a;->b(Lkotlinx/coroutines/t1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_3
    iput-object v2, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->n:Lkotlinx/coroutines/t1;

    iput-object v2, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->o:Lkotlinx/coroutines/t1;

    iput-object v2, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->p:Lkotlinx/coroutines/t1;

    iput-object v2, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->m:Lkotlinx/coroutines/t1;

    return-void
.end method

.method private final E()V
    .locals 9

    invoke-direct {p0}, Lcom/transsion/subroom/activity/SecondFloorHelper;->f0()V

    invoke-direct {p0}, Lcom/transsion/subroom/activity/SecondFloorHelper;->J()F

    move-result v1

    const/16 v7, 0x2c

    const/4 v8, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v8}, Lcom/transsion/subroom/activity/SecondFloorHelper;->d0(Lcom/transsion/subroom/activity/SecondFloorHelper;FZZZZZILjava/lang/Object;)V

    return-void
.end method

.method private final F()V
    .locals 9

    invoke-direct {p0}, Lcom/transsion/subroom/activity/SecondFloorHelper;->f0()V

    invoke-direct {p0}, Lcom/transsion/subroom/activity/SecondFloorHelper;->K()F

    move-result v1

    const/16 v7, 0x34

    const/4 v8, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v8}, Lcom/transsion/subroom/activity/SecondFloorHelper;->d0(Lcom/transsion/subroom/activity/SecondFloorHelper;FZZZZZILjava/lang/Object;)V

    return-void
.end method

.method private final G(Z)V
    .locals 10

    iget-object v0, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->a:Lau/a;

    iget-object v0, v0, Lau/a;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    iget-object p1, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->a:Lau/a;

    iget-object p1, p1, Lau/a;->b:Lcom/transsion/wrapperad/view/secondfloor/SecondFloorArcCoverView;

    const-string v0, "arcCover"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljg/c;->g(Landroid/view/View;)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->v:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->v:Z

    invoke-direct {p0}, Lcom/transsion/subroom/activity/SecondFloorHelper;->f0()V

    const/16 v8, 0x18

    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move v7, p1

    invoke-static/range {v1 .. v9}, Lcom/transsion/subroom/activity/SecondFloorHelper;->d0(Lcom/transsion/subroom/activity/SecondFloorHelper;FZZZZZILjava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->a:Lau/a;

    iget-object p1, p1, Lau/a;->k:Lcom/transsion/wrapperad/view/secondfloor/TrendingTwoLevelIrregularView;

    invoke-virtual {p1}, Lcom/transsion/wrapperad/view/secondfloor/TrendingTwoLevelIrregularView;->idleTrigger()V

    return-void
.end method

.method static synthetic H(Lcom/transsion/subroom/activity/SecondFloorHelper;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/subroom/activity/SecondFloorHelper;->G(Z)V

    return-void
.end method

.method private final I()V
    .locals 9

    invoke-direct {p0}, Lcom/transsion/subroom/activity/SecondFloorHelper;->f0()V

    invoke-direct {p0}, Lcom/transsion/subroom/activity/SecondFloorHelper;->J()F

    move-result v1

    const/16 v7, 0x3e

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v8}, Lcom/transsion/subroom/activity/SecondFloorHelper;->d0(Lcom/transsion/subroom/activity/SecondFloorHelper;FZZZZZILjava/lang/Object;)V

    return-void
.end method

.method private final J()F
    .locals 1

    iget-object v0, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->e:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    return v0
.end method

.method private final K()F
    .locals 1

    iget-object v0, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->f:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    return v0
.end method

.method private final L()I
    .locals 1

    iget-object v0, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->z:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method private final M()J
    .locals 2

    iget-object v0, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->g:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private static final O(Lcom/transsion/subroom/activity/SecondFloorHelper;)I
    .locals 1

    sget-object v0, Lcom/transsion/ad/scene/d;->a:Lcom/transsion/ad/scene/d;

    iget-object p0, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->d:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/transsion/ad/scene/d;->b(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "guideShowMax"

    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method private final P(ZZZZZ)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->a:Lau/a;

    iget-object p1, p1, Lau/a;->b:Lcom/transsion/wrapperad/view/secondfloor/SecondFloorArcCoverView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->a:Lau/a;

    iget-object p1, p1, Lau/a;->b:Lcom/transsion/wrapperad/view/secondfloor/SecondFloorArcCoverView;

    const-string v0, "arcCover"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljg/c;->g(Landroid/view/View;)V

    :cond_0
    const/4 p1, 0x0

    if-eqz p2, :cond_2

    const-string p2, "IDLE"

    invoke-virtual {p0, p2}, Lcom/transsion/subroom/activity/SecondFloorHelper;->Y(Ljava/lang/String;)V

    sget-object p2, Lii/b;->a:Lii/b;

    iget-object v0, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->d:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->u:Z

    invoke-virtual {p2, v0, v1}, Lii/b;->e(Ljava/lang/String;Z)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->u:Z

    if-eqz p5, :cond_1

    invoke-virtual {p0}, Lcom/transsion/subroom/activity/SecondFloorHelper;->W()V

    goto :goto_0

    :cond_1
    iget-boolean p5, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->t:Z

    if-eqz p5, :cond_2

    iget-object p5, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->a:Lau/a;

    iget-object p5, p5, Lau/a;->k:Lcom/transsion/wrapperad/view/secondfloor/TrendingTwoLevelIrregularView;

    invoke-virtual {p5}, Lcom/transsion/wrapperad/view/secondfloor/TrendingTwoLevelIrregularView;->resetAd()V

    iput-boolean p2, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->t:Z

    const/4 p5, 0x1

    invoke-static {p0, p2, p5, p5, p1}, Lcom/transsion/subroom/activity/SecondFloorHelper;->V(Lcom/transsion/subroom/activity/SecondFloorHelper;ZZILjava/lang/Object;)V

    :cond_2
    :goto_0
    if-eqz p3, :cond_3

    const-string p2, "HOVER_HALF"

    invoke-virtual {p0, p2}, Lcom/transsion/subroom/activity/SecondFloorHelper;->Y(Ljava/lang/String;)V

    :cond_3
    if-eqz p4, :cond_4

    const-string p2, "HOVER_FULL"

    invoke-virtual {p0, p2}, Lcom/transsion/subroom/activity/SecondFloorHelper;->Y(Ljava/lang/String;)V

    :cond_4
    iput-object p1, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->i:Landroid/animation/AnimatorSet;

    return-void
.end method

.method private static final R(Lcom/transsion/subroom/activity/SecondFloorHelper;)J
    .locals 4

    sget-object v0, Lcom/transsion/ad/scene/a;->a:Lcom/transsion/ad/scene/a;

    iget-object p0, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->d:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/transsion/ad/scene/a;->e(Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_0

    int-to-long v0, p0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x1388

    :goto_0
    return-wide v0
.end method

.method public static synthetic V(Lcom/transsion/subroom/activity/SecondFloorHelper;ZZILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move p2, v0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/transsion/subroom/activity/SecondFloorHelper;->U(ZZ)V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/subroom/activity/SecondFloorHelper;Z)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/subroom/activity/SecondFloorHelper;->g(Lcom/transsion/subroom/activity/SecondFloorHelper;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/transsion/subroom/activity/SecondFloorHelper;)F
    .locals 0

    invoke-static {p0}, Lcom/transsion/subroom/activity/SecondFloorHelper;->A(Lcom/transsion/subroom/activity/SecondFloorHelper;)F

    move-result p0

    return p0
.end method

.method public static synthetic c(Lcom/transsion/subroom/activity/SecondFloorHelper;)F
    .locals 0

    invoke-static {p0}, Lcom/transsion/subroom/activity/SecondFloorHelper;->B(Lcom/transsion/subroom/activity/SecondFloorHelper;)F

    move-result p0

    return p0
.end method

.method private final c0(FZZZZZ)V
    .locals 10

    move-object v7, p0

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, v7, Lcom/transsion/subroom/activity/SecondFloorHelper;->i:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    iget-object v3, v7, Lcom/transsion/subroom/activity/SecondFloorHelper;->a:Lau/a;

    iget-object v3, v3, Lau/a;->d:Landroid/widget/FrameLayout;

    new-array v4, v2, [F

    aput p1, v4, v1

    const-string v5, "translationY"

    invoke-static {v3, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-wide v8, v7, Lcom/transsion/subroom/activity/SecondFloorHelper;->b:J

    invoke-virtual {v3, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v4, v7, Lcom/transsion/subroom/activity/SecondFloorHelper;->a:Lau/a;

    iget-object v4, v4, Lau/a;->b:Lcom/transsion/wrapperad/view/secondfloor/SecondFloorArcCoverView;

    if-eqz p2, :cond_1

    const/4 v6, 0x0

    goto :goto_0

    :cond_1
    const/high16 v6, 0x3f800000    # 1.0f

    :goto_0
    new-array v8, v2, [F

    aput v6, v8, v1

    const-string v6, "alpha"

    invoke-static {v4, v6, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iget-wide v8, v7, Lcom/transsion/subroom/activity/SecondFloorHelper;->b:J

    invoke-virtual {v4, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v4, v6}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v6, v7, Lcom/transsion/subroom/activity/SecondFloorHelper;->a:Lau/a;

    iget-object v6, v6, Lau/a;->b:Lcom/transsion/wrapperad/view/secondfloor/SecondFloorArcCoverView;

    new-array v8, v2, [F

    aput p1, v8, v1

    invoke-static {v6, v5, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    iget-wide v8, v7, Lcom/transsion/subroom/activity/SecondFloorHelper;->b:J

    invoke-virtual {v5, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v5, v6}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v8, v0, [Landroid/animation/Animator;

    aput-object v4, v8, v1

    aput-object v5, v8, v2

    invoke-virtual {v6, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v0, v0, [Landroid/animation/Animator;

    aput-object v3, v0, v1

    aput-object v6, v0, v2

    invoke-virtual {v8, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v9, Lcom/transsion/subroom/activity/SecondFloorHelper$a;

    move-object v0, v9

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/transsion/subroom/activity/SecondFloorHelper$a;-><init>(Lcom/transsion/subroom/activity/SecondFloorHelper;ZZZZZ)V

    invoke-virtual {v8, v9}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object v8, v7, Lcom/transsion/subroom/activity/SecondFloorHelper;->i:Landroid/animation/AnimatorSet;

    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public static synthetic d(Lcom/transsion/subroom/activity/SecondFloorHelper;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsion/subroom/activity/SecondFloorHelper;->h(Lcom/transsion/subroom/activity/SecondFloorHelper;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static synthetic d0(Lcom/transsion/subroom/activity/SecondFloorHelper;FZZZZZILjava/lang/Object;)V
    .locals 6

    and-int/lit8 v0, p7, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    and-int/lit8 v2, p7, 0x4

    if-eqz v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, p3

    :goto_1
    and-int/lit8 v3, p7, 0x8

    if-eqz v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    move v3, p4

    :goto_2
    and-int/lit8 v4, p7, 0x10

    if-eqz v4, :cond_3

    move v4, v1

    goto :goto_3

    :cond_3
    move v4, p5

    :goto_3
    and-int/lit8 v5, p7, 0x20

    if-eqz v5, :cond_4

    goto :goto_4

    :cond_4
    move v1, p6

    :goto_4
    move-object p2, p0

    move p3, p1

    move p4, v0

    move p5, v2

    move p6, v3

    move p7, v4

    move p8, v1

    invoke-direct/range {p2 .. p8}, Lcom/transsion/subroom/activity/SecondFloorHelper;->c0(FZZZZZ)V

    return-void
.end method

.method public static synthetic e(Lcom/transsion/subroom/activity/SecondFloorHelper;)J
    .locals 2

    invoke-static {p0}, Lcom/transsion/subroom/activity/SecondFloorHelper;->R(Lcom/transsion/subroom/activity/SecondFloorHelper;)J

    move-result-wide v0

    return-wide v0
.end method

.method private final e0()V
    .locals 8

    iget-object v0, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->a:Lau/a;

    iget-object v0, v0, Lau/a;->d:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Lcom/transsion/subroom/activity/SecondFloorHelper;->K()F

    move-result v1

    const/4 v2, 0x1

    new-array v3, v2, [F

    const/4 v4, 0x0

    aput v1, v3, v4

    const-string v1, "translationY"

    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-wide v5, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->c:J

    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v3, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->a:Lau/a;

    iget-object v3, v3, Lau/a;->b:Lcom/transsion/wrapperad/view/secondfloor/SecondFloorArcCoverView;

    invoke-direct {p0}, Lcom/transsion/subroom/activity/SecondFloorHelper;->K()F

    move-result v5

    new-array v6, v2, [F

    aput v5, v6, v4

    invoke-static {v3, v1, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iget-wide v5, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->c:J

    invoke-virtual {v1, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v3, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->a:Lau/a;

    iget-object v3, v3, Lau/a;->b:Lcom/transsion/wrapperad/view/secondfloor/SecondFloorArcCoverView;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/view/View;->setAlpha(F)V

    iget-object v3, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->a:Lau/a;

    iget-object v3, v3, Lau/a;->b:Lcom/transsion/wrapperad/view/secondfloor/SecondFloorArcCoverView;

    const-string v5, "arcCover"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Ljg/c;->k(Landroid/view/View;)V

    iget-object v3, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->a:Lau/a;

    iget-object v3, v3, Lau/a;->b:Lcom/transsion/wrapperad/view/secondfloor/SecondFloorArcCoverView;

    new-array v5, v2, [F

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v5, v4

    const-string v6, "alpha"

    invoke-static {v3, v6, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-wide v5, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->c:J

    invoke-virtual {v3, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v5}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v6, 0x2

    new-array v7, v6, [Landroid/animation/Animator;

    aput-object v1, v7, v4

    aput-object v3, v7, v2

    invoke-virtual {v5, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v3, v6, [Landroid/animation/Animator;

    aput-object v0, v3, v4

    aput-object v5, v3, v2

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v0, Lcom/transsion/subroom/activity/SecondFloorHelper$startGuideAnimation$1$1;

    invoke-direct {v0, p0}, Lcom/transsion/subroom/activity/SecondFloorHelper$startGuideAnimation$1$1;-><init>(Lcom/transsion/subroom/activity/SecondFloorHelper;)V

    invoke-virtual {v1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object v1, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->h:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public static synthetic f(Lcom/transsion/subroom/activity/SecondFloorHelper;)I
    .locals 0

    invoke-static {p0}, Lcom/transsion/subroom/activity/SecondFloorHelper;->O(Lcom/transsion/subroom/activity/SecondFloorHelper;)I

    move-result p0

    return p0
.end method

.method private final f0()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->h:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->h:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->i:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1
    iput-object v0, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->i:Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Lcom/transsion/subroom/activity/SecondFloorHelper;->C()V

    return-void
.end method

.method private static final g(Lcom/transsion/subroom/activity/SecondFloorHelper;Z)Lkotlin/Unit;
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/subroom/activity/SecondFloorHelper;->b0()V

    goto :goto_0

    :cond_0
    sget-object p1, Lii/b;->a:Lii/b;

    iget-object v0, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->d:Ljava/lang/String;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p1, v0, v3, v1, v2}, Lii/b;->d(Lii/b;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-boolean p1, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->q:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/subroom/activity/SecondFloorHelper;->W()V

    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final h(Lcom/transsion/subroom/activity/SecondFloorHelper;)Lkotlin/Unit;
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->w:Z

    const-string v1, "IDLE"

    invoke-virtual {p0, v1}, Lcom/transsion/subroom/activity/SecondFloorHelper;->Y(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v1, v0, v2}, Lcom/transsion/subroom/activity/SecondFloorHelper;->H(Lcom/transsion/subroom/activity/SecondFloorHelper;ZILjava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public static final synthetic i(Lcom/transsion/subroom/activity/SecondFloorHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/subroom/activity/SecondFloorHelper;->E()V

    return-void
.end method

.method public static final synthetic j(Lcom/transsion/subroom/activity/SecondFloorHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/subroom/activity/SecondFloorHelper;->F()V

    return-void
.end method

.method public static final synthetic k(Lcom/transsion/subroom/activity/SecondFloorHelper;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/subroom/activity/SecondFloorHelper;->G(Z)V

    return-void
.end method

.method public static final synthetic l(Lcom/transsion/subroom/activity/SecondFloorHelper;)J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->b:J

    return-wide v0
.end method

.method public static final synthetic m(Lcom/transsion/subroom/activity/SecondFloorHelper;)F
    .locals 0

    invoke-direct {p0}, Lcom/transsion/subroom/activity/SecondFloorHelper;->K()F

    move-result p0

    return p0
.end method

.method public static final synthetic n(Lcom/transsion/subroom/activity/SecondFloorHelper;)J
    .locals 2

    invoke-direct {p0}, Lcom/transsion/subroom/activity/SecondFloorHelper;->M()J

    move-result-wide v0

    return-wide v0
.end method

.method public static final synthetic o(Lcom/transsion/subroom/activity/SecondFloorHelper;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->d:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic p(Lcom/transsion/subroom/activity/SecondFloorHelper;)Lkotlinx/coroutines/n0;
    .locals 0

    iget-object p0, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->l:Lkotlinx/coroutines/n0;

    return-object p0
.end method

.method public static final synthetic q(Lcom/transsion/subroom/activity/SecondFloorHelper;)Lau/a;
    .locals 0

    iget-object p0, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->a:Lau/a;

    return-object p0
.end method

.method public static final synthetic r(Lcom/transsion/subroom/activity/SecondFloorHelper;ZZZZZ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/transsion/subroom/activity/SecondFloorHelper;->P(ZZZZZ)V

    return-void
.end method

.method public static final synthetic s(Lcom/transsion/subroom/activity/SecondFloorHelper;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->r:Z

    return p0
.end method

.method public static final synthetic t(Lcom/transsion/subroom/activity/SecondFloorHelper;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->u:Z

    return-void
.end method

.method public static final synthetic u(Lcom/transsion/subroom/activity/SecondFloorHelper;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->v:Z

    return-void
.end method

.method public static final synthetic v(Lcom/transsion/subroom/activity/SecondFloorHelper;Landroid/animation/AnimatorSet;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->h:Landroid/animation/AnimatorSet;

    return-void
.end method

.method public static final synthetic w(Lcom/transsion/subroom/activity/SecondFloorHelper;Lkotlinx/coroutines/t1;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->m:Lkotlinx/coroutines/t1;

    return-void
.end method

.method public static final synthetic x(Lcom/transsion/subroom/activity/SecondFloorHelper;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->r:Z

    return-void
.end method

.method public static final synthetic y(Lcom/transsion/subroom/activity/SecondFloorHelper;Lkotlinx/coroutines/t1;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->o:Lkotlinx/coroutines/t1;

    return-void
.end method

.method public static final synthetic z(Lcom/transsion/subroom/activity/SecondFloorHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/subroom/activity/SecondFloorHelper;->e0()V

    return-void
.end method


# virtual methods
.method public final D()V
    .locals 3

    sget-object v0, Lii/b;->a:Lii/b;

    iget-object v1, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->d:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lii/b;->e(Ljava/lang/String;Z)V

    iput-boolean v2, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->u:Z

    iget-object v0, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->l:Lkotlinx/coroutines/n0;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/o0;->d(Lkotlinx/coroutines/n0;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/transsion/subroom/activity/SecondFloorHelper;->f0()V

    iget-object v0, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->a:Lau/a;

    iget-object v0, v0, Lau/a;->k:Lcom/transsion/wrapperad/view/secondfloor/TrendingTwoLevelIrregularView;

    invoke-virtual {v0}, Lcom/transsion/wrapperad/view/secondfloor/TrendingTwoLevelIrregularView;->destroy()V

    iput-object v2, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->A:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final N()V
    .locals 3

    iget v0, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->y:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->y:I

    sget-object v0, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    invoke-virtual {v0}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->x:Ljava/lang/String;

    iget v2, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->y:I

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public final Q()Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->a:Lau/a;

    iget-object v0, v0, Lau/a;->k:Lcom/transsion/wrapperad/view/secondfloor/TrendingTwoLevelIrregularView;

    invoke-virtual {v0}, Lcom/transsion/wrapperad/view/secondfloor/TrendingTwoLevelIrregularView;->hasAd()Z

    move-result v0

    return v0
.end method

.method public final S()Z
    .locals 6

    invoke-virtual {p0}, Lcom/transsion/subroom/activity/SecondFloorHelper;->T()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    invoke-virtual {v0}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->x:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/tencent/mmkv/MMKV;->getInt(Ljava/lang/String;I)I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->y:I

    invoke-direct {p0}, Lcom/transsion/subroom/activity/SecondFloorHelper;->L()I

    move-result v2

    if-ge v0, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    if-nez v0, :cond_2

    sget-object v2, Lii/b;->a:Lii/b;

    iget-object v3, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->d:Ljava/lang/String;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v2, v3, v1, v4, v5}, Lii/b;->d(Lii/b;Ljava/lang/String;ZILjava/lang/Object;)V

    :cond_2
    return v0
.end method

.method public final T()Z
    .locals 9

    sget-object v0, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    invoke-virtual {v0}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-string v4, "zero_clock_timestamp_SecondFloorGuide"

    invoke-virtual {v1, v4, v2, v3}, Lcom/tencent/mmkv/MMKV;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v1, v5, v1

    const-wide/32 v7, 0x5265c00

    cmp-long v1, v1, v7

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    invoke-static {v5, v6}, Lcom/cloud/hisavana/sdk/common/util/l0;->c(J)J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    invoke-virtual {v0, v4, v2, v3}, Lcom/tencent/mmkv/MMKV;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    :cond_1
    return v1
.end method

.method public final U(ZZ)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->q:Z

    iget-object p1, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->a:Lau/a;

    iget-object p1, p1, Lau/a;->k:Lcom/transsion/wrapperad/view/secondfloor/TrendingTwoLevelIrregularView;

    invoke-virtual {p1, p2}, Lcom/transsion/wrapperad/view/secondfloor/TrendingTwoLevelIrregularView;->loadAd(Z)V

    return-void
.end method

.method public final W()V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->w:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->A:Lkotlin/jvm/functions/Function0;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->A:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final X(Ljava/lang/String;FF)V
    .locals 11

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string p2, "REFRESH"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    iput-boolean v3, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->t:Z

    invoke-direct {p0}, Lcom/transsion/subroom/activity/SecondFloorHelper;->I()V

    iget-object p1, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->a:Lau/a;

    iget-object p1, p1, Lau/a;->b:Lcom/transsion/wrapperad/view/secondfloor/SecondFloorArcCoverView;

    invoke-virtual {p1}, Lcom/transsion/wrapperad/view/secondfloor/SecondFloorArcCoverView;->refreshing()V

    iget-object p1, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->a:Lau/a;

    iget-object p1, p1, Lau/a;->k:Lcom/transsion/wrapperad/view/secondfloor/TrendingTwoLevelIrregularView;

    invoke-virtual {p1}, Lcom/transsion/wrapperad/view/secondfloor/TrendingTwoLevelIrregularView;->refreshing()V

    goto/16 :goto_0

    :sswitch_1
    const-string p2, "HOVER_HALF"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    :cond_1
    iget-object v5, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->l:Lkotlinx/coroutines/n0;

    new-instance v8, Lcom/transsion/subroom/activity/SecondFloorHelper$onAction$2;

    invoke-direct {v8, p0, v4}, Lcom/transsion/subroom/activity/SecondFloorHelper$onAction$2;-><init>(Lcom/transsion/subroom/activity/SecondFloorHelper;Lkotlin/coroutines/Continuation;)V

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->n:Lkotlinx/coroutines/t1;

    goto/16 :goto_0

    :sswitch_2
    const-string p2, "HOVER_FULL"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_0

    :cond_2
    iget-object v5, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->l:Lkotlinx/coroutines/n0;

    new-instance v8, Lcom/transsion/subroom/activity/SecondFloorHelper$onAction$3;

    invoke-direct {v8, p0, v4}, Lcom/transsion/subroom/activity/SecondFloorHelper$onAction$3;-><init>(Lcom/transsion/subroom/activity/SecondFloorHelper;Lkotlin/coroutines/Continuation;)V

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->n:Lkotlinx/coroutines/t1;

    goto/16 :goto_0

    :sswitch_3
    const-string p2, "SECOND_FLOOR_TRIGGER"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_0

    :cond_3
    iget-object p1, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->a:Lau/a;

    iget-object p1, p1, Lau/a;->b:Lcom/transsion/wrapperad/view/secondfloor/SecondFloorArcCoverView;

    invoke-virtual {p1}, Lcom/transsion/wrapperad/view/secondfloor/SecondFloorArcCoverView;->secondFloorTrigger()V

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "MOVE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto/16 :goto_0

    :cond_4
    iget-boolean p1, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->s:Z

    if-nez p1, :cond_5

    sget-object p1, Lii/b;->a:Lii/b;

    iget-object v0, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lii/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->a:Lau/a;

    iget-object v0, v0, Lau/a;->k:Lcom/transsion/wrapperad/view/secondfloor/TrendingTwoLevelIrregularView;

    invoke-virtual {v0}, Lcom/transsion/wrapperad/view/secondfloor/TrendingTwoLevelIrregularView;->showAd()V

    iget-object v0, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->d:Ljava/lang/String;

    invoke-static {p1, v0, v4, v1, v4}, Lii/b;->g(Lii/b;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    iput-boolean v3, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->u:Z

    iput-boolean v3, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->s:Z

    :cond_5
    iget-object p1, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->a:Lau/a;

    iget-object p1, p1, Lau/a;->d:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    iget-object p1, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->a:Lau/a;

    iget-object p1, p1, Lau/a;->b:Lcom/transsion/wrapperad/view/secondfloor/SecondFloorArcCoverView;

    sget-object v0, Lcom/transsion/wrapperad/view/secondfloor/CustomSwipeRefreshLayout;->Companion:Lcom/transsion/wrapperad/view/secondfloor/CustomSwipeRefreshLayout$a;

    invoke-virtual {v0}, Lcom/transsion/wrapperad/view/secondfloor/CustomSwipeRefreshLayout$a;->b()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/transsion/wrapperad/view/secondfloor/SecondFloorArcCoverView;->setAbMode(Z)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setAlpha(F)V

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-static {p1}, Ljg/c;->k(Landroid/view/View;)V

    goto/16 :goto_0

    :sswitch_5
    const-string p2, "IDLE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto/16 :goto_0

    :cond_6
    iput-boolean v3, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->r:Z

    invoke-static {p0, v2, v3, v4}, Lcom/transsion/subroom/activity/SecondFloorHelper;->H(Lcom/transsion/subroom/activity/SecondFloorHelper;ZILjava/lang/Object;)V

    sget-object p1, Lii/b;->a:Lii/b;

    iget-object p2, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->d:Ljava/lang/String;

    invoke-static {p1, p2, v2, v1, v4}, Lii/b;->d(Lii/b;Ljava/lang/String;ZILjava/lang/Object;)V

    goto :goto_0

    :sswitch_6
    const-string p2, "DOWN"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    invoke-direct {p0}, Lcom/transsion/subroom/activity/SecondFloorHelper;->f0()V

    goto :goto_0

    :sswitch_7
    const-string p2, "UP"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    iput-boolean v2, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->s:Z

    goto :goto_0

    :sswitch_8
    const-string p2, "REFRESH_TRIGGER"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_0

    :cond_9
    iget-object p1, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->a:Lau/a;

    iget-object p1, p1, Lau/a;->b:Lcom/transsion/wrapperad/view/secondfloor/SecondFloorArcCoverView;

    invoke-virtual {p1}, Lcom/transsion/wrapperad/view/secondfloor/SecondFloorArcCoverView;->refreshTrigger()V

    goto :goto_0

    :sswitch_9
    const-string p2, "IDLE_TRIGGER"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_0

    :cond_a
    iget-object p1, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->a:Lau/a;

    iget-object p1, p1, Lau/a;->b:Lcom/transsion/wrapperad/view/secondfloor/SecondFloorArcCoverView;

    invoke-virtual {p1}, Lcom/transsion/wrapperad/view/secondfloor/SecondFloorArcCoverView;->idleTrigger()V

    goto :goto_0

    :sswitch_a
    const-string p2, "SECOND_FLOOR"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto :goto_0

    :cond_b
    iget-object p1, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->a:Lau/a;

    iget-object p1, p1, Lau/a;->k:Lcom/transsion/wrapperad/view/secondfloor/TrendingTwoLevelIrregularView;

    invoke-virtual {p1}, Lcom/transsion/wrapperad/view/secondfloor/TrendingTwoLevelIrregularView;->adClick()V

    iput-boolean v3, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->t:Z

    iget-object v5, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->l:Lkotlinx/coroutines/n0;

    new-instance v8, Lcom/transsion/subroom/activity/SecondFloorHelper$onAction$4;

    invoke-direct {v8, p0, v4}, Lcom/transsion/subroom/activity/SecondFloorHelper$onAction$4;-><init>(Lcom/transsion/subroom/activity/SecondFloorHelper;Lkotlin/coroutines/Continuation;)V

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->p:Lkotlinx/coroutines/t1;

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x558e5f9f -> :sswitch_a
        -0x4d2a53d3 -> :sswitch_9
        -0x275443ec -> :sswitch_8
        0xa9b -> :sswitch_7
        0x201ca2 -> :sswitch_6
        0x2237d4 -> :sswitch_5
        0x2433d1 -> :sswitch_4
        0x14ee37ba -> :sswitch_3
        0x2ec253d2 -> :sswitch_2
        0x2ec2f176 -> :sswitch_1
        0x6b7e1ebb -> :sswitch_0
    .end sparse-switch
.end method

.method public final Y(Ljava/lang/String;)V
    .locals 1

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->k:Ljava/lang/String;

    iget-object v0, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->j:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final Z(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->A:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final a0(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->j:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final b0()V
    .locals 9

    iget-boolean v0, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->q:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lii/b;->a:Lii/b;

    iget-object v1, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lii/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/subroom/activity/SecondFloorHelper;->W()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->m:Lkotlinx/coroutines/t1;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/t1$a;->b(Lkotlinx/coroutines/t1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_2
    iget-object v3, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->l:Lkotlinx/coroutines/n0;

    new-instance v6, Lcom/transsion/subroom/activity/SecondFloorHelper$showGuide$1;

    invoke-direct {v6, p0, v1}, Lcom/transsion/subroom/activity/SecondFloorHelper$showGuide$1;-><init>(Lcom/transsion/subroom/activity/SecondFloorHelper;Lkotlin/coroutines/Continuation;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->m:Lkotlinx/coroutines/t1;

    return-void
.end method
