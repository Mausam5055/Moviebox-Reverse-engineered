.class public Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO00o;
.super Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0O0;

# interfaces
.implements Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO;


# instance fields
.field public OooO:F

.field public OooO0Oo:Z

.field public OooO0o:Landroid/graphics/Paint;

.field public OooO0o0:Z

.field public OooO0oO:I

.field public OooO0oo:I

.field public OooOO0:J

.field public OooOO0O:Z

.field public OooOO0o:Landroid/animation/TimeInterpolator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 p2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0O0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const v1, -0x111112

    iput v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO00o;->OooO0oO:I

    const v1, -0x18a6ba

    iput v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO00o;->OooO0oo:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO00o;->OooOO0:J

    iput-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO00o;->OooOO0O:Z

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO00o;->OooOO0o:Landroid/animation/TimeInterpolator;

    const/high16 v1, 0x42700000    # 60.0f

    invoke-static {v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/util/OooO0O0;->OooO00o(F)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/view/View;->setMinimumHeight(I)V

    sget-object v1, Lcom/cloud/tmc/miniapp/R$styleable;->MiniBallPulseFooter:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO00o;->OooO0o:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO00o;->OooO0o:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO00o;->OooO0o:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object p2, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;->OooO0Oo:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0O0;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;

    sget-object p2, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;->OooO0oo:[Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;

    sget v1, Lcom/cloud/tmc/miniapp/R$styleable;->MiniBallPulseFooter_srlClassicsSpinnerStyle:I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    aget-object p2, p2, v1

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0O0;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;

    sget p2, Lcom/cloud/tmc/miniapp/R$styleable;->MiniBallPulseFooter_srlNormalColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_0

    sget p2, Lcom/cloud/tmc/miniapp/R$styleable;->MiniBallPulseFooter_srlNormalColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO00o;->OooO0O0(I)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO00o;

    :cond_0
    sget p2, Lcom/cloud/tmc/miniapp/R$styleable;->MiniBallPulseFooter_srlAnimatingColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_1

    sget p2, Lcom/cloud/tmc/miniapp/R$styleable;->MiniBallPulseFooter_srlAnimatingColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO00o;->OooO00o(I)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO00o;

    :cond_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    const/high16 p1, 0x40800000    # 4.0f

    invoke-static {p1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/util/OooO0O0;->OooO00o(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO00o;->OooO:F

    return-void
.end method


# virtual methods
.method public OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO;Z)I
    .locals 2
    .param p1    # Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO00o;->OooOO0O:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO00o;->OooOO0:J

    iget-object p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO00o;->OooO0o:Landroid/graphics/Paint;

    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO00o;->OooO0oO:I

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    return p1
.end method

.method public OooO00o(I)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO00o;
    .locals 1

    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO00o;->OooO0oo:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO00o;->OooO0o0:Z

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO00o;->OooOO0O:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO00o;->OooO0o:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    return-object p0
.end method

.method public OooO0O0(I)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO00o;
    .locals 1

    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO00o;->OooO0oO:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO00o;->OooO0Oo:Z

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO00o;->OooOO0O:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO00o;->OooO0o:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    return-object p0
.end method

.method public OooO0O0(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO;II)V
    .locals 0
    .param p1    # Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO00o;->OooOO0O:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO00o;->OooOO0O:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO00o;->OooOO0:J

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO00o;->OooO0o:Landroid/graphics/Paint;

    iget p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO00o;->OooO0oo:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v4, v4

    iget v5, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO00o;->OooO:F

    const/high16 v6, 0x40000000    # 2.0f

    mul-float v7, v5, v6

    sub-float/2addr v4, v7

    const/high16 v7, 0x40c00000    # 6.0f

    div-float/2addr v4, v7

    int-to-float v2, v2

    div-float/2addr v2, v6

    mul-float v7, v4, v6

    add-float/2addr v5, v7

    sub-float/2addr v2, v5

    int-to-float v3, v3

    div-float/2addr v3, v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/4 v5, 0x0

    :goto_0
    const/4 v10, 0x3

    if-ge v5, v10, :cond_2

    iget-wide v10, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO00o;->OooOO0:J

    sub-long v10, v8, v10

    add-int/lit8 v12, v5, 0x1

    mul-int/lit8 v13, v12, 0x78

    int-to-long v13, v13

    sub-long/2addr v10, v13

    const-wide/16 v13, 0x0

    cmp-long v13, v10, v13

    if-lez v13, :cond_0

    const-wide/16 v15, 0x2ee

    rem-long/2addr v10, v15

    long-to-float v10, v10

    const v11, 0x443b8000    # 750.0f

    div-float/2addr v10, v11

    goto :goto_1

    :cond_0
    const/4 v10, 0x0

    :goto_1
    iget-object v11, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO00o;->OooOO0o:Landroid/animation/TimeInterpolator;

    invoke-interface {v11, v10}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v5, v5

    mul-float v11, v7, v5

    add-float/2addr v11, v2

    iget v13, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO00o;->OooO:F

    mul-float/2addr v13, v5

    add-float/2addr v13, v11

    invoke-virtual {v1, v13, v3}, Landroid/graphics/Canvas;->translate(FF)V

    float-to-double v14, v10

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    cmpg-double v11, v14, v16

    const v13, 0x3f333333    # 0.7f

    if-gez v11, :cond_1

    mul-float/2addr v10, v6

    mul-float/2addr v10, v13

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float/2addr v11, v10

    invoke-virtual {v1, v11, v11}, Landroid/graphics/Canvas;->scale(FF)V

    goto :goto_2

    :cond_1
    mul-float/2addr v10, v6

    mul-float/2addr v10, v13

    const v11, 0x3ecccccd    # 0.4f

    sub-float/2addr v10, v11

    invoke-virtual {v1, v10, v10}, Landroid/graphics/Canvas;->scale(FF)V

    :goto_2
    iget-object v10, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO00o;->OooO0o:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v5, v4, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    move v5, v12

    goto :goto_0

    :cond_2
    invoke-super/range {p0 .. p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-boolean v1, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO00o;->OooOO0O:Z

    if-eqz v1, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    :cond_3
    return-void
.end method

.method public varargs setPrimaryColors([I)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO00o;->OooO0o0:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    array-length v0, p1

    if-le v0, v2, :cond_1

    aget v0, p1, v1

    iput v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO00o;->OooO0oo:I

    iput-boolean v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO00o;->OooO0o0:Z

    iget-boolean v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO00o;->OooOO0O:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO00o;->OooO0o:Landroid/graphics/Paint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    iput-boolean v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO00o;->OooO0o0:Z

    :cond_1
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO00o;->OooO0Oo:Z

    if-nez v0, :cond_4

    array-length v0, p1

    if-le v0, v2, :cond_2

    aget p1, p1, v2

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO00o;->OooO0O0(I)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO00o;

    goto :goto_0

    :cond_2
    array-length v0, p1

    if-lez v0, :cond_3

    aget p1, p1, v1

    const v0, -0x66000001

    invoke-static {v0, p1}, Lz0/b;->k(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO00o;->OooO0O0(I)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO00o;

    :cond_3
    :goto_0
    iput-boolean v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO00o;->OooO0Oo:Z

    :cond_4
    return-void
.end method
