.class public final Lcom/transsion/ad/view/CustomRoundCornerLayout;
.super Landroid/widget/FrameLayout;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0016\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0014\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\'\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ/\u0010\u0011\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u0006H\u0014\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0017\u0010\u0015\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u0013H\u0014\u00a2\u0006\u0004\u0008\u0015\u0010\u0016R$\u0010\u001c\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00178\u0002@BX\u0082\u000e\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR*\u0010!\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00178\u0006@FX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001d\u0010\u0019\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010\u001bR*\u0010%\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00178\u0006@FX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\"\u0010\u0019\u001a\u0004\u0008#\u0010\u001f\"\u0004\u0008$\u0010\u001bR*\u0010)\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00178\u0006@FX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008&\u0010\u0019\u001a\u0004\u0008\'\u0010\u001f\"\u0004\u0008(\u0010\u001bR*\u0010-\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00178\u0006@FX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008*\u0010\u0019\u001a\u0004\u0008+\u0010\u001f\"\u0004\u0008,\u0010\u001bR\u0014\u00101\u001a\u00020.8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008/\u00100R\u0014\u00105\u001a\u0002028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00083\u00104R\u0014\u00108\u001a\u0002068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u00107\u00a8\u00069"
    }
    d2 = {
        "Lcom/transsion/ad/view/CustomRoundCornerLayout;",
        "Landroid/widget/FrameLayout;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyleAttr",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "",
        "a",
        "()V",
        "w",
        "h",
        "oldw",
        "oldh",
        "onSizeChanged",
        "(IIII)V",
        "Landroid/graphics/Canvas;",
        "canvas",
        "dispatchDraw",
        "(Landroid/graphics/Canvas;)V",
        "",
        "value",
        "F",
        "setAllCornerRadius",
        "(F)V",
        "allCornerRadius",
        "b",
        "getTopLeftRadius",
        "()F",
        "setTopLeftRadius",
        "topLeftRadius",
        "c",
        "getTopRightRadius",
        "setTopRightRadius",
        "topRightRadius",
        "d",
        "getBottomLeftRadius",
        "setBottomLeftRadius",
        "bottomLeftRadius",
        "e",
        "getBottomRightRadius",
        "setBottomRightRadius",
        "bottomRightRadius",
        "Landroid/graphics/Path;",
        "f",
        "Landroid/graphics/Path;",
        "path",
        "Landroid/graphics/RectF;",
        "g",
        "Landroid/graphics/RectF;",
        "rect",
        "",
        "[F",
        "radii",
        "lib_ad_gpRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private d:F

.field private e:F

.field private final f:Landroid/graphics/Path;

.field private final g:Landroid/graphics/RectF;

.field private final h:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/transsion/ad/view/CustomRoundCornerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/transsion/ad/view/CustomRoundCornerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p3, Landroid/graphics/Path;

    invoke-direct {p3}, Landroid/graphics/Path;-><init>()V

    iput-object p3, p0, Lcom/transsion/ad/view/CustomRoundCornerLayout;->f:Landroid/graphics/Path;

    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Lcom/transsion/ad/view/CustomRoundCornerLayout;->g:Landroid/graphics/RectF;

    const/16 p3, 0x8

    new-array p3, p3, [F

    iput-object p3, p0, Lcom/transsion/ad/view/CustomRoundCornerLayout;->h:[F

    sget-object p3, Lcom/transsion/ad/R$styleable;->CustomRoundCornerLayout:[I

    const-string v0, "CustomRoundCornerLayout"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/transsion/ad/R$styleable;->CustomRoundCornerLayout_allCornerRadius:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    invoke-direct {p0, p2}, Lcom/transsion/ad/view/CustomRoundCornerLayout;->setAllCornerRadius(F)V

    sget p2, Lcom/transsion/ad/R$styleable;->CustomRoundCornerLayout_topLeftRadius:I

    iget p3, p0, Lcom/transsion/ad/view/CustomRoundCornerLayout;->a:F

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    invoke-virtual {p0, p2}, Lcom/transsion/ad/view/CustomRoundCornerLayout;->setTopLeftRadius(F)V

    sget p2, Lcom/transsion/ad/R$styleable;->CustomRoundCornerLayout_topRightRadius:I

    iget p3, p0, Lcom/transsion/ad/view/CustomRoundCornerLayout;->a:F

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    invoke-virtual {p0, p2}, Lcom/transsion/ad/view/CustomRoundCornerLayout;->setTopRightRadius(F)V

    sget p2, Lcom/transsion/ad/R$styleable;->CustomRoundCornerLayout_bottomLeftRadius:I

    iget p3, p0, Lcom/transsion/ad/view/CustomRoundCornerLayout;->a:F

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    invoke-virtual {p0, p2}, Lcom/transsion/ad/view/CustomRoundCornerLayout;->setBottomLeftRadius(F)V

    sget p2, Lcom/transsion/ad/R$styleable;->CustomRoundCornerLayout_bottomRightRadius:I

    iget p3, p0, Lcom/transsion/ad/view/CustomRoundCornerLayout;->a:F

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    invoke-virtual {p0, p2}, Lcom/transsion/ad/view/CustomRoundCornerLayout;->setBottomRightRadius(F)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0}, Lcom/transsion/ad/view/CustomRoundCornerLayout;->a()V

    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/ad/view/CustomRoundCornerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final a()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/ad/view/CustomRoundCornerLayout;->h:[F

    iget v1, p0, Lcom/transsion/ad/view/CustomRoundCornerLayout;->b:F

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-lez v3, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/transsion/ad/view/CustomRoundCornerLayout;->a:F

    :goto_0
    const/4 v3, 0x0

    aput v1, v0, v3

    const/4 v3, 0x1

    aput v1, v0, v3

    iget v1, p0, Lcom/transsion/ad/view/CustomRoundCornerLayout;->c:F

    cmpl-float v3, v1, v2

    if-lez v3, :cond_1

    goto :goto_1

    :cond_1
    iget v1, p0, Lcom/transsion/ad/view/CustomRoundCornerLayout;->a:F

    :goto_1
    const/4 v3, 0x2

    aput v1, v0, v3

    const/4 v3, 0x3

    aput v1, v0, v3

    iget v1, p0, Lcom/transsion/ad/view/CustomRoundCornerLayout;->e:F

    cmpl-float v3, v1, v2

    if-lez v3, :cond_2

    goto :goto_2

    :cond_2
    iget v1, p0, Lcom/transsion/ad/view/CustomRoundCornerLayout;->a:F

    :goto_2
    const/4 v3, 0x4

    aput v1, v0, v3

    const/4 v3, 0x5

    aput v1, v0, v3

    iget v1, p0, Lcom/transsion/ad/view/CustomRoundCornerLayout;->d:F

    cmpl-float v2, v1, v2

    if-lez v2, :cond_3

    goto :goto_3

    :cond_3
    iget v1, p0, Lcom/transsion/ad/view/CustomRoundCornerLayout;->a:F

    :goto_3
    const/4 v2, 0x6

    aput v1, v0, v2

    const/4 v2, 0x7

    aput v1, v0, v2

    return-void
.end method

.method private final setAllCornerRadius(F)V
    .locals 0

    iput p1, p0, Lcom/transsion/ad/view/CustomRoundCornerLayout;->a:F

    invoke-direct {p0}, Lcom/transsion/ad/view/CustomRoundCornerLayout;->a()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/ad/view/CustomRoundCornerLayout;->f:Landroid/graphics/Path;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public final getBottomLeftRadius()F
    .locals 1

    iget v0, p0, Lcom/transsion/ad/view/CustomRoundCornerLayout;->d:F

    return v0
.end method

.method public final getBottomRightRadius()F
    .locals 1

    iget v0, p0, Lcom/transsion/ad/view/CustomRoundCornerLayout;->e:F

    return v0
.end method

.method public final getTopLeftRadius()F
    .locals 1

    iget v0, p0, Lcom/transsion/ad/view/CustomRoundCornerLayout;->b:F

    return v0
.end method

.method public final getTopRightRadius()F
    .locals 1

    iget v0, p0, Lcom/transsion/ad/view/CustomRoundCornerLayout;->c:F

    return v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    iget-object p3, p0, Lcom/transsion/ad/view/CustomRoundCornerLayout;->g:Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    const/4 p4, 0x0

    invoke-virtual {p3, p4, p4, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p1, p0, Lcom/transsion/ad/view/CustomRoundCornerLayout;->f:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    iget-object p1, p0, Lcom/transsion/ad/view/CustomRoundCornerLayout;->f:Landroid/graphics/Path;

    iget-object p2, p0, Lcom/transsion/ad/view/CustomRoundCornerLayout;->g:Landroid/graphics/RectF;

    iget-object p3, p0, Lcom/transsion/ad/view/CustomRoundCornerLayout;->h:[F

    sget-object p4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, p2, p3, p4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    iget-object p1, p0, Lcom/transsion/ad/view/CustomRoundCornerLayout;->f:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method public final setBottomLeftRadius(F)V
    .locals 0

    iput p1, p0, Lcom/transsion/ad/view/CustomRoundCornerLayout;->d:F

    invoke-direct {p0}, Lcom/transsion/ad/view/CustomRoundCornerLayout;->a()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setBottomRightRadius(F)V
    .locals 0

    iput p1, p0, Lcom/transsion/ad/view/CustomRoundCornerLayout;->e:F

    invoke-direct {p0}, Lcom/transsion/ad/view/CustomRoundCornerLayout;->a()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setTopLeftRadius(F)V
    .locals 0

    iput p1, p0, Lcom/transsion/ad/view/CustomRoundCornerLayout;->b:F

    invoke-direct {p0}, Lcom/transsion/ad/view/CustomRoundCornerLayout;->a()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setTopRightRadius(F)V
    .locals 0

    iput p1, p0, Lcom/transsion/ad/view/CustomRoundCornerLayout;->c:F

    invoke-direct {p0}, Lcom/transsion/ad/view/CustomRoundCornerLayout;->a()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
