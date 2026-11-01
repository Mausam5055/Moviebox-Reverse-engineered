.class public abstract Lcom/bytedance/adsdk/sP/Sj/sP/Sj;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/adsdk/sP/Sj/sP/Sj$EjP;,
        Lcom/bytedance/adsdk/sP/Sj/sP/Sj$HiB;,
        Lcom/bytedance/adsdk/sP/Sj/sP/Sj$sP;,
        Lcom/bytedance/adsdk/sP/Sj/sP/Sj$TKC;,
        Lcom/bytedance/adsdk/sP/Sj/sP/Sj$Sj;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private Dq:F

.field private EjP:Z

.field private final HiB:Lcom/bytedance/adsdk/sP/Sj/sP/Sj$TKC;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/adsdk/sP/Sj/sP/Sj$TKC<",
            "TK;>;"
        }
    .end annotation
.end field

.field private Jcg:F

.field final Sj:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/sP/Sj/sP/Sj$Sj;",
            ">;"
        }
    .end annotation
.end field

.field protected TKC:Lcom/bytedance/adsdk/sP/Jcg/sP;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/adsdk/sP/Jcg/sP<",
            "TA;>;"
        }
    .end annotation
.end field

.field protected sP:F

.field private vS:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/bytedance/adsdk/sP/Jcg/Sj<",
            "TK;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->Sj:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->EjP:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->sP:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->vS:Ljava/lang/Object;

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->Jcg:F

    iput v0, p0, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->Dq:F

    invoke-static {p1}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->Sj(Ljava/util/List;)Lcom/bytedance/adsdk/sP/Sj/sP/Sj$TKC;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->HiB:Lcom/bytedance/adsdk/sP/Sj/sP/Sj$TKC;

    return-void
.end method

.method private static Sj(Ljava/util/List;)Lcom/bytedance/adsdk/sP/Sj/sP/Sj$TKC;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+",
            "Lcom/bytedance/adsdk/sP/Jcg/Sj<",
            "TT;>;>;)",
            "Lcom/bytedance/adsdk/sP/Sj/sP/Sj$TKC<",
            "TT;>;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Lcom/bytedance/adsdk/sP/Sj/sP/Sj$sP;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj$sP;-><init>(Lcom/bytedance/adsdk/sP/Sj/sP/Sj$1;)V

    return-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    new-instance v0, Lcom/bytedance/adsdk/sP/Sj/sP/Sj$HiB;

    invoke-direct {v0, p0}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj$HiB;-><init>(Ljava/util/List;)V

    return-object v0

    :cond_1
    new-instance v0, Lcom/bytedance/adsdk/sP/Sj/sP/Sj$EjP;

    invoke-direct {v0, p0}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj$EjP;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method private uA()F
    .locals 2

    iget v0, p0, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->Jcg:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->HiB:Lcom/bytedance/adsdk/sP/Sj/sP/Sj$TKC;

    invoke-interface {v0}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj$TKC;->TKC()F

    move-result v0

    iput v0, p0, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->Jcg:F

    :cond_0
    iget v0, p0, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->Jcg:F

    return v0
.end method


# virtual methods
.method public Dq()F
    .locals 1

    iget v0, p0, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->sP:F

    return v0
.end method

.method EjP()F
    .locals 3

    iget-boolean v0, p0, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->EjP:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->TKC()Lcom/bytedance/adsdk/sP/Jcg/Sj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/Jcg/Sj;->HiB()Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    iget v1, p0, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->sP:F

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/Jcg/Sj;->TKC()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/Jcg/Sj;->EjP()F

    move-result v2

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/Jcg/Sj;->TKC()F

    move-result v0

    sub-float/2addr v2, v0

    div-float/2addr v1, v2

    return v1
.end method

