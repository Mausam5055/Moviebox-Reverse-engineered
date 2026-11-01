.class public final Lcom/transsion/home/view/VerticalRoundedRectView;
.super Landroid/view/View;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u001c\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B\'\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0017\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\nH\u0014\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0015\u0010\u0011\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0015\u0010\u0014\u001a\u00020\u000c2\u0006\u0010\u0013\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u0014\u0010\u0012J\u0015\u0010\u0016\u001a\u00020\u000c2\u0006\u0010\u0015\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0015\u0010\u0019\u001a\u00020\u000c2\u0006\u0010\u0018\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u0019\u0010\u0012J\u0015\u0010\u001b\u001a\u00020\u000c2\u0006\u0010\u001a\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u001b\u0010\u0017J\u0015\u0010\u001d\u001a\u00020\u000c2\u0006\u0010\u001c\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u001d\u0010\u0012R\u0016\u0010 \u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001fR\u0016\u0010\"\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008!\u0010\u001fR\u0016\u0010%\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008#\u0010$R\u0016\u0010\'\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008&\u0010\u001fR\u0016\u0010)\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008(\u0010$R\u0016\u0010+\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008*\u0010\u001fR\u0014\u0010/\u001a\u00020,8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008-\u0010.\u00a8\u00060"
    }
    d2 = {
        "Lcom/transsion/home/view/VerticalRoundedRectView;",
        "Landroid/view/View;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyleAttr",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "Landroid/graphics/Canvas;",
        "canvas",
        "",
        "onDraw",
        "(Landroid/graphics/Canvas;)V",
        "",
        "width",
        "setRectWidth",
        "(F)V",
        "height",
        "setRectHeight",
        "count",
        "setRectCount",
        "(I)V",
        "spacing",
        "setRectSpacing",
        "color",
        "setRectColor",
        "radius",
        "setCornerRadius",
        "a",
        "F",
        "rectWidth",
        "b",
        "rectHeight",
        "c",
        "I",
        "rectCount",
        "d",
        "rectSpacing",
        "e",
        "rectColor",
        "f",
        "cornerRadius",
        "Landroid/graphics/Paint;",
        "g",
        "Landroid/graphics/Paint;",
        "paint",
        "Home_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private a:F

.field private b:F

.field private c:I

.field private d:F

.field private e:I

.field private f:F

.field private final g:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

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

    invoke-direct/range {v1 .. v6}, Lcom/transsion/home/view/VerticalRoundedRectView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-direct/range {v1 .. v6}, Lcom/transsion/home/view/VerticalRoundedRectView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p3, 0x42c80000    # 100.0f

    iput p3, p0, Lcom/transsion/home/view/VerticalRoundedRectView;->a:F

    const/high16 p3, 0x42480000    # 50.0f

    iput p3, p0, Lcom/transsion/home/view/VerticalRoundedRectView;->b:F

    const/4 p3, 0x5

    iput p3, p0, Lcom/transsion/home/view/VerticalRoundedRectView;->c:I

    const/high16 p3, 0x41a00000    # 20.0f

    iput p3, p0, Lcom/transsion/home/view/VerticalRoundedRectView;->d:F

    const p3, -0xffff01

    iput p3, p0, Lcom/transsion/home/view/VerticalRoundedRectView;->e:I

    const/high16 p3, 0x40800000    # 4.0f

    iput p3, p0, Lcom/transsion/home/view/VerticalRoundedRectView;->f:F

    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iput-object p3, p0, Lcom/transsion/home/view/VerticalRoundedRectView;->g:Landroid/graphics/Paint;

    if-eqz p2, :cond_0

    sget-object v0, Lcom/transsion/home/R$styleable;->VerticalRoundedRectView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string p2, "obtainStyledAttributes(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget p2, Lcom/transsion/home/R$styleable;->VerticalRoundedRectView_rectWidth:I

    iget v0, p0, Lcom/transsion/home/view/VerticalRoundedRectView;->a:F

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/transsion/home/view/VerticalRoundedRectView;->a:F

    sget p2, Lcom/transsion/home/R$styleable;->VerticalRoundedRectView_rectHeight:I

    iget v0, p0, Lcom/transsion/home/view/VerticalRoundedRectView;->b:F

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/transsion/home/view/VerticalRoundedRectView;->b:F

    sget p2, Lcom/transsion/home/R$styleable;->VerticalRoundedRectView_rectCount:I

    iget v0, p0, Lcom/transsion/home/view/VerticalRoundedRectView;->c:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/home/view/VerticalRoundedRectView;->c:I

    sget p2, Lcom/transsion/home/R$styleable;->VerticalRoundedRectView_rectSpacing:I

    iget v0, p0, Lcom/transsion/home/view/VerticalRoundedRectView;->d:F

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/transsion/home/view/VerticalRoundedRectView;->d:F

    sget p2, Lcom/transsion/home/R$styleable;->VerticalRoundedRectView_rectColor:I

    iget v0, p0, Lcom/transsion/home/view/VerticalRoundedRectView;->e:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/home/view/VerticalRoundedRectView;->e:I

    sget p2, Lcom/transsion/home/R$styleable;->VerticalRoundedRectView_rectCorner:I

    iget v0, p0, Lcom/transsion/home/view/VerticalRoundedRectView;->f:F

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/transsion/home/view/VerticalRoundedRectView;->f:F

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    iget p1, p0, Lcom/transsion/home/view/VerticalRoundedRectView;->e:I

    invoke-virtual {p3, p1}, Landroid/graphics/Paint;->setColor(I)V

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
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/home/view/VerticalRoundedRectView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/transsion/home/view/VerticalRoundedRectView;->c:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    int-to-float v2, v1

    iget v3, p0, Lcom/transsion/home/view/VerticalRoundedRectView;->b:F

    iget v4, p0, Lcom/transsion/home/view/VerticalRoundedRectView;->d:F

    add-float/2addr v3, v4

    mul-float/2addr v2, v3

    new-instance v3, Landroid/graphics/RectF;

    iget v4, p0, Lcom/transsion/home/view/VerticalRoundedRectView;->a:F

    iget v5, p0, Lcom/transsion/home/view/VerticalRoundedRectView;->b:F

    add-float/2addr v5, v2

    const/4 v6, 0x0

    invoke-direct {v3, v6, v2, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v2, p0, Lcom/transsion/home/view/VerticalRoundedRectView;->f:F

    iget-object v4, p0, Lcom/transsion/home/view/VerticalRoundedRectView;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v2, v2, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final setCornerRadius(F)V
    .locals 0

    iput p1, p0, Lcom/transsion/home/view/VerticalRoundedRectView;->f:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setRectColor(I)V
    .locals 1

    iput p1, p0, Lcom/transsion/home/view/VerticalRoundedRectView;->e:I

    iget-object v0, p0, Lcom/transsion/home/view/VerticalRoundedRectView;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setRectCount(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/home/view/VerticalRoundedRectView;->c:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setRectHeight(F)V
    .locals 0

    iput p1, p0, Lcom/transsion/home/view/VerticalRoundedRectView;->b:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setRectSpacing(F)V
    .locals 0

    iput p1, p0, Lcom/transsion/home/view/VerticalRoundedRectView;->d:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setRectWidth(F)V
    .locals 0

    iput p1, p0, Lcom/transsion/home/view/VerticalRoundedRectView;->a:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
