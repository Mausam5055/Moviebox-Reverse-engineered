.class public Lcom/google/android/material/badge/BadgeDrawable;
.super Landroid/graphics/drawable/Drawable;

# interfaces
.implements Lcom/google/android/material/internal/y$b;


# static fields
.field private static final n:I

.field private static final o:I


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;

.field private final b:Lab/i;

.field private final c:Lcom/google/android/material/internal/y;

.field private final d:Landroid/graphics/Rect;

.field private final e:Lcom/google/android/material/badge/BadgeState;

.field private f:F

.field private g:F

.field private h:I

.field private i:F

.field private j:F

.field private k:F

.field private l:Ljava/lang/ref/WeakReference;

.field private m:Ljava/lang/ref/WeakReference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/google/android/material/R$style;->Widget_MaterialComponents_Badge:I

    sput v0, Lcom/google/android/material/badge/BadgeDrawable;->n:I

    sget v0, Lcom/google/android/material/R$attr;->badgeStyle:I

    sput v0, Lcom/google/android/material/badge/BadgeDrawable;->o:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;IIILcom/google/android/material/badge/BadgeState$State;)V
    .locals 8

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->a:Ljava/lang/ref/WeakReference;

    invoke-static {p1}, Lcom/google/android/material/internal/b0;->c(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->d:Landroid/graphics/Rect;

    new-instance v0, Lcom/google/android/material/internal/y;

    invoke-direct {v0, p0}, Lcom/google/android/material/internal/y;-><init>(Lcom/google/android/material/internal/y$b;)V

    iput-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->c:Lcom/google/android/material/internal/y;

    invoke-virtual {v0}, Lcom/google/android/material/internal/y;->g()Landroid/text/TextPaint;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    new-instance v0, Lcom/google/android/material/badge/BadgeState;

    move-object v2, v0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/google/android/material/badge/BadgeState;-><init>(Landroid/content/Context;IIILcom/google/android/material/badge/BadgeState$State;)V

    iput-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->e:Lcom/google/android/material/badge/BadgeState;

    new-instance p2, Lab/i;

    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->A()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->m()I

    move-result p3

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->i()I

    move-result p3

    :goto_0
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->A()Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->l()I

    move-result p4

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->h()I

    move-result p4

    :goto_1
    invoke-static {p1, p3, p4}, Lab/n;->b(Landroid/content/Context;II)Lab/n$b;

    move-result-object p1

    invoke-virtual {p1}, Lab/n$b;->m()Lab/n;

    move-result-object p1

    invoke-direct {p2, p1}, Lab/i;-><init>(Lab/n;)V

    iput-object p2, p0, Lcom/google/android/material/badge/BadgeDrawable;->b:Lab/i;

    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->N()V

    return-void
.end method

.method private A()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->C()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->B()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private D()Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->j()Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/google/android/material/R$id;->mtrl_anchor_parent:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private E()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->c:Lcom/google/android/material/internal/y;

    invoke-virtual {v0}, Lcom/google/android/material/internal/y;->g()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getAlpha()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method private F()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->e:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->e()I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->b:Lab/i;

    invoke-virtual {v1}, Lab/i;->z()Landroid/content/res/ColorStateList;

    move-result-object v1

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->b:Lab/i;

    invoke-virtual {v1, v0}, Lab/i;->d0(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method private G()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->c:Lcom/google/android/material/internal/y;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/material/internal/y;->l(Z)V

    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->I()V

    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->T()V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method private H()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->l:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->l:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->m:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/google/android/material/badge/BadgeDrawable;->S(Landroid/view/View;Landroid/widget/FrameLayout;)V

    :cond_1
    return-void
.end method

.method private I()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->b:Lab/i;

    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->A()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/material/badge/BadgeDrawable;->e:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v2}, Lcom/google/android/material/badge/BadgeState;->m()I

    move-result v2

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/google/android/material/badge/BadgeDrawable;->e:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v2}, Lcom/google/android/material/badge/BadgeState;->i()I

    move-result v2

    :goto_0
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->A()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/android/material/badge/BadgeDrawable;->e:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v3}, Lcom/google/android/material/badge/BadgeState;->l()I

    move-result v3

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/google/android/material/badge/BadgeDrawable;->e:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v3}, Lcom/google/android/material/badge/BadgeState;->h()I

    move-result v3

    :goto_1
    invoke-static {v0, v2, v3}, Lab/n;->b(Landroid/content/Context;II)Lab/n$b;

    move-result-object v0

    invoke-virtual {v0}, Lab/n$b;->m()Lab/n;

    move-result-object v0

    invoke-virtual {v1, v0}, Lab/i;->setShapeAppearanceModel(Lab/n;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method private J()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lxa/d;

    iget-object v2, p0, Lcom/google/android/material/badge/BadgeDrawable;->e:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v2}, Lcom/google/android/material/badge/BadgeState;->A()I

    move-result v2

    invoke-direct {v1, v0, v2}, Lxa/d;-><init>(Landroid/content/Context;I)V

    iget-object v2, p0, Lcom/google/android/material/badge/BadgeDrawable;->c:Lcom/google/android/material/internal/y;

    invoke-virtual {v2}, Lcom/google/android/material/internal/y;->e()Lxa/d;

    move-result-object v2

    if-ne v2, v1, :cond_1

    return-void

    :cond_1
    iget-object v2, p0, Lcom/google/android/material/badge/BadgeDrawable;->c:Lcom/google/android/material/internal/y;

    invoke-virtual {v2, v1, v0}, Lcom/google/android/material/internal/y;->k(Lxa/d;Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->K()V

    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->T()V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method private K()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->c:Lcom/google/android/material/internal/y;

    invoke-virtual {v0}, Lcom/google/android/material/internal/y;->g()Landroid/text/TextPaint;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->e:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v1}, Lcom/google/android/material/badge/BadgeState;->j()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method private L()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->U()V

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->c:Lcom/google/android/material/internal/y;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/material/internal/y;->l(Z)V

    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->T()V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method private M()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->e:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->G()Z

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    sget-boolean v1, Lcom/google/android/material/badge/c;->a:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->j()Landroid/widget/FrameLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->j()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method private N()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->I()V

    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->J()V

    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->L()V

    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->G()V

    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->E()V

    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->F()V

    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->K()V

    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->H()V

    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->T()V

    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->M()V

    return-void
