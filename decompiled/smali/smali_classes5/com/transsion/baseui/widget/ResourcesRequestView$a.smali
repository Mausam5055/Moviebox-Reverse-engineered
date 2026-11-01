.class public final Lcom/transsion/baseui/widget/ResourcesRequestView$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/baseui/widget/ResourcesRequestView;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/baseui/widget/ResourcesRequestView;


# direct methods
.method constructor <init>(Lcom/transsion/baseui/widget/ResourcesRequestView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/baseui/widget/ResourcesRequestView$a;->a:Lcom/transsion/baseui/widget/ResourcesRequestView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 7

    iget-object v0, p0, Lcom/transsion/baseui/widget/ResourcesRequestView$a;->a:Lcom/transsion/baseui/widget/ResourcesRequestView;

    invoke-virtual {v0}, Lcom/transsion/baseui/widget/ResourcesRequestView;->getMViewBinding()Lbk/h;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lbk/h;->e:Lcom/transsion/baseui/widget/DrawableCenterTextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/baseui/widget/ResourcesRequestView$a;->a:Lcom/transsion/baseui/widget/ResourcesRequestView;

    invoke-virtual {v0}, Lcom/transsion/baseui/widget/ResourcesRequestView;->getMViewBinding()Lbk/h;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lbk/h;->e:Lcom/transsion/baseui/widget/DrawableCenterTextView;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawablePadding()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const-string v4, "getCompoundDrawables(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/transsion/baseui/widget/ResourcesRequestView$a;->a:Lcom/transsion/baseui/widget/ResourcesRequestView;

    invoke-static {v4}, Lcom/transsion/baseui/widget/ResourcesRequestView;->access$isDirectionLtr$p(Lcom/transsion/baseui/widget/ResourcesRequestView;)Z

    move-result v4

    const-string v5, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    const/4 v6, 0x2

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    aget-object v3, v3, v4

    if-eqz v3, :cond_3

    iget-object v4, p0, Lcom/transsion/baseui/widget/ResourcesRequestView$a;->a:Lcom/transsion/baseui/widget/ResourcesRequestView;

    invoke-virtual {v4}, Lcom/transsion/baseui/widget/ResourcesRequestView;->getMViewBinding()Lbk/h;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, v4, Lbk/h;->f:Landroid/widget/TextView;

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    add-float/2addr v2, v1

    float-to-int v1, v2

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    div-int/2addr v0, v6

    div-int/2addr v1, v6

    add-int/2addr v0, v1

    div-int/lit8 v3, v3, 0x3

    sub-int/2addr v0, v3

    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_2
    aget-object v3, v3, v6

    if-eqz v3, :cond_3

    iget-object v4, p0, Lcom/transsion/baseui/widget/ResourcesRequestView$a;->a:Lcom/transsion/baseui/widget/ResourcesRequestView;

    invoke-virtual {v4}, Lcom/transsion/baseui/widget/ResourcesRequestView;->getMViewBinding()Lbk/h;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, v4, Lbk/h;->f:Landroid/widget/TextView;

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    add-float/2addr v2, v1

    float-to-int v1, v2

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    div-int/2addr v0, v6

    div-int/2addr v1, v6

    add-int/2addr v0, v1

    div-int/lit8 v3, v3, 0x3

    sub-int/2addr v0, v3

    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    :goto_1
    return-void
.end method
