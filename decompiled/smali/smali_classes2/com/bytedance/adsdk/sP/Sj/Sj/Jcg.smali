.class public Lcom/bytedance/adsdk/sP/Sj/Sj/Jcg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/adsdk/sP/Sj/Sj/HiB;
.implements Lcom/bytedance/adsdk/sP/Sj/Sj/Ym;
.implements Lcom/bytedance/adsdk/sP/Sj/sP/Sj$Sj;


# instance fields
.field private final Dq:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/adsdk/sP/Sj/sP/Sj<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final EjP:Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;

.field private Fmk:Lcom/bytedance/adsdk/sP/Sj/sP/TKC;

.field private final HiB:Ljava/lang/String;

.field private final Jcg:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/sP/Sj/Sj/Fmk;",
            ">;"
        }
    .end annotation
.end field

.field Sj:F

.field private TEQ:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/adsdk/sP/Sj/sP/Sj<",
            "Landroid/graphics/ColorFilter;",
            "Landroid/graphics/ColorFilter;",
            ">;"
        }
    .end annotation
.end field

.field private final TKC:Landroid/graphics/Paint;

.field private final Ym:Lcom/bytedance/adsdk/sP/uA;

.field private aa:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/adsdk/sP/Sj/sP/Sj<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final sP:Landroid/graphics/Path;

.field private final uA:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/adsdk/sP/Sj/sP/Sj<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final vS:Z


# direct methods
.method public constructor <init>(Lcom/bytedance/adsdk/sP/uA;Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;Lcom/bytedance/adsdk/sP/TKC/sP/Zq;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/Jcg;->sP:Landroid/graphics/Path;

    new-instance v1, Lcom/bytedance/adsdk/sP/Sj/Sj;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/bytedance/adsdk/sP/Sj/Sj;-><init>(I)V

    iput-object v1, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/Jcg;->TKC:Landroid/graphics/Paint;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/Jcg;->Jcg:Ljava/util/List;

    iput-object p2, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/Jcg;->EjP:Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;

    invoke-virtual {p3}, Lcom/bytedance/adsdk/sP/TKC/sP/Zq;->Sj()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/Jcg;->HiB:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/bytedance/adsdk/sP/TKC/sP/Zq;->HiB()Z

    move-result v1

    iput-boolean v1, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/Jcg;->vS:Z

    iput-object p1, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/Jcg;->Ym:Lcom/bytedance/adsdk/sP/uA;

    invoke-virtual {p2}, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->TEQ()Lcom/bytedance/adsdk/sP/TKC/sP/Sj;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->TEQ()Lcom/bytedance/adsdk/sP/TKC/sP/Sj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/adsdk/sP/TKC/sP/Sj;->Sj()Lcom/bytedance/adsdk/sP/TKC/Sj/sP;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/adsdk/sP/TKC/Sj/sP;->Sj()Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/Jcg;->aa:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    invoke-virtual {p1, p0}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->Sj(Lcom/bytedance/adsdk/sP/Sj/sP/Sj$Sj;)V

    iget-object p1, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/Jcg;->aa:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    invoke-virtual {p2, p1}, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Sj(Lcom/bytedance/adsdk/sP/Sj/sP/Sj;)V

    :cond_0
    invoke-virtual {p2}, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Ym()Lcom/bytedance/adsdk/sP/HiB/TEQ;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance p1, Lcom/bytedance/adsdk/sP/Sj/sP/TKC;

    invoke-virtual {p2}, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Ym()Lcom/bytedance/adsdk/sP/HiB/TEQ;

    move-result-object v1

    invoke-direct {p1, p0, p2, v1}, Lcom/bytedance/adsdk/sP/Sj/sP/TKC;-><init>(Lcom/bytedance/adsdk/sP/Sj/sP/Sj$Sj;Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;Lcom/bytedance/adsdk/sP/HiB/TEQ;)V

    iput-object p1, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/Jcg;->Fmk:Lcom/bytedance/adsdk/sP/Sj/sP/TKC;

    :cond_1
    invoke-virtual {p3}, Lcom/bytedance/adsdk/sP/TKC/sP/Zq;->sP()Lcom/bytedance/adsdk/sP/TKC/Sj/Sj;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p3}, Lcom/bytedance/adsdk/sP/TKC/sP/Zq;->TKC()Lcom/bytedance/adsdk/sP/TKC/Sj/EjP;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p3}, Lcom/bytedance/adsdk/sP/TKC/sP/Zq;->EjP()Landroid/graphics/Path$FillType;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    invoke-virtual {p3}, Lcom/bytedance/adsdk/sP/TKC/sP/Zq;->sP()Lcom/bytedance/adsdk/sP/TKC/Sj/Sj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/adsdk/sP/TKC/Sj/Sj;->Sj()Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/Jcg;->Dq:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    invoke-virtual {p1, p0}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->Sj(Lcom/bytedance/adsdk/sP/Sj/sP/Sj$Sj;)V

    invoke-virtual {p2, p1}, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Sj(Lcom/bytedance/adsdk/sP/Sj/sP/Sj;)V

    invoke-virtual {p3}, Lcom/bytedance/adsdk/sP/TKC/sP/Zq;->TKC()Lcom/bytedance/adsdk/sP/TKC/Sj/EjP;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/adsdk/sP/TKC/Sj/EjP;->Sj()Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/Jcg;->uA:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    invoke-virtual {p1, p0}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->Sj(Lcom/bytedance/adsdk/sP/Sj/sP/Sj$Sj;)V

    invoke-virtual {p2, p1}, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Sj(Lcom/bytedance/adsdk/sP/Sj/sP/Sj;)V

    return-void

    :cond_3
    :goto_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/Jcg;->Dq:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    iput-object p1, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/Jcg;->uA:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    return-void
