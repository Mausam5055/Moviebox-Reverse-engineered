.class public final Lcom/transsion/moviedetail/view/MovieDetailShareView;
.super Landroid/widget/FrameLayout;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0011\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005B\u001b\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0004\u0010\u0008B#\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u0004\u0010\u000bJ\u0015\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0017\u0010\u0012\u001a\u00020\u000e2\u0008\u0008\u0001\u0010\u0011\u001a\u00020\t\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u000eH\u0014\u00a2\u0006\u0004\u0008\u0014\u0010\u0015R\u0016\u0010\u0019\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018R\u0014\u0010\u001b\u001a\u00020\u00168\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u0018R\u0014\u0010\u001f\u001a\u00020\u001c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001eR\u0018\u0010!\u001a\u0004\u0018\u00010\u001c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008 \u0010\u001eR\u001a\u0010%\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\"8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008#\u0010$\u00a8\u0006&"
    }
    d2 = {
        "Lcom/transsion/moviedetail/view/MovieDetailShareView;",
        "Landroid/widget/FrameLayout;",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "Landroid/util/AttributeSet;",
        "attrs",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "",
        "defStyleAttr",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "Landroidx/lifecycle/u;",
        "lifecycleOwner",
        "",
        "init",
        "(Landroidx/lifecycle/u;)V",
        "res",
        "setImageResource",
        "(I)V",
        "onDetachedFromWindow",
        "()V",
        "",
        "a",
        "J",
        "showTime",
        "b",
        "MAX_SHOW_TIME",
        "Landroid/widget/ImageView;",
        "c",
        "Landroid/widget/ImageView;",
        "imageView",
        "d",
        "whatsAppImageview",
        "Lkotlin/Function0;",
        "e",
        "Lkotlin/jvm/functions/Function0;",
        "showWhatAppIconRunnable",
        "MovieDetail_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private a:J

.field private final b:J

.field private final c:Landroid/widget/ImageView;

.field private d:Landroid/widget/ImageView;

.field private final e:Lkotlin/jvm/functions/Function0;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/transsion/moviedetail/view/MovieDetailShareView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/moviedetail/view/MovieDetailShareView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    const-string p3, "context"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-wide/16 p1, 0x4e20

    iput-wide p1, p0, Lcom/transsion/moviedetail/view/MovieDetailShareView;->b:J

    new-instance p1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/transsion/moviedetail/view/MovieDetailShareView;->c:Landroid/widget/ImageView;

    new-instance p1, Lcom/transsion/moviedetail/view/p;

    invoke-direct {p1, p0}, Lcom/transsion/moviedetail/view/p;-><init>(Lcom/transsion/moviedetail/view/MovieDetailShareView;)V

    iput-object p1, p0, Lcom/transsion/moviedetail/view/MovieDetailShareView;->e:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public static synthetic a(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/moviedetail/view/MovieDetailShareView;->d(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final synthetic access$getMAX_SHOW_TIME$p(Lcom/transsion/moviedetail/view/MovieDetailShareView;)J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/moviedetail/view/MovieDetailShareView;->b:J

    return-wide v0
.end method

.method public static final synthetic access$getShowTime$p(Lcom/transsion/moviedetail/view/MovieDetailShareView;)J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/moviedetail/view/MovieDetailShareView;->a:J

    return-wide v0
.end method

.method public static final synthetic access$getShowWhatAppIconRunnable$p(Lcom/transsion/moviedetail/view/MovieDetailShareView;)Lkotlin/jvm/functions/Function0;
    .locals 0

    iget-object p0, p0, Lcom/transsion/moviedetail/view/MovieDetailShareView;->e:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public static final synthetic access$setShowTime$p(Lcom/transsion/moviedetail/view/MovieDetailShareView;J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/moviedetail/view/MovieDetailShareView;->a:J

    return-void
.end method

.method public static synthetic b(Lcom/transsion/moviedetail/view/MovieDetailShareView;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsion/moviedetail/view/MovieDetailShareView;->e(Lcom/transsion/moviedetail/view/MovieDetailShareView;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/transsion/moviedetail/view/MovieDetailShareView;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/moviedetail/view/MovieDetailShareView;->f(Lcom/transsion/moviedetail/view/MovieDetailShareView;)V

    return-void
.end method

.method private static final d(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method private static final e(Lcom/transsion/moviedetail/view/MovieDetailShareView;)Lkotlin/Unit;
    .locals 3

    iget-object v0, p0, Lcom/transsion/moviedetail/view/MovieDetailShareView;->d:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    sget v1, Lcom/transsion/moviedetail/R$mipmap;->movie_detail_icon_whatapp:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v0, p0, Lcom/transsion/moviedetail/view/MovieDetailShareView;->d:Landroid/widget/ImageView;

    :cond_0
    iget-object v0, p0, Lcom/transsion/moviedetail/view/MovieDetailShareView;->c:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xf0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    const v1, 0x3f8ccccd    # 1.1f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    new-instance v1, Lcom/transsion/moviedetail/view/r;

    invoke-direct {v1, p0}, Lcom/transsion/moviedetail/view/r;-><init>(Lcom/transsion/moviedetail/view/MovieDetailShareView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final f(Lcom/transsion/moviedetail/view/MovieDetailShareView;)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/moviedetail/view/MovieDetailShareView;->c:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xf0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object p0, p0, Lcom/transsion/moviedetail/view/MovieDetailShareView;->d:Landroid/widget/ImageView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final init(Landroidx/lifecycle/u;)V
    .locals 3

    const-string v0, "lifecycleOwner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lak/x;->a:Lak/x;

    invoke-virtual {v0}, Lak/x;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/moviedetail/view/MovieDetailShareView;->c:Landroid/widget/ImageView;

    sget v1, Lcom/transsion/moviedetail/R$mipmap;->movie_share_night:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/moviedetail/view/MovieDetailShareView;->c:Landroid/widget/ImageView;

    sget v1, Lcom/transsion/moviedetail/R$mipmap;->movie_share_light:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    iget-object v0, p0, Lcom/transsion/moviedetail/view/MovieDetailShareView;->c:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-interface {p1}, Landroidx/lifecycle/u;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    new-instance v0, Lcom/transsion/moviedetail/view/MovieDetailShareView$a;

    invoke-direct {v0, p0}, Lcom/transsion/moviedetail/view/MovieDetailShareView$a;-><init>(Lcom/transsion/moviedetail/view/MovieDetailShareView;)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/Lifecycle;->a(Landroidx/lifecycle/t;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/transsion/moviedetail/view/MovieDetailShareView;->c:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/transsion/moviedetail/view/MovieDetailShareView;->d:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/transsion/moviedetail/view/MovieDetailShareView;->e:Lkotlin/jvm/functions/Function0;

    new-instance v1, Lcom/transsion/moviedetail/view/q;

    invoke-direct {v1, v0}, Lcom/transsion/moviedetail/view/q;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final setImageResource(I)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/moviedetail/view/MovieDetailShareView;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method
