.class Landroidx/transition/b$g;
.super Landroid/animation/AnimatorListenerAdapter;

# interfaces
.implements Landroidx/transition/j$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/transition/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "g"
.end annotation


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Landroid/graphics/Rect;

.field private final c:Z

.field private final d:Landroid/graphics/Rect;

.field private final e:Z

.field private final f:I

.field private final g:I

.field private final h:I

.field private final i:I

.field private final j:I

.field private final k:I

.field private final l:I

.field private final m:I

.field private n:Z


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/graphics/Rect;ZLandroid/graphics/Rect;ZIIIIIIII)V
    .locals 0

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    iput-object p1, p0, Landroidx/transition/b$g;->a:Landroid/view/View;

    iput-object p2, p0, Landroidx/transition/b$g;->b:Landroid/graphics/Rect;

    iput-boolean p3, p0, Landroidx/transition/b$g;->c:Z

    iput-object p4, p0, Landroidx/transition/b$g;->d:Landroid/graphics/Rect;

    iput-boolean p5, p0, Landroidx/transition/b$g;->e:Z

    iput p6, p0, Landroidx/transition/b$g;->f:I

    iput p7, p0, Landroidx/transition/b$g;->g:I

    iput p8, p0, Landroidx/transition/b$g;->h:I

    iput p9, p0, Landroidx/transition/b$g;->i:I

    iput p10, p0, Landroidx/transition/b$g;->j:I

    iput p11, p0, Landroidx/transition/b$g;->k:I

    iput p12, p0, Landroidx/transition/b$g;->l:I

    iput p13, p0, Landroidx/transition/b$g;->m:I

    return-void
.end method


# virtual methods
.method public a(Landroidx/transition/j;)V
    .locals 3

    iget-object p1, p0, Landroidx/transition/b$g;->a:Landroid/view/View;

    sget v0, Landroidx/transition/R$id;->transition_clip:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    iget-object v0, p0, Landroidx/transition/b$g;->a:Landroid/view/View;

    sget v1, Landroidx/transition/R$id;->transition_clip:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object v0, p0, Landroidx/transition/b$g;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public b(Landroidx/transition/j;)V
    .locals 0

    return-void
.end method

.method public c(Landroidx/transition/j;)V
    .locals 2

    iget-object p1, p0, Landroidx/transition/b$g;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getClipBounds()Landroid/graphics/Rect;

    move-result-object p1

    iget-object v0, p0, Landroidx/transition/b$g;->a:Landroid/view/View;

    sget v1, Landroidx/transition/R$id;->transition_clip:I

    invoke-virtual {v0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-boolean p1, p0, Landroidx/transition/b$g;->e:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/transition/b$g;->d:Landroid/graphics/Rect;

    :goto_0
    iget-object v0, p0, Landroidx/transition/b$g;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public synthetic d(Landroidx/transition/j;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/transition/k;->a(Landroidx/transition/j$f;Landroidx/transition/j;Z)V

    return-void
.end method

.method public e(Landroidx/transition/j;)V
    .locals 0

    return-void
.end method

.method public f(Landroidx/transition/j;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/transition/b$g;->n:Z

    return-void
.end method

.method public synthetic g(Landroidx/transition/j;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/transition/k;->b(Landroidx/transition/j$f;Landroidx/transition/j;Z)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/transition/b$g;->onAnimationEnd(Landroid/animation/Animator;Z)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;Z)V
    .locals 3

    iget-boolean p1, p0, Landroidx/transition/b$g;->n:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    if-eqz p2, :cond_2

    iget-boolean v0, p0, Landroidx/transition/b$g;->c:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroidx/transition/b$g;->b:Landroid/graphics/Rect;

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Landroidx/transition/b$g;->e:Z

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object p1, p0, Landroidx/transition/b$g;->d:Landroid/graphics/Rect;

    :goto_0
    iget-object v0, p0, Landroidx/transition/b$g;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    if-eqz p2, :cond_4

    iget-object p1, p0, Landroidx/transition/b$g;->a:Landroid/view/View;

    iget p2, p0, Landroidx/transition/b$g;->f:I

    iget v0, p0, Landroidx/transition/b$g;->g:I

    iget v1, p0, Landroidx/transition/b$g;->h:I

    iget v2, p0, Landroidx/transition/b$g;->i:I

    invoke-static {p1, p2, v0, v1, v2}, Landroidx/transition/z;->d(Landroid/view/View;IIII)V

    goto :goto_1

    :cond_4
    iget-object p1, p0, Landroidx/transition/b$g;->a:Landroid/view/View;

    iget p2, p0, Landroidx/transition/b$g;->j:I

    iget v0, p0, Landroidx/transition/b$g;->k:I

    iget v1, p0, Landroidx/transition/b$g;->l:I

    iget v2, p0, Landroidx/transition/b$g;->m:I

    invoke-static {p1, p2, v0, v1, v2}, Landroidx/transition/z;->d(Landroid/view/View;IIII)V

    :goto_1
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/transition/b$g;->onAnimationStart(Landroid/animation/Animator;Z)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;Z)V
    .locals 4

    iget p1, p0, Landroidx/transition/b$g;->h:I

    iget v0, p0, Landroidx/transition/b$g;->f:I

    sub-int/2addr p1, v0

    iget v0, p0, Landroidx/transition/b$g;->l:I

    iget v1, p0, Landroidx/transition/b$g;->j:I

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v0, p0, Landroidx/transition/b$g;->i:I

    iget v1, p0, Landroidx/transition/b$g;->g:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroidx/transition/b$g;->m:I

    iget v2, p0, Landroidx/transition/b$g;->k:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-eqz p2, :cond_0

    iget v1, p0, Landroidx/transition/b$g;->j:I

    goto :goto_0

    :cond_0
    iget v1, p0, Landroidx/transition/b$g;->f:I

    :goto_0
    if-eqz p2, :cond_1

    iget v2, p0, Landroidx/transition/b$g;->k:I

    goto :goto_1

    :cond_1
    iget v2, p0, Landroidx/transition/b$g;->g:I

    :goto_1
    iget-object v3, p0, Landroidx/transition/b$g;->a:Landroid/view/View;

    add-int/2addr p1, v1

    add-int/2addr v0, v2

    invoke-static {v3, v1, v2, p1, v0}, Landroidx/transition/z;->d(Landroid/view/View;IIII)V

    if-eqz p2, :cond_2

    iget-object p1, p0, Landroidx/transition/b$g;->d:Landroid/graphics/Rect;

    goto :goto_2

    :cond_2
    iget-object p1, p0, Landroidx/transition/b$g;->b:Landroid/graphics/Rect;

    :goto_2
    iget-object p2, p0, Landroidx/transition/b$g;->a:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    return-void
.end method