.end method


# virtual methods
.method public Sj()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/Jcg;->Ym:Lcom/bytedance/adsdk/sP/uA;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/uA;->invalidateSelf()V

    return-void
.end method

.method public Sj(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 5

    iget-boolean v0, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/Jcg;->vS:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "FillContent#draw"

    invoke-static {v0}, Lcom/bytedance/adsdk/sP/HiB;->Sj(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/Jcg;->Dq:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    check-cast v1, Lcom/bytedance/adsdk/sP/Sj/sP/sP;

    invoke-virtual {v1}, Lcom/bytedance/adsdk/sP/Sj/sP/sP;->uA()I

    move-result v1

    int-to-float p3, p3

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr p3, v2

    iget-object v3, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/Jcg;->uA:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    invoke-virtual {v3}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->Jcg()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr p3, v3

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr p3, v3

    mul-float/2addr p3, v2

    float-to-int p3, p3

    iget-object v2, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/Jcg;->TKC:Landroid/graphics/Paint;

    const/16 v3, 0xff

    const/4 v4, 0x0

    invoke-static {p3, v4, v3}, Lcom/bytedance/adsdk/sP/vS/HiB;->Sj(III)I

    move-result p3

    shl-int/lit8 p3, p3, 0x18

    const v3, 0xffffff

    and-int/2addr v1, v3

    or-int/2addr p3, v1

    invoke-virtual {v2, p3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p3, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/Jcg;->TEQ:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    if-eqz p3, :cond_1

    iget-object v1, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/Jcg;->TKC:Landroid/graphics/Paint;

    invoke-virtual {p3}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->Jcg()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/ColorFilter;

    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_1
    iget-object p3, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/Jcg;->aa:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    if-eqz p3, :cond_4

    invoke-virtual {p3}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->Jcg()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    const/4 v1, 0x0

    cmpl-float v1, p3, v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/Jcg;->TKC:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/Jcg;->Sj:F

    cmpl-float v1, p3, v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/Jcg;->EjP:Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;

    invoke-virtual {v1, p3}, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->sP(F)Landroid/graphics/BlurMaskFilter;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/Jcg;->TKC:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    :cond_3
    :goto_0
    iput p3, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/Jcg;->Sj:F

    :cond_4
    iget-object p3, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/Jcg;->Fmk:Lcom/bytedance/adsdk/sP/Sj/sP/TKC;

    if-eqz p3, :cond_5

    iget-object v1, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/Jcg;->TKC:Landroid/graphics/Paint;

    invoke-virtual {p3, v1}, Lcom/bytedance/adsdk/sP/Sj/sP/TKC;->Sj(Landroid/graphics/Paint;)V

    :cond_5
    iget-object p3, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/Jcg;->sP:Landroid/graphics/Path;

    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    :goto_1
    iget-object p3, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/Jcg;->Jcg:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge v4, p3, :cond_6

    iget-object p3, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/Jcg;->sP:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/Jcg;->Jcg:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/adsdk/sP/Sj/Sj/Fmk;

    invoke-interface {v1}, Lcom/bytedance/adsdk/sP/Sj/Sj/Fmk;->EjP()Landroid/graphics/Path;

    move-result-object v1

    invoke-virtual {p3, v1, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    iget-object p2, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/Jcg;->sP:Landroid/graphics/Path;

    iget-object p3, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/Jcg;->TKC:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-static {v0}, Lcom/bytedance/adsdk/sP/HiB;->sP(Ljava/lang/String;)F

    return-void
.end method

.method public Sj(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 3

    iget-object p3, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/Jcg;->sP:Landroid/graphics/Path;

    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    const/4 p3, 0x0

    move v0, p3

    :goto_0
    iget-object v1, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/Jcg;->Jcg:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/Jcg;->sP:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/Jcg;->Jcg:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/adsdk/sP/Sj/Sj/Fmk;

    invoke-interface {v2}, Lcom/bytedance/adsdk/sP/Sj/Sj/Fmk;->EjP()Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/Jcg;->sP:Landroid/graphics/Path;

    invoke-virtual {p2, p1, p3}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    iget p2, p1, Landroid/graphics/RectF;->left:F

    const/high16 p3, 0x3f800000    # 1.0f

    sub-float/2addr p2, p3

    iget v0, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, p3

    iget v1, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, p3

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v2, p3

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public Sj(Ljava/util/List;Ljava/util/List;)V
    .locals 2
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

    const/4 p1, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/adsdk/sP/Sj/Sj/TKC;

    instance-of v1, v0, Lcom/bytedance/adsdk/sP/Sj/Sj/Fmk;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/Jcg;->Jcg:Ljava/util/List;

    check-cast v0, Lcom/bytedance/adsdk/sP/Sj/Sj/Fmk;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
