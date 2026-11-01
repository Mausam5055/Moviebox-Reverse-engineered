.class public final Lcom/tn/lib/view/RoundedArrowImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\r\u0018\u00002\u00020\u0001B\'\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0015\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0017\u0010\u0011\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\u000fH\u0014\u00a2\u0006\u0004\u0008\u0011\u0010\u0012R\u0014\u0010\u0016\u001a\u00020\u00138\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015R\u0014\u0010\u001a\u001a\u00020\u00178\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R\u0016\u0010\u001d\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR\u0016\u0010\u001f\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001cR\u0016\u0010!\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008 \u0010\u001cR\u0016\u0010#\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\"\u0010\u001c\u00a8\u0006$"
    }
    d2 = {
        "Lcom/tn/lib/view/RoundedArrowImageView;",
        "Landroidx/appcompat/widget/AppCompatImageView;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyleAttr",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "",
        "position",
        "",
        "setArrowPosition",
        "(F)V",
        "Landroid/graphics/Canvas;",
        "canvas",
        "onDraw",
        "(Landroid/graphics/Canvas;)V",
        "Landroid/graphics/Paint;",
        "d",
        "Landroid/graphics/Paint;",
        "paint",
        "Landroid/graphics/Path;",
        "e",
        "Landroid/graphics/Path;",
        "path",
        "f",
        "F",
        "arrowHeight",
        "g",
        "cornerRadius",
        "h",
        "arrowWidth",
        "i",
        "arrowPosition",
        "UI_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final d:Landroid/graphics/Paint;

.field private final e:Landroid/graphics/Path;

.field private f:F

.field private g:F

.field private h:F

.field private i:F


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

    invoke-direct/range {v1 .. v6}, Lcom/tn/lib/view/RoundedArrowImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-direct/range {v1 .. v6}, Lcom/tn/lib/view/RoundedArrowImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p3, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p3, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Lcom/tn/lib/view/RoundedArrowImageView;->d:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/tn/lib/view/RoundedArrowImageView;->e:Landroid/graphics/Path;

    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/tn/lib/view/RoundedArrowImageView;->f:F

    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/tn/lib/view/RoundedArrowImageView;->g:F

    const/high16 v0, 0x41800000    # 16.0f

    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/tn/lib/view/RoundedArrowImageView;->h:F

    const/high16 v0, 0x43480000    # 200.0f

    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/tn/lib/view/RoundedArrowImageView;->i:F

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    if-eqz p2, :cond_0

    sget-object p3, Lcom/tn/lib/widget/R$styleable;->RoundedArrowImageView:[I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string p2, "obtainStyledAttributes(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget p2, Lcom/tn/lib/widget/R$styleable;->RoundedArrowImageView_arrowIVHeight:I

    iget p3, p0, Lcom/tn/lib/view/RoundedArrowImageView;->f:F

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/tn/lib/view/RoundedArrowImageView;->f:F

    sget p2, Lcom/tn/lib/widget/R$styleable;->RoundedArrowImageView_cornerRadius:I

    iget p3, p0, Lcom/tn/lib/view/RoundedArrowImageView;->g:F

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/tn/lib/view/RoundedArrowImageView;->g:F

    sget p2, Lcom/tn/lib/widget/R$styleable;->RoundedArrowImageView_arrowIVWidth:I

    iget p3, p0, Lcom/tn/lib/view/RoundedArrowImageView;->h:F

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/tn/lib/view/RoundedArrowImageView;->h:F

    sget p2, Lcom/tn/lib/widget/R$styleable;->RoundedArrowImageView_arrowIVPositionOffset:I

    iget p3, p0, Lcom/tn/lib/view/RoundedArrowImageView;->i:F

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/tn/lib/view/RoundedArrowImageView;->i:F

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
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
    invoke-direct {p0, p1, p2, p3}, Lcom/tn/lib/view/RoundedArrowImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/tn/lib/view/RoundedArrowImageView;->f:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/tn/lib/view/RoundedArrowImageView;->i:F

    iget-object v3, p0, Lcom/tn/lib/view/RoundedArrowImageView;->e:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    iget-object v3, p0, Lcom/tn/lib/view/RoundedArrowImageView;->e:Landroid/graphics/Path;

    iget v4, p0, Lcom/tn/lib/view/RoundedArrowImageView;->h:F

    const/4 v5, 0x2

    int-to-float v5, v5

    div-float/2addr v4, v5

    sub-float v4, v2, v4

    iget v6, p0, Lcom/tn/lib/view/RoundedArrowImageView;->f:F

    invoke-virtual {v3, v4, v6}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v3, p0, Lcom/tn/lib/view/RoundedArrowImageView;->e:Landroid/graphics/Path;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v3, p0, Lcom/tn/lib/view/RoundedArrowImageView;->e:Landroid/graphics/Path;

    iget v6, p0, Lcom/tn/lib/view/RoundedArrowImageView;->h:F

    div-float/2addr v6, v5

    add-float/2addr v2, v6

    iget v6, p0, Lcom/tn/lib/view/RoundedArrowImageView;->f:F

    invoke-virtual {v3, v2, v6}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, p0, Lcom/tn/lib/view/RoundedArrowImageView;->e:Landroid/graphics/Path;

    iget v3, p0, Lcom/tn/lib/view/RoundedArrowImageView;->g:F

    sub-float v3, v0, v3

    iget v6, p0, Lcom/tn/lib/view/RoundedArrowImageView;->f:F

    invoke-virtual {v2, v3, v6}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, p0, Lcom/tn/lib/view/RoundedArrowImageView;->e:Landroid/graphics/Path;

    new-instance v3, Landroid/graphics/RectF;

    iget v6, p0, Lcom/tn/lib/view/RoundedArrowImageView;->g:F

    mul-float v7, v6, v5

    sub-float v7, v0, v7

    iget v8, p0, Lcom/tn/lib/view/RoundedArrowImageView;->f:F

    mul-float/2addr v6, v5

    add-float/2addr v6, v8

    invoke-direct {v3, v7, v8, v0, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v6, -0x3d4c0000    # -90.0f

    const/high16 v7, 0x42b40000    # 90.0f

    invoke-virtual {v2, v3, v6, v7}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    iget-object v2, p0, Lcom/tn/lib/view/RoundedArrowImageView;->e:Landroid/graphics/Path;

    iget v3, p0, Lcom/tn/lib/view/RoundedArrowImageView;->g:F

    sub-float v3, v1, v3

    iget v6, p0, Lcom/tn/lib/view/RoundedArrowImageView;->f:F

    add-float/2addr v3, v6

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, p0, Lcom/tn/lib/view/RoundedArrowImageView;->e:Landroid/graphics/Path;

    new-instance v3, Landroid/graphics/RectF;

    iget v6, p0, Lcom/tn/lib/view/RoundedArrowImageView;->g:F

    mul-float v8, v6, v5

    sub-float v8, v0, v8

    mul-float/2addr v6, v5

    sub-float v6, v1, v6

    iget v9, p0, Lcom/tn/lib/view/RoundedArrowImageView;->f:F

    add-float/2addr v6, v9

    add-float/2addr v9, v1

    invoke-direct {v3, v8, v6, v0, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v2, v3, v4, v7}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    iget-object v0, p0, Lcom/tn/lib/view/RoundedArrowImageView;->e:Landroid/graphics/Path;

    iget v2, p0, Lcom/tn/lib/view/RoundedArrowImageView;->g:F

    iget v3, p0, Lcom/tn/lib/view/RoundedArrowImageView;->f:F

    add-float/2addr v3, v1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/tn/lib/view/RoundedArrowImageView;->e:Landroid/graphics/Path;

    new-instance v2, Landroid/graphics/RectF;

    iget v3, p0, Lcom/tn/lib/view/RoundedArrowImageView;->g:F

    mul-float v6, v3, v5

    sub-float v6, v1, v6

    iget v8, p0, Lcom/tn/lib/view/RoundedArrowImageView;->f:F

    add-float/2addr v6, v8

    mul-float/2addr v3, v5

    add-float/2addr v1, v8

    invoke-direct {v2, v4, v6, v3, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v0, v2, v7, v7}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    iget-object v0, p0, Lcom/tn/lib/view/RoundedArrowImageView;->e:Landroid/graphics/Path;

    iget v1, p0, Lcom/tn/lib/view/RoundedArrowImageView;->g:F

    iget v2, p0, Lcom/tn/lib/view/RoundedArrowImageView;->f:F

    add-float/2addr v1, v2

    invoke-virtual {v0, v4, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/tn/lib/view/RoundedArrowImageView;->e:Landroid/graphics/Path;

    new-instance v1, Landroid/graphics/RectF;

    iget v2, p0, Lcom/tn/lib/view/RoundedArrowImageView;->f:F

    iget v3, p0, Lcom/tn/lib/view/RoundedArrowImageView;->g:F

    mul-float v6, v3, v5

    mul-float/2addr v3, v5

    add-float/2addr v3, v2

    invoke-direct {v1, v4, v2, v6, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v2, 0x43340000    # 180.0f

    invoke-virtual {v0, v1, v2, v7}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    iget-object v0, p0, Lcom/tn/lib/view/RoundedArrowImageView;->e:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/tn/lib/view/RoundedArrowImageView;->e:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public final setArrowPosition(F)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lkotlin/ranges/RangesKt;->l(FFF)F

    move-result p1

    iput p1, p0, Lcom/tn/lib/view/RoundedArrowImageView;->i:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
