.class public final Lcom/transsion/postdetail/layer/local/j1;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/widget/TextView;

.field private final b:Landroid/widget/TextView;

.field private c:J

.field private d:I

.field private final e:Ljava/lang/Runnable;

.field private final f:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/postdetail/layer/local/j1;->a:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/transsion/postdetail/layer/local/j1;->b:Landroid/widget/TextView;

    const/4 p1, 0x1

    iput p1, p0, Lcom/transsion/postdetail/layer/local/j1;->d:I

    new-instance p1, Lcom/transsion/postdetail/layer/local/h1;

    invoke-direct {p1, p0}, Lcom/transsion/postdetail/layer/local/h1;-><init>(Lcom/transsion/postdetail/layer/local/j1;)V

    iput-object p1, p0, Lcom/transsion/postdetail/layer/local/j1;->e:Ljava/lang/Runnable;

    new-instance p1, Lcom/transsion/postdetail/layer/local/i1;

    invoke-direct {p1, p0}, Lcom/transsion/postdetail/layer/local/i1;-><init>(Lcom/transsion/postdetail/layer/local/j1;)V

    iput-object p1, p0, Lcom/transsion/postdetail/layer/local/j1;->f:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic a(Lcom/transsion/postdetail/layer/local/j1;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/postdetail/layer/local/j1;->f(Lcom/transsion/postdetail/layer/local/j1;)V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/postdetail/layer/local/j1;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/postdetail/layer/local/j1;->e(Lcom/transsion/postdetail/layer/local/j1;)V

    return-void
.end method

.method public static final synthetic c(Lcom/transsion/postdetail/layer/local/j1;J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/postdetail/layer/local/j1;->c:J

    return-void
.end method

.method private static final e(Lcom/transsion/postdetail/layer/local/j1;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/postdetail/layer/local/j1;->a:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    invoke-static {p0}, Ljg/c;->g(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private static final f(Lcom/transsion/postdetail/layer/local/j1;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/postdetail/layer/local/j1;->b:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    invoke-static {p0}, Ljg/c;->g(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private final g(Ljava/lang/String;JLandroid/widget/TextView;JLjava/lang/Runnable;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    const-string v1, "alpha"

    invoke-static {p4, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    if-eqz p4, :cond_0

    invoke-static {p4}, Ljg/c;->g(Landroid/view/View;)V

    :cond_0
    new-instance v1, Lcom/transsion/postdetail/layer/local/j1$a;

    invoke-direct {v1, p0, p4, p1}, Lcom/transsion/postdetail/layer/local/j1$a;-><init>(Lcom/transsion/postdetail/layer/local/j1;Landroid/widget/TextView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0, p2, p3}, Landroid/animation/Animator;->setStartDelay(J)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    const-wide/16 p1, 0x0

    cmp-long p1, p5, p1

    if-lez p1, :cond_1

    if-eqz p4, :cond_1

    invoke-virtual {p4, p7, p5, p6}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static synthetic i(Lcom/transsion/postdetail/layer/local/j1;Ljava/lang/String;JILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const-wide/16 p2, 0xbb8

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/postdetail/layer/local/j1;->h(Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/j1;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljg/c;->g(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/j1;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-static {v0}, Ljg/c;->g(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public final h(Ljava/lang/String;J)V
    .locals 10

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/j1;->a:Landroid/widget/TextView;

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eqz v0, :cond_3

    invoke-static {v0}, Ljg/c;->i(Landroid/view/View;)Z

    move-result v0

    if-ne v0, v9, :cond_3

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/j1;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    invoke-static {v0}, Ljg/c;->i(Landroid/view/View;)Z

    move-result v0

    if-ne v0, v9, :cond_3

    iget v0, p0, Lcom/transsion/postdetail/layer/local/j1;->d:I

    if-ne v0, v9, :cond_0

    iget-object v2, p0, Lcom/transsion/postdetail/layer/local/j1;->b:Landroid/widget/TextView;

    :goto_0
    move-object v4, v2

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/transsion/postdetail/layer/local/j1;->a:Landroid/widget/TextView;

    goto :goto_0

    :goto_1
    if-ne v0, v9, :cond_1

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/j1;->f:Ljava/lang/Runnable;

    :goto_2
    move-object v7, v0

    goto :goto_3

    :cond_1
    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/j1;->e:Ljava/lang/Runnable;

    goto :goto_2

    :goto_3
    invoke-virtual {v4, v7}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const-wide/16 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v5, p2

    invoke-direct/range {v0 .. v7}, Lcom/transsion/postdetail/layer/local/j1;->g(Ljava/lang/String;JLandroid/widget/TextView;JLjava/lang/Runnable;)V

    iget v0, p0, Lcom/transsion/postdetail/layer/local/j1;->d:I

    if-ne v0, v9, :cond_2

    goto :goto_4

    :cond_2
    move v8, v9

    :goto_4
    iput v8, p0, Lcom/transsion/postdetail/layer/local/j1;->d:I

    goto :goto_6

    :cond_3
    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/j1;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    invoke-static {v0}, Ljg/c;->i(Landroid/view/View;)Z

    move-result v0

    if-ne v0, v9, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/transsion/postdetail/layer/local/j1;->c:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1f4

    cmp-long v0, v2, v4

    if-gez v0, :cond_4

    move-wide v2, v4

    goto :goto_5

    :cond_4
    const-wide/16 v2, 0x0

    :goto_5
    iput v8, p0, Lcom/transsion/postdetail/layer/local/j1;->d:I

    iget-object v4, p0, Lcom/transsion/postdetail/layer/local/j1;->b:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/transsion/postdetail/layer/local/j1;->f:Ljava/lang/Runnable;

    move-object v0, p0

    move-object v1, p1

    move-wide v5, p2

    invoke-direct/range {v0 .. v7}, Lcom/transsion/postdetail/layer/local/j1;->g(Ljava/lang/String;JLandroid/widget/TextView;JLjava/lang/Runnable;)V

    goto :goto_6

    :cond_5
    iput v9, p0, Lcom/transsion/postdetail/layer/local/j1;->d:I

    iget-object v4, p0, Lcom/transsion/postdetail/layer/local/j1;->a:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/transsion/postdetail/layer/local/j1;->e:Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v5, p2

    invoke-direct/range {v0 .. v7}, Lcom/transsion/postdetail/layer/local/j1;->g(Ljava/lang/String;JLandroid/widget/TextView;JLjava/lang/Runnable;)V

    :goto_6
    return-void
.end method
