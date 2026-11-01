.class public final Lcom/transsnet/downloader/manager/u;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsnet/downloader/manager/u$a;
    }
.end annotation


# static fields
.field public static final c:Lcom/transsnet/downloader/manager/u$a;


# instance fields
.field private a:Z

.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsnet/downloader/manager/u$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsnet/downloader/manager/u$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsnet/downloader/manager/u;->c:Lcom/transsnet/downloader/manager/u$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsnet/downloader/manager/u;->a:Z

    sget-object v0, Lti/b;->a:Lti/b;

    invoke-virtual {v0}, Lti/b;->c()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsnet/downloader/manager/u;->a:Z

    return-void
.end method

.method public static synthetic a(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsnet/downloader/manager/u;->g(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/transsnet/downloader/manager/u;->f(Landroid/view/View;)V

    return-void
.end method

.method private final c(Landroid/content/Context;)Landroid/view/View;
    .locals 2

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/transsnet/downloader/R$layout;->layout_downloading_play_guide:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const-string v0, "inflate(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final e(Landroid/widget/FrameLayout;Landroid/view/View;)V
    .locals 5

    const/high16 v0, 0x42d40000    # 106.0f

    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v0

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v2, "null cannot be cast to non-null type android.app.Activity"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/app/Activity;

    invoke-direct {p0, p2}, Lcom/transsnet/downloader/manager/u;->c(Landroid/content/Context;)Landroid/view/View;

    move-result-object p2

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v3, 0x43660000    # 230.0f

    invoke-static {v3}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v3

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {p1, p2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Lcom/transsnet/downloader/manager/s;

    invoke-direct {p1, p2}, Lcom/transsnet/downloader/manager/s;-><init>(Landroid/view/View;)V

    const-wide/16 v0, 0xbb8

    invoke-virtual {p2, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance p1, Lcom/transsnet/downloader/manager/t;

    invoke-direct {p1, p2}, Lcom/transsnet/downloader/manager/t;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/transsnet/downloader/manager/u;->a:Z

    sget-object p1, Lti/b;->a:Lti/b;

    invoke-virtual {p1}, Lti/b;->d()V

    return-void
.end method

.method private static final f(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private static final g(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final d(Landroid/widget/FrameLayout;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;J)V
    .locals 0

    const-string p3, "fragmentRootView"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "holder"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/transsnet/downloader/manager/u;->a:Z

    if-nez p3, :cond_0

    return-void

    :cond_0
    iget-boolean p3, p0, Lcom/transsnet/downloader/manager/u;->b:Z

    if-eqz p3, :cond_1

    return-void

    :cond_1
    sget p3, Lcom/transsnet/downloader/R$id;->iv_cover:I

    invoke-virtual {p2, p3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_2

    return-void

    :cond_2
    invoke-static {p2}, Ljg/c;->i(Landroid/view/View;)Z

    move-result p3

    if-nez p3, :cond_3

    return-void

    :cond_3
    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/transsnet/downloader/manager/u;->b:Z

    invoke-direct {p0, p1, p2}, Lcom/transsnet/downloader/manager/u;->e(Landroid/widget/FrameLayout;Landroid/view/View;)V

    return-void
.end method
