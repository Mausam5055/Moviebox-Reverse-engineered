.class public Lcom/bytedance/adsdk/ugeno/vS/sP/Sj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/adsdk/ugeno/Dq/TKC$HiB;


# instance fields
.field final Sj:F

.field final sP:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3f4ccccd    # 0.8f

    iput v0, p0, Lcom/bytedance/adsdk/ugeno/vS/sP/Sj;->Sj:F

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/bytedance/adsdk/ugeno/vS/sP/Sj;->sP:F

    return-void
.end method


# virtual methods
.method public Sj(Landroid/view/View;F)V
    .locals 5

    const/4 v0, 0x0

    cmpg-float v1, p2, v0

    const/high16 v2, 0x3f800000    # 1.0f

    if-gez v1, :cond_0

    const v3, 0x3e4ccccc    # 0.19999999f

    :goto_0
    mul-float/2addr v3, p2

    add-float/2addr v3, v2

    goto :goto_1

    :cond_0
    const v3, -0x41b33334    # -0.19999999f

    goto :goto_0

    :goto_1
    if-gez v1, :cond_1

    const/high16 v4, 0x3f000000    # 0.5f

    :goto_2
    mul-float/2addr p2, v4

    add-float/2addr p2, v2

    goto :goto_3

    :cond_1
    const/high16 v4, -0x41000000    # -0.5f

    goto :goto_2

    :goto_3
    if-gez v1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    goto :goto_4

    :cond_2
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    :goto_4
    invoke-virtual {p1, v3}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setScaleY(F)V

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
