.class public final Leo/m;
.super Ljava/lang/Object;

# interfaces
.implements Leo/n;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Landroid/view/ViewGroup;

.field private final d:Ljava/lang/String;

.field private e:Lcom/transsion/player/orplayer/g;

.field private final f:Landroid/view/View;

.field private final g:Lkotlin/Lazy;

.field private final h:Lkotlin/Lazy;

.field private final i:Lkotlin/Lazy;

.field private final j:Lkotlin/Lazy;

.field private k:F

.field private l:Lkotlin/jvm/functions/Function2;

.field private m:F

.field private n:F

.field private o:Z

.field private final p:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leo/m;->b:Landroid/content/Context;

    iput-object p2, p0, Leo/m;->c:Landroid/view/ViewGroup;

    const-string v0, "VideoBrightnessVolume"

    iput-object v0, p0, Leo/m;->d:Ljava/lang/String;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v1, Lcom/transsion/player/view/R$layout;->orplayer_layout_brightness_volume:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Leo/m;->f:Landroid/view/View;

    new-instance p1, Leo/g;

    invoke-direct {p1, p0}, Leo/g;-><init>(Leo/m;)V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Leo/m;->g:Lkotlin/Lazy;

    new-instance p1, Leo/h;

    invoke-direct {p1, p0}, Leo/h;-><init>(Leo/m;)V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Leo/m;->h:Lkotlin/Lazy;

    new-instance p1, Leo/i;

    invoke-direct {p1, p0}, Leo/i;-><init>(Leo/m;)V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Leo/m;->i:Lkotlin/Lazy;

    new-instance p1, Leo/j;

    invoke-direct {p1, p0}, Leo/j;-><init>(Leo/m;)V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Leo/m;->j:Lkotlin/Lazy;

    if-nez p2, :cond_0

    const-string p1, " error: rootView is null !!!"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/blankj/utilcode/util/y;->c()I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x40400000    # 3.0f

    div-float/2addr p1, v0

    const/high16 v0, 0x41c80000    # 25.0f

    div-float/2addr p1, v0

    iput p1, p0, Leo/m;->k:F

    if-eqz p2, :cond_1

    new-instance p1, Leo/k;

    invoke-direct {p1, p0}, Leo/k;-><init>(Leo/m;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :cond_1
    if-eqz p2, :cond_2

    new-instance p1, Leo/m$a;

    invoke-direct {p1, p0}, Leo/m$a;-><init>(Leo/m;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_2
    invoke-direct {p0}, Leo/m;->C()V

    new-instance p1, Leo/l;

    invoke-direct {p1, p0}, Leo/l;-><init>(Leo/m;)V

    iput-object p1, p0, Leo/m;->p:Ljava/lang/Runnable;

    return-void
.end method

.method private final A()V
    .locals 2

    iget-object v0, p0, Leo/m;->c:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v1, p0, Leo/m;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Leo/m;->f:Landroid/view/View;

    const-string v1, "progressRootView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private static final B(Leo/m;)Landroid/widget/ImageView;
    .locals 1

    iget-object p0, p0, Leo/m;->f:Landroid/view/View;

    sget v0, Lcom/transsion/player/view/R$id;->bvIV:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    return-object p0
.end method

.method private final C()V
    .locals 2

    iget-object v0, p0, Leo/m;->b:Landroid/content/Context;

    instance-of v1, v0, Landroidx/activity/ComponentActivity;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/activity/ComponentActivity;

    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    new-instance v1, Leo/m$b;

    invoke-direct {v1, p0}, Leo/m$b;-><init>(Leo/m;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->a(Landroidx/lifecycle/t;)V

    :cond_0
    return-void
.end method

.method private static final D(Leo/m;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object p0, p0, Leo/m;->f:Landroid/view/View;

    sget v0, Lcom/transsion/player/view/R$id;->secProgress:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ProgressBar;

    return-object p0
.end method

.method private final E(ZI)V
    .locals 3

    if-gez p2, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Leo/m;->x()Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x64

    if-nez p2, :cond_2

    if-eqz p1, :cond_1

    sget p1, Lcom/transsion/player/view/R$mipmap;->ic_volume_0:I

    goto :goto_0

    :cond_1
    sget p1, Lcom/transsion/player/view/R$mipmap;->ic_brightness_33:I

    goto :goto_0

    :cond_2
    const/16 v2, 0x21

    if-gt p2, v2, :cond_4

    if-eqz p1, :cond_3

    sget p1, Lcom/transsion/player/view/R$mipmap;->ic_volume_33:I

    goto :goto_0

    :cond_3
    sget p1, Lcom/transsion/player/view/R$mipmap;->ic_brightness_33:I

    goto :goto_0

    :cond_4
    const/16 v2, 0x42

    if-gt p2, v2, :cond_6

    if-eqz p1, :cond_5

    sget p1, Lcom/transsion/player/view/R$mipmap;->ic_volume_66:I

    goto :goto_0

    :cond_5
    sget p1, Lcom/transsion/player/view/R$mipmap;->ic_brightness_66:I

    goto :goto_0

    :cond_6
    if-gt p2, v1, :cond_8

    if-eqz p1, :cond_7

    sget p1, Lcom/transsion/player/view/R$mipmap;->ic_volume_66:I

    goto :goto_0

    :cond_7
    sget p1, Lcom/transsion/player/view/R$mipmap;->ic_brightness_100:I

    goto :goto_0

    :cond_8
    if-eqz p1, :cond_9

    sget p1, Lcom/transsion/player/view/R$mipmap;->ic_volume_100:I

    goto :goto_0

    :cond_9
    sget p1, Lcom/transsion/player/view/R$mipmap;->ic_brightness_100:I

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-direct {p0}, Leo/m;->v()Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    sub-int/2addr p2, v1

    const/4 p1, 0x0

    invoke-static {p2, p1}, Lkotlin/ranges/RangesKt;->f(II)I

    move-result p2

    invoke-static {p2, v1}, Lkotlin/ranges/RangesKt;->i(II)I

    move-result p2

    invoke-direct {p0}, Leo/m;->y()Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x1

    if-lez p2, :cond_a

    move v2, v1

    goto :goto_1

    :cond_a
    move v2, p1

    :goto_1
    if-eqz v2, :cond_b

    goto :goto_2

    :cond_b
    const/16 p1, 0x8

    :goto_2
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Leo/m;->y()Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-virtual {p0, v1}, Leo/m;->f(Z)V

    return-void
.end method

.method private static final F(Leo/m;)Landroid/view/View;
    .locals 1

    iget-object p0, p0, Leo/m;->f:Landroid/view/View;

    sget v0, Lcom/transsion/player/view/R$id;->tipsLL:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private final G(I)V
    .locals 4

    invoke-virtual {p0}, Leo/m;->c()I

    move-result v0

    sget-object v1, Leo/c;->a:Leo/c;

    invoke-virtual {v1, p1}, Leo/c;->k(I)I

    move-result p1

    const/16 v1, 0x64

    if-gt p1, v1, :cond_0

    iget-object v1, p0, Leo/m;->e:Lcom/transsion/player/orplayer/g;

    if-eqz v1, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {v1, v2}, Lcom/transsion/player/orplayer/g;->setVolume(F)V

    :cond_0
    iget-object v1, p0, Leo/m;->l:Lkotlin/jvm/functions/Function2;

    if-eqz v1, :cond_1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 v1, 0x1

    invoke-direct {p0, v1, p1}, Leo/m;->E(ZI)V

    invoke-direct {p0, p1, v0}, Leo/m;->s(II)V

    return-void
.end method

.method public static synthetic h(Leo/m;)Landroid/view/View;
    .locals 0

    invoke-static {p0}, Leo/m;->F(Leo/m;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Leo/m;)Landroid/widget/ProgressBar;
    .locals 0

    invoke-static {p0}, Leo/m;->D(Leo/m;)Landroid/widget/ProgressBar;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Leo/m;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Leo/m;->o(Leo/m;Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic k(Leo/m;)V
    .locals 0

    invoke-static {p0}, Leo/m;->u(Leo/m;)V

    return-void
.end method

.method public static synthetic l(Leo/m;)Landroid/widget/ProgressBar;
    .locals 0

    invoke-static {p0}, Leo/m;->q(Leo/m;)Landroid/widget/ProgressBar;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic m(Leo/m;)V
    .locals 0

    invoke-static {p0}, Leo/m;->r(Leo/m;)V

    return-void
.end method

.method public static synthetic n(Leo/m;)Landroid/widget/ImageView;
    .locals 0

    invoke-static {p0}, Leo/m;->B(Leo/m;)Landroid/widget/ImageView;

    move-result-object p0

    return-object p0
.end method

.method private static final o(Leo/m;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x0

    if-nez p1, :cond_3

    const/16 p1, 0x18

    const/4 v0, 0x1

    if-eq p2, p1, :cond_1

    const/16 p1, 0x19

    if-eq p2, p1, :cond_0

    goto :goto_2

    :cond_0
    const/16 p1, -0xa

    invoke-direct {p0, p1}, Leo/m;->G(I)V

    :goto_0
    move p3, v0

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Leo/m;->c()I

    move-result p1

    const/16 p2, 0x5b

    if-gt p2, p1, :cond_2

    const/16 p2, 0x64

    if-ge p1, p2, :cond_2

    sub-int/2addr p2, p1

    goto :goto_1

    :cond_2
    const/16 p2, 0xa

    :goto_1
    invoke-direct {p0, p2}, Leo/m;->G(I)V

    goto :goto_0

    :cond_3
    :goto_2
    return p3
.end method

.method public static final synthetic p(Leo/m;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Leo/m;->c:Landroid/view/ViewGroup;

    return-object p0
.end method

.method private static final q(Leo/m;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object p0, p0, Leo/m;->f:Landroid/view/View;

    sget v0, Lcom/transsion/player/view/R$id;->bvProgress:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ProgressBar;

    return-object p0
.end method

.method private static final r(Leo/m;)V
    .locals 0

    invoke-direct {p0}, Leo/m;->A()V

    return-void
.end method

.method private final s(II)V
    .locals 3

    const/16 v0, 0x64

    if-le p1, v0, :cond_0

    iget-object v0, p0, Leo/m;->e:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_0

    int-to-float v1, p1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    invoke-interface {v0, v1}, Lcom/transsion/player/orplayer/g;->setVolume(F)V

    :cond_0
    invoke-direct {p0, p1, p2}, Leo/m;->t(II)V

    return-void
.end method

.method private final t(II)V
    .locals 2

    const/16 v0, 0x64

    if-ge p2, v0, :cond_0

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Leo/m;->z()Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Leo/m;->z()Landroid/view/View;

    move-result-object p1

    new-instance p2, Leo/f;

    invoke-direct {p2, p0}, Leo/f;-><init>(Leo/m;)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private static final u(Leo/m;)V
    .locals 1

    invoke-direct {p0}, Leo/m;->z()Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private final v()Landroid/widget/ProgressBar;
    .locals 2

    iget-object v0, p0, Leo/m;->h:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getValue(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private final x()Landroid/widget/ImageView;
    .locals 2

    iget-object v0, p0, Leo/m;->g:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getValue(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method private final y()Landroid/widget/ProgressBar;
    .locals 2

    iget-object v0, p0, Leo/m;->i:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getValue(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private final z()Landroid/view/View;
    .locals 2

    iget-object v0, p0, Leo/m;->j:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getValue(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public a(FF)V
    .locals 4

    iget-object v0, p0, Leo/m;->b:Landroid/content/Context;

    const-string v1, "null cannot be cast to non-null type android.app.Activity"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr p2, v2

    add-float/2addr p1, p2

    const/4 p2, 0x0

    cmpg-float v3, p1, p2

    if-gtz v3, :cond_1

    move v2, p2

    goto :goto_0

    :cond_1
    cmpl-float p2, p1, v2

    if-ltz p2, :cond_2

    goto :goto_0

    :cond_2
    move v2, p1

    :goto_0
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object p1, p0, Leo/m;->l:Lkotlin/jvm/functions/Function2;

    const/16 p2, 0x64

    if-eqz p1, :cond_3

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    int-to-float v1, p2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    int-to-float p1, p2

    mul-float/2addr v2, p1

    float-to-int p1, v2

    const/4 p2, 0x0

    invoke-direct {p0, p2, p1}, Leo/m;->E(ZI)V

    return-void
.end method

.method public b()F
    .locals 3

    iget-object v0, p0, Leo/m;->b:Landroid/content/Context;

    const-string v1, "null cannot be cast to non-null type android.app.Activity"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    invoke-virtual {p0}, Leo/m;->w()F

    move-result v1

    const/high16 v2, -0x40800000    # -1.0f

    cmpg-float v2, v0, v2

    if-nez v2, :cond_1

    move v0, v1

    :cond_1
    return v0
.end method

.method public c()I
    .locals 1

    sget-object v0, Leo/c;->a:Leo/c;

    invoke-virtual {v0}, Leo/c;->e()I

    move-result v0

    return v0
.end method

.method public d(FFI)V
    .locals 1

    iget v0, p0, Leo/m;->m:F

    cmpg-float v0, v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Leo/m;->n:F

    iput p1, p0, Leo/m;->m:F

    :goto_0
    if-gtz p3, :cond_1

    invoke-static {}, Lcom/blankj/utilcode/util/y;->c()I

    move-result p3

    :cond_1
    iget p1, p0, Leo/m;->n:F

    sub-float/2addr p1, p2

    const/high16 v0, 0x42a00000    # 80.0f

    mul-float/2addr p1, v0

    int-to-float p3, p3

    div-float/2addr p1, p3

    const/high16 p3, 0x3f000000    # 0.5f

    add-float/2addr p1, p3

    float-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p3

    if-nez p3, :cond_2

    return-void

    :cond_2
    iput p2, p0, Leo/m;->n:F

    invoke-direct {p0, p1}, Leo/m;->G(I)V

    return-void
.end method

.method public e(Lcom/transsion/player/orplayer/g;)V
    .locals 0

    iput-object p1, p0, Leo/m;->e:Lcom/transsion/player/orplayer/g;

    return-void
.end method

.method public f(Z)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "show:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-object v0, p0, Leo/m;->c:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_5

    iget-object p1, p0, Leo/m;->f:Landroid/view/View;

    const-string v0, "progressRootView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :try_start_0
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    iget-object p1, p0, Leo/m;->c:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Leo/m;->f:Landroid/view/View;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Leo/m;->c:Landroid/view/ViewGroup;

    iget-object v1, p0, Leo/m;->f:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    :goto_0
    iget-object p1, p0, Leo/m;->c:Landroid/view/ViewGroup;

    iget-object v1, p0, Leo/m;->f:Landroid/view/View;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object p1, p0, Leo/m;->c:Landroid/view/ViewGroup;

    iget-object v0, p0, Leo/m;->f:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_1
    iget-boolean p1, p0, Leo/m;->o:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Leo/m;->f:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_3

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_4

    invoke-static {}, Lcom/blankj/utilcode/util/d;->c()I

    move-result v0

    iget-object v1, p0, Leo/m;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/tn/lib/widget/R$dimen;->toolbar_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v0, p0, Leo/m;->f:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :goto_3
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    iget-object p1, p0, Leo/m;->c:Landroid/view/ViewGroup;

    iget-object v0, p0, Leo/m;->p:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Leo/m;->c:Landroid/view/ViewGroup;

    iget-object v0, p0, Leo/m;->p:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_5

    :cond_5
    invoke-direct {p0}, Leo/m;->A()V

    :goto_5
    return-void
.end method

.method public g()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Leo/m;->o:Z

    return-void
.end method

.method public w()F
    .locals 2

    iget-object v0, p0, Leo/m;->b:Landroid/content/Context;

    const-string v1, "null cannot be cast to non-null type android.app.Activity"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    :try_start_0
    const-string v1, "screen_brightness"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;)F

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    const/16 v1, 0xff

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
