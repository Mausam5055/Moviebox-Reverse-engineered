.class public final Loo/c;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Landroid/view/View;

.field private c:Z

.field private final d:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    const-string v0, "startView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "endView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Loo/c;->a:Landroid/view/View;

    iput-object p2, p0, Loo/c;->b:Landroid/view/View;

    new-instance p1, Loo/a;

    invoke-direct {p1, p0}, Loo/a;-><init>(Loo/c;)V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Loo/c;->d:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic a(Loo/c;)Loo/g;
    .locals 0

    invoke-static {p0}, Loo/c;->g(Loo/c;)Loo/g;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Loo/c;I)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Loo/c;->h(Loo/c;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private final e()Loo/g;
    .locals 1

    iget-object v0, p0, Loo/c;->d:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loo/g;

    return-object v0
.end method

.method private static final g(Loo/c;)Loo/g;
    .locals 3

    new-instance v0, Loo/g;

    iget-object v1, p0, Loo/c;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.app.Activity"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/app/Activity;

    new-instance v2, Loo/b;

    invoke-direct {v2, p0}, Loo/b;-><init>(Loo/c;)V

    invoke-direct {v0, v1, v2}, Loo/g;-><init>(Landroid/app/Activity;Lkotlin/jvm/functions/Function1;)V

    return-object v0
.end method

.method private static final h(Loo/c;I)Lkotlin/Unit;
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Loo/c;->c:Z

    invoke-direct {p0, v0, p1}, Loo/c;->i(ZI)V

    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private final i(ZI)V
    .locals 3

    invoke-static {}, Lcom/blankj/utilcode/util/d;->c()I

    move-result v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz p1, :cond_1

    const/4 p1, 0x3

    if-ne p2, p1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iget-object p1, p0, Loo/c;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iput v2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object p2, p0, Loo/c;->a:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Loo/c;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object p2, p0, Loo/c;->b:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 1

    invoke-direct {p0}, Loo/c;->e()Loo/g;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 1

    invoke-direct {p0}, Loo/c;->e()Loo/g;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    :cond_0
    return-void
.end method

.method public final f(Z)V
    .locals 0

    iput-boolean p1, p0, Loo/c;->c:Z

    invoke-direct {p0, p1, p1}, Loo/c;->i(ZI)V

    return-void
.end method
