.class public Lcom/bytedance/adsdk/sP/vS/EjP;
.super Ljava/lang/Object;


# instance fields
.field private Sj:F

.field private sP:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Sj(F)V
    .locals 2

    iget v0, p0, Lcom/bytedance/adsdk/sP/vS/EjP;->Sj:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/bytedance/adsdk/sP/vS/EjP;->Sj:F

    iget p1, p0, Lcom/bytedance/adsdk/sP/vS/EjP;->sP:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/bytedance/adsdk/sP/vS/EjP;->sP:I

    const v1, 0x7fffffff

    if-ne p1, v1, :cond_0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/bytedance/adsdk/sP/vS/EjP;->Sj:F

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/bytedance/adsdk/sP/vS/EjP;->sP:I

    :cond_0
    return-void
.end method
