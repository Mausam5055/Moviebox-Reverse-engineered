.class public final Lcom/transsion/home/view/SearchGuideDialog$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/home/view/SearchGuideDialog;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/home/view/SearchGuideDialog;


# direct methods
.method constructor <init>(Lcom/transsion/home/view/SearchGuideDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/home/view/SearchGuideDialog$b;->a:Lcom/transsion/home/view/SearchGuideDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 7

    iget-object v0, p0, Lcom/transsion/home/view/SearchGuideDialog$b;->a:Lcom/transsion/home/view/SearchGuideDialog;

    invoke-static {v0}, Lcom/transsion/home/view/SearchGuideDialog;->o0(Lcom/transsion/home/view/SearchGuideDialog;)Lgl/h;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lgl/h;->c:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/home/view/SearchGuideDialog$b;->a:Lcom/transsion/home/view/SearchGuideDialog;

    invoke-static {v0}, Lcom/transsion/home/view/SearchGuideDialog;->o0(Lcom/transsion/home/view/SearchGuideDialog;)Lgl/h;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lgl/h;->c:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    const-string v2, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    iget-object v3, p0, Lcom/transsion/home/view/SearchGuideDialog$b;->a:Lcom/transsion/home/view/SearchGuideDialog;

    invoke-static {v3}, Lcom/transsion/home/view/SearchGuideDialog;->o0(Lcom/transsion/home/view/SearchGuideDialog;)Lgl/h;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, v3, Lgl/h;->e:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    goto :goto_1

    :cond_2
    move-object v3, v1

    :goto_1
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    iget v2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v0

    sub-int/2addr v2, v0

    const/high16 v0, 0x42200000    # 40.0f

    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v0

    sub-int/2addr v2, v0

    iget-object v0, p0, Lcom/transsion/home/view/SearchGuideDialog$b;->a:Lcom/transsion/home/view/SearchGuideDialog;

    invoke-static {v0}, Lcom/transsion/home/view/SearchGuideDialog;->o0(Lcom/transsion/home/view/SearchGuideDialog;)Lgl/h;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, v0, Lgl/h;->d:Lcom/tn/lib/view/RoundedArrowImageView;

    if-eqz v0, :cond_3

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v3}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v3

    add-int/2addr v3, v2

    sget-object v4, Llg/a;->a:Llg/a$a;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "the bubbleArrowPosition is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", the marginStart is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-static {v4, v2, v5, v6, v1}, Llg/a$a;->g(Llg/a$a;Ljava/lang/String;ZILjava/lang/Object;)V

    int-to-float v1, v3

    invoke-virtual {v0, v1}, Lcom/tn/lib/view/RoundedArrowImageView;->setArrowPosition(F)V

    :cond_3
    return-void
.end method