.end method

.method private Q(Landroid/view/View;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lcom/google/android/material/R$id;->mtrl_anchor_parent:I

    if-eq v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->m:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_2

    :cond_1
    return-void

    :cond_2
    invoke-static {p1}, Lcom/google/android/material/badge/BadgeDrawable;->R(Landroid/view/View;)V

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/google/android/material/R$id;->mtrl_anchor_parent:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setMinimumWidth(I)V

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setMinimumHeight(I)V

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->m:Ljava/lang/ref/WeakReference;

    new-instance v0, Lcom/google/android/material/badge/BadgeDrawable$1;

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/material/badge/BadgeDrawable$1;-><init>(Lcom/google/android/material/badge/BadgeDrawable;Landroid/view/View;Landroid/widget/FrameLayout;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static R(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    return-void
.end method

.method private T()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->l:Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    if-eqz v0, :cond_7

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v3, p0, Lcom/google/android/material/badge/BadgeDrawable;->d:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v1, v3}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v4, p0, Lcom/google/android/material/badge/BadgeDrawable;->m:Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    :cond_2
    if-nez v2, :cond_3

    sget-boolean v4, Lcom/google/android/material/badge/c;->a:Z

    if-eqz v4, :cond_5

    :cond_3
    if-nez v2, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    :cond_4
    invoke-virtual {v2, v1, v3}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    :cond_5
    invoke-direct {p0, v3, v1}, Lcom/google/android/material/badge/BadgeDrawable;->c(Landroid/graphics/Rect;Landroid/view/View;)V

    iget-object v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->d:Landroid/graphics/Rect;

    iget v2, p0, Lcom/google/android/material/badge/BadgeDrawable;->f:F

    iget v3, p0, Lcom/google/android/material/badge/BadgeDrawable;->g:F

    iget v4, p0, Lcom/google/android/material/badge/BadgeDrawable;->j:F

    iget v5, p0, Lcom/google/android/material/badge/BadgeDrawable;->k:F

    invoke-static {v1, v2, v3, v4, v5}, Lcom/google/android/material/badge/c;->i(Landroid/graphics/Rect;FFFF)V

    iget v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->i:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/google/android/material/badge/BadgeDrawable;->b:Lab/i;

    invoke-virtual {v2, v1}, Lab/i;->a0(F)V

    :cond_6
    iget-object v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->d:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->b:Lab/i;

    iget-object v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->d:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_7
    :goto_1
    return-void
.end method

.method private U()V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->n()I

    move-result v0

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->n()I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v2

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->h:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->o()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->h:I

    :goto_0
    return-void
.end method

.method private b(Landroid/view/View;)V
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->j()Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    move v5, v0

    move-object v0, p1

    move p1, v5

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->D()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/View;

    if-nez p1, :cond_2

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result p1

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_3
    move p1, v1

    move v2, p1

    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/google/android/material/badge/BadgeDrawable;->x(Landroid/view/View;F)F

    move-result v3

    invoke-direct {p0, v0, v2}, Lcom/google/android/material/badge/BadgeDrawable;->m(Landroid/view/View;F)F

    move-result v4

    invoke-direct {p0, v0, p1}, Lcom/google/android/material/badge/BadgeDrawable;->h(Landroid/view/View;F)F

    move-result p1

    invoke-direct {p0, v0, v2}, Lcom/google/android/material/badge/BadgeDrawable;->s(Landroid/view/View;F)F

    move-result v0

    cmpg-float v2, v3, v1

    if-gez v2, :cond_4

    iget v2, p0, Lcom/google/android/material/badge/BadgeDrawable;->g:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/google/android/material/badge/BadgeDrawable;->g:F

    :cond_4
    cmpg-float v2, v4, v1

    if-gez v2, :cond_5

    iget v2, p0, Lcom/google/android/material/badge/BadgeDrawable;->f:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/google/android/material/badge/BadgeDrawable;->f:F

    :cond_5
    cmpl-float v2, p1, v1

    if-lez v2, :cond_6

    iget v2, p0, Lcom/google/android/material/badge/BadgeDrawable;->g:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sub-float/2addr v2, p1

    iput v2, p0, Lcom/google/android/material/badge/BadgeDrawable;->g:F

    :cond_6
    cmpl-float p1, v0, v1

    if-lez p1, :cond_7

    iget p1, p0, Lcom/google/android/material/badge/BadgeDrawable;->f:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/google/android/material/badge/BadgeDrawable;->f:F

    :cond_7
    return-void
.end method

.method private c(Landroid/graphics/Rect;Landroid/view/View;)V
    .locals 5

    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->e:Lcom/google/android/material/badge/BadgeState;

    iget v0, v0, Lcom/google/android/material/badge/BadgeState;->d:F

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->e:Lcom/google/android/material/badge/BadgeState;

    iget v0, v0, Lcom/google/android/material/badge/BadgeState;->c:F

    :goto_0
    iput v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->i:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, v0, v1

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v1, :cond_1

    iput v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->j:F

    iput v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->k:F

    goto :goto_5

    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->A()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->e:Lcom/google/android/material/badge/BadgeState;

    iget v0, v0, Lcom/google/android/material/badge/BadgeState;->g:F

    :goto_1
    div-float/2addr v0, v2

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->e:Lcom/google/android/material/badge/BadgeState;

    iget v0, v0, Lcom/google/android/material/badge/BadgeState;->e:F

    goto :goto_1

    :goto_2
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->j:F

    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->A()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->e:Lcom/google/android/material/badge/BadgeState;

    iget v0, v0, Lcom/google/android/material/badge/BadgeState;->h:F

    :goto_3
    div-float/2addr v0, v2

    goto :goto_4

    :cond_3
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->e:Lcom/google/android/material/badge/BadgeState;

    iget v0, v0, Lcom/google/android/material/badge/BadgeState;->f:F

    goto :goto_3

    :goto_4
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->k:F

    :goto_5
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->A()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->g()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->j:F

    iget-object v3, p0, Lcom/google/android/material/badge/BadgeDrawable;->c:Lcom/google/android/material/internal/y;

    invoke-virtual {v3, v0}, Lcom/google/android/material/internal/y;->h(Ljava/lang/String;)F

    move-result v3

    div-float/2addr v3, v2

    iget-object v4, p0, Lcom/google/android/material/badge/BadgeDrawable;->e:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v4}, Lcom/google/android/material/badge/BadgeState;->g()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->j:F

    iget v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->k:F

    iget-object v3, p0, Lcom/google/android/material/badge/BadgeDrawable;->c:Lcom/google/android/material/internal/y;

    invoke-virtual {v3, v0}, Lcom/google/android/material/internal/y;->f(Ljava/lang/String;)F

    move-result v0

    div-float/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/material/badge/BadgeDrawable;->e:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v2}, Lcom/google/android/material/badge/BadgeState;->k()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->k:F

    iget v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->j:F

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->j:F

    :cond_4
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->z()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->e:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v1}, Lcom/google/android/material/badge/BadgeState;->f()I

    move-result v1

    const v2, 0x800053

    if-eq v1, v2, :cond_5

    const v3, 0x800055

    if-eq v1, v3, :cond_5

    iget v1, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v0

    int-to-float v0, v1

    iput v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->g:F

    goto :goto_6

    :cond_5
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v0

    int-to-float v0, v1

    iput v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->g:F

    :goto_6
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->y()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->e:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v1}, Lcom/google/android/material/badge/BadgeState;->f()I

    move-result v1

    const v3, 0x800033

    if-eq v1, v3, :cond_7

    if-eq v1, v2, :cond_7

    invoke-static {p2}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_6

    iget p1, p1, Landroid/graphics/Rect;->right:I

    int-to-float p1, p1

    iget v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->j:F

    add-float/2addr p1, v1

    int-to-float v0, v0

    sub-float/2addr p1, v0

    goto :goto_7

    :cond_6
    iget p1, p1, Landroid/graphics/Rect;->left:I

    int-to-float p1, p1

    iget v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->j:F

    sub-float/2addr p1, v1

    int-to-float v0, v0

    add-float/2addr p1, v0

    :goto_7
    iput p1, p0, Lcom/google/android/material/badge/BadgeDrawable;->f:F

    goto :goto_9

    :cond_7
    invoke-static {p2}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_8

    iget p1, p1, Landroid/graphics/Rect;->left:I

    int-to-float p1, p1

    iget v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->j:F

    sub-float/2addr p1, v1

    int-to-float v0, v0

    add-float/2addr p1, v0

    goto :goto_8

    :cond_8
    iget p1, p1, Landroid/graphics/Rect;->right:I

    int-to-float p1, p1

    iget v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->j:F

    add-float/2addr p1, v1

    int-to-float v0, v0

    sub-float/2addr p1, v0

    :goto_8
    iput p1, p0, Lcom/google/android/material/badge/BadgeDrawable;->f:F

    :goto_9
    iget-object p1, p0, Lcom/google/android/material/badge/BadgeDrawable;->e:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {p1}, Lcom/google/android/material/badge/BadgeState;->F()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-direct {p0, p2}, Lcom/google/android/material/badge/BadgeDrawable;->b(Landroid/view/View;)V

    :cond_9
    return-void
