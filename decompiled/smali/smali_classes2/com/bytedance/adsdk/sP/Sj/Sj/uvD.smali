.class public Lcom/bytedance/adsdk/sP/Sj/Sj/uvD;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/adsdk/sP/Sj/Sj/Fmk;
.implements Lcom/bytedance/adsdk/sP/Sj/Sj/HiB;
.implements Lcom/bytedance/adsdk/sP/Sj/Sj/TEQ;
.implements Lcom/bytedance/adsdk/sP/Sj/Sj/Ym;
.implements Lcom/bytedance/adsdk/sP/Sj/sP/Sj$Sj;


# instance fields
.field private final Dq:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/adsdk/sP/Sj/sP/Sj<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final EjP:Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;

.field private final HiB:Ljava/lang/String;

.field private final Jcg:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/adsdk/sP/Sj/sP/Sj<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final Sj:Landroid/graphics/Matrix;

.field private TEQ:Lcom/bytedance/adsdk/sP/Sj/Sj/EjP;

.field private final TKC:Lcom/bytedance/adsdk/sP/uA;

.field private final sP:Landroid/graphics/Path;

.field private final uA:Lcom/bytedance/adsdk/sP/Sj/sP/uvD;

.field private final vS:Z


# direct methods
.method public constructor <init>(Lcom/bytedance/adsdk/sP/uA;Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;Lcom/bytedance/adsdk/sP/TKC/sP/aa;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/uvD;->Sj:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/uvD;->sP:Landroid/graphics/Path;

    iput-object p1, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/uvD;->TKC:Lcom/bytedance/adsdk/sP/uA;

    iput-object p2, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/uvD;->EjP:Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;

    invoke-virtual {p3}, Lcom/bytedance/adsdk/sP/TKC/sP/aa;->Sj()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/uvD;->HiB:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/bytedance/adsdk/sP/TKC/sP/aa;->HiB()Z

    move-result p1

    iput-boolean p1, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/uvD;->vS:Z

    invoke-virtual {p3}, Lcom/bytedance/adsdk/sP/TKC/sP/aa;->sP()Lcom/bytedance/adsdk/sP/TKC/Sj/sP;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/adsdk/sP/TKC/Sj/sP;->Sj()Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/uvD;->Jcg:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    invoke-virtual {p2, p1}, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Sj(Lcom/bytedance/adsdk/sP/Sj/sP/Sj;)V

    invoke-virtual {p1, p0}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->Sj(Lcom/bytedance/adsdk/sP/Sj/sP/Sj$Sj;)V

    invoke-virtual {p3}, Lcom/bytedance/adsdk/sP/TKC/sP/aa;->TKC()Lcom/bytedance/adsdk/sP/TKC/Sj/sP;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/adsdk/sP/TKC/Sj/sP;->Sj()Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/uvD;->Dq:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    invoke-virtual {p2, p1}, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Sj(Lcom/bytedance/adsdk/sP/Sj/sP/Sj;)V

    invoke-virtual {p1, p0}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->Sj(Lcom/bytedance/adsdk/sP/Sj/sP/Sj$Sj;)V

    invoke-virtual {p3}, Lcom/bytedance/adsdk/sP/TKC/sP/aa;->EjP()Lcom/bytedance/adsdk/sP/TKC/Sj/aa;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/adsdk/sP/TKC/Sj/aa;->TEQ()Lcom/bytedance/adsdk/sP/Sj/sP/uvD;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/uvD;->uA:Lcom/bytedance/adsdk/sP/Sj/sP/uvD;

    invoke-virtual {p1, p2}, Lcom/bytedance/adsdk/sP/Sj/sP/uvD;->Sj(Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;)V

    invoke-virtual {p1, p0}, Lcom/bytedance/adsdk/sP/Sj/sP/uvD;->Sj(Lcom/bytedance/adsdk/sP/Sj/sP/Sj$Sj;)V

    return-void
.end method


# virtual methods
.method public EjP()Landroid/graphics/Path;
    .locals 6

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/uvD;->TEQ:Lcom/bytedance/adsdk/sP/Sj/Sj/EjP;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/Sj/Sj/EjP;->EjP()Landroid/graphics/Path;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/uvD;->sP:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    iget-object v1, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/uvD;->Jcg:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    invoke-virtual {v1}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->Jcg()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/uvD;->Dq:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    invoke-virtual {v2}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->Jcg()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-int v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    iget-object v3, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/uvD;->Sj:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/uvD;->uA:Lcom/bytedance/adsdk/sP/Sj/sP/uvD;

    int-to-float v5, v1

    add-float/2addr v5, v2

    invoke-virtual {v4, v5}, Lcom/bytedance/adsdk/sP/Sj/sP/uvD;->sP(F)Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v3, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/uvD;->sP:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/uvD;->Sj:Landroid/graphics/Matrix;

    invoke-virtual {v3, v0, v4}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/uvD;->sP:Landroid/graphics/Path;

    return-object v0
.end method

.method public Sj()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/uvD;->TKC:Lcom/bytedance/adsdk/sP/uA;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/uA;->invalidateSelf()V

    return-void
.end method

.method public Sj(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 9

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/uvD;->Jcg:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->Jcg()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/uvD;->Dq:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    invoke-virtual {v1}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->Jcg()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/uvD;->uA:Lcom/bytedance/adsdk/sP/Sj/sP/uvD;

    invoke-virtual {v2}, Lcom/bytedance/adsdk/sP/Sj/sP/uvD;->sP()Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->Jcg()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    iget-object v4, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/uvD;->uA:Lcom/bytedance/adsdk/sP/Sj/sP/uvD;

    invoke-virtual {v4}, Lcom/bytedance/adsdk/sP/Sj/sP/uvD;->TKC()Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->Jcg()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    div-float/2addr v4, v3

    float-to-int v3, v0

    add-int/lit8 v3, v3, -0x1

    :goto_0
    if-ltz v3, :cond_0

    iget-object v5, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/uvD;->Sj:Landroid/graphics/Matrix;

    invoke-virtual {v5, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v5, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/uvD;->Sj:Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/uvD;->uA:Lcom/bytedance/adsdk/sP/Sj/sP/uvD;

    int-to-float v7, v3

    add-float v8, v7, v1

    invoke-virtual {v6, v8}, Lcom/bytedance/adsdk/sP/Sj/sP/uvD;->sP(F)Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    int-to-float v5, p3

    div-float/2addr v7, v0

    invoke-static {v2, v4, v7}, Lcom/bytedance/adsdk/sP/vS/HiB;->Sj(FFF)F

    move-result v6

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/uvD;->TEQ:Lcom/bytedance/adsdk/sP/Sj/Sj/EjP;

    iget-object v7, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/uvD;->Sj:Landroid/graphics/Matrix;

    float-to-int v5, v5

    invoke-virtual {v6, p1, v7, v5}, Lcom/bytedance/adsdk/sP/Sj/Sj/EjP;->Sj(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public Sj(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/uvD;->TEQ:Lcom/bytedance/adsdk/sP/Sj/Sj/EjP;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/adsdk/sP/Sj/Sj/EjP;->Sj(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    return-void
.end method

.method public Sj(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/sP/Sj/Sj/TKC;",
            ">;",
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/sP/Sj/Sj/TKC;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/uvD;->TEQ:Lcom/bytedance/adsdk/sP/Sj/Sj/EjP;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/adsdk/sP/Sj/Sj/EjP;->Sj(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public Sj(Ljava/util/ListIterator;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ListIterator<",
            "Lcom/bytedance/adsdk/sP/Sj/Sj/TKC;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/uvD;->TEQ:Lcom/bytedance/adsdk/sP/Sj/Sj/EjP;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_0

    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    :cond_2
    invoke-static {v6}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    new-instance p1, Lcom/bytedance/adsdk/sP/Sj/Sj/EjP;

    iget-object v2, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/uvD;->TKC:Lcom/bytedance/adsdk/sP/uA;

    iget-object v3, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/uvD;->EjP:Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;

    iget-boolean v5, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/uvD;->vS:Z

    const/4 v7, 0x0

    const-string v4, "Repeater"

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lcom/bytedance/adsdk/sP/Sj/Sj/EjP;-><init>(Lcom/bytedance/adsdk/sP/uA;Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;Ljava/lang/String;ZLjava/util/List;Lcom/bytedance/adsdk/sP/TKC/Sj/aa;)V

    iput-object p1, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/uvD;->TEQ:Lcom/bytedance/adsdk/sP/Sj/Sj/EjP;

    return-void
.end method
