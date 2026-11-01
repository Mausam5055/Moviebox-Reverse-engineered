.class public abstract Lcom/transsion/shorttv/base/dialog/BaseDialog;
.super Landroidx/fragment/app/DialogFragment;

# interfaces
.implements Lds/e;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008&\u0018\u00002\u00020\u00012\u00020\u0002B\t\u0008\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004B\u0011\u0008\u0016\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0003\u0010\u0007J!\u0010\r\u001a\u00020\u000c2\u0006\u0010\t\u001a\u00020\u00082\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u000cH\u0003\u00a2\u0006\u0004\u0008\u000f\u0010\u0004J\u0017\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u0010H\u0003\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J!\u0010\u0015\u001a\u00020\u000c2\u0006\u0010\u0014\u001a\u00020\u00082\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u000eJ#\u0010\u0016\u001a\u00020\u000c2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00102\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J!\u0010\u001a\u001a\u00020\u000c2\u0006\u0010\u0019\u001a\u00020\u00182\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u000f\u0010\u001c\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u001c\u0010\u0004J\u000f\u0010\u001d\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u001d\u0010\u0004J\u000f\u0010\u001e\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u001e\u0010\u0004J\u000f\u0010\u001f\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u001f\u0010\u0004J\u0011\u0010 \u001a\u0004\u0018\u00010\nH\u0016\u00a2\u0006\u0004\u0008 \u0010!R\u001d\u0010\'\u001a\u0004\u0018\u00010\"8VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008#\u0010$\u001a\u0004\u0008%\u0010&\u00a8\u0006("
    }
    d2 = {
        "Lcom/transsion/shorttv/base/dialog/BaseDialog;",
        "Landroidx/fragment/app/DialogFragment;",
        "Lds/e;",
        "<init>",
        "()V",
        "",
        "contentLayoutId",
        "(I)V",
        "Landroidx/fragment/app/FragmentManager;",
        "fragmentManager",
        "",
        "tag",
        "",
        "k0",
        "(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V",
        "d0",
        "Landroid/content/Context;",
        "context",
        "b0",
        "(Landroid/content/Context;)I",
        "manager",
        "show",
        "i0",
        "(Landroid/content/Context;Ljava/lang/String;)V",
        "Landroidx/fragment/app/Fragment;",
        "fragment",
        "j0",
        "(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V",
        "onStart",
        "onResume",
        "onPause",
        "onDestroy",
        "c0",
        "()Ljava/lang/String;",
        "Lhj/b;",
        "a",
        "Lkotlin/Lazy;",
        "getLogViewConfig",
        "()Lhj/b;",
        "logViewConfig",
        "shortTvLib_release"
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
.field private final a:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    new-instance v0, Lwr/a;

    invoke-direct {v0, p0}, Lwr/a;-><init>(Lcom/transsion/shorttv/base/dialog/BaseDialog;)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/shorttv/base/dialog/BaseDialog;->a:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/fragment/app/DialogFragment;-><init>(I)V

    new-instance p1, Lwr/a;

    invoke-direct {p1, p0}, Lwr/a;-><init>(Lcom/transsion/shorttv/base/dialog/BaseDialog;)V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/shorttv/base/dialog/BaseDialog;->a:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic X(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/shorttv/base/dialog/BaseDialog;->f0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic Y(ILandroid/view/View;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/shorttv/base/dialog/BaseDialog;->e0(ILandroid/view/View;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic Z(Lcom/transsion/shorttv/base/dialog/BaseDialog;)Lhj/b;
    .locals 0

    invoke-static {p0}, Lcom/transsion/shorttv/base/dialog/BaseDialog;->g0(Lcom/transsion/shorttv/base/dialog/BaseDialog;)Lhj/b;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a0(Lcom/transsion/shorttv/base/dialog/BaseDialog;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/shorttv/base/dialog/BaseDialog;->h0(Lcom/transsion/shorttv/base/dialog/BaseDialog;)V

    return-void
.end method

.method private final b0(Landroid/content/Context;)I
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/blankj/utilcode/util/d;->a()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string v1, "navigation_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_0
    move p1, v0

    :goto_0
    return p1
.end method

.method private final d0()V
    .locals 11

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "requireContext(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/transsion/shorttv/base/dialog/BaseDialog;->b0(Landroid/content/Context;)I

    move-result v2

    instance-of v3, v1, Landroid/view/ViewGroup;

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v3, :cond_5

    move-object v6, v1

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6, v5}, Landroid/view/View;->setFitsSystemWindows(Z)V

    invoke-virtual {v6}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-nez v7, :cond_5

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-lez v7, :cond_3

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    goto :goto_0

    :cond_3
    move-object v7, v4

    :goto_0
    if-eqz v7, :cond_4

    invoke-virtual {v7}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v1, v5}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_5
    :goto_1
    new-instance v6, Lwr/c;

    invoke-direct {v6, v2, v1}, Lwr/c;-><init>(ILandroid/view/View;)V

    invoke-static {v0, v6}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    if-lez v2, :cond_b

    if-eqz v3, :cond_7

    move-object v6, v1

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-lez v7, :cond_7

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    instance-of v7, v6, Landroid/view/ViewGroup;

    if-eqz v7, :cond_6

    check-cast v6, Landroid/view/ViewGroup;

    goto :goto_2

    :cond_6
    move-object v6, v4

    goto :goto_2

    :cond_7
    if-eqz v3, :cond_6

    move-object v6, v1

    check-cast v6, Landroid/view/ViewGroup;

    :goto_2
    if-eqz v6, :cond_9

    invoke-virtual {v6}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    invoke-virtual {v6}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    invoke-virtual {v6}, Landroid/view/View;->getPaddingRight()I

    move-result v9

    invoke-virtual {v6}, Landroid/view/View;->getPaddingBottom()I

    move-result v10

    if-ge v10, v2, :cond_8

    goto :goto_3

    :cond_8
    move v2, v10

    :goto_3
    invoke-virtual {v6}, Landroid/view/View;->getPaddingBottom()I

    move-result v10

    if-eq v10, v2, :cond_9

    invoke-virtual {v6, v7, v8, v9, v2}, Landroid/view/View;->setPadding(IIII)V

    :cond_9
    if-eqz v3, :cond_b

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_b

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lez v2, :cond_a

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    :cond_a
    if-eqz v4, :cond_b

    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_b
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    new-instance v1, Lwr/d;

    invoke-direct {v1, v0}, Lwr/d;-><init>(Landroid/view/View;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_c
    :goto_4
    return-void
.end method

.method private static final e0(ILandroid/view/View;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 4

    const-string v0, "v"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insets"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->navigationBars()I

    move-result v0

    invoke-virtual {p3, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Lz0/c;

    move-result-object v0

    const-string v1, "getInsets(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemGestures()I

    move-result v2

    invoke-virtual {p3, v2}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Lz0/c;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, v0, Lz0/c;->d:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    :goto_0
    move p0, v0

    goto :goto_1

    :cond_0
    iget v0, v2, Lz0/c;->d:I

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    if-lez p0, :cond_2

    goto :goto_1

    :cond_2
    move p0, v1

    :goto_1
    invoke-virtual {p2, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    if-lez p0, :cond_6

    instance-of p2, p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    move-object v2, p1

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-lez v3, :cond_3

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    instance-of p2, p1, Landroid/view/ViewGroup;

    if-eqz p2, :cond_4

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_2

    :cond_3
    if-eqz p2, :cond_4

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    :cond_4
    :goto_2
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    if-ge v2, p0, :cond_5

    goto :goto_3

    :cond_5
    move p0, v2

    :goto_3
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    if-eq v2, p0, :cond_6

    invoke-virtual {v0, p1, p2, v1, p0}, Landroid/view/View;->setPadding(IIII)V

    :cond_6
    return-object p3
.end method

.method private static final f0(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    return-void
.end method

.method private static final g0(Lcom/transsion/shorttv/base/dialog/BaseDialog;)Lhj/b;
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/shorttv/base/dialog/BaseDialog;->newLogViewConfig()Lhj/b;

    move-result-object p0

    return-object p0
.end method

.method private static final h0(Lcom/transsion/shorttv/base/dialog/BaseDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/shorttv/base/dialog/BaseDialog;->d0()V

    return-void
.end method

.method private final k0(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->g0()Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentManager;->k0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv/base/dialog/BaseDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    return-void

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    return-void
.end method


# virtual methods
.method public c0()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLogViewConfig()Lhj/b;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/base/dialog/BaseDialog;->a:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhj/b;

    return-object v0
.end method

.method public i0(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    instance-of v0, p1, Landroidx/fragment/app/FragmentActivity;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v0, "getSupportFragmentManager(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/transsion/shorttv/base/dialog/BaseDialog;->k0(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_2
    return-void
.end method

.method public j0(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v0, "getChildFragmentManager(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv/base/dialog/BaseDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public newLogViewConfig()Lhj/b;
    .locals 1

    invoke-static {p0}, Lds/e$a;->a(Lds/e;)Lhj/b;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    sget-object v0, Lwr/e;->a:Lwr/e;

    invoke-virtual {p0}, Lcom/transsion/shorttv/base/dialog/BaseDialog;->c0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lwr/e;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    invoke-static {p0}, Lds/e$a;->b(Lds/e;)V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    invoke-static {p0}, Lds/e$a;->c(Lds/e;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x23

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/core/view/WindowCompat;->setDecorFitsSystemWindows(Landroid/view/Window;Z)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lwr/b;

    invoke-direct {v1, p0}, Lwr/b;-><init>(Lcom/transsion/shorttv/base/dialog/BaseDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    .locals 1

    const-string v0, "manager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->g0()Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentManager;->k0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    sget-object p1, Lwr/e;->a:Lwr/e;

    invoke-virtual {p0}, Lcom/transsion/shorttv/base/dialog/BaseDialog;->c0()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lwr/e;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    return-void

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    return-void
.end method
