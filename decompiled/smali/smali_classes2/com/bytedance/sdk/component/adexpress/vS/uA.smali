.class public Lcom/bytedance/sdk/component/adexpress/vS/uA;
.super Landroid/view/View;


# instance fields
.field private Dq:I

.field private EjP:Landroid/graphics/Paint;

.field private HiB:Landroid/graphics/Paint;

.field private Jcg:Landroid/graphics/Paint;

.field private Sj:I

.field private final TKC:Landroid/graphics/RectF;

.field private sP:I

.field private vS:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/vS/uA;->TKC:Landroid/graphics/RectF;

    invoke-direct {p0}, Lcom/bytedance/sdk/component/adexpress/vS/uA;->Sj()V

    return-void
.end method

.method private Sj()V
    .locals 2

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/uA;->EjP:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/uA;->Jcg:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/uA;->HiB:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/uA;->TKC:Landroid/graphics/RectF;

    iget v1, p0, Lcom/bytedance/sdk/component/adexpress/vS/uA;->vS:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/bytedance/sdk/component/adexpress/vS/uA;->HiB:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/uA;->TKC:Landroid/graphics/RectF;

    iget v1, p0, Lcom/bytedance/sdk/component/adexpress/vS/uA;->vS:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/bytedance/sdk/component/adexpress/vS/uA;->EjP:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/uA;->Sj:I

    int-to-float v1, v0

    const v2, 0x3e99999a    # 0.3f

    mul-float v4, v1, v2

    iget v1, p0, Lcom/bytedance/sdk/component/adexpress/vS/uA;->sP:I

    int-to-float v3, v1

    mul-float v5, v3, v2

    int-to-float v0, v0

    const v9, 0x3f333333    # 0.7f

    mul-float v6, v0, v9

    int-to-float v0, v1

    mul-float v7, v0, v9

    iget-object v8, p0, Lcom/bytedance/sdk/component/adexpress/vS/uA;->Jcg:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/uA;->Sj:I

    int-to-float v1, v0

    mul-float v4, v1, v9

    iget v1, p0, Lcom/bytedance/sdk/component/adexpress/vS/uA;->sP:I

    int-to-float v3, v1

    mul-float v5, v3, v2

    int-to-float v0, v0

    mul-float v6, v0, v2

    int-to-float v0, v1

    mul-float v7, v0, v9

    iget-object v8, p0, Lcom/bytedance/sdk/component/adexpress/vS/uA;->Jcg:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iput p1, p0, Lcom/bytedance/sdk/component/adexpress/vS/uA;->Sj:I

    iput p2, p0, Lcom/bytedance/sdk/component/adexpress/vS/uA;->sP:I

    iget-object p3, p0, Lcom/bytedance/sdk/component/adexpress/vS/uA;->TKC:Landroid/graphics/RectF;

    iget p4, p0, Lcom/bytedance/sdk/component/adexpress/vS/uA;->Dq:I

    int-to-float v0, p4

    int-to-float v1, p4

    sub-int/2addr p1, p4

    int-to-float p1, p1

    sub-int/2addr p2, p4

    int-to-float p2, p2

    invoke-virtual {p3, v0, v1, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public setBgColor(I)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/uA;->HiB:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/uA;->HiB:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setDislikeColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/uA;->Jcg:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setDislikeWidth(I)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/uA;->Jcg:Landroid/graphics/Paint;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public setRadius(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/component/adexpress/vS/uA;->vS:I

    return-void
.end method

.method public setStrokeColor(I)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/uA;->EjP:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/uA;->EjP:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setStrokeWidth(I)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/uA;->EjP:Landroid/graphics/Paint;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iput p1, p0, Lcom/bytedance/sdk/component/adexpress/vS/uA;->Dq:I

    return-void
.end method
