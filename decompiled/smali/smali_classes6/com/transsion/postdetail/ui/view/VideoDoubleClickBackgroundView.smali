.class public final Lcom/transsion/postdetail/ui/view/VideoDoubleClickBackgroundView;
.super Landroid/view/View;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0011\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005B\u001b\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0004\u0010\u0008B#\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u0004\u0010\u000bB+\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000c\u001a\u00020\t\u00a2\u0006\u0004\u0008\u0004\u0010\rJ)\u0010\u000f\u001a\u00020\u000e2\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0015\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u0011\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0017\u0010\u0017\u001a\u00020\u000e2\u0006\u0010\u0016\u001a\u00020\u0015H\u0014\u00a2\u0006\u0004\u0008\u0017\u0010\u0018R\u0014\u0010\u001b\u001a\u00020\u00198\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u001aR\u0018\u0010\u001f\u001a\u0004\u0018\u00010\u001c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001eR\u0016\u0010\u0012\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008 \u0010!\u00a8\u0006\""
    }
    d2 = {
        "Lcom/transsion/postdetail/ui/view/VideoDoubleClickBackgroundView;",
        "Landroid/view/View;",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "Landroid/util/AttributeSet;",
        "attrs",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "",
        "defStyleAttr",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "defStyleRes",
        "(Landroid/content/Context;Landroid/util/AttributeSet;II)V",
        "",
        "a",
        "(Landroid/util/AttributeSet;II)V",
        "",
        "isLeft",
        "setLeftStyle",
        "(Z)V",
        "Landroid/graphics/Canvas;",
        "canvas",
        "onDraw",
        "(Landroid/graphics/Canvas;)V",
        "Landroid/graphics/Paint;",
        "Landroid/graphics/Paint;",
        "mPaint",
        "Landroid/graphics/RectF;",
        "b",
        "Landroid/graphics/RectF;",
        "rectF",
        "c",
        "Z",
        "PostDetail_psRelease"
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
.field private final a:Landroid/graphics/Paint;

.field private b:Landroid/graphics/RectF;

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/transsion/postdetail/ui/view/VideoDoubleClickBackgroundView;->a:Landroid/graphics/Paint;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/postdetail/ui/view/VideoDoubleClickBackgroundView;->c:Z

    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/transsion/postdetail/ui/view/VideoDoubleClickBackgroundView;->a(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/transsion/postdetail/ui/view/VideoDoubleClickBackgroundView;->a:Landroid/graphics/Paint;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/postdetail/ui/view/VideoDoubleClickBackgroundView;->c:Z

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1, p1}, Lcom/transsion/postdetail/ui/view/VideoDoubleClickBackgroundView;->a(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/transsion/postdetail/ui/view/VideoDoubleClickBackgroundView;->a:Landroid/graphics/Paint;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/postdetail/ui/view/VideoDoubleClickBackgroundView;->c:Z

    const/4 p1, 0x0

    invoke-direct {p0, p2, p3, p1}, Lcom/transsion/postdetail/ui/view/VideoDoubleClickBackgroundView;->a(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/transsion/postdetail/ui/view/VideoDoubleClickBackgroundView;->a:Landroid/graphics/Paint;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/postdetail/ui/view/VideoDoubleClickBackgroundView;->c:Z

    invoke-direct {p0, p2, p3, p4}, Lcom/transsion/postdetail/ui/view/VideoDoubleClickBackgroundView;->a(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private final a(Landroid/util/AttributeSet;II)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/VideoDoubleClickBackgroundView;->a:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/VideoDoubleClickBackgroundView;->a:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    sget p3, Lcom/transsion/postdetail/R$color;->video_double_click_bg:I

    invoke-static {p2, p3}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v7, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float v2, v0, v1

    float-to-double v3, v7

    const/4 v5, 0x2

    int-to-double v8, v5

    div-double/2addr v3, v8

    float-to-double v10, v2

    div-double/2addr v3, v10

    invoke-static {v3, v4}, Ljava/lang/Math;->asin(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    mul-double/2addr v3, v8

    double-to-float v4, v3

    iget-boolean v3, p0, Lcom/transsion/postdetail/ui/view/VideoDoubleClickBackgroundView;->c:Z

    const/4 v8, 0x4

    if-eqz v3, :cond_1

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/VideoDoubleClickBackgroundView;->b:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/RectF;

    neg-float v3, v2

    int-to-float v5, v5

    div-float v5, v7, v5

    add-float v6, v3, v5

    sub-float v5, v2, v5

    add-float/2addr v5, v7

    invoke-direct {v0, v3, v6, v2, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/postdetail/ui/view/VideoDoubleClickBackgroundView;->b:Landroid/graphics/RectF;

    :cond_0
    iget-object v2, p0, Lcom/transsion/postdetail/ui/view/VideoDoubleClickBackgroundView;->b:Landroid/graphics/RectF;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    neg-float v0, v4

    div-float v3, v0, v1

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/transsion/postdetail/ui/view/VideoDoubleClickBackgroundView;->a:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    mul-double/2addr v10, v10

    mul-float v0, v7, v7

    int-to-float v1, v8

    div-float/2addr v0, v1

    float-to-double v0, v0

    sub-double/2addr v10, v0

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v4, v0

    iget-object v6, p0, Lcom/transsion/postdetail/ui/view/VideoDoubleClickBackgroundView;->a:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    move v5, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/transsion/postdetail/ui/view/VideoDoubleClickBackgroundView;->b:Landroid/graphics/RectF;

    if-nez v3, :cond_2

    new-instance v3, Landroid/graphics/RectF;

    neg-float v6, v2

    int-to-float v5, v5

    div-float v5, v7, v5

    add-float/2addr v6, v5

    add-float v9, v0, v2

    sub-float v5, v2, v5

    add-float/2addr v5, v7

    invoke-direct {v3, v2, v6, v9, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v3, p0, Lcom/transsion/postdetail/ui/view/VideoDoubleClickBackgroundView;->b:Landroid/graphics/RectF;

    :cond_2
    iget-object v2, p0, Lcom/transsion/postdetail/ui/view/VideoDoubleClickBackgroundView;->b:Landroid/graphics/RectF;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    const/16 v3, 0xb4

    int-to-float v3, v3

    div-float v1, v4, v1

    sub-float/2addr v3, v1

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/transsion/postdetail/ui/view/VideoDoubleClickBackgroundView;->a:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    mul-double/2addr v10, v10

    mul-float v1, v7, v7

    int-to-float v2, v8

    div-float/2addr v1, v2

    float-to-double v1, v1

    sub-double/2addr v10, v1

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    sub-float v2, v0, v1

    const/4 v3, 0x0

    iget-object v6, p0, Lcom/transsion/postdetail/ui/view/VideoDoubleClickBackgroundView;->a:Landroid/graphics/Paint;

    move-object v1, p1

    move v4, v0

    move v5, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method public final setLeftStyle(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/postdetail/ui/view/VideoDoubleClickBackgroundView;->c:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/transsion/postdetail/ui/view/VideoDoubleClickBackgroundView;->c:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/transsion/postdetail/ui/view/VideoDoubleClickBackgroundView;->b:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