.end method

.method public static d(Landroid/content/Context;)Lcom/google/android/material/badge/BadgeDrawable;
    .locals 7

    new-instance v6, Lcom/google/android/material/badge/BadgeDrawable;

    sget v3, Lcom/google/android/material/badge/BadgeDrawable;->o:I

    sget v4, Lcom/google/android/material/badge/BadgeDrawable;->n:I

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/badge/BadgeDrawable;-><init>(Landroid/content/Context;IIILcom/google/android/material/badge/BadgeState$State;)V

    return-object v6
.end method

.method static e(Landroid/content/Context;Lcom/google/android/material/badge/BadgeState$State;)Lcom/google/android/material/badge/BadgeDrawable;
    .locals 7

    new-instance v6, Lcom/google/android/material/badge/BadgeDrawable;

    sget v3, Lcom/google/android/material/badge/BadgeDrawable;->o:I

    sget v4, Lcom/google/android/material/badge/BadgeDrawable;->n:I

    const/4 v2, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/badge/BadgeDrawable;-><init>(Landroid/content/Context;IIILcom/google/android/material/badge/BadgeState$State;)V

    return-object v6
.end method

.method private f(Landroid/graphics/Canvas;)V
    .locals 5

    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object v2, p0, Lcom/google/android/material/badge/BadgeDrawable;->c:Lcom/google/android/material/internal/y;

    invoke-virtual {v2}, Lcom/google/android/material/internal/y;->g()Landroid/text/TextPaint;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v0, v3, v4, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget v2, p0, Lcom/google/android/material/badge/BadgeDrawable;->g:F

    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v3

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/google/android/material/badge/BadgeDrawable;->f:F

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-gtz v1, :cond_0

    float-to-int v1, v2

    :goto_0
    int-to-float v1, v1

    goto :goto_1

    :cond_0
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    goto :goto_0

    :goto_1
    iget-object v2, p0, Lcom/google/android/material/badge/BadgeDrawable;->c:Lcom/google/android/material/internal/y;

    invoke-virtual {v2}, Lcom/google/android/material/internal/y;->g()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method private g()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->v()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->B()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->q()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private h(Landroid/view/View;F)F
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->g:F

    iget v2, p0, Lcom/google/android/material/badge/BadgeDrawable;->k:F

    add-float/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p1

    sub-float/2addr v0, p1

    sub-float/2addr v1, v0

    add-float/2addr v1, p2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private k()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->e:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->p()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private m(Landroid/view/View;F)F
    .locals 2

    iget v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->f:F

    iget v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->j:F

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p1

    add-float/2addr v0, p1

    add-float/2addr v0, p2

    return v0
