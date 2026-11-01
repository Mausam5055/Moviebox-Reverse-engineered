.class public final Lcom/transsion/moviedetail/view/MovieDetailShareView$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/lifecycle/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/moviedetail/view/MovieDetailShareView;->init(Landroidx/lifecycle/u;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private a:J

.field final synthetic b:Lcom/transsion/moviedetail/view/MovieDetailShareView;


# direct methods
.method constructor <init>(Lcom/transsion/moviedetail/view/MovieDetailShareView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/moviedetail/view/MovieDetailShareView$a;->b:Lcom/transsion/moviedetail/view/MovieDetailShareView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/moviedetail/view/MovieDetailShareView$a;->d(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static synthetic b(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/moviedetail/view/MovieDetailShareView$a;->c(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private static final c(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method private static final d(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public synthetic onCreate(Landroidx/lifecycle/u;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/lifecycle/e;->a(Landroidx/lifecycle/f;Landroidx/lifecycle/u;)V

    return-void
.end method

.method public synthetic onDestroy(Landroidx/lifecycle/u;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/lifecycle/e;->b(Landroidx/lifecycle/f;Landroidx/lifecycle/u;)V

    return-void
.end method

.method public onPause(Landroidx/lifecycle/u;)V
    .locals 6

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Landroidx/lifecycle/e;->c(Landroidx/lifecycle/f;Landroidx/lifecycle/u;)V

    iget-object p1, p0, Lcom/transsion/moviedetail/view/MovieDetailShareView$a;->b:Lcom/transsion/moviedetail/view/MovieDetailShareView;

    invoke-static {p1}, Lcom/transsion/moviedetail/view/MovieDetailShareView;->access$getShowTime$p(Lcom/transsion/moviedetail/view/MovieDetailShareView;)J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/transsion/moviedetail/view/MovieDetailShareView$a;->a:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    invoke-static {p1, v0, v1}, Lcom/transsion/moviedetail/view/MovieDetailShareView;->access$setShowTime$p(Lcom/transsion/moviedetail/view/MovieDetailShareView;J)V

    iget-object p1, p0, Lcom/transsion/moviedetail/view/MovieDetailShareView$a;->b:Lcom/transsion/moviedetail/view/MovieDetailShareView;

    invoke-static {p1}, Lcom/transsion/moviedetail/view/MovieDetailShareView;->access$getShowWhatAppIconRunnable$p(Lcom/transsion/moviedetail/view/MovieDetailShareView;)Lkotlin/jvm/functions/Function0;

    move-result-object v0

    new-instance v1, Lcom/transsion/moviedetail/view/s;

    invoke-direct {v1, v0}, Lcom/transsion/moviedetail/view/s;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onResume(Landroidx/lifecycle/u;)V
    .locals 6

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Landroidx/lifecycle/e;->d(Landroidx/lifecycle/f;Landroidx/lifecycle/u;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/moviedetail/view/MovieDetailShareView$a;->a:J

    iget-object p1, p0, Lcom/transsion/moviedetail/view/MovieDetailShareView$a;->b:Lcom/transsion/moviedetail/view/MovieDetailShareView;

    invoke-static {p1}, Lcom/transsion/moviedetail/view/MovieDetailShareView;->access$getShowTime$p(Lcom/transsion/moviedetail/view/MovieDetailShareView;)J

    move-result-wide v0

    iget-object p1, p0, Lcom/transsion/moviedetail/view/MovieDetailShareView$a;->b:Lcom/transsion/moviedetail/view/MovieDetailShareView;

    invoke-static {p1}, Lcom/transsion/moviedetail/view/MovieDetailShareView;->access$getMAX_SHOW_TIME$p(Lcom/transsion/moviedetail/view/MovieDetailShareView;)J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    iget-object p1, p0, Lcom/transsion/moviedetail/view/MovieDetailShareView$a;->b:Lcom/transsion/moviedetail/view/MovieDetailShareView;

    invoke-static {p1}, Lcom/transsion/moviedetail/view/MovieDetailShareView;->access$getShowWhatAppIconRunnable$p(Lcom/transsion/moviedetail/view/MovieDetailShareView;)Lkotlin/jvm/functions/Function0;

    move-result-object v0

    new-instance v1, Lcom/transsion/moviedetail/view/t;

    invoke-direct {v1, v0}, Lcom/transsion/moviedetail/view/t;-><init>(Lkotlin/jvm/functions/Function0;)V

    iget-object v0, p0, Lcom/transsion/moviedetail/view/MovieDetailShareView$a;->b:Lcom/transsion/moviedetail/view/MovieDetailShareView;

    invoke-static {v0}, Lcom/transsion/moviedetail/view/MovieDetailShareView;->access$getMAX_SHOW_TIME$p(Lcom/transsion/moviedetail/view/MovieDetailShareView;)J

    move-result-wide v2

    iget-object v0, p0, Lcom/transsion/moviedetail/view/MovieDetailShareView$a;->b:Lcom/transsion/moviedetail/view/MovieDetailShareView;

    invoke-static {v0}, Lcom/transsion/moviedetail/view/MovieDetailShareView;->access$getShowTime$p(Lcom/transsion/moviedetail/view/MovieDetailShareView;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {p1, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public synthetic onStart(Landroidx/lifecycle/u;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/lifecycle/e;->e(Landroidx/lifecycle/f;Landroidx/lifecycle/u;)V

    return-void
.end method

.method public synthetic onStop(Landroidx/lifecycle/u;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/lifecycle/e;->f(Landroidx/lifecycle/f;Landroidx/lifecycle/u;)V

    return-void
.end method
