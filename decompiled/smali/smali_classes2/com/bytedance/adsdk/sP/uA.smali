.class public Lcom/bytedance/adsdk/sP/uA;
.super Landroid/graphics/drawable/Drawable;

# interfaces
.implements Landroid/graphics/drawable/Animatable;
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/adsdk/sP/uA$sP;,
        Lcom/bytedance/adsdk/sP/uA$Sj;
    }
.end annotation


# instance fields
.field private Dq:Z

.field private Ei:Z

.field private EjP:Lcom/bytedance/adsdk/sP/Jcg;

.field private FPG:Landroid/graphics/RectF;

.field private Fm:Landroid/graphics/Matrix;

.field private Fmk:Ljava/lang/String;

.field private final HiB:Lcom/bytedance/adsdk/sP/vS/TKC;

.field private JcM:Landroid/graphics/Paint;

.field private Jcg:Z

.field private LD:Landroid/graphics/Rect;

.field private LqL:Landroid/graphics/Bitmap;

.field private Mts:Landroid/graphics/Rect;

.field private RiZ:Z

.field Sj:Ljava/lang/String;

.field private final TEQ:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/bytedance/adsdk/sP/uA$Sj;",
            ">;"
        }
    .end annotation
.end field

.field TKC:Lcom/bytedance/adsdk/sP/sU;

.field private TzV:Z

.field private WMZ:Landroid/graphics/Rect;

.field private Wjd:Landroid/graphics/RectF;

.field private Yf:Landroid/graphics/Canvas;

.field private final Ym:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private Zq:Lcom/bytedance/adsdk/sP/sP/Sj;

.field private aa:Lcom/bytedance/adsdk/sP/sP/sP;

.field private dNu:Z

.field private dx:I

.field private fF:Landroid/graphics/RectF;

.field private ib:Z

.field private jb:Landroid/view/View;

.field private kF:Z

.field private final ley:Landroid/graphics/Matrix;

.field sP:Lcom/bytedance/adsdk/sP/TKC;

.field private sU:Lcom/bytedance/adsdk/sP/TKC/TKC/sP;

.field private sef:Lcom/bytedance/adsdk/sP/EjP;

.field private uA:Lcom/bytedance/adsdk/sP/uA$sP;

.field private uP:Lcom/bytedance/adsdk/sP/RiZ;

.field private uvD:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field private vS:Z

.field private wE:Z

.field private xD:Landroid/graphics/Matrix;

.field private zR:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Lcom/bytedance/adsdk/sP/vS/TKC;

    invoke-direct {v0}, Lcom/bytedance/adsdk/sP/vS/TKC;-><init>()V

    iput-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->HiB:Lcom/bytedance/adsdk/sP/vS/TKC;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/bytedance/adsdk/sP/uA;->vS:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/bytedance/adsdk/sP/uA;->Jcg:Z

    iput-boolean v2, p0, Lcom/bytedance/adsdk/sP/uA;->Dq:Z

    sget-object v3, Lcom/bytedance/adsdk/sP/uA$sP;->Sj:Lcom/bytedance/adsdk/sP/uA$sP;

    iput-object v3, p0, Lcom/bytedance/adsdk/sP/uA;->uA:Lcom/bytedance/adsdk/sP/uA$sP;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/bytedance/adsdk/sP/uA;->TEQ:Ljava/util/ArrayList;

    new-instance v3, Lcom/bytedance/adsdk/sP/uA$1;

    invoke-direct {v3, p0}, Lcom/bytedance/adsdk/sP/uA$1;-><init>(Lcom/bytedance/adsdk/sP/uA;)V

    iput-object v3, p0, Lcom/bytedance/adsdk/sP/uA;->Ym:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    iput-boolean v2, p0, Lcom/bytedance/adsdk/sP/uA;->TzV:Z

    iput-boolean v1, p0, Lcom/bytedance/adsdk/sP/uA;->RiZ:Z

    const/16 v1, 0xff

    iput v1, p0, Lcom/bytedance/adsdk/sP/uA;->dx:I

    sget-object v1, Lcom/bytedance/adsdk/sP/RiZ;->Sj:Lcom/bytedance/adsdk/sP/RiZ;

    iput-object v1, p0, Lcom/bytedance/adsdk/sP/uA;->uP:Lcom/bytedance/adsdk/sP/RiZ;

    iput-boolean v2, p0, Lcom/bytedance/adsdk/sP/uA;->wE:Z

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/bytedance/adsdk/sP/uA;->ley:Landroid/graphics/Matrix;

    iput-boolean v2, p0, Lcom/bytedance/adsdk/sP/uA;->Ei:Z

    invoke-virtual {v0, v3}, Lcom/bytedance/adsdk/sP/vS/Sj;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method private FPG()Landroid/content/Context;
    .locals 3

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_1

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1
.end method