.end method

.method private q()Ljava/lang/String;
    .locals 5

    iget v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->h:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->p()I

    move-result v0

    iget v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->h:I

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_1

    const-string v0, ""

    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->e:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v1}, Lcom/google/android/material/badge/BadgeState;->x()Ljava/util/Locale;

    move-result-object v1

    sget v2, Lcom/google/android/material/R$string;->mtrl_exceed_max_badge_number_suffix:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lcom/google/android/material/badge/BadgeDrawable;->h:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const-string v2, "+"

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-static {v1, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->e:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->x()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->p()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private r()Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/material/badge/BadgeDrawable;->e:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v2}, Lcom/google/android/material/badge/BadgeState;->q()I

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/material/badge/BadgeDrawable;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    if-nez v2, :cond_0

    return-object v3

    :cond_0
    iget v3, p0, Lcom/google/android/material/badge/BadgeDrawable;->h:I

    const/4 v4, -0x2

    if-eq v3, v4, :cond_2

    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->p()I

    move-result v3

    iget v4, p0, Lcom/google/android/material/badge/BadgeDrawable;->h:I

    if-gt v3, v4, :cond_1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/google/android/material/badge/BadgeDrawable;->e:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v3}, Lcom/google/android/material/badge/BadgeState;->n()I

    move-result v3

    iget v4, p0, Lcom/google/android/material/badge/BadgeDrawable;->h:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v4, v1, v0

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    :goto_0
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/material/badge/BadgeDrawable;->e:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v3}, Lcom/google/android/material/badge/BadgeState;->q()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->p()I

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->p()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v5, v1, v0

    invoke-virtual {v2, v3, v4, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    return-object v3
.end method

.method private s(Landroid/view/View;F)F
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->f:F

    iget v2, p0, Lcom/google/android/material/badge/BadgeDrawable;->j:F

    add-float/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p1

    sub-float/2addr v0, p1

    sub-float/2addr v1, v0

    add-float/2addr v1, p2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private v()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->u()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->n()I

    move-result v3

    const/4 v4, -0x2

    if-ne v3, v4, :cond_0

    return-object v2

    :cond_0
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v3, :cond_2

    iget-object v4, p0, Lcom/google/android/material/badge/BadgeDrawable;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    if-nez v4, :cond_1

    const-string v0, ""

    return-object v0

    :cond_1
    sub-int/2addr v3, v1

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/google/android/material/R$string;->m3_exceed_max_badge_text_suffix:I

    invoke-virtual {v4, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v0

    const-string v0, "\u2026"

    aput-object v0, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    return-object v2
.end method

.method private w()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->e:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->o()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->u()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private x(Landroid/view/View;F)F
    .locals 2

    iget v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->g:F

    iget v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->k:F

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p1

    add-float/2addr v0, p1

    add-float/2addr v0, p2

    return v0
.end method

.method private y()I
    .locals 3

    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->e:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->r()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->e:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->s()I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->e:Lcom/google/android/material/badge/BadgeState;

    iget v1, v1, Lcom/google/android/material/badge/BadgeState;->k:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->A()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->e:Lcom/google/android/material/badge/BadgeState;

    iget v1, v1, Lcom/google/android/material/badge/BadgeState;->j:I

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->e:Lcom/google/android/material/badge/BadgeState;

    iget v1, v1, Lcom/google/android/material/badge/BadgeState;->i:I

    :goto_1
    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->e:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v1}, Lcom/google/android/material/badge/BadgeState;->b()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private z()I
    .locals 5

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->e:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->C()I

    move-result v0

    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->A()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->e:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->B()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    if-eqz v1, :cond_0

    invoke-static {v1}, Lxa/c;->f(Landroid/content/Context;)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v1, v2

    const/4 v3, 0x0

    const v4, 0x3e99999a    # 0.3f

    invoke-static {v3, v2, v4, v2, v1}, Loa/a;->b(FFFFF)F

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/badge/BadgeDrawable;->e:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v2}, Lcom/google/android/material/badge/BadgeState;->t()I

    move-result v2

    sub-int v2, v0, v2

    invoke-static {v0, v2, v1}, Loa/a;->c(IIF)I

    move-result v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->e:Lcom/google/android/material/badge/BadgeState;

    iget v1, v1, Lcom/google/android/material/badge/BadgeState;->k:I

    if-nez v1, :cond_1

    iget v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->k:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    sub-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->e:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v1}, Lcom/google/android/material/badge/BadgeState;->c()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public B()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->e:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->E()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->e:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public C()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->e:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->E()Z

    move-result v0

    return v0
