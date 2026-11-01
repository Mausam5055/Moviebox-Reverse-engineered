.class public final Lcom/cloud/tmc/miniapp/widget/SwitchButton;
.super Landroid/view/View;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniapp/widget/SwitchButton$OooO00o;,
        Lcom/cloud/tmc/miniapp/widget/SwitchButton$SavedState;
    }
.end annotation


# instance fields
.field public final OooO:F

.field public final OooO00o:Landroid/view/animation/AccelerateInterpolator;

.field public final OooO0O0:Landroid/graphics/Paint;

.field public final OooO0OO:Landroid/graphics/Path;

.field public final OooO0Oo:Landroid/graphics/Path;

.field public OooO0o:F

.field public final OooO0o0:Landroid/graphics/RectF;

.field public OooO0oO:F

.field public OooO0oo:Landroid/graphics/RadialGradient;

.field public final OooOO0:F

.field public OooOO0O:I

.field public OooOO0o:I

.field public OooOOO:Z

.field public OooOOO0:Z

.field public OooOOOO:Z

.field public OooOOOo:I

.field public OooOOo:I

.field public OooOOo0:I

.field public OooOOoo:I

.field public OooOo:F

.field public OooOo0:Lcom/cloud/tmc/miniapp/widget/SwitchButton$OooO00o;

.field public OooOo00:I

.field public OooOo0O:F

.field public OooOo0o:F

.field public OooOoO:F

.field public OooOoO0:F

.field public OooOoOO:F

.field public OooOoo:F

.field public OooOoo0:F

.field public OooOooO:F

.field public OooOooo:F

.field public Oooo0:F

.field public Oooo000:F

.field public Oooo00O:F

.field public Oooo00o:F

