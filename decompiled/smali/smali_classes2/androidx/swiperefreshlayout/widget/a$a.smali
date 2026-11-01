.class Landroidx/swiperefreshlayout/widget/a$a;
.super Landroid/graphics/drawable/shapes/OvalShape;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/swiperefreshlayout/widget/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:I

.field private c:Landroidx/swiperefreshlayout/widget/a;


# direct methods
.method constructor <init>(Landroidx/swiperefreshlayout/widget/a;I)V
    .locals 0

    invoke-direct {p0}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    iput-object p1, p0, Landroidx/swiperefreshlayout/widget/a$a;->c:Landroidx/swiperefreshlayout/widget/a;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Landroidx/swiperefreshlayout/widget/a$a;->a:Landroid/graphics/Paint;

    iput p2, p0, Landroidx/swiperefreshlayout/widget/a$a;->b:I

    invoke-virtual {p0}, Landroid/graphics/drawable/shapes/RectShape;->rect()Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    float-to-int p1, p1

    invoke-direct {p0, p1}, Landroidx/swiperefreshlayout/widget/a$a;->a(I)V

    return-void
.end method

.method private a(I)V
    .locals 9

    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/a$a;->a:Landroid/graphics/Paint;

    new-instance v8, Landroid/graphics/RadialGradient;

    div-int/lit8 p1, p1, 0x2

    int-to-float v3, p1

    iget p1, p0, Landroidx/swiperefreshlayout/widget/a$a;->b:I

    int-to-float v4, p1

    const/high16 p1, 0x3d000000    # 0.03125f

    const/4 v1, 0x0

    filled-new-array {p1, v1}, [I

    move-result-object v5

    const/4 v6, 0x0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v1, v8

    move v2, v3

    invoke-direct/range {v1 .. v7}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 4

    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/a$a;->c:Landroidx/swiperefreshlayout/widget/a;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Landroidx/swiperefreshlayout/widget/a$a;->c:Landroidx/swiperefreshlayout/widget/a;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v2, v0

    int-to-float v1, v1

    iget-object v3, p0, Landroidx/swiperefreshlayout/widget/a$a;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v3, p0, Landroidx/swiperefreshlayout/widget/a$a;->b:I

    sub-int/2addr v0, v3

    int-to-float v0, v0

    invoke-virtual {p1, v2, v1, v0, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onResize(FF)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/shapes/OvalShape;->onResize(FF)V

    float-to-int p1, p1

    invoke-direct {p0, p1}, Landroidx/swiperefreshlayout/widget/a$a;->a(I)V

    return-void
.end method
