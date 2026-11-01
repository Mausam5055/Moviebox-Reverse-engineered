.class public final Lcom/tn/lib/view/NoNetworkSmallView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tB\u001b\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0008\u0010\nB\u0011\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\u000bJ\u001b\u0010\u000f\u001a\u00020\r2\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u001b\u0010\u0012\u001a\u00020\r2\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c\u00a2\u0006\u0004\u0008\u0012\u0010\u0010R\u0018\u0010\u0016\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/tn/lib/view/NoNetworkSmallView;",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyleAttr",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "(Landroid/content/Context;)V",
        "Lkotlin/Function0;",
        "",
        "retryListener",
        "retry",
        "(Lkotlin/jvm/functions/Function0;)V",
        "settingListener",
        "goToSetting",
        "Lth/e;",
        "a",
        "Lth/e;",
        "binding",
        "UI_psRelease"
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
.field private a:Lth/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tn/lib/view/NoNetworkSmallView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/tn/lib/view/NoNetworkSmallView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1, p0}, Lth/e;->b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lth/e;

    move-result-object p1

    iput-object p1, p0, Lcom/tn/lib/view/NoNetworkSmallView;->a:Lth/e;

    sget p1, Lcom/tn/lib/widget/R$mipmap;->bg_network_view:I

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method public static synthetic h(Lth/e;)V
    .locals 0

    invoke-static {p0}, Lcom/tn/lib/view/NoNetworkSmallView;->m(Lth/e;)V

    return-void
.end method

.method public static synthetic i(Lkotlin/jvm/functions/Function0;Lth/e;Lcom/tn/lib/view/NoNetworkSmallView;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/tn/lib/view/NoNetworkSmallView;->l(Lkotlin/jvm/functions/Function0;Lth/e;Lcom/tn/lib/view/NoNetworkSmallView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic j(Lcom/tn/lib/view/NoNetworkSmallView;Lkotlin/jvm/functions/Function0;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/tn/lib/view/NoNetworkSmallView;->k(Lcom/tn/lib/view/NoNetworkSmallView;Lkotlin/jvm/functions/Function0;Landroid/view/View;)V

    return-void
.end method

.method private static final k(Lcom/tn/lib/view/NoNetworkSmallView;Lkotlin/jvm/functions/Function0;Landroid/view/View;)V
    .locals 0

    :try_start_0
    sget-object p0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {}, Lcom/blankj/utilcode/util/NetworkUtils;->v()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method private static final l(Lkotlin/jvm/functions/Function0;Lth/e;Lcom/tn/lib/view/NoNetworkSmallView;Landroid/view/View;)V
    .locals 2

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    iget-object p0, p1, Lth/e;->d:Landroidx/appcompat/widget/AppCompatTextView;

    const-string p3, "retry"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Ljg/c;->g(Landroid/view/View;)V

    iget-object p0, p1, Lth/e;->b:Landroidx/appcompat/widget/AppCompatTextView;

    const-string p3, "goToSetting"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Ljg/c;->g(Landroid/view/View;)V

    iget-object p0, p1, Lth/e;->f:Landroidx/appcompat/widget/AppCompatTextView;

    const-string p3, "tvTitle"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Ljg/c;->g(Landroid/view/View;)V

    iget-object p0, p1, Lth/e;->c:Landroid/widget/ProgressBar;

    const-string p3, "progressBar"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Ljg/c;->k(Landroid/view/View;)V

    new-instance p0, Lcom/tn/lib/view/u;

    invoke-direct {p0, p1}, Lcom/tn/lib/view/u;-><init>(Lth/e;)V

    const-wide/16 v0, 0x3e8

    invoke-virtual {p2, p0, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static final m(Lth/e;)V
    .locals 2

    iget-object v0, p0, Lth/e;->d:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "retry"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljg/c;->k(Landroid/view/View;)V

    iget-object v0, p0, Lth/e;->b:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "goToSetting"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljg/c;->k(Landroid/view/View;)V

    iget-object v0, p0, Lth/e;->f:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "tvTitle"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljg/c;->k(Landroid/view/View;)V

    iget-object p0, p0, Lth/e;->c:Landroid/widget/ProgressBar;

    const-string v0, "progressBar"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Ljg/c;->g(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final goToSetting(Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "settingListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tn/lib/view/NoNetworkSmallView;->a:Lth/e;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lth/e;->b:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/tn/lib/view/t;

    invoke-direct {v1, p0, p1}, Lcom/tn/lib/view/t;-><init>(Lcom/tn/lib/view/NoNetworkSmallView;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public final retry(Lkotlin/jvm/functions/Function0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "retryListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tn/lib/view/NoNetworkSmallView;->a:Lth/e;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lth/e;->d:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v2, Lcom/tn/lib/view/s;

    invoke-direct {v2, p1, v0, p0}, Lcom/tn/lib/view/s;-><init>(Lkotlin/jvm/functions/Function0;Lth/e;Lcom/tn/lib/view/NoNetworkSmallView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method
