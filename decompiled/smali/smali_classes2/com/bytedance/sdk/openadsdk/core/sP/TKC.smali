.class public abstract Lcom/bytedance/sdk/openadsdk/core/sP/TKC;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/sP/TKC$Sj;
    }
.end annotation


# static fields
.field private static EjP:F = 0.0f

.field private static HiB:J = 0x0L

.field protected static LD:I = 0x8

.field private static Sj:F

.field private static TKC:F

.field private static sP:F


# instance fields
.field protected JcM:Landroid/view/View;

.field private Jcg:I

.field protected LqL:I

.field public WMZ:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/bytedance/sdk/openadsdk/core/sP/TKC$Sj;",
            ">;"
        }
    .end annotation
.end field

.field protected Yf:I

.field protected dx:F

.field protected fF:Z

.field protected ib:F

.field protected kF:F

.field protected ley:I

.field protected uP:J

.field private vS:I

.field protected wE:J

.field protected zR:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->sP()I

    move-result v0

    sput v0, Lcom/bytedance/sdk/openadsdk/core/sP/TKC;->LD:I

    :cond_0
    const/4 v0, 0x0

    sput v0, Lcom/bytedance/sdk/openadsdk/core/sP/TKC;->Sj:F

    sput v0, Lcom/bytedance/sdk/openadsdk/core/sP/TKC;->sP:F

    sput v0, Lcom/bytedance/sdk/openadsdk/core/sP/TKC;->TKC:F

    sput v0, Lcom/bytedance/sdk/openadsdk/core/sP/TKC;->EjP:F

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/bytedance/sdk/openadsdk/core/sP/TKC;->HiB:J

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/sP/TKC;->dx:F

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/sP/TKC;->zR:F

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/sP/TKC;->ib:F

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/sP/TKC;->kF:F

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/sP/TKC;->uP:J

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/sP/TKC;->wE:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/sP/TKC;->ley:I

    const/16 v1, -0x400

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/sP/TKC;->LqL:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/sP/TKC;->Yf:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/sP/TKC;->fF:Z

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/sP/TKC;->WMZ:Landroid/util/SparseArray;

    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/sP/TKC;->vS:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/sP/TKC;->Jcg:I

    return-void
.end method

