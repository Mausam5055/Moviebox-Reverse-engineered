.class public abstract Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/EjP;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Mts;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/EjP$Sj;
    }
.end annotation


# instance fields
.field private EjP:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;>;"
        }
    .end annotation
.end field

.field public Sj:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/animation/ObjectAnimator;",
            ">;"
        }
    .end annotation
.end field

.field public TKC:Landroid/view/View;

.field sP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Sj;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Sj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/EjP;->TKC:Landroid/view/View;

    iput-object p2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/EjP;->sP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Sj;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/EjP;->EjP:Ljava/util/Set;

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/EjP;->Sj()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/EjP;->Sj:Ljava/util/List;

    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/EjP;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/EjP;->EjP:Ljava/util/Set;

    return-object p0
.end method


# virtual methods
.method Sj(Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/EjP;->sP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Sj;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Sj;->sef()D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    double-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/EjP;->sP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Sj;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Sj;->Zq()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/EjP;->sP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Sj;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Sj;->Zq()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/EjP;->sP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Sj;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Sj;->uvD()Ljava/lang/String;

    move-result-object v0

    const-string v2, "normal"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/EjP;->sP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Sj;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Sj;->uvD()Ljava/lang/String;

    move-result-object v0

    const-string v2, "alternate"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/EjP;->sP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Sj;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Sj;->uvD()Ljava/lang/String;

    move-result-object v0

    const-string v2, "alternate-reverse"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/EjP;->sP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Sj;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Sj;->Fmk()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ease-in-out"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/EjP;->sP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Sj;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Sj;->uvD()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ease-in"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/EjP;->sP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Sj;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Sj;->uvD()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ease-out"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_3

    :cond_6
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :goto_3
    new-instance v0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/EjP$2;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/EjP$2;-><init>(Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/EjP;Landroid/animation/ObjectAnimator;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p1
.end method

.method abstract Sj()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/animation/ObjectAnimator;",
            ">;"
        }
    .end annotation
.end method

.method public TKC()V
    .locals 6

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/EjP;->Sj:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    iget-object v2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/EjP;->sP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Sj;

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Sj;->dNu()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_1

    new-instance v2, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/EjP$1;

    invoke-direct {v2, p0, v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/EjP$1;-><init>(Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/EjP;Landroid/animation/ObjectAnimator;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public sP()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/EjP;->Sj:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/EjP;->EjP:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ScheduledFuture;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_1

    :cond_2
    return-void
.end method
