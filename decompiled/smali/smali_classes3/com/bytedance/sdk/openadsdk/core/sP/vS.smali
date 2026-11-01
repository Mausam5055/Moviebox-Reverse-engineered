.class public Lcom/bytedance/sdk/openadsdk/core/sP/vS;
.super Ljava/lang/Object;


# static fields
.field private static Fmk:F = 0.0f

.field public static TEQ:I = 0x8

.field private static Zq:F

.field private static dNu:J

.field private static sef:F

.field private static uvD:F


# instance fields
.field public Dq:I

.field public EjP:F

.field public HiB:J

.field public Jcg:I

.field private RiZ:I

.field public Sj:F

.field public TKC:F

.field private TzV:I

.field public Ym:Z

.field public aa:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/bytedance/sdk/openadsdk/core/sP/TKC$Sj;",
            ">;"
        }
    .end annotation
.end field

.field public sP:F

.field public uA:I

.field public vS:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->sP()I

    move-result v0

    sput v0, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->TEQ:I

    :cond_0
    const/4 v0, 0x0

    sput v0, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->Fmk:F

    sput v0, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->sef:F

    sput v0, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->Zq:F

    sput v0, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->uvD:F

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->dNu:J

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->Sj:F

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->sP:F

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->TKC:F

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->EjP:F

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->HiB:J

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->vS:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->Jcg:I

    const/16 v1, -0x400

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->Dq:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->uA:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->Ym:Z

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->aa:Landroid/util/SparseArray;

    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->TzV:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->RiZ:I

    return-void
.end method


# virtual methods
.method public Sj(Landroid/view/MotionEvent;)V
    .locals 13

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->Dq:I

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->Jcg:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->uA:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_9

    const/4 v3, 0x3

    if-eq v1, v2, :cond_6

    const/4 v4, 0x2

    if-eq v1, v4, :cond_1

    if-eq v1, v3, :cond_0

    const/4 v0, -0x1

    :goto_0
    move v6, v0

    goto/16 :goto_2

    :cond_0
    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    sget v1, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->Zq:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sget v5, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->Fmk:F

    sub-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float/2addr v1, v3

    sput v1, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->Zq:F

    sget v1, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->uvD:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sget v5, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->sef:F

    sub-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float/2addr v1, v3

    sput v1, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->uvD:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sput v1, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->Fmk:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sput v1, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->sef:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sget-wide v7, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->dNu:J

    sub-long/2addr v5, v7

    const-wide/16 v7, 0xc8

    cmp-long v1, v5, v7

    if-lez v1, :cond_2

    sget v1, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->Zq:F

    sget v3, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->TEQ:I

    int-to-float v5, v3

    cmpl-float v1, v1, v5

    if-gtz v1, :cond_3

    sget v1, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->uvD:F

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    if-lez v1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v4

    :cond_3
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->TKC:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->EjP:F

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->TKC:F

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->TzV:I

    int-to-float v3, v3

    sub-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sget v3, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->TEQ:I

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    if-gez v1, :cond_4

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->EjP:F

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->RiZ:I

    int-to-float v3, v3

    sub-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sget v3, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->TEQ:I

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_5

    :cond_4
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->Ym:Z

    :cond_5
    move v6, v2

    goto :goto_2

    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->TKC:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->EjP:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->vS:J

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->TKC:F

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->TzV:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sget v2, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->TEQ:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-gez v1, :cond_7

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->EjP:F

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->RiZ:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sget v2, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->TEQ:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_8

    :cond_7
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->Ym:Z

    :cond_8
    move v6, v3

    goto :goto_2

    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->TzV:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->RiZ:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->Sj:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->sP:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->HiB:J

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->Jcg:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->Dq:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->uA:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sput-wide v3, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->dNu:J

    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->Ym:Z

    goto/16 :goto_0

    :goto_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/sP/vS;->aa:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/sP/TKC$Sj;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSize()F

    move-result v3

    float-to-double v7, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result p1

    float-to-double v9, p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    move-object v5, v2

    invoke-direct/range {v5 .. v12}, Lcom/bytedance/sdk/openadsdk/core/sP/TKC$Sj;-><init>(IDDJ)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method