.method private Sj(Landroid/view/View;Landroid/graphics/Point;)Z
    .locals 6

    instance-of v0, p1, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    move v2, v1

    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->TKC(Landroid/view/View;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {v3, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p2, Landroid/graphics/Point;->x:I

    aget v2, v0, v1

    if-lt p1, v2, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v2, v4

    if-gt p1, v2, :cond_0

    iget p1, p2, Landroid/graphics/Point;->y:I

    aget p2, v0, v5

    if-lt p1, p2, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr p2, v0

    if-gt p1, p2, :cond_0

    return v5

    :cond_0
    return v1

    :cond_1
    invoke-direct {p0, v3, p2}, Lcom/bytedance/sdk/openadsdk/core/sP/TKC;->Sj(Landroid/view/View;Landroid/graphics/Point;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v5

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method


# virtual methods
.method public Jcg()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/sP/TKC;->fF:Z

    return v0
.end method

.method protected abstract Sj(Landroid/view/View;FFFFLandroid/util/SparseArray;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "FFFF",
            "Landroid/util/SparseArray<",
            "Lcom/bytedance/sdk/openadsdk/core/sP/TKC$Sj;",
            ">;Z)V"
        }
    .end annotation
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/uA;->Sj()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/sP/TKC;->dx:F

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/sP/TKC;->zR:F

    iget v5, p0, Lcom/bytedance/sdk/openadsdk/core/sP/TKC;->ib:F

    iget v6, p0, Lcom/bytedance/sdk/openadsdk/core/sP/TKC;->kF:F

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/sP/TKC;->WMZ:Landroid/util/SparseArray;

    iget-boolean v8, p0, Lcom/bytedance/sdk/openadsdk/core/sP/TKC;->fF:Z

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lcom/bytedance/sdk/openadsdk/core/sP/TKC;->Sj(Landroid/view/View;FFFFLandroid/util/SparseArray;Z)V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 13

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/sP/TKC;->LqL:I

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/sP/TKC;->ley:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/sP/TKC;->Yf:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_a

    const/4 v3, 0x3

    if-eq v1, v2, :cond_7

    const/4 p1, 0x2

    if-eq v1, p1, :cond_2

    if-eq v1, v3, :cond_1

    const/4 v3, -0x1

    :cond_0
    :goto_0
    move v6, v3

    goto/16 :goto_2

    :cond_1
    const/4 v3, 0x4

    goto :goto_0

    :cond_2
    sget v1, Lcom/bytedance/sdk/openadsdk/core/sP/TKC;->TKC:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sget v4, Lcom/bytedance/sdk/openadsdk/core/sP/TKC;->Sj:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float/2addr v1, v3

    sput v1, Lcom/bytedance/sdk/openadsdk/core/sP/TKC;->TKC:F

    sget v1, Lcom/bytedance/sdk/openadsdk/core/sP/TKC;->EjP:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sget v4, Lcom/bytedance/sdk/openadsdk/core/sP/TKC;->sP:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float/2addr v1, v3

    sput v1, Lcom/bytedance/sdk/openadsdk/core/sP/TKC;->EjP:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sput v1, Lcom/bytedance/sdk/openadsdk/core/sP/TKC;->Sj:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sput v1, Lcom/bytedance/sdk/openadsdk/core/sP/TKC;->sP:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-wide v5, Lcom/bytedance/sdk/openadsdk/core/sP/TKC;->HiB:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0xc8

    cmp-long v1, v3, v5

    if-lez v1, :cond_3

    sget v1, Lcom/bytedance/sdk/openadsdk/core/sP/TKC;->TKC:F

    sget v3, Lcom/bytedance/sdk/openadsdk/core/sP/TKC;->LD:I

    int-to-float v4, v3

    cmpl-float v1, v1, v4

    if-gtz v1, :cond_4

    sget v1, Lcom/bytedance/sdk/openadsdk/core/sP/TKC;->EjP:F

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    if-lez v1, :cond_3

    goto :goto_1

    :cond_3
    move v2, p1

    :cond_4
    :goto_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/sP/TKC;->ib:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/sP/TKC;->kF:F

    iget p1, p0, Lcom/bytedance/sdk/openadsdk/core/sP/TKC;->ib:F

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/sP/TKC;->vS:I

    int-to-float v1, v1

    sub-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sget v1, Lcom/bytedance/sdk/openadsdk/core/sP/TKC;->LD:I

    int-to-float v1, v1

    cmpl-float p1, p1, v1

    if-gez p1, :cond_5

    iget p1, p0, Lcom/bytedance/sdk/openadsdk/core/sP/TKC;->kF:F

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/sP/TKC;->Jcg:I

    int-to-float v1, v1

    sub-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sget v1, Lcom/bytedance/sdk/openadsdk/core/sP/TKC;->LD:I

    int-to-float v1, v1

    cmpl-float p1, p1, v1

    if-ltz p1, :cond_6

    :cond_5
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/sP/TKC;->fF:Z

    :cond_6
    move v6, v2

    goto/16 :goto_2

    :cond_7
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/sP/TKC;->ib:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/sP/TKC;->kF:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/sP/TKC;->wE:J

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/sP/TKC;->ib:F

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/sP/TKC;->vS:I

    int-to-float v4, v4

    sub-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sget v4, Lcom/bytedance/sdk/openadsdk/core/sP/TKC;->LD:I

    int-to-float v4, v4

    cmpl-float v1, v1, v4

    if-gez v1, :cond_8

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/sP/TKC;->kF:F

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/sP/TKC;->Jcg:I

    int-to-float v4, v4

    sub-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sget v4, Lcom/bytedance/sdk/openadsdk/core/sP/TKC;->LD:I

    int-to-float v4, v4

    cmpl-float v1, v1, v4

    if-ltz v1, :cond_9

    :cond_8
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/sP/TKC;->fF:Z

    :cond_9
    new-instance v1, Landroid/graphics/Point;

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/sP/TKC;->ib:F

    float-to-int v4, v4

    iget v5, p0, Lcom/bytedance/sdk/openadsdk/core/sP/TKC;->kF:F

    float-to-int v5, v5

    invoke-direct {v1, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->TKC(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-direct {p0, p1, v1}, Lcom/bytedance/sdk/openadsdk/core/sP/TKC;->Sj(Landroid/view/View;Landroid/graphics/Point;)Z

    move-result p1

    if-eqz p1, :cond_0

    return v2

    :cond_a
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/sP/TKC;->vS:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/sP/TKC;->Jcg:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/sP/TKC;->dx:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/sP/TKC;->zR:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/bytedance/sdk/openadsdk/core/sP/TKC;->uP:J

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/sP/TKC;->ley:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/sP/TKC;->LqL:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/sP/TKC;->Yf:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sput-wide v3, Lcom/bytedance/sdk/openadsdk/core/sP/TKC;->HiB:J

    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/sP/TKC;->fF:Z

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/sP/TKC;->JcM:Landroid/view/View;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/uA/TKC;->Sj(Landroid/view/MotionEvent;)V

    move v6, v0

    :goto_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/sP/TKC;->WMZ:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/sP/TKC$Sj;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSize()F

    move-result v3

    float-to-double v7, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPressure()F

    move-result p2

    float-to-double v9, p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    move-object v5, v2

    invoke-direct/range {v5 .. v12}, Lcom/bytedance/sdk/openadsdk/core/sP/TKC$Sj;-><init>(IDDJ)V

    invoke-virtual {p1, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return v0
.end method