.field public Oooo0O0:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0xe

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/cloud/tmc/miniapp/widget/SwitchButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/cloud/tmc/miniapp/widget/SwitchButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/cloud/tmc/miniapp/widget/SwitchButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p3, Landroid/view/animation/AccelerateInterpolator;

    const/high16 p4, 0x40000000    # 2.0f

    invoke-direct {p3, p4}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object p3, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO00o:Landroid/view/animation/AccelerateInterpolator;

    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO0O0:Landroid/graphics/Paint;

    new-instance p3, Landroid/graphics/Path;

    invoke-direct {p3}, Landroid/graphics/Path;-><init>()V

    iput-object p3, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO0OO:Landroid/graphics/Path;

    new-instance p3, Landroid/graphics/Path;

    invoke-direct {p3}, Landroid/graphics/Path;-><init>()V

    iput-object p3, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO0Oo:Landroid/graphics/Path;

    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO0o0:Landroid/graphics/RectF;

    const p3, 0x3f2e147b    # 0.68f

    iput p3, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO:F

    const p3, 0x3dcccccd    # 0.1f

    iput p3, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOO0:F

    const-string p3, "#0081FF"

    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p4

    iput p4, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOOOo:I

    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOOo0:I

    const-string p3, "#C2C6CE"

    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    const-string p3, "#BFBFBF"

    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOOo:I

    const-string p3, "#333333"

    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOo00:I

    const/4 p3, 0x0

    const/4 p4, 0x1

    invoke-virtual {p0, p4, p3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    sget-object p3, Lcom/cloud/tmc/miniapp/R$styleable;->SwitchButton:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const-string p3, "context.obtainStyledAttr\u2026R.styleable.SwitchButton)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget p3, Lcom/cloud/tmc/miniapp/R$styleable;->SwitchButton_android_checked:I

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOOOO:Z

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOOOO:Z

    sget p3, Lcom/cloud/tmc/miniapp/R$styleable;->SwitchButton_android_enabled:I

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    invoke-virtual {p0, p3}, Landroid/view/View;->setEnabled(Z)V

    iget-boolean p3, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOOOO:Z

    if-eqz p3, :cond_0

    const/4 p4, 0x3

    :cond_0
    iput p4, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOO0o:I

    iput p4, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOO0O:I

    sget p3, Lcom/cloud/tmc/miniapp/R$color;->mini_color_switch_off_bg:I

    invoke-static {p1, p3}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result p3

    iput p3, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOOoo:I

    sget p3, Lcom/cloud/tmc/miniapp/R$color;->mini_color_primary:I

    invoke-static {p1, p3}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result p3

    iput p3, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOOOo:I

    sget p3, Lcom/cloud/tmc/miniapp/R$color;->mini_color_primary:I

    invoke-static {p1, p3}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOOo0:I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_1

    move p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    move p4, v0

    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/cloud/tmc/miniapp/widget/SwitchButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public static OooO00o(Lcom/cloud/tmc/miniapp/widget/SwitchButton;ZZZI)V
    .locals 7

    const/4 v0, 0x4

    and-int/2addr p4, v0

    const/4 v1, 0x1

    if-eqz p4, :cond_0

    move p3, v1

    :cond_0
    const/4 p4, 0x3

    if-eqz p1, :cond_1

    move v2, p4

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    iget v3, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOO0o:I

    if-ne v2, v3, :cond_2

    goto :goto_3

    :cond_2
    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    if-ne v2, p4, :cond_3

    if-eq v3, v1, :cond_4

    const/4 v6, 0x2

    if-eq v3, v6, :cond_4

    :cond_3
    if-ne v2, v1, :cond_6

    if-eq v3, p4, :cond_4

    if-ne v3, v0, :cond_6

    :cond_4
    if-eqz p3, :cond_5

    move v0, v5

    goto :goto_1

    :cond_5
    move v0, v4

    :goto_1
    iput v0, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO0o:F

    :cond_6
    if-eqz p3, :cond_7

    move v4, v5

    :cond_7
    iput v4, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO0oO:F

    iget-boolean p3, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOOOO:Z

    if-nez p3, :cond_8

    if-ne v2, p4, :cond_8

    iput-boolean v1, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOOOO:Z

    goto :goto_2

    :cond_8
    if-eqz p3, :cond_9

    if-ne v2, v1, :cond_9

    const/4 p3, 0x0

    iput-boolean p3, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOOOO:Z

    :cond_9
    :goto_2
    iput v3, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOO0O:I

    iput v2, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOO0o:I

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    if-eqz p2, :cond_a

    iget-object p2, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOo0:Lcom/cloud/tmc/miniapp/widget/SwitchButton$OooO00o;

    if-eqz p2, :cond_a

    invoke-interface {p2, p0, p1}, Lcom/cloud/tmc/miniapp/widget/SwitchButton$OooO00o;->OooO00o(Lcom/cloud/tmc/miniapp/widget/SwitchButton;Z)V

    :cond_a
    :goto_3
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOOO0:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO0O0:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOO0o:I

    const/4 v2, 0x4

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v1

    :goto_1
    iget-object v4, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO0O0:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v4, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO0O0:Landroid/graphics/Paint;

    if-eqz v0, :cond_3

    iget v6, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOOOo:I

    goto :goto_2

    :cond_3
    iget v6, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOOoo:I

    :goto_2
    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v4, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO0OO:Landroid/graphics/Path;

    iget-object v6, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO0O0:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget v4, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO0o:F

    iget v6, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOO0:F

    sub-float/2addr v4, v6

    const/4 v7, 0x0

    cmpl-float v8, v4, v7

    if-lez v8, :cond_4

    goto :goto_3

    :cond_4
    move v4, v7

    :goto_3
    iput v4, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO0o:F

    iget v8, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO0oO:F

    sub-float/2addr v8, v6

    cmpl-float v6, v8, v7

    if-lez v6, :cond_5

    goto :goto_4

    :cond_5
    move v8, v7

    :goto_4
    iput v8, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO0oO:F

    iget-object v6, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO00o:Landroid/view/animation/AccelerateInterpolator;

    invoke-virtual {v6, v4}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result v4

    iget-object v6, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO00o:Landroid/view/animation/AccelerateInterpolator;

    iget v8, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO0oO:F

    invoke-virtual {v6, v8}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result v6

    iget v8, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOoO0:F

    if-eqz v0, :cond_6

    move v9, v4

    goto :goto_5

    :cond_6
    int-to-float v9, v1

    sub-float/2addr v9, v4

    :goto_5
    mul-float/2addr v8, v9

    iget v9, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOo0O:F

    iget v10, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOo0o:F

    sub-float/2addr v9, v10

    iget v10, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOoOO:F

    sub-float/2addr v9, v10

    if-eqz v0, :cond_7

    int-to-float v10, v1

    sub-float v4, v10, v4

    :cond_7
    mul-float/2addr v9, v4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v4, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOo0o:F

    add-float/2addr v4, v9

    iget v9, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOo:F

    invoke-virtual {p1, v8, v8, v4, v9}, Landroid/graphics/Canvas;->scale(FFFF)V

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO0O0:Landroid/graphics/Paint;

    iget v8, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOOoo:I

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_6

    :cond_8
    iget-object v4, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO0O0:Landroid/graphics/Paint;

    const-string v8, "#BBBBBB"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setColor(I)V

    :goto_6
    iget-object v4, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO0OO:Landroid/graphics/Path;

    iget-object v8, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO0O0:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v4, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOO0o:I

    iget v8, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOO0O:I

    sub-int v8, v4, v8

    const/4 v9, -0x3

    const/4 v10, 0x2

    if-eq v8, v9, :cond_14

    const/4 v9, -0x2

    if-eq v8, v9, :cond_11

    const/4 v9, -0x1

    if-eq v8, v9, :cond_f

    if-eq v8, v1, :cond_d

    if-eq v8, v10, :cond_b

    if-eq v8, v3, :cond_a

    if-ne v4, v1, :cond_9

    iget v3, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->Oooo0:F

    goto :goto_9

    :cond_9
    if-ne v4, v3, :cond_13

    iget v3, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->Oooo000:F

    goto :goto_9

    :cond_a
    iget v3, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->Oooo000:F

    iget v4, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->Oooo0:F

    :goto_7
    sub-float v4, v3, v4

    mul-float/2addr v4, v6

    sub-float/2addr v3, v4

    goto :goto_9

    :cond_b
    if-ne v4, v3, :cond_c

    iget v3, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->Oooo000:F

    iget v4, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->Oooo0:F

    goto :goto_7

    :cond_c
    if-ne v4, v2, :cond_13

    iget v3, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->Oooo00O:F

    iget v4, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->Oooo0:F

    goto :goto_7

    :cond_d
    if-ne v4, v10, :cond_e

    iget v3, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->Oooo0:F

    goto :goto_9

    :cond_e
    if-ne v4, v3, :cond_13

    iget v3, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->Oooo000:F

    iget v4, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->Oooo00O:F

    goto :goto_7

    :cond_f
    if-ne v4, v2, :cond_10

    iget v3, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->Oooo00O:F

    iget v4, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->Oooo000:F

    :goto_8
    sub-float/2addr v4, v3

    mul-float/2addr v4, v6

    add-float/2addr v3, v4

    goto :goto_9

    :cond_10
    if-ne v4, v1, :cond_13

    iget v3, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->Oooo0:F

    goto :goto_9

    :cond_11
    if-ne v4, v1, :cond_12

    iget v3, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->Oooo0:F

    iget v4, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->Oooo00O:F

    goto :goto_8

    :cond_12
    if-ne v4, v10, :cond_13

    iget v3, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->Oooo00o:F

    iget v4, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->Oooo000:F

    goto :goto_8

    :cond_13
    move v3, v7

    goto :goto_9

    :cond_14
    iget v3, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->Oooo0:F

    iget v4, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->Oooo000:F

    goto :goto_8

    :goto_9
    iget v4, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->Oooo0:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->Oooo0O0:F

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    iget v3, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOO0o:I

    if-eq v3, v2, :cond_15

    if-ne v3, v10, :cond_16

    :cond_15
    int-to-float v1, v1

    sub-float v6, v1, v6

    :cond_16
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO0Oo:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO0o0:Landroid/graphics/RectF;

    iget v2, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOooO:F

    iget v3, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOoo0:F

    int-to-float v4, v10

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOooo:F

    sub-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO0Oo:Landroid/graphics/Path;

    const/high16 v3, 0x42b40000    # 90.0f

    const/high16 v8, 0x43340000    # 180.0f

    invoke-virtual {v2, v1, v3, v8}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO0o0:Landroid/graphics/RectF;

    iget v2, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOooO:F

    iget v3, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOoO:F

    mul-float/2addr v6, v3

    add-float/2addr v2, v6

    iget v3, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOoo0:F

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOooo:F

    add-float/2addr v6, v2

    sub-float/2addr v6, v3

    iput v6, v1, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO0Oo:Landroid/graphics/Path;

    const/high16 v3, 0x43870000    # 270.0f

    invoke-virtual {v2, v1, v3, v8}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO0Oo:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOOO:Z

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO0O0:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO0O0:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO0oo:Landroid/graphics/RadialGradient;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO0Oo:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO0O0:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO0O0:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_17
    iget v1, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->Oooo0O0:F

    neg-float v1, v1

    invoke-virtual {p1, v7, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget v1, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOoo:F

    div-float/2addr v1, v4

    const v2, 0x3f7ae148    # 0.98f

    invoke-virtual {p1, v2, v2, v1, v1}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO0O0:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO0O0:Landroid/graphics/Paint;

    const-string v2, "#FFFFFF"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO0Oo:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO0O0:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO0O0:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO0O0:Landroid/graphics/Paint;

    iget v2, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOoo0:F

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO0O0:Landroid/graphics/Paint;

    if-eqz v0, :cond_18

    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOOo0:I

    goto :goto_a

    :cond_18
    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOOo:I

    :goto_a
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO0Oo:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO0O0:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO0O0:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->reset()V

    iget p1, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO0o:F

    cmpl-float p1, p1, v7

    if-gtz p1, :cond_19

    iget p1, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO0oO:F

    cmpl-float p1, p1, v7

    if-lez p1, :cond_1a

    :cond_19
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1a
    return-void
.end method

.method public onMeasure(II)V
    .locals 3

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v2, -0x80000000

    if-eq v0, v2, :cond_0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/cloud/tmc/miniapp/R$dimen;->mini_dp_56:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    float-to-int p1, p1

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-eq v0, v2, :cond_1

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    int-to-float p2, p2

    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO:F

    mul-float/2addr p2, v0

    float-to-int p2, p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p2

    add-int/2addr p2, v0

    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    :goto_1
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    const-string v0, "null cannot be cast to non-null type com.cloud.tmc.miniapp.widget.SwitchButton.SavedState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/cloud/tmc/miniapp/widget/SwitchButton$SavedState;

    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-boolean p1, p1, Lcom/cloud/tmc/miniapp/widget/SwitchButton$SavedState;->OooO00o:Z

    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOOOO:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOO0o:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/cloud/tmc/miniapp/widget/SwitchButton$SavedState;

    invoke-direct {v1, v0}, Lcom/cloud/tmc/miniapp/widget/SwitchButton$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOOOO:Z

    iput-boolean v0, v1, Lcom/cloud/tmc/miniapp/widget/SwitchButton$SavedState;->OooO00o:Z

    return-object v1
.end method

.method public onSizeChanged(IIII)V
    .locals 11

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p4

    add-int/2addr p4, p3

    const/4 p3, 0x1

    if-le p1, p4, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    add-int/2addr v0, p4

    if-le p2, v0, :cond_0

    move p4, p3

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    iput-boolean p4, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOOO0:Z

    if-eqz p4, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p4

    sub-int p4, p1, p4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    sub-int/2addr p4, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    sub-int/2addr p2, v0

    int-to-float p4, p4

    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO:F

    mul-float v1, p4, v0

    int-to-float p2, p2

    cmpg-float v1, v1, p2

    const/4 v2, 0x2

    if-gez v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr p1, v1

    iget v1, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO:F

    mul-float/2addr p4, v1

    sub-float/2addr p2, p4

    float-to-int p2, p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p4

    div-int/2addr p2, v2

    add-int/2addr p4, p2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v1, v3

    sub-int/2addr v1, p2

    goto :goto_1

    :cond_1
    div-float/2addr p2, v0

    sub-float/2addr p4, p2

    float-to-int p1, p4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    div-int/2addr p1, v2

    add-int v0, p2, p1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p4

    sub-int/2addr p2, p4

    sub-int p1, p2, p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    sub-int v1, p2, v1

    :goto_1
    sub-int p2, v1, p4

    int-to-float p2, p2

    const v3, 0x3d8f5c29    # 0.07f

    mul-float/2addr p2, v3

    float-to-int p2, p2

    int-to-float p2, p2

    iput p2, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->Oooo0O0:F

    int-to-float v0, v0

    int-to-float p4, p4

    add-float/2addr p4, p2

    int-to-float p1, p1

    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOo0O:F

    int-to-float v1, v1

    sub-float/2addr v1, p2

    sub-float p2, v1, p4

    add-float v3, p1, v0

    int-to-float v2, v2

    div-float/2addr v3, v2

    iput v3, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOo0o:F

    add-float v3, v1, p4

    div-float v6, v3, v2

    iput v6, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOo:F

    iput v0, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOooO:F

    iput p2, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOoo:F

    add-float v3, v0, p2

    iput v3, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOooo:F

    div-float v4, p2, v2

    const v5, 0x3f733333    # 0.95f

    mul-float/2addr v5, v4

    iput v5, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOoOO:F

    const v7, 0x3e4ccccd    # 0.2f

    mul-float/2addr v7, v5

    iput v7, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOoO:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v2

    iput v4, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOoo0:F

    sub-float/2addr p1, p2

    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->Oooo000:F

    sub-float/2addr p1, v7

    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->Oooo00O:F

    iput v0, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->Oooo0:F

    add-float/2addr v7, v0

    iput v7, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->Oooo00o:F

    int-to-float p1, p3

    div-float/2addr v4, p2

    sub-float/2addr p1, v4

    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOoO0:F

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO0OO:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput p4, p1, Landroid/graphics/RectF;->top:F

    iput v1, p1, Landroid/graphics/RectF;->bottom:F

    iput v0, p1, Landroid/graphics/RectF;->left:F

    iput v3, p1, Landroid/graphics/RectF;->right:F

    iget-object p3, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO0OO:Landroid/graphics/Path;

    const/high16 v0, 0x42b40000    # 90.0f

    const/high16 v3, 0x43340000    # 180.0f

    invoke-virtual {p3, p1, v0, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    iget p3, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOo0O:F

    sub-float p2, p3, p2

    iput p2, p1, Landroid/graphics/RectF;->left:F

    iput p3, p1, Landroid/graphics/RectF;->right:F

    iget-object p2, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO0OO:Landroid/graphics/Path;

    const/high16 p3, 0x43870000    # 270.0f

    invoke-virtual {p2, p1, p3, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO0OO:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO0o0:Landroid/graphics/RectF;

    iget p2, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOooO:F

    iput p2, p1, Landroid/graphics/RectF;->left:F

    iget p3, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOooo:F

    iput p3, p1, Landroid/graphics/RectF;->right:F

    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOoo0:F

    div-float/2addr v0, v2

    add-float/2addr p4, v0

    iput p4, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v0

    iput v1, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr p3, p2

    div-float v5, p3, v2

    iget p1, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOo00:I

    shr-int/lit8 p2, p1, 0x10

    and-int/lit16 p2, p2, 0xff

    shr-int/lit8 p3, p1, 0x8

    and-int/lit16 p3, p3, 0xff

    and-int/lit16 p1, p1, 0xff

    new-instance p4, Landroid/graphics/RadialGradient;

    iget v7, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOoOO:F

    const/16 v0, 0xc8

    invoke-static {v0, p2, p3, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    const/16 v0, 0x19

    invoke-static {v0, p2, p3, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v9

    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v4, p4

    invoke-direct/range {v4 .. v10}, Landroid/graphics/RadialGradient;-><init>(FFFIILandroid/graphics/Shader$TileMode;)V

    iput-object p4, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO0oo:Landroid/graphics/RadialGradient;

    :cond_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOO0o:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    if-ne v0, v1, :cond_4

    :cond_0
    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO0o:F

    iget v3, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO0oO:F

    mul-float/2addr v0, v3

    const/4 v3, 0x0

    cmpg-float v0, v0, v3

    if-nez v0, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eq p1, v1, :cond_1

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOO0o:I

    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOO0O:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO0oO:F

    const/4 v0, 0x4

    const/4 v3, 0x0

    if-eq p1, v1, :cond_3

    if-eq p1, v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {p0, v3, v3, v3, v0}, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO00o(Lcom/cloud/tmc/miniapp/widget/SwitchButton;ZZZI)V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOo0:Lcom/cloud/tmc/miniapp/widget/SwitchButton$OooO00o;

    if-eqz p1, :cond_4

    invoke-interface {p1, p0, v3}, Lcom/cloud/tmc/miniapp/widget/SwitchButton$OooO00o;->OooO00o(Lcom/cloud/tmc/miniapp/widget/SwitchButton;Z)V

    goto :goto_0

    :cond_3
    invoke-static {p0, v1, v3, v3, v0}, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO00o(Lcom/cloud/tmc/miniapp/widget/SwitchButton;ZZZI)V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOo0:Lcom/cloud/tmc/miniapp/widget/SwitchButton$OooO00o;

    if-eqz p1, :cond_4

    invoke-interface {p1, p0, v1}, Lcom/cloud/tmc/miniapp/widget/SwitchButton$OooO00o;->OooO00o(Lcom/cloud/tmc/miniapp/widget/SwitchButton;Z)V

    :cond_4
    :goto_0
    return v1
.end method

.method public final setChecked(Z)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x4

    const/4 v2, 0x1

    invoke-static {p0, p1, v2, v0, v1}, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO00o(Lcom/cloud/tmc/miniapp/widget/SwitchButton;ZZZI)V

    return-void
.end method

.method public final setOnCheckedChangeListener(Lcom/cloud/tmc/miniapp/widget/SwitchButton$OooO00o;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOo0:Lcom/cloud/tmc/miniapp/widget/SwitchButton$OooO00o;

    return-void
.end method

.method public final setShadow(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOOO:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