.end method

.method O(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->e:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v0, p1}, Lcom/google/android/material/badge/BadgeState;->I(I)V

    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->T()V

    return-void
.end method

.method P(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->e:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v0, p1}, Lcom/google/android/material/badge/BadgeState;->J(I)V

    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->T()V

    return-void
.end method

.method public S(Landroid/view/View;Landroid/widget/FrameLayout;)V
    .locals 2

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->l:Ljava/lang/ref/WeakReference;

    sget-boolean v0, Lcom/google/android/material/badge/c;->a:Z

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    invoke-direct {p0, p1}, Lcom/google/android/material/badge/BadgeDrawable;->Q(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->m:Ljava/lang/ref/WeakReference;

    :goto_0
    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/google/android/material/badge/BadgeDrawable;->R(Landroid/view/View;)V

    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->T()V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public a()V
    .locals 0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getAlpha()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->b:Lab/i;

    invoke-virtual {v0, p1}, Lab/i;->draw(Landroid/graphics/Canvas;)V

    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->A()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/google/android/material/badge/BadgeDrawable;->f(Landroid/graphics/Canvas;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getAlpha()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->e:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->d()I

    move-result v0

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->d:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->d:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public i()Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->C()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->w()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->B()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->r()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->k()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public isStateful()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public j()Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->m:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public l()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->e:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->s()I

    move-result v0

    return v0
.end method

.method public n()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->e:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->u()I

    move-result v0

    return v0
.end method

.method public o()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->e:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->v()I

    move-result v0

    return v0
.end method

.method public onStateChange([I)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    move-result p1

    return p1
.end method

.method public p()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->e:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->e:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->w()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->e:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v0, p1}, Lcom/google/android/material/badge/BadgeState;->K(I)V

    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->E()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method t()Lcom/google/android/material/badge/BadgeState$State;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->e:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->y()Lcom/google/android/material/badge/BadgeState$State;

    move-result-object v0

    return-object v0
.end method

.method public u()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->e:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->z()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
