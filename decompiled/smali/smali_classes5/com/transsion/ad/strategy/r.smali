.class public final Lcom/transsion/ad/strategy/r;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/ad/strategy/r$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/transsion/ad/strategy/r;

.field private static final b:Ljava/util/concurrent/CopyOnWriteArrayList;

.field private static final c:Landroid/os/Handler;

.field private static final d:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/ad/strategy/r;

    invoke-direct {v0}, Lcom/transsion/ad/strategy/r;-><init>()V

    sput-object v0, Lcom/transsion/ad/strategy/r;->a:Lcom/transsion/ad/strategy/r;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/transsion/ad/strategy/r;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/transsion/ad/strategy/r;->c:Landroid/os/Handler;

    new-instance v0, Lcom/transsion/ad/strategy/l;

    invoke-direct {v0}, Lcom/transsion/ad/strategy/l;-><init>()V

    sput-object v0, Lcom/transsion/ad/strategy/r;->d:Ljava/lang/Runnable;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/ad/strategy/r$a;D)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/ad/strategy/r;->l(Lcom/transsion/ad/strategy/r$a;D)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b()V
    .locals 0

    invoke-static {}, Lcom/transsion/ad/strategy/r;->m()V

    return-void
.end method

.method public static synthetic c()V
    .locals 0

    invoke-static {}, Lcom/transsion/ad/strategy/r;->q()V

    return-void
.end method

.method public static synthetic d(Lcom/transsion/ad/strategy/r$a;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/ad/strategy/r;->o(Lcom/transsion/ad/strategy/r$a;)V

    return-void
.end method

.method public static synthetic e(Lcom/transsion/ad/strategy/r$a;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/ad/strategy/r;->h(Lcom/transsion/ad/strategy/r$a;)V

    return-void
.end method

.method public static synthetic f()V
    .locals 0

    invoke-static {}, Lcom/transsion/ad/strategy/r;->s()V

    return-void
.end method

.method private static final h(Lcom/transsion/ad/strategy/r$a;)V
    .locals 2

    sget-object v0, Lcom/transsion/ad/strategy/r;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/transsion/ad/strategy/r;->a:Lcom/transsion/ad/strategy/r;

    invoke-virtual {p0}, Lcom/transsion/ad/strategy/r;->p()V

    :cond_1
    return-void
.end method

.method private final i(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V
    .locals 9

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/view/View;->getWindowVisibility()I

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void

    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-double v3, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-double v5, v0

    mul-double/2addr v3, v5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-double v5, v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-double v7, p1

    mul-double/2addr v5, v7

    cmpg-double p1, v5, v1

    if-gtz p1, :cond_4

    if-eqz p2, :cond_3

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void

    :cond_4
    const/16 p1, 0x64

    int-to-double v0, p1

    mul-double/2addr v3, v0

    div-double/2addr v3, v5

    if-eqz p2, :cond_6

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    :goto_0
    if-eqz p2, :cond_6

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    :goto_1
    return-void
.end method

.method private final k()V
    .locals 5

    sget-object v0, Lcom/transsion/ad/strategy/r;->c:Landroid/os/Handler;

    sget-object v1, Lcom/transsion/ad/strategy/r;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/transsion/ad/strategy/r;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/ad/strategy/r$a;

    sget-object v2, Lcom/transsion/ad/strategy/r;->a:Lcom/transsion/ad/strategy/r;

    invoke-interface {v1}, Lcom/transsion/ad/strategy/r$a;->getVisibilityView()Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/transsion/ad/strategy/m;

    invoke-direct {v4, v1}, Lcom/transsion/ad/strategy/m;-><init>(Lcom/transsion/ad/strategy/r$a;)V

    invoke-direct {v2, v3, v4}, Lcom/transsion/ad/strategy/r;->i(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/transsion/ad/strategy/r;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/transsion/ad/strategy/r;->c:Landroid/os/Handler;

    sget-object v1, Lcom/transsion/ad/strategy/r;->d:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method private static final l(Lcom/transsion/ad/strategy/r$a;D)Lkotlin/Unit;
    .locals 2

    invoke-interface {p0}, Lcom/transsion/ad/strategy/r$a;->getVisibilityThreshold()D

    move-result-wide v0

    cmpl-double p1, p1, v0

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/transsion/ad/strategy/r$a;->onVisibilityChanged(Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/transsion/ad/strategy/r$a;->onVisibilityChanged(Z)V

    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final m()V
    .locals 1

    sget-object v0, Lcom/transsion/ad/strategy/r;->a:Lcom/transsion/ad/strategy/r;

    invoke-direct {v0}, Lcom/transsion/ad/strategy/r;->k()V

    return-void
.end method

.method private static final o(Lcom/transsion/ad/strategy/r$a;)V
    .locals 1

    sget-object v0, Lcom/transsion/ad/strategy/r;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private static final q()V
    .locals 1

    sget-object v0, Lcom/transsion/ad/strategy/r;->a:Lcom/transsion/ad/strategy/r;

    invoke-direct {v0}, Lcom/transsion/ad/strategy/r;->k()V

    return-void
.end method

.method private static final s()V
    .locals 2

    sget-object v0, Lcom/transsion/ad/strategy/r;->c:Landroid/os/Handler;

    sget-object v1, Lcom/transsion/ad/strategy/r;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final g(Lcom/transsion/ad/strategy/r$a;)V
    .locals 2

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/ad/strategy/r;->c:Landroid/os/Handler;

    new-instance v1, Lcom/transsion/ad/strategy/n;

    invoke-direct {v1, p1}, Lcom/transsion/ad/strategy/n;-><init>(Lcom/transsion/ad/strategy/r$a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final j(Landroid/view/View;)Z
    .locals 10

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getWindowVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-double v2, v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-double v4, v1

    mul-double/2addr v2, v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-double v4, v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-double v6, p1

    mul-double/2addr v4, v6

    const-wide/16 v6, 0x0

    cmpg-double p1, v4, v6

    if-gtz p1, :cond_2

    return v0

    :cond_2
    const/16 p1, 0x64

    int-to-double v8, p1

    mul-double/2addr v2, v8

    div-double/2addr v2, v4

    cmpl-double p1, v2, v6

    if-lez p1, :cond_3

    const/4 v0, 0x1

    :cond_3
    :goto_0
    return v0
.end method

.method public final n(Lcom/transsion/ad/strategy/r$a;)V
    .locals 2

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/ad/strategy/r;->c:Landroid/os/Handler;

    new-instance v1, Lcom/transsion/ad/strategy/o;

    invoke-direct {v1, p1}, Lcom/transsion/ad/strategy/o;-><init>(Lcom/transsion/ad/strategy/r$a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final p()V
    .locals 2

    sget-object v0, Lcom/transsion/ad/strategy/r;->c:Landroid/os/Handler;

    new-instance v1, Lcom/transsion/ad/strategy/p;

    invoke-direct {v1}, Lcom/transsion/ad/strategy/p;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final r()V
    .locals 2

    sget-object v0, Lcom/transsion/ad/strategy/r;->c:Landroid/os/Handler;

    new-instance v1, Lcom/transsion/ad/strategy/q;

    invoke-direct {v1}, Lcom/transsion/ad/strategy/q;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