.method protected HiB()F
    .locals 2

    invoke-virtual {p0}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->TKC()Lcom/bytedance/adsdk/sP/Jcg/Sj;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/Jcg/Sj;->HiB()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/bytedance/adsdk/sP/Jcg/Sj;->TKC:Landroid/view/animation/Interpolator;

    invoke-virtual {p0}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->EjP()F

    move-result v1

    invoke-interface {v0, v1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public Jcg()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->EjP()F

    move-result v0

    iget-object v1, p0, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->TKC:Lcom/bytedance/adsdk/sP/Jcg/sP;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->HiB:Lcom/bytedance/adsdk/sP/Sj/sP/Sj$TKC;

    invoke-interface {v1, v0}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj$TKC;->sP(F)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->vS:Ljava/lang/Object;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->TKC()Lcom/bytedance/adsdk/sP/Jcg/Sj;

    move-result-object v1

    iget-object v2, v1, Lcom/bytedance/adsdk/sP/Jcg/Sj;->EjP:Landroid/view/animation/Interpolator;

    if-eqz v2, :cond_1

    iget-object v3, v1, Lcom/bytedance/adsdk/sP/Jcg/Sj;->HiB:Landroid/view/animation/Interpolator;

    if-eqz v3, :cond_1

    invoke-interface {v2, v0}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v2

    iget-object v3, v1, Lcom/bytedance/adsdk/sP/Jcg/Sj;->HiB:Landroid/view/animation/Interpolator;

    invoke-interface {v3, v0}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v3

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->Sj(Lcom/bytedance/adsdk/sP/Jcg/Sj;FFF)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->HiB()F

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->Sj(Lcom/bytedance/adsdk/sP/Jcg/Sj;F)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->vS:Ljava/lang/Object;

    return-object v0
.end method

.method abstract Sj(Lcom/bytedance/adsdk/sP/Jcg/Sj;F)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/adsdk/sP/Jcg/Sj<",
            "TK;>;F)TA;"
        }
    .end annotation
.end method

.method protected Sj(Lcom/bytedance/adsdk/sP/Jcg/Sj;FFF)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/adsdk/sP/Jcg/Sj<",
            "TK;>;FFF)TA;"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "This animation does not support split dimensions!"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public Sj()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->EjP:Z

    return-void
.end method

.method public Sj(F)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->HiB:Lcom/bytedance/adsdk/sP/Sj/sP/Sj$TKC;

    invoke-interface {v0}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj$TKC;->Sj()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->uA()F

    move-result v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    invoke-direct {p0}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->uA()F

    move-result p1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->vS()F

    move-result v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    invoke-virtual {p0}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->vS()F

    move-result p1

    :cond_2
    :goto_0
    iget v0, p0, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->sP:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    iput p1, p0, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->sP:F

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->HiB:Lcom/bytedance/adsdk/sP/Sj/sP/Sj$TKC;

    invoke-interface {v0, p1}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj$TKC;->Sj(F)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->sP()V

    :cond_4
    return-void
.end method

.method public Sj(Lcom/bytedance/adsdk/sP/Sj/sP/Sj$Sj;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->Sj:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected TKC()Lcom/bytedance/adsdk/sP/Jcg/Sj;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bytedance/adsdk/sP/Jcg/Sj<",
            "TK;>;"
        }
    .end annotation

    const-string v0, "BaseKeyframeAnimation#getCurrentKeyframe"

    invoke-static {v0}, Lcom/bytedance/adsdk/sP/HiB;->Sj(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->HiB:Lcom/bytedance/adsdk/sP/Sj/sP/Sj$TKC;

    invoke-interface {v1}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj$TKC;->sP()Lcom/bytedance/adsdk/sP/Jcg/Sj;

    move-result-object v1

    invoke-static {v0}, Lcom/bytedance/adsdk/sP/HiB;->sP(Ljava/lang/String;)F

    return-object v1
.end method

.method public sP()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->Sj:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->Sj:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/adsdk/sP/Sj/sP/Sj$Sj;

    invoke-interface {v1}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj$Sj;->Sj()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method vS()F
    .locals 2

    iget v0, p0, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->Dq:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->HiB:Lcom/bytedance/adsdk/sP/Sj/sP/Sj$TKC;

    invoke-interface {v0}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj$TKC;->EjP()F

    move-result v0

    iput v0, p0, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->Dq:F

    :cond_0
    iget v0, p0, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->Dq:F

    return v0
.end method
