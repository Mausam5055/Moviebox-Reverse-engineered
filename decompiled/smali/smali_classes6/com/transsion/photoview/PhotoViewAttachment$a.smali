.class Lcom/transsion/photoview/PhotoViewAttachment$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/photoview/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/photoview/PhotoViewAttachment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/photoview/PhotoViewAttachment;


# direct methods
.method constructor <init>(Lcom/transsion/photoview/PhotoViewAttachment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/photoview/PhotoViewAttachment$a;->a:Lcom/transsion/photoview/PhotoViewAttachment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(FF)V
    .locals 5

    iget-object v0, p0, Lcom/transsion/photoview/PhotoViewAttachment$a;->a:Lcom/transsion/photoview/PhotoViewAttachment;

    invoke-static {v0}, Lcom/transsion/photoview/PhotoViewAttachment;->n(Lcom/transsion/photoview/PhotoViewAttachment;)Lcom/transsion/photoview/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/photoview/b;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/photoview/PhotoViewAttachment$a;->a:Lcom/transsion/photoview/PhotoViewAttachment;

    invoke-static {v0}, Lcom/transsion/photoview/PhotoViewAttachment;->j(Lcom/transsion/photoview/PhotoViewAttachment;)Lcom/transsion/photoview/j;

    iget-object v0, p0, Lcom/transsion/photoview/PhotoViewAttachment$a;->a:Lcom/transsion/photoview/PhotoViewAttachment;

    invoke-static {v0}, Lcom/transsion/photoview/PhotoViewAttachment;->p(Lcom/transsion/photoview/PhotoViewAttachment;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Lcom/transsion/photoview/PhotoViewAttachment$a;->a:Lcom/transsion/photoview/PhotoViewAttachment;

    invoke-static {v0}, Lcom/transsion/photoview/PhotoViewAttachment;->w(Lcom/transsion/photoview/PhotoViewAttachment;)V

    iget-object v0, p0, Lcom/transsion/photoview/PhotoViewAttachment$a;->a:Lcom/transsion/photoview/PhotoViewAttachment;

    invoke-static {v0}, Lcom/transsion/photoview/PhotoViewAttachment;->e(Lcom/transsion/photoview/PhotoViewAttachment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/photoview/PhotoViewAttachment$a;->a:Lcom/transsion/photoview/PhotoViewAttachment;

    invoke-static {v1}, Lcom/transsion/photoview/PhotoViewAttachment;->a(Lcom/transsion/photoview/PhotoViewAttachment;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/transsion/photoview/PhotoViewAttachment$a;->a:Lcom/transsion/photoview/PhotoViewAttachment;

    invoke-static {v1}, Lcom/transsion/photoview/PhotoViewAttachment;->n(Lcom/transsion/photoview/PhotoViewAttachment;)Lcom/transsion/photoview/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/photoview/b;->g()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/transsion/photoview/PhotoViewAttachment$a;->a:Lcom/transsion/photoview/PhotoViewAttachment;

    invoke-static {v1}, Lcom/transsion/photoview/PhotoViewAttachment;->b(Lcom/transsion/photoview/PhotoViewAttachment;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/transsion/photoview/PhotoViewAttachment$a;->a:Lcom/transsion/photoview/PhotoViewAttachment;

    invoke-static {v1}, Lcom/transsion/photoview/PhotoViewAttachment;->d(Lcom/transsion/photoview/PhotoViewAttachment;)I

    move-result v1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_4

    iget-object v1, p0, Lcom/transsion/photoview/PhotoViewAttachment$a;->a:Lcom/transsion/photoview/PhotoViewAttachment;

    invoke-static {v1}, Lcom/transsion/photoview/PhotoViewAttachment;->d(Lcom/transsion/photoview/PhotoViewAttachment;)I

    move-result v1

    const/high16 v3, 0x3f800000    # 1.0f

    if-nez v1, :cond_1

    cmpl-float v1, p1, v3

    if-gez v1, :cond_4

    :cond_1
    iget-object v1, p0, Lcom/transsion/photoview/PhotoViewAttachment$a;->a:Lcom/transsion/photoview/PhotoViewAttachment;

    invoke-static {v1}, Lcom/transsion/photoview/PhotoViewAttachment;->d(Lcom/transsion/photoview/PhotoViewAttachment;)I

    move-result v1

    const/high16 v4, -0x40800000    # -1.0f

    if-ne v1, v2, :cond_2

    cmpg-float p1, p1, v4

    if-lez p1, :cond_4

    :cond_2
    iget-object p1, p0, Lcom/transsion/photoview/PhotoViewAttachment$a;->a:Lcom/transsion/photoview/PhotoViewAttachment;

    invoke-static {p1}, Lcom/transsion/photoview/PhotoViewAttachment;->q(Lcom/transsion/photoview/PhotoViewAttachment;)I

    move-result p1

    if-nez p1, :cond_3

    cmpl-float p1, p2, v3

    if-gez p1, :cond_4

    :cond_3
    iget-object p1, p0, Lcom/transsion/photoview/PhotoViewAttachment$a;->a:Lcom/transsion/photoview/PhotoViewAttachment;

    invoke-static {p1}, Lcom/transsion/photoview/PhotoViewAttachment;->q(Lcom/transsion/photoview/PhotoViewAttachment;)I

    move-result p1

    if-ne p1, v2, :cond_7

    cmpg-float p1, p2, v4

    if-gtz p1, :cond_7

    :cond_4
    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 p1, 0x0

    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    iget-object p1, p0, Lcom/transsion/photoview/PhotoViewAttachment$a;->a:Lcom/transsion/photoview/PhotoViewAttachment;

    invoke-static {p1}, Lcom/transsion/photoview/PhotoViewAttachment;->u(Lcom/transsion/photoview/PhotoViewAttachment;)Lcom/transsion/photoview/n;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/photoview/PhotoViewAttachment$a;->a:Lcom/transsion/photoview/PhotoViewAttachment;

    invoke-virtual {p2}, Lcom/transsion/photoview/PhotoViewAttachment;->M()F

    move-result p2

    iget-object v0, p0, Lcom/transsion/photoview/PhotoViewAttachment$a;->a:Lcom/transsion/photoview/PhotoViewAttachment;

    invoke-static {v0}, Lcom/transsion/photoview/PhotoViewAttachment;->n(Lcom/transsion/photoview/PhotoViewAttachment;)Lcom/transsion/photoview/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/photoview/b;->d()F

    move-result v0

    iget-object v1, p0, Lcom/transsion/photoview/PhotoViewAttachment$a;->a:Lcom/transsion/photoview/PhotoViewAttachment;

    invoke-static {v1}, Lcom/transsion/photoview/PhotoViewAttachment;->n(Lcom/transsion/photoview/PhotoViewAttachment;)Lcom/transsion/photoview/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/photoview/b;->e()F

    move-result v1

    invoke-virtual {p1, p2, v0, v1}, Lcom/transsion/photoview/n;->e(FFF)V

    goto :goto_0

    :cond_6
    if-eqz v0, :cond_7

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_7
    :goto_0
    return-void
.end method

.method public c(FFFFF)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/photoview/PhotoViewAttachment$a;->a:Lcom/transsion/photoview/PhotoViewAttachment;

    invoke-static {v0}, Lcom/transsion/photoview/PhotoViewAttachment;->u(Lcom/transsion/photoview/PhotoViewAttachment;)Lcom/transsion/photoview/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/photoview/n;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/photoview/PhotoViewAttachment$a;->a:Lcom/transsion/photoview/PhotoViewAttachment;

    invoke-virtual {v0}, Lcom/transsion/photoview/PhotoViewAttachment;->M()F

    move-result v0

    iget-object v1, p0, Lcom/transsion/photoview/PhotoViewAttachment$a;->a:Lcom/transsion/photoview/PhotoViewAttachment;

    invoke-static {v1}, Lcom/transsion/photoview/PhotoViewAttachment;->h(Lcom/transsion/photoview/PhotoViewAttachment;)F

    move-result v1

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/transsion/photoview/PhotoViewAttachment$a;->a:Lcom/transsion/photoview/PhotoViewAttachment;

    invoke-static {v0}, Lcom/transsion/photoview/PhotoViewAttachment;->m(Lcom/transsion/photoview/PhotoViewAttachment;)Lcom/transsion/photoview/g;

    iget-object v0, p0, Lcom/transsion/photoview/PhotoViewAttachment$a;->a:Lcom/transsion/photoview/PhotoViewAttachment;

    invoke-static {v0}, Lcom/transsion/photoview/PhotoViewAttachment;->p(Lcom/transsion/photoview/PhotoViewAttachment;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, p1, p1, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    iget-object p1, p0, Lcom/transsion/photoview/PhotoViewAttachment$a;->a:Lcom/transsion/photoview/PhotoViewAttachment;

    invoke-static {p1}, Lcom/transsion/photoview/PhotoViewAttachment;->p(Lcom/transsion/photoview/PhotoViewAttachment;)Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p1, p4, p5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object p1, p0, Lcom/transsion/photoview/PhotoViewAttachment$a;->a:Lcom/transsion/photoview/PhotoViewAttachment;

    invoke-static {p1}, Lcom/transsion/photoview/PhotoViewAttachment;->w(Lcom/transsion/photoview/PhotoViewAttachment;)V

    :cond_2
    return-void
.end method

.method public d(FFF)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/photoview/PhotoViewAttachment$a;->c(FFFFF)V

    return-void
.end method

.method public e(FFFF)V
    .locals 2

    iget-object p1, p0, Lcom/transsion/photoview/PhotoViewAttachment$a;->a:Lcom/transsion/photoview/PhotoViewAttachment;

    new-instance p2, Lcom/transsion/photoview/PhotoViewAttachment$FlingRunnable;

    invoke-static {p1}, Lcom/transsion/photoview/PhotoViewAttachment;->e(Lcom/transsion/photoview/PhotoViewAttachment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lcom/transsion/photoview/PhotoViewAttachment$FlingRunnable;-><init>(Lcom/transsion/photoview/PhotoViewAttachment;Landroid/content/Context;)V

    invoke-static {p1, p2}, Lcom/transsion/photoview/PhotoViewAttachment;->v(Lcom/transsion/photoview/PhotoViewAttachment;Lcom/transsion/photoview/PhotoViewAttachment$FlingRunnable;)V

    iget-object p1, p0, Lcom/transsion/photoview/PhotoViewAttachment$a;->a:Lcom/transsion/photoview/PhotoViewAttachment;

    invoke-static {p1}, Lcom/transsion/photoview/PhotoViewAttachment;->c(Lcom/transsion/photoview/PhotoViewAttachment;)Lcom/transsion/photoview/PhotoViewAttachment$FlingRunnable;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/photoview/PhotoViewAttachment$a;->a:Lcom/transsion/photoview/PhotoViewAttachment;

    invoke-static {p2}, Lcom/transsion/photoview/PhotoViewAttachment;->e(Lcom/transsion/photoview/PhotoViewAttachment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/transsion/photoview/PhotoViewAttachment;->y(Lcom/transsion/photoview/PhotoViewAttachment;Landroid/widget/ImageView;)I

    move-result p2

    iget-object v0, p0, Lcom/transsion/photoview/PhotoViewAttachment$a;->a:Lcom/transsion/photoview/PhotoViewAttachment;

    invoke-static {v0}, Lcom/transsion/photoview/PhotoViewAttachment;->e(Lcom/transsion/photoview/PhotoViewAttachment;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/photoview/PhotoViewAttachment;->x(Lcom/transsion/photoview/PhotoViewAttachment;Landroid/widget/ImageView;)I

    move-result v0

    float-to-int p3, p3

    float-to-int p4, p4

    invoke-virtual {p1, p2, v0, p3, p4}, Lcom/transsion/photoview/PhotoViewAttachment$FlingRunnable;->fling(IIII)V

    iget-object p1, p0, Lcom/transsion/photoview/PhotoViewAttachment$a;->a:Lcom/transsion/photoview/PhotoViewAttachment;

    invoke-static {p1}, Lcom/transsion/photoview/PhotoViewAttachment;->e(Lcom/transsion/photoview/PhotoViewAttachment;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/photoview/PhotoViewAttachment$a;->a:Lcom/transsion/photoview/PhotoViewAttachment;

    invoke-static {p2}, Lcom/transsion/photoview/PhotoViewAttachment;->c(Lcom/transsion/photoview/PhotoViewAttachment;)Lcom/transsion/photoview/PhotoViewAttachment$FlingRunnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
