.class public final synthetic Lcom/transsion/baseui/widget/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Landroid/graphics/drawable/GradientDrawable;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Landroid/view/ViewGroup$LayoutParams;

.field public final synthetic e:I

.field public final synthetic f:I

.field public final synthetic g:I

.field public final synthetic h:I

.field public final synthetic i:Lcom/transsion/baseui/widget/NewcomerGuideView;


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/drawable/GradientDrawable;IILandroid/view/ViewGroup$LayoutParams;IIIILcom/transsion/baseui/widget/NewcomerGuideView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/baseui/widget/g;->a:Landroid/graphics/drawable/GradientDrawable;

    iput p2, p0, Lcom/transsion/baseui/widget/g;->b:I

    iput p3, p0, Lcom/transsion/baseui/widget/g;->c:I

    iput-object p4, p0, Lcom/transsion/baseui/widget/g;->d:Landroid/view/ViewGroup$LayoutParams;

    iput p5, p0, Lcom/transsion/baseui/widget/g;->e:I

    iput p6, p0, Lcom/transsion/baseui/widget/g;->f:I

    iput p7, p0, Lcom/transsion/baseui/widget/g;->g:I

    iput p8, p0, Lcom/transsion/baseui/widget/g;->h:I

    iput-object p9, p0, Lcom/transsion/baseui/widget/g;->i:Lcom/transsion/baseui/widget/NewcomerGuideView;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 10

    iget-object v0, p0, Lcom/transsion/baseui/widget/g;->a:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/transsion/baseui/widget/g;->b:I

    iget v2, p0, Lcom/transsion/baseui/widget/g;->c:I

    iget-object v3, p0, Lcom/transsion/baseui/widget/g;->d:Landroid/view/ViewGroup$LayoutParams;

    iget v4, p0, Lcom/transsion/baseui/widget/g;->e:I

    iget v5, p0, Lcom/transsion/baseui/widget/g;->f:I

    iget v6, p0, Lcom/transsion/baseui/widget/g;->g:I

    iget v7, p0, Lcom/transsion/baseui/widget/g;->h:I

    iget-object v8, p0, Lcom/transsion/baseui/widget/g;->i:Lcom/transsion/baseui/widget/NewcomerGuideView;

    move-object v9, p1

    invoke-static/range {v0 .. v9}, Lcom/transsion/baseui/widget/NewcomerGuideView;->h(Landroid/graphics/drawable/GradientDrawable;IILandroid/view/ViewGroup$LayoutParams;IIIILcom/transsion/baseui/widget/NewcomerGuideView;Landroid/animation/ValueAnimator;)V

    return-void
.end method
