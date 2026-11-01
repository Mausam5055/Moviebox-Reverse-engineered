.class Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout;->startShowRemindAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:F

.field final synthetic b:Landroid/view/ViewGroup$MarginLayoutParams;

.field final synthetic c:I

.field final synthetic d:Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout;


# direct methods
.method constructor <init>(Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout;FLandroid/view/ViewGroup$MarginLayoutParams;I)V
    .locals 0

    iput-object p1, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout$a;->d:Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout;

    iput p2, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout$a;->a:F

    iput-object p3, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout$a;->b:Landroid/view/ViewGroup$MarginLayoutParams;

    iput p4, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout$a;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout$a;->d:Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout;

    iget v0, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout$a;->a:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setX(F)V

    iget-object p1, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout$a;->b:Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout$a;->c:I

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v0, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout$a;->d:Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout$a;->d:Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout;

    iget v0, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout$a;->a:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setX(F)V

    iget-object p1, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout$a;->b:Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout$a;->c:I

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v0, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout$a;->d:Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
