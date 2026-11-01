.class public final Lcom/transsion/moviedetail/view/WatchModeTipsView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tB\u0011\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\nB\u001b\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0008\u0010\u000bJ\u000f\u0010\r\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\r\u0010\u000f\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u000f\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u000cH\u0014\u00a2\u0006\u0004\u0008\u0010\u0010\u000eR\u0018\u0010\u0014\u001a\u0004\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013R\u0016\u0010\u0018\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017R\u001b\u0010\u001e\u001a\u00020\u00198BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001d\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/transsion/moviedetail/view/WatchModeTipsView;",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyleAttr",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "(Landroid/content/Context;)V",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "",
        "n",
        "()V",
        "checkShow",
        "onDetachedFromWindow",
        "Lcn/z;",
        "a",
        "Lcn/z;",
        "mViewBinding",
        "",
        "b",
        "Z",
        "hasShow",
        "Ljava/lang/Runnable;",
        "c",
        "Lkotlin/Lazy;",
        "getDelayShow",
        "()Ljava/lang/Runnable;",
        "delayShow",
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
.field private a:Lcn/z;

.field private b:Z

.field private final c:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/transsion/moviedetail/view/WatchModeTipsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/moviedetail/view/WatchModeTipsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object p1, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    invoke-virtual {p1}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    const-string p2, "watch_mode_tips"

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lcom/tencent/mmkv/MMKV;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/moviedetail/view/WatchModeTipsView;->b:Z

    invoke-direct {p0}, Lcom/transsion/moviedetail/view/WatchModeTipsView;->n()V

    new-instance p1, Lcom/transsion/moviedetail/view/v;

    invoke-direct {p1, p0}, Lcom/transsion/moviedetail/view/v;-><init>(Lcom/transsion/moviedetail/view/WatchModeTipsView;)V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/moviedetail/view/WatchModeTipsView;->c:Lkotlin/Lazy;

    return-void
.end method

.method private final getDelayShow()Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/transsion/moviedetail/view/WatchModeTipsView;->c:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    return-object v0
.end method

.method public static synthetic h(Lcom/transsion/moviedetail/view/WatchModeTipsView;Landroid/view/View;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/moviedetail/view/WatchModeTipsView;->p(Lcom/transsion/moviedetail/view/WatchModeTipsView;Landroid/view/View;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Lcom/transsion/moviedetail/view/WatchModeTipsView;)Ljava/lang/Runnable;
    .locals 0

    invoke-static {p0}, Lcom/transsion/moviedetail/view/WatchModeTipsView;->l(Lcom/transsion/moviedetail/view/WatchModeTipsView;)Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Lcom/transsion/moviedetail/view/WatchModeTipsView;Landroid/view/View;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/moviedetail/view/WatchModeTipsView;->o(Lcom/transsion/moviedetail/view/WatchModeTipsView;Landroid/view/View;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Lcom/transsion/moviedetail/view/WatchModeTipsView;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/moviedetail/view/WatchModeTipsView;->m(Lcom/transsion/moviedetail/view/WatchModeTipsView;)V

    return-void
.end method

.method private static final l(Lcom/transsion/moviedetail/view/WatchModeTipsView;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/transsion/moviedetail/view/y;

    invoke-direct {v0, p0}, Lcom/transsion/moviedetail/view/y;-><init>(Lcom/transsion/moviedetail/view/WatchModeTipsView;)V

    return-object v0
.end method

.method private static final m(Lcom/transsion/moviedetail/view/WatchModeTipsView;)V
    .locals 2

    invoke-static {p0}, Ljg/c;->k(Landroid/view/View;)V

    sget-object p0, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    invoke-virtual {p0}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    const-string v0, "watch_mode_tips"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method private final n()V
    .locals 13

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/transsion/moviedetail/R$layout;->layout_watch_mode_tips:I

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcn/z;->a(Landroid/view/View;)Lcn/z;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/moviedetail/view/WatchModeTipsView;->a:Lcn/z;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcn/z;->c:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v2, "goWatchTv"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/transsion/moviedetail/view/w;

    invoke-direct {v4, p0}, Lcom/transsion/moviedetail/view/w;-><init>(Lcom/transsion/moviedetail/view/WatchModeTipsView;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-wide/16 v2, 0x0

    invoke-static/range {v1 .. v6}, Ljg/c;->c(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    iget-object v7, v0, Lcn/z;->b:Landroid/widget/ImageView;

    const-string v0, "closeWatchTv"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v10, Lcom/transsion/moviedetail/view/x;

    invoke-direct {v10, p0}, Lcom/transsion/moviedetail/view/x;-><init>(Lcom/transsion/moviedetail/view/WatchModeTipsView;)V

    const/4 v11, 0x1

    const/4 v12, 0x0

    const-wide/16 v8, 0x0

    invoke-static/range {v7 .. v12}, Ljg/c;->c(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private static final o(Lcom/transsion/moviedetail/view/WatchModeTipsView;Landroid/view/View;)Lkotlin/Unit;
    .locals 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "/profile/watch_option"

    invoke-static {p1}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p1, v0, v1, v2, v1}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lbg/c;ILjava/lang/Object;)V

    invoke-static {p0}, Ljg/c;->g(Landroid/view/View;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final p(Lcom/transsion/moviedetail/view/WatchModeTipsView;Landroid/view/View;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Ljg/c;->g(Landroid/view/View;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final checkShow()V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/moviedetail/view/WatchModeTipsView;->b:Z

    if-nez v0, :cond_1

    sget-object v0, Lak/t;->a:Lak/t;

    invoke-virtual {v0}, Lak/t;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/transsion/moviedetail/view/WatchModeTipsView;->getDelayShow()Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-direct {p0}, Lcom/transsion/moviedetail/view/WatchModeTipsView;->getDelayShow()Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    :goto_0
    invoke-static {p0}, Ljg/c;->g(Landroid/view/View;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    invoke-direct {p0}, Lcom/transsion/moviedetail/view/WatchModeTipsView;->getDelayShow()Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method