.method private JcM()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/adsdk/sP/uA;->vS:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/bytedance/adsdk/sP/uA;->Jcg:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private Mts()Lcom/bytedance/adsdk/sP/sP/Sj;
    .locals 3

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->Zq:Lcom/bytedance/adsdk/sP/sP/Sj;

    if-nez v0, :cond_1

    new-instance v0, Lcom/bytedance/adsdk/sP/sP/Sj;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/adsdk/sP/uA;->sP:Lcom/bytedance/adsdk/sP/TKC;

    invoke-direct {v0, v1, v2}, Lcom/bytedance/adsdk/sP/sP/Sj;-><init>(Landroid/graphics/drawable/Drawable$Callback;Lcom/bytedance/adsdk/sP/TKC;)V

    iput-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->Zq:Lcom/bytedance/adsdk/sP/sP/Sj;

    iget-object v1, p0, Lcom/bytedance/adsdk/sP/uA;->Sj:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/sP/sP/Sj;->Sj(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->Zq:Lcom/bytedance/adsdk/sP/sP/Sj;

    return-object v0
.end method

.method static synthetic Sj(Lcom/bytedance/adsdk/sP/uA;)Lcom/bytedance/adsdk/sP/TKC/TKC/sP;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/adsdk/sP/uA;->sU:Lcom/bytedance/adsdk/sP/TKC/TKC/sP;

    return-object p0
.end method

.method private Sj(Landroid/content/Context;)V
    .locals 7

    iget-object v4, p0, Lcom/bytedance/adsdk/sP/uA;->EjP:Lcom/bytedance/adsdk/sP/Jcg;

    if-nez v4, :cond_0

    return-void

    :cond_0
    new-instance v6, Lcom/bytedance/adsdk/sP/TKC/TKC/sP;

    invoke-static {v4}, Lcom/bytedance/adsdk/sP/HiB/zR;->Sj(Lcom/bytedance/adsdk/sP/Jcg;)Lcom/bytedance/adsdk/sP/TKC/TKC/HiB;

    move-result-object v2

    invoke-virtual {v4}, Lcom/bytedance/adsdk/sP/Jcg;->Fmk()Ljava/util/List;

    move-result-object v3

    move-object v0, v6

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/adsdk/sP/TKC/TKC/sP;-><init>(Lcom/bytedance/adsdk/sP/uA;Lcom/bytedance/adsdk/sP/TKC/TKC/HiB;Ljava/util/List;Lcom/bytedance/adsdk/sP/Jcg;Landroid/content/Context;)V

    iput-object v6, p0, Lcom/bytedance/adsdk/sP/uA;->sU:Lcom/bytedance/adsdk/sP/TKC/TKC/sP;

    iget-boolean p1, p0, Lcom/bytedance/adsdk/sP/uA;->ib:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    invoke-virtual {v6, p1}, Lcom/bytedance/adsdk/sP/TKC/TKC/sP;->Sj(Z)V

    :cond_1
    iget-object p1, p0, Lcom/bytedance/adsdk/sP/uA;->sU:Lcom/bytedance/adsdk/sP/TKC/TKC/sP;

    iget-boolean v0, p0, Lcom/bytedance/adsdk/sP/uA;->RiZ:Z

    invoke-virtual {p1, v0}, Lcom/bytedance/adsdk/sP/TKC/TKC/sP;->sP(Z)V

    return-void
.end method

.method private Sj(Landroid/graphics/Canvas;)V
    .locals 5

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->sU:Lcom/bytedance/adsdk/sP/TKC/TKC/sP;

    iget-object v1, p0, Lcom/bytedance/adsdk/sP/uA;->EjP:Lcom/bytedance/adsdk/sP/Jcg;

    if-eqz v0, :cond_2

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/bytedance/adsdk/sP/uA;->ley:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1}, Lcom/bytedance/adsdk/sP/Jcg;->EjP()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1}, Lcom/bytedance/adsdk/sP/Jcg;->EjP()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v4, v1

    iget-object v1, p0, Lcom/bytedance/adsdk/sP/uA;->ley:Landroid/graphics/Matrix;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Matrix;->preScale(FF)Z

    iget-object v1, p0, Lcom/bytedance/adsdk/sP/uA;->ley:Landroid/graphics/Matrix;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    :cond_1
    iget-object v1, p0, Lcom/bytedance/adsdk/sP/uA;->ley:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/bytedance/adsdk/sP/uA;->dx:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Sj(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private Sj(Landroid/graphics/Canvas;Lcom/bytedance/adsdk/sP/TKC/TKC/sP;)V
    .locals 8

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->EjP:Lcom/bytedance/adsdk/sP/Jcg;

    if-eqz v0, :cond_5

    if-nez p2, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/bytedance/adsdk/sP/uA;->Wjd()V

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->xD:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->LD:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->LD:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/bytedance/adsdk/sP/uA;->fF:Landroid/graphics/RectF;

    invoke-direct {p0, v0, v1}, Lcom/bytedance/adsdk/sP/uA;->Sj(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->xD:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/bytedance/adsdk/sP/uA;->fF:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->fF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/bytedance/adsdk/sP/uA;->LD:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1}, Lcom/bytedance/adsdk/sP/uA;->Sj(Landroid/graphics/RectF;Landroid/graphics/Rect;)V

    iget-boolean v0, p0, Lcom/bytedance/adsdk/sP/uA;->RiZ:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->Wjd:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/bytedance/adsdk/sP/uA;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/bytedance/adsdk/sP/uA;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v4, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->Wjd:Landroid/graphics/RectF;

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2, v1}, Lcom/bytedance/adsdk/sP/TKC/TKC/sP;->Sj(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    :goto_0
    iget-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->xD:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/bytedance/adsdk/sP/uA;->Wjd:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/bytedance/adsdk/sP/uA;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/bytedance/adsdk/sP/uA;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    iget-object v3, p0, Lcom/bytedance/adsdk/sP/uA;->Wjd:Landroid/graphics/RectF;

    invoke-direct {p0, v3, v2, v0}, Lcom/bytedance/adsdk/sP/uA;->Sj(Landroid/graphics/RectF;FF)V

    invoke-direct {p0}, Lcom/bytedance/adsdk/sP/uA;->xD()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/bytedance/adsdk/sP/uA;->Wjd:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/bytedance/adsdk/sP/uA;->LD:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    iget v6, v4, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    iget v7, v4, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    invoke-virtual {v3, v5, v6, v7, v4}, Landroid/graphics/RectF;->intersect(FFFF)Z

    :cond_2
    iget-object v3, p0, Lcom/bytedance/adsdk/sP/uA;->Wjd:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    iget-object v4, p0, Lcom/bytedance/adsdk/sP/uA;->Wjd:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    if-eqz v3, :cond_5

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    invoke-direct {p0, v3, v4}, Lcom/bytedance/adsdk/sP/uA;->sP(II)V

    iget-boolean v5, p0, Lcom/bytedance/adsdk/sP/uA;->Ei:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/bytedance/adsdk/sP/uA;->ley:Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/bytedance/adsdk/sP/uA;->xD:Landroid/graphics/Matrix;

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v5, p0, Lcom/bytedance/adsdk/sP/uA;->ley:Landroid/graphics/Matrix;

    invoke-virtual {v5, v2, v0}, Landroid/graphics/Matrix;->preScale(FF)Z

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->ley:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/bytedance/adsdk/sP/uA;->Wjd:Landroid/graphics/RectF;

    iget v5, v2, Landroid/graphics/RectF;->left:F

    neg-float v5, v5

    iget v2, v2, Landroid/graphics/RectF;->top:F

    neg-float v2, v2

    invoke-virtual {v0, v5, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->LqL:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->Yf:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/bytedance/adsdk/sP/uA;->ley:Landroid/graphics/Matrix;

    iget v5, p0, Lcom/bytedance/adsdk/sP/uA;->dx:I

    invoke-virtual {p2, v0, v2, v5}, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Sj(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    iget-object p2, p0, Lcom/bytedance/adsdk/sP/uA;->xD:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->Fm:Landroid/graphics/Matrix;

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    iget-object p2, p0, Lcom/bytedance/adsdk/sP/uA;->Fm:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->FPG:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/bytedance/adsdk/sP/uA;->Wjd:Landroid/graphics/RectF;

    invoke-virtual {p2, v0, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    iget-object p2, p0, Lcom/bytedance/adsdk/sP/uA;->FPG:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->Mts:Landroid/graphics/Rect;

    invoke-direct {p0, p2, v0}, Lcom/bytedance/adsdk/sP/uA;->Sj(Landroid/graphics/RectF;Landroid/graphics/Rect;)V

    :cond_4
    iget-object p2, p0, Lcom/bytedance/adsdk/sP/uA;->WMZ:Landroid/graphics/Rect;

    invoke-virtual {p2, v1, v1, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p2, p0, Lcom/bytedance/adsdk/sP/uA;->LqL:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->WMZ:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/bytedance/adsdk/sP/uA;->Mts:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/bytedance/adsdk/sP/uA;->JcM:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_5
    :goto_1
    return-void
.end method

.method private Sj(Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .locals 3

    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, p1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    invoke-virtual {p2, v0, v1, v2, p1}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method private Sj(Landroid/graphics/RectF;FF)V
    .locals 3

    iget v0, p1, Landroid/graphics/RectF;->left:F

    mul-float/2addr v0, p2

    iget v1, p1, Landroid/graphics/RectF;->top:F

    mul-float/2addr v1, p3

    iget v2, p1, Landroid/graphics/RectF;->right:F

    mul-float/2addr v2, p2

    iget p2, p1, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr p2, p3

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method private Sj(Landroid/graphics/RectF;Landroid/graphics/Rect;)V
    .locals 5

    iget v0, p1, Landroid/graphics/RectF;->left:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iget v1, p1, Landroid/graphics/RectF;->top:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    iget v2, p1, Landroid/graphics/RectF;->right:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    float-to-double v3, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int p1, v3

    invoke-virtual {p2, v0, v1, v2, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private WMZ()Lcom/bytedance/adsdk/sP/sP/sP;
    .locals 5

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->aa:Lcom/bytedance/adsdk/sP/sP/sP;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/bytedance/adsdk/sP/uA;->FPG()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/sP/sP/sP;->Sj(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->aa:Lcom/bytedance/adsdk/sP/sP/sP;

    :cond_0
    iget-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->aa:Lcom/bytedance/adsdk/sP/sP/sP;

    if-nez v0, :cond_1

    new-instance v0, Lcom/bytedance/adsdk/sP/sP/sP;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/adsdk/sP/uA;->Fmk:Ljava/lang/String;

    iget-object v3, p0, Lcom/bytedance/adsdk/sP/uA;->sef:Lcom/bytedance/adsdk/sP/EjP;

    iget-object v4, p0, Lcom/bytedance/adsdk/sP/uA;->EjP:Lcom/bytedance/adsdk/sP/Jcg;

    invoke-virtual {v4}, Lcom/bytedance/adsdk/sP/Jcg;->uvD()Ljava/util/Map;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/bytedance/adsdk/sP/sP/sP;-><init>(Landroid/graphics/drawable/Drawable$Callback;Ljava/lang/String;Lcom/bytedance/adsdk/sP/EjP;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->aa:Lcom/bytedance/adsdk/sP/sP/sP;

    :cond_1
    iget-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->aa:Lcom/bytedance/adsdk/sP/sP/sP;

    return-object v0
.end method

.method private Wjd()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->Yf:Landroid/graphics/Canvas;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->Yf:Landroid/graphics/Canvas;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->Wjd:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->xD:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->Fm:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->LD:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->fF:Landroid/graphics/RectF;

    new-instance v0, Lcom/bytedance/adsdk/sP/Sj/Sj;

    invoke-direct {v0}, Lcom/bytedance/adsdk/sP/Sj/Sj;-><init>()V

    iput-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->JcM:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->WMZ:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->Mts:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->FPG:Landroid/graphics/RectF;

    return-void
.end method

.method private fF()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->EjP:Lcom/bytedance/adsdk/sP/Jcg;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/bytedance/adsdk/sP/uA;->uP:Lcom/bytedance/adsdk/sP/RiZ;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/Jcg;->Sj()Z

    move-result v3

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/Jcg;->sP()I

    move-result v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/bytedance/adsdk/sP/RiZ;->Sj(IZI)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/adsdk/sP/uA;->wE:Z

    return-void
.end method

.method static synthetic sP(Lcom/bytedance/adsdk/sP/uA;)Lcom/bytedance/adsdk/sP/vS/TKC;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/adsdk/sP/uA;->HiB:Lcom/bytedance/adsdk/sP/vS/TKC;

    return-object p0
.end method

.method private sP(II)V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->LqL:Landroid/graphics/Bitmap;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-lt v0, p1, :cond_3

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->LqL:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ge v0, p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->LqL:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-gt v0, p1, :cond_1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->LqL:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-le v0, p2, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->LqL:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-static {v0, v2, v2, p1, p2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/adsdk/sP/uA;->LqL:Landroid/graphics/Bitmap;

    iget-object p2, p0, Lcom/bytedance/adsdk/sP/uA;->Yf:Landroid/graphics/Canvas;

    invoke-virtual {p2, p1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iput-boolean v1, p0, Lcom/bytedance/adsdk/sP/uA;->Ei:Z

    :cond_2
    return-void

    :cond_3
    :goto_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/adsdk/sP/uA;->LqL:Landroid/graphics/Bitmap;

    iget-object p2, p0, Lcom/bytedance/adsdk/sP/uA;->Yf:Landroid/graphics/Canvas;

    invoke-virtual {p2, p1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iput-boolean v1, p0, Lcom/bytedance/adsdk/sP/uA;->Ei:Z

    return-void
.end method

.method private xD()Z
    .locals 3

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    instance-of v1, v0, Landroid/view/View;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getClipChildren()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v2
.end method


# virtual methods
.method public Dq()Lcom/bytedance/adsdk/sP/TzV;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->EjP:Lcom/bytedance/adsdk/sP/Jcg;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/Jcg;->TKC()Lcom/bytedance/adsdk/sP/TzV;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public Dq(Z)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->HiB:Lcom/bytedance/adsdk/sP/vS/TKC;

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/sP/vS/TKC;->TKC(Z)V

    return-void
.end method

.method public EjP()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->Fmk:Ljava/lang/String;

    return-object v0
.end method

.method public EjP(F)V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->EjP:Lcom/bytedance/adsdk/sP/Jcg;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->TEQ:Ljava/util/ArrayList;

    new-instance v1, Lcom/bytedance/adsdk/sP/uA$5;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/adsdk/sP/uA$5;-><init>(Lcom/bytedance/adsdk/sP/uA;F)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    const-string v0, "Drawable#setProgress"

    invoke-static {v0}, Lcom/bytedance/adsdk/sP/HiB;->Sj(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/adsdk/sP/uA;->HiB:Lcom/bytedance/adsdk/sP/vS/TKC;

    iget-object v2, p0, Lcom/bytedance/adsdk/sP/uA;->EjP:Lcom/bytedance/adsdk/sP/Jcg;

    invoke-virtual {v2, p1}, Lcom/bytedance/adsdk/sP/Jcg;->Sj(F)F

    move-result p1

    invoke-virtual {v1, p1}, Lcom/bytedance/adsdk/sP/vS/TKC;->Sj(F)V

    invoke-static {v0}, Lcom/bytedance/adsdk/sP/HiB;->sP(Ljava/lang/String;)F

    return-void
.end method

.method public EjP(I)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->HiB:Lcom/bytedance/adsdk/sP/vS/TKC;

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/sP/vS/TKC;->setRepeatMode(I)V

    return-void
.end method

.method public EjP(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->EjP:Lcom/bytedance/adsdk/sP/Jcg;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->TEQ:Ljava/util/ArrayList;

    new-instance v1, Lcom/bytedance/adsdk/sP/uA$2;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/adsdk/sP/uA$2;-><init>(Lcom/bytedance/adsdk/sP/uA;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/sP/Jcg;->TKC(Ljava/lang/String;)Lcom/bytedance/adsdk/sP/TKC/vS;

    move-result-object v0

    if-eqz v0, :cond_1

    iget p1, v0, Lcom/bytedance/adsdk/sP/TKC/vS;->Sj:F

    float-to-int p1, p1

    iget v0, v0, Lcom/bytedance/adsdk/sP/TKC/vS;->sP:F

    float-to-int v0, v0

    add-int/2addr v0, p1

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/adsdk/sP/uA;->Sj(II)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot find marker with name "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public EjP(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/adsdk/sP/uA;->ib:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/bytedance/adsdk/sP/uA;->ib:Z

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->sU:Lcom/bytedance/adsdk/sP/TKC/TKC/sP;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/sP/TKC/TKC/sP;->Sj(Z)V

    :cond_1
    return-void
.end method

.method public Fmk()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->sU:Lcom/bytedance/adsdk/sP/TKC/TKC/sP;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->TEQ:Ljava/util/ArrayList;

    new-instance v1, Lcom/bytedance/adsdk/sP/uA$7;

    invoke-direct {v1, p0}, Lcom/bytedance/adsdk/sP/uA$7;-><init>(Lcom/bytedance/adsdk/sP/uA;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/bytedance/adsdk/sP/uA;->fF()V

    invoke-direct {p0}, Lcom/bytedance/adsdk/sP/uA;->JcM()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/adsdk/sP/uA;->dx()I

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->HiB:Lcom/bytedance/adsdk/sP/vS/TKC;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/vS/TKC;->sef()V

    sget-object v0, Lcom/bytedance/adsdk/sP/uA$sP;->Sj:Lcom/bytedance/adsdk/sP/uA$sP;

    iput-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->uA:Lcom/bytedance/adsdk/sP/uA$sP;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/bytedance/adsdk/sP/uA$sP;->TKC:Lcom/bytedance/adsdk/sP/uA$sP;

    iput-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->uA:Lcom/bytedance/adsdk/sP/uA$sP;

    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/bytedance/adsdk/sP/uA;->JcM()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/bytedance/adsdk/sP/uA;->uvD()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    invoke-virtual {p0}, Lcom/bytedance/adsdk/sP/uA;->sef()F

    move-result v0

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/bytedance/adsdk/sP/uA;->Zq()F

    move-result v0

    :goto_1
    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/bytedance/adsdk/sP/uA;->TKC(I)V

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->HiB:Lcom/bytedance/adsdk/sP/vS/TKC;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/vS/TKC;->aa()V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/bytedance/adsdk/sP/uA$sP;->Sj:Lcom/bytedance/adsdk/sP/uA$sP;

    iput-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->uA:Lcom/bytedance/adsdk/sP/uA$sP;

    :cond_5
    return-void
.end method

.method public HiB(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-direct {p0}, Lcom/bytedance/adsdk/sP/uA;->WMZ()Lcom/bytedance/adsdk/sP/sP/sP;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/sP/sP/sP;->Sj(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public HiB(I)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->HiB:Lcom/bytedance/adsdk/sP/vS/TKC;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    return-void
.end method

.method public HiB(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/adsdk/sP/uA;->kF:Z

    return-void
.end method

.method public HiB()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/adsdk/sP/uA;->TzV:Z

    return v0
.end method

.method public Jcg(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/bytedance/adsdk/sP/uA;->Sj:Ljava/lang/String;

    invoke-direct {p0}, Lcom/bytedance/adsdk/sP/uA;->Mts()Lcom/bytedance/adsdk/sP/sP/Sj;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/sP/sP/Sj;->Sj(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public Jcg(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/adsdk/sP/uA;->Jcg:Z

    return-void
.end method

.method public Jcg()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/adsdk/sP/uA;->wE:Z

    return v0
.end method

.method public LD()Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->Wjd:Landroid/graphics/RectF;

    return-object v0
.end method

.method public LqL()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->TEQ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->HiB:Lcom/bytedance/adsdk/sP/vS/TKC;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/vS/TKC;->Fmk()V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/bytedance/adsdk/sP/uA$sP;->Sj:Lcom/bytedance/adsdk/sP/uA$sP;

    iput-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->uA:Lcom/bytedance/adsdk/sP/uA$sP;

    :cond_0
    return-void
.end method

.method public RiZ()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->HiB:Lcom/bytedance/adsdk/sP/vS/TKC;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/vS/TKC;->Jcg()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public Sj(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-direct {p0}, Lcom/bytedance/adsdk/sP/uA;->WMZ()Lcom/bytedance/adsdk/sP/sP/sP;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/bytedance/adsdk/sP/sP/sP;->Sj(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0}, Lcom/bytedance/adsdk/sP/uA;->invalidateSelf()V

    return-object p1
.end method

.method public Sj(Lcom/bytedance/adsdk/sP/TKC/TKC;)Landroid/graphics/Typeface;
    .locals 3

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->uvD:Ljava/util/Map;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/bytedance/adsdk/sP/TKC/TKC;->Sj()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Typeface;

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/adsdk/sP/TKC/TKC;->sP()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Typeface;

    return-object p1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/bytedance/adsdk/sP/TKC/TKC;->Sj()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/bytedance/adsdk/sP/TKC/TKC;->TKC()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Typeface;

    return-object p1

    :cond_2
    invoke-direct {p0}, Lcom/bytedance/adsdk/sP/uA;->Mts()Lcom/bytedance/adsdk/sP/sP/Sj;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/sP/sP/Sj;->Sj(Lcom/bytedance/adsdk/sP/TKC/TKC;)Landroid/graphics/Typeface;

    move-result-object p1

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public Sj()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->jb:Landroid/view/View;

    return-object v0
.end method

.method public Sj(F)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->EjP:Lcom/bytedance/adsdk/sP/Jcg;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->TEQ:Ljava/util/ArrayList;

    new-instance v1, Lcom/bytedance/adsdk/sP/uA$9;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/adsdk/sP/uA$9;-><init>(Lcom/bytedance/adsdk/sP/uA;F)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/Jcg;->vS()F

    move-result v0

    iget-object v1, p0, Lcom/bytedance/adsdk/sP/uA;->EjP:Lcom/bytedance/adsdk/sP/Jcg;

    invoke-virtual {v1}, Lcom/bytedance/adsdk/sP/Jcg;->Jcg()F

    move-result v1

    invoke-static {v0, v1, p1}, Lcom/bytedance/adsdk/sP/vS/HiB;->Sj(FFF)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/bytedance/adsdk/sP/uA;->Sj(I)V

    return-void
.end method

.method public Sj(I)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->EjP:Lcom/bytedance/adsdk/sP/Jcg;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->TEQ:Ljava/util/ArrayList;

    new-instance v1, Lcom/bytedance/adsdk/sP/uA$8;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/adsdk/sP/uA$8;-><init>(Lcom/bytedance/adsdk/sP/uA;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->HiB:Lcom/bytedance/adsdk/sP/vS/TKC;

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/sP/vS/TKC;->Sj(I)V

    return-void
.end method

.method public Sj(II)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->EjP:Lcom/bytedance/adsdk/sP/Jcg;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->TEQ:Ljava/util/ArrayList;

    new-instance v1, Lcom/bytedance/adsdk/sP/uA$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/bytedance/adsdk/sP/uA$3;-><init>(Lcom/bytedance/adsdk/sP/uA;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->HiB:Lcom/bytedance/adsdk/sP/vS/TKC;

    int-to-float p1, p1

    int-to-float p2, p2

    const v1, 0x3f7d70a4    # 0.99f

    add-float/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/adsdk/sP/vS/TKC;->Sj(FF)V

    return-void
.end method

.method public Sj(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->HiB:Lcom/bytedance/adsdk/sP/vS/TKC;

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/sP/vS/Sj;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public Sj(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->HiB:Lcom/bytedance/adsdk/sP/vS/TKC;

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/sP/vS/Sj;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method public Sj(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/adsdk/sP/uA;->jb:Landroid/view/View;

    return-void
.end method

.method public Sj(Lcom/bytedance/adsdk/sP/EjP;)V
    .locals 1

    iput-object p1, p0, Lcom/bytedance/adsdk/sP/uA;->sef:Lcom/bytedance/adsdk/sP/EjP;

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->aa:Lcom/bytedance/adsdk/sP/sP/sP;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/sP/sP/sP;->Sj(Lcom/bytedance/adsdk/sP/EjP;)V

    :cond_0
    return-void
.end method

.method public Sj(Lcom/bytedance/adsdk/sP/RiZ;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/adsdk/sP/uA;->uP:Lcom/bytedance/adsdk/sP/RiZ;

    invoke-direct {p0}, Lcom/bytedance/adsdk/sP/uA;->fF()V

    return-void
.end method

.method public Sj(Lcom/bytedance/adsdk/sP/TKC;)V
    .locals 1

    iput-object p1, p0, Lcom/bytedance/adsdk/sP/uA;->sP:Lcom/bytedance/adsdk/sP/TKC;

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->Zq:Lcom/bytedance/adsdk/sP/sP/Sj;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/sP/sP/Sj;->Sj(Lcom/bytedance/adsdk/sP/TKC;)V

    :cond_0
    return-void
.end method

.method public Sj(Lcom/bytedance/adsdk/sP/sU;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/adsdk/sP/uA;->TKC:Lcom/bytedance/adsdk/sP/sU;

    return-void
.end method

.method public Sj(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/bytedance/adsdk/sP/uA;->vS:Z

    return-void
.end method

.method public Sj(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/adsdk/sP/uA;->Fmk:Ljava/lang/String;

    return-void
.end method

.method public Sj(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->uvD:Ljava/util/Map;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/bytedance/adsdk/sP/uA;->uvD:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/bytedance/adsdk/sP/uA;->invalidateSelf()V

    return-void
.end method

.method public Sj(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/adsdk/sP/uA;->RiZ:Z

    if-eq p1, v0, :cond_1

    iput-boolean p1, p0, Lcom/bytedance/adsdk/sP/uA;->RiZ:Z

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->sU:Lcom/bytedance/adsdk/sP/TKC/TKC/sP;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/sP/TKC/TKC/sP;->sP(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/adsdk/sP/uA;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public Sj(ZLandroid/content/Context;)V
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/adsdk/sP/uA;->dNu:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/bytedance/adsdk/sP/uA;->dNu:Z

    iget-object p1, p0, Lcom/bytedance/adsdk/sP/uA;->EjP:Lcom/bytedance/adsdk/sP/Jcg;

    if-eqz p1, :cond_1

    invoke-direct {p0, p2}, Lcom/bytedance/adsdk/sP/uA;->Sj(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method public Sj(Lcom/bytedance/adsdk/sP/Jcg;Landroid/content/Context;)Z
    .locals 2

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->EjP:Lcom/bytedance/adsdk/sP/Jcg;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/adsdk/sP/uA;->Ei:Z

    invoke-virtual {p0}, Lcom/bytedance/adsdk/sP/uA;->TEQ()V

    iput-object p1, p0, Lcom/bytedance/adsdk/sP/uA;->EjP:Lcom/bytedance/adsdk/sP/Jcg;

    invoke-direct {p0, p2}, Lcom/bytedance/adsdk/sP/uA;->Sj(Landroid/content/Context;)V

    iget-object p2, p0, Lcom/bytedance/adsdk/sP/uA;->HiB:Lcom/bytedance/adsdk/sP/vS/TKC;

    invoke-virtual {p2, p1}, Lcom/bytedance/adsdk/sP/vS/TKC;->Sj(Lcom/bytedance/adsdk/sP/Jcg;)V

    iget-object p2, p0, Lcom/bytedance/adsdk/sP/uA;->HiB:Lcom/bytedance/adsdk/sP/vS/TKC;

    invoke-virtual {p2}, Lcom/bytedance/adsdk/sP/vS/TKC;->getAnimatedFraction()F

    move-result p2

    invoke-virtual {p0, p2}, Lcom/bytedance/adsdk/sP/uA;->EjP(F)V

    new-instance p2, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/bytedance/adsdk/sP/uA;->TEQ:Ljava/util/ArrayList;

    invoke-direct {p2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/adsdk/sP/uA$Sj;

    if-eqz v1, :cond_1

    invoke-interface {v1, p1}, Lcom/bytedance/adsdk/sP/uA$Sj;->Sj(Lcom/bytedance/adsdk/sP/Jcg;)V

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/bytedance/adsdk/sP/uA;->TEQ:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    iget-boolean p2, p0, Lcom/bytedance/adsdk/sP/uA;->zR:Z

    invoke-virtual {p1, p2}, Lcom/bytedance/adsdk/sP/Jcg;->sP(Z)V

    invoke-direct {p0}, Lcom/bytedance/adsdk/sP/uA;->fF()V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    instance-of p2, p1, Landroid/widget/ImageView;

    if-eqz p2, :cond_3

    check-cast p1, Landroid/widget/ImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    return v0
.end method

.method public TEQ()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->HiB:Lcom/bytedance/adsdk/sP/vS/TKC;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/vS/TKC;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->HiB:Lcom/bytedance/adsdk/sP/vS/TKC;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/vS/TKC;->cancel()V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/bytedance/adsdk/sP/uA$sP;->Sj:Lcom/bytedance/adsdk/sP/uA$sP;

    iput-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->uA:Lcom/bytedance/adsdk/sP/uA$sP;

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->EjP:Lcom/bytedance/adsdk/sP/Jcg;

    iput-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->sU:Lcom/bytedance/adsdk/sP/TKC/TKC/sP;

    iput-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->aa:Lcom/bytedance/adsdk/sP/sP/sP;

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->HiB:Lcom/bytedance/adsdk/sP/vS/TKC;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/vS/TKC;->Dq()V

    invoke-virtual {p0}, Lcom/bytedance/adsdk/sP/uA;->invalidateSelf()V

    return-void
.end method

.method public TKC(F)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->HiB:Lcom/bytedance/adsdk/sP/vS/TKC;

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/sP/vS/TKC;->TKC(F)V

    return-void
.end method

.method public TKC(I)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->EjP:Lcom/bytedance/adsdk/sP/Jcg;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->TEQ:Ljava/util/ArrayList;

    new-instance v1, Lcom/bytedance/adsdk/sP/uA$4;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/adsdk/sP/uA$4;-><init>(Lcom/bytedance/adsdk/sP/uA;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->HiB:Lcom/bytedance/adsdk/sP/vS/TKC;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/sP/vS/TKC;->Sj(F)V

    return-void
.end method

.method public TKC(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->EjP:Lcom/bytedance/adsdk/sP/Jcg;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->TEQ:Ljava/util/ArrayList;

    new-instance v1, Lcom/bytedance/adsdk/sP/uA$13;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/adsdk/sP/uA$13;-><init>(Lcom/bytedance/adsdk/sP/uA;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/sP/Jcg;->TKC(Ljava/lang/String;)Lcom/bytedance/adsdk/sP/TKC/vS;

    move-result-object v0

    if-eqz v0, :cond_1

    iget p1, v0, Lcom/bytedance/adsdk/sP/TKC/vS;->Sj:F

    iget v0, v0, Lcom/bytedance/adsdk/sP/TKC/vS;->sP:F

    add-float/2addr p1, v0

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/bytedance/adsdk/sP/uA;->sP(I)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot find marker with name "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public TKC(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/bytedance/adsdk/sP/uA;->zR:Z

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->EjP:Lcom/bytedance/adsdk/sP/Jcg;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/sP/Jcg;->sP(Z)V

    :cond_0
    return-void
.end method

.method public TKC()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/adsdk/sP/uA;->RiZ:Z

    return v0
.end method

.method public TzV()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->HiB:Lcom/bytedance/adsdk/sP/vS/TKC;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/vS/Sj;->removeAllListeners()V

    return-void
.end method

.method public Yf()F
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->HiB:Lcom/bytedance/adsdk/sP/vS/TKC;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/vS/TKC;->vS()F

    move-result v0

    return v0
.end method

.method public Ym()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->sU:Lcom/bytedance/adsdk/sP/TKC/TKC/sP;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->TEQ:Ljava/util/ArrayList;

    new-instance v1, Lcom/bytedance/adsdk/sP/uA$6;

    invoke-direct {v1, p0}, Lcom/bytedance/adsdk/sP/uA$6;-><init>(Lcom/bytedance/adsdk/sP/uA;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/bytedance/adsdk/sP/uA;->fF()V

    invoke-direct {p0}, Lcom/bytedance/adsdk/sP/uA;->JcM()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/adsdk/sP/uA;->dx()I

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->HiB:Lcom/bytedance/adsdk/sP/vS/TKC;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/vS/TKC;->Ym()V

    sget-object v0, Lcom/bytedance/adsdk/sP/uA$sP;->Sj:Lcom/bytedance/adsdk/sP/uA$sP;

    iput-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->uA:Lcom/bytedance/adsdk/sP/uA$sP;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/bytedance/adsdk/sP/uA$sP;->sP:Lcom/bytedance/adsdk/sP/uA$sP;

    iput-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->uA:Lcom/bytedance/adsdk/sP/uA$sP;

    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/bytedance/adsdk/sP/uA;->JcM()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/bytedance/adsdk/sP/uA;->uvD()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    invoke-virtual {p0}, Lcom/bytedance/adsdk/sP/uA;->sef()F

    move-result v0

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/bytedance/adsdk/sP/uA;->Zq()F

    move-result v0

    :goto_1
    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/bytedance/adsdk/sP/uA;->TKC(I)V

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->HiB:Lcom/bytedance/adsdk/sP/vS/TKC;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/vS/TKC;->aa()V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/bytedance/adsdk/sP/uA$sP;->Sj:Lcom/bytedance/adsdk/sP/uA$sP;

    iput-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->uA:Lcom/bytedance/adsdk/sP/uA$sP;

    :cond_5
    return-void
.end method

.method public Zq()F
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->HiB:Lcom/bytedance/adsdk/sP/vS/TKC;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/vS/TKC;->uvD()F

    move-result v0

    return v0
.end method

.method public aa()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->TEQ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->HiB:Lcom/bytedance/adsdk/sP/vS/TKC;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/vS/TKC;->aa()V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/bytedance/adsdk/sP/uA$sP;->Sj:Lcom/bytedance/adsdk/sP/uA$sP;

    iput-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->uA:Lcom/bytedance/adsdk/sP/uA$sP;

    :cond_0
    return-void
.end method

.method public dNu()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->HiB:Lcom/bytedance/adsdk/sP/vS/TKC;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/vS/Sj;->removeAllUpdateListeners()V

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->HiB:Lcom/bytedance/adsdk/sP/vS/TKC;

    iget-object v1, p0, Lcom/bytedance/adsdk/sP/uA;->Ym:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/sP/vS/Sj;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    const-string v0, "Drawable#draw"

    invoke-static {v0}, Lcom/bytedance/adsdk/sP/HiB;->Sj(Ljava/lang/String;)V

    :try_start_0
    iget-boolean v1, p0, Lcom/bytedance/adsdk/sP/uA;->wE:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/bytedance/adsdk/sP/uA;->sU:Lcom/bytedance/adsdk/sP/TKC/TKC/sP;

    invoke-direct {p0, p1, v1}, Lcom/bytedance/adsdk/sP/uA;->Sj(Landroid/graphics/Canvas;Lcom/bytedance/adsdk/sP/TKC/TKC/sP;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/sP/uA;->Sj(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/bytedance/adsdk/sP/uA;->Ei:Z

    invoke-static {v0}, Lcom/bytedance/adsdk/sP/HiB;->sP(Ljava/lang/String;)F

    return-void
.end method

.method public dx()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->HiB:Lcom/bytedance/adsdk/sP/vS/TKC;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getRepeatCount()I

    move-result v0

    return v0
.end method

.method public getAlpha()I
    .locals 1

    iget v0, p0, Lcom/bytedance/adsdk/sP/uA;->dx:I

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->EjP:Lcom/bytedance/adsdk/sP/Jcg;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/Jcg;->EjP()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->EjP:Lcom/bytedance/adsdk/sP/Jcg;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/Jcg;->EjP()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method ib()Z
    .locals 2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->HiB:Lcom/bytedance/adsdk/sP/vS/TKC;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/vS/TKC;->isRunning()Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->uA:Lcom/bytedance/adsdk/sP/uA$sP;

    sget-object v1, Lcom/bytedance/adsdk/sP/uA$sP;->sP:Lcom/bytedance/adsdk/sP/uA$sP;

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/bytedance/adsdk/sP/uA$sP;->TKC:Lcom/bytedance/adsdk/sP/uA$sP;

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public invalidateSelf()V
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/adsdk/sP/uA;->Ei:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/adsdk/sP/uA;->Ei:Z

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public isRunning()Z
    .locals 1

    invoke-virtual {p0}, Lcom/bytedance/adsdk/sP/uA;->zR()Z

    move-result v0

    return v0
.end method

.method public kF()Lcom/bytedance/adsdk/sP/sU;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->TKC:Lcom/bytedance/adsdk/sP/sU;

    return-object v0
.end method

.method public ley()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->TEQ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->HiB:Lcom/bytedance/adsdk/sP/vS/TKC;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/vS/TKC;->cancel()V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/bytedance/adsdk/sP/uA$sP;->Sj:Lcom/bytedance/adsdk/sP/uA$sP;

    iput-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->uA:Lcom/bytedance/adsdk/sP/uA$sP;

    :cond_0
    return-void
.end method

.method public sP()Lcom/bytedance/adsdk/sP/TKC/TKC/sP;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->sU:Lcom/bytedance/adsdk/sP/TKC/TKC/sP;

    return-object v0
.end method

.method public sP(F)V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->EjP:Lcom/bytedance/adsdk/sP/Jcg;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->TEQ:Ljava/util/ArrayList;

    new-instance v1, Lcom/bytedance/adsdk/sP/uA$11;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/adsdk/sP/uA$11;-><init>(Lcom/bytedance/adsdk/sP/uA;F)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    iget-object v1, p0, Lcom/bytedance/adsdk/sP/uA;->HiB:Lcom/bytedance/adsdk/sP/vS/TKC;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/Jcg;->vS()F

    move-result v0

    iget-object v2, p0, Lcom/bytedance/adsdk/sP/uA;->EjP:Lcom/bytedance/adsdk/sP/Jcg;

    invoke-virtual {v2}, Lcom/bytedance/adsdk/sP/Jcg;->Jcg()F

    move-result v2

    invoke-static {v0, v2, p1}, Lcom/bytedance/adsdk/sP/vS/HiB;->Sj(FFF)F

    move-result p1

    invoke-virtual {v1, p1}, Lcom/bytedance/adsdk/sP/vS/TKC;->sP(F)V

    return-void
.end method

.method public sP(I)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->EjP:Lcom/bytedance/adsdk/sP/Jcg;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->TEQ:Ljava/util/ArrayList;

    new-instance v1, Lcom/bytedance/adsdk/sP/uA$10;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/adsdk/sP/uA$10;-><init>(Lcom/bytedance/adsdk/sP/uA;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->HiB:Lcom/bytedance/adsdk/sP/vS/TKC;

    int-to-float p1, p1

    const v1, 0x3f7d70a4    # 0.99f

    add-float/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/sP/vS/TKC;->sP(F)V

    return-void
.end method

.method public sP(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->HiB:Lcom/bytedance/adsdk/sP/vS/TKC;

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/sP/vS/Sj;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public sP(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->HiB:Lcom/bytedance/adsdk/sP/vS/TKC;

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/sP/vS/Sj;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method public sP(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->EjP:Lcom/bytedance/adsdk/sP/Jcg;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->TEQ:Ljava/util/ArrayList;

    new-instance v1, Lcom/bytedance/adsdk/sP/uA$12;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/adsdk/sP/uA$12;-><init>(Lcom/bytedance/adsdk/sP/uA;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/sP/Jcg;->TKC(Ljava/lang/String;)Lcom/bytedance/adsdk/sP/TKC/vS;

    move-result-object v0

    if-eqz v0, :cond_1

    iget p1, v0, Lcom/bytedance/adsdk/sP/TKC/vS;->Sj:F

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/bytedance/adsdk/sP/uA;->Sj(I)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot find marker with name "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sP(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/adsdk/sP/uA;->TzV:Z

    return-void
.end method

.method public sU()I
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->HiB:Lcom/bytedance/adsdk/sP/vS/TKC;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getRepeatMode()I

    move-result v0

    return v0
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public sef()F
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->HiB:Lcom/bytedance/adsdk/sP/vS/TKC;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/vS/TKC;->Zq()F

    move-result v0

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/adsdk/sP/uA;->dx:I

    invoke-virtual {p0}, Lcom/bytedance/adsdk/sP/uA;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p2

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/adsdk/sP/uA;->uA:Lcom/bytedance/adsdk/sP/uA$sP;

    sget-object v0, Lcom/bytedance/adsdk/sP/uA$sP;->sP:Lcom/bytedance/adsdk/sP/uA$sP;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/adsdk/sP/uA;->Ym()V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/bytedance/adsdk/sP/uA$sP;->TKC:Lcom/bytedance/adsdk/sP/uA$sP;

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Lcom/bytedance/adsdk/sP/uA;->Fmk()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/bytedance/adsdk/sP/uA;->HiB:Lcom/bytedance/adsdk/sP/vS/TKC;

    invoke-virtual {p1}, Lcom/bytedance/adsdk/sP/vS/TKC;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/bytedance/adsdk/sP/uA;->LqL()V

    sget-object p1, Lcom/bytedance/adsdk/sP/uA$sP;->TKC:Lcom/bytedance/adsdk/sP/uA$sP;

    iput-object p1, p0, Lcom/bytedance/adsdk/sP/uA;->uA:Lcom/bytedance/adsdk/sP/uA$sP;

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    sget-object p1, Lcom/bytedance/adsdk/sP/uA$sP;->Sj:Lcom/bytedance/adsdk/sP/uA$sP;

    iput-object p1, p0, Lcom/bytedance/adsdk/sP/uA;->uA:Lcom/bytedance/adsdk/sP/uA$sP;

    :cond_3
    :goto_0
    return p2
.end method

.method public start()V
    .locals 2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/adsdk/sP/uA;->Ym()V

    return-void
.end method

.method public stop()V
    .locals 0

    invoke-virtual {p0}, Lcom/bytedance/adsdk/sP/uA;->aa()V

    return-void
.end method

.method public uA()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/adsdk/sP/uA;->kF:Z

    return v0
.end method

.method public uP()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->uvD:Ljava/util/Map;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->TKC:Lcom/bytedance/adsdk/sP/sU;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->EjP:Lcom/bytedance/adsdk/sP/Jcg;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/Jcg;->sef()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public uvD()F
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->HiB:Lcom/bytedance/adsdk/sP/vS/TKC;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/vS/TKC;->TEQ()F

    move-result v0

    return v0
.end method

.method public vS()Lcom/bytedance/adsdk/sP/RiZ;
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/adsdk/sP/uA;->wE:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/bytedance/adsdk/sP/RiZ;->TKC:Lcom/bytedance/adsdk/sP/RiZ;

    return-object v0

    :cond_0
    sget-object v0, Lcom/bytedance/adsdk/sP/RiZ;->sP:Lcom/bytedance/adsdk/sP/RiZ;

    return-object v0
.end method

.method public vS(Ljava/lang/String;)Lcom/bytedance/adsdk/sP/TEQ;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->EjP:Lcom/bytedance/adsdk/sP/Jcg;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/Jcg;->uvD()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/adsdk/sP/TEQ;

    return-object p1
.end method

.method public vS(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/adsdk/sP/uA;->Dq:Z

    return-void
.end method

.method public wE()Lcom/bytedance/adsdk/sP/Jcg;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->EjP:Lcom/bytedance/adsdk/sP/Jcg;

    return-object v0
.end method

.method public zR()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/uA;->HiB:Lcom/bytedance/adsdk/sP/vS/TKC;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/vS/TKC;->isRunning()Z

    move-result v0

    return v0
.end method
