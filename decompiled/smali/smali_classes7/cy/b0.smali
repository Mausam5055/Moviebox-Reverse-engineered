.class public final Lcy/b0;
.super Lcom/transsion/ad/bidding/base/r;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcy/b0$a;
    }
.end annotation


# static fields
.field public static final e:Lcy/b0$a;


# instance fields
.field private b:Ljava/lang/Runnable;

.field private c:Z

.field private d:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcy/b0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcy/b0$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcy/b0;->e:Lcy/b0$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/transsion/ad/bidding/base/r;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic D(Landroid/view/View;Lcy/b0;)V
    .locals 0

    invoke-static {p0, p1}, Lcy/b0;->M(Landroid/view/View;Lcy/b0;)V

    return-void
.end method

.method public static synthetic E(Landroid/widget/TextView;)V
    .locals 0

    invoke-static {p0}, Lcy/b0;->O(Landroid/widget/TextView;)V

    return-void
.end method

.method public static final synthetic F(Lcy/b0;J)V
    .locals 0

    iput-wide p1, p0, Lcy/b0;->d:J

    return-void
.end method

.method private final G(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcy/b0;->c:Z

    sget v0, Lcom/transsion/wrapperad/R$id;->call_to_action:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget v0, Lcom/transsion/wrapperad/R$drawable;->ad_shape_gradient:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    const-string v0, "#FF000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private final K(Landroid/view/View;J)V
    .locals 1

    iget-boolean v0, p0, Lcy/b0;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcy/b0;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_1
    new-instance v0, Lcy/z;

    invoke-direct {v0, p1, p0}, Lcy/z;-><init>(Landroid/view/View;Lcy/b0;)V

    iput-object v0, p0, Lcy/b0;->b:Ljava/lang/Runnable;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {p1, v0, p2, p3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic L(Lcy/b0;Landroid/view/View;JILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const-wide/16 p2, 0xbb8

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcy/b0;->K(Landroid/view/View;J)V

    return-void
.end method

.method private static final M(Landroid/view/View;Lcy/b0;)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p1, p0}, Lcy/b0;->N(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private final N(Landroid/view/View;)V
    .locals 6

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcy/b0;->c:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iput-boolean v0, p0, Lcy/b0;->c:Z

    sget v1, Lcom/transsion/wrapperad/R$id;->call_to_action:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-nez p1, :cond_1

    return-void

    :cond_1
    new-instance v1, Landroid/animation/ArgbEvaluator;

    invoke-direct {v1}, Landroid/animation/ArgbEvaluator;-><init>()V

    const-string v2, "#CCFFFFFF"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "#FF000000"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    aput-object v3, v4, v0

    const-string v0, "textColor"

    invoke-static {p1, v0, v1, v4}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    new-instance v0, Lcy/a0;

    invoke-direct {v0, p1}, Lcy/a0;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static final O(Landroid/widget/TextView;)V
    .locals 1

    sget v0, Lcom/transsion/wrapperad/R$drawable;->ad_shape_gradient:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    const-string v0, "#FF000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method


# virtual methods
.method public A()Ljava/lang/Integer;
    .locals 1

    sget v0, Lcom/transsion/wrapperad/R$id;->flVolumeContainer:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final H(Landroid/view/View;)V
    .locals 6

    const-string v0, "rootView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcy/b0;->c:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcy/b0;->G(Landroid/view/View;)V

    return-void

    :cond_0
    sget v0, Lcom/transsion/wrapperad/R$id;->call_to_action:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v0, :cond_1

    return-void

    :cond_1
    sget v1, Lcom/transsion/wrapperad/R$drawable;->ad_shape_gray:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    const-string v1, "#CCFFFFFF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-wide v0, p0, Lcy/b0;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcy/b0;->d:J

    sub-long/2addr v0, v4

    const-wide/16 v4, 0xbb8

    sub-long/2addr v4, v0

    cmp-long v0, v4, v2

    if-gtz v0, :cond_2

    invoke-direct {p0, p1}, Lcy/b0;->G(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, v4, v5}, Lcy/b0;->K(Landroid/view/View;J)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcy/b0;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_4

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_4
    const/4 p1, 0x0

    iput-object p1, p0, Lcy/b0;->b:Ljava/lang/Runnable;

    :goto_0
    return-void
.end method

.method public final I(Landroid/view/View;)Ldi/a;
    .locals 1

    const-string v0, "rootView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcy/b0$b;

    invoke-direct {v0, p0, p1}, Lcy/b0$b;-><init>(Lcy/b0;Landroid/view/View;)V

    return-object v0
.end method

.method public final J(Landroid/view/View;)V
    .locals 4

    const-string v0, "rootView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcy/b0;->c:Z

    if-nez v0, :cond_2

    iget-wide v0, p0, Lcy/b0;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcy/b0;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcy/b0;->b:Ljava/lang/Runnable;

    invoke-direct {p0, p1}, Lcy/b0;->G(Landroid/view/View;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public c()Ljava/lang/Integer;
    .locals 1

    sget v0, Lcom/transsion/wrapperad/R$id;->adChoicesView:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/lang/Integer;
    .locals 1

    sget v0, Lcom/transsion/wrapperad/R$id;->store_mark_view:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public i()Ljava/lang/Integer;
    .locals 1

    sget v0, Lcom/transsion/wrapperad/R$id;->adIcon:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public l()Ljava/lang/Integer;
    .locals 1

    sget v0, Lcom/transsion/wrapperad/R$id;->call_to_action:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public m()Ljava/lang/Integer;
    .locals 1

    sget v0, Lcom/transsion/wrapperad/R$id;->native_ad_body:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public s()Ljava/lang/Integer;
    .locals 1

    sget v0, Lcom/transsion/wrapperad/R$id;->native_ad_icon:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public t()I
    .locals 1

    sget v0, Lcom/transsion/wrapperad/R$layout;->native_trending_native_layout_style_2:I

    return v0
.end method

.method public v()Ljava/lang/Integer;
    .locals 1

    sget v0, Lcom/transsion/wrapperad/R$id;->coverview:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public z()Ljava/lang/Integer;
    .locals 1

    sget v0, Lcom/transsion/wrapperad/R$id;->native_ad_title:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
