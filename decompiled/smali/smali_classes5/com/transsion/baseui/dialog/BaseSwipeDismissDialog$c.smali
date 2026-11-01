.class public final Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog$c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->B0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;


# direct methods
.method public constructor <init>(Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog$c;->a:Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog$c;->a:Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;

    invoke-static {p1}, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->y0(Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;)Lkotlin/jvm/functions/Function0;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    iget-object p1, p0, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog$c;->a:Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setWindowAnimations(I)V

    :cond_1
    iget-object p1, p0, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog$c;->a:Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;

    invoke-virtual {p1}, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->dismissAllowingStateLoss()V

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
