.class Lab/s$a;
.super Landroid/view/ViewOutlineProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lab/s;->n(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lab/s;


# direct methods
.method constructor <init>(Lab/s;)V
    .locals 0

    iput-object p1, p0, Lab/s$a;->a:Lab/s;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 8

    iget-object p1, p0, Lab/s$a;->a:Lab/s;

    iget-object v0, p1, Lab/r;->c:Lab/n;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lab/r;->d:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lab/s$a;->a:Lab/s;

    iget-object v0, p1, Lab/r;->d:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    float-to-int v3, v1

    iget v1, v0, Landroid/graphics/RectF;->top:F

    float-to-int v4, v1

    iget v1, v0, Landroid/graphics/RectF;->right:F

    float-to-int v5, v1

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v6, v0

    invoke-static {p1}, Lab/s;->l(Lab/s;)F

    move-result v7

    move-object v2, p2

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    :cond_0
    return-void
.end method
