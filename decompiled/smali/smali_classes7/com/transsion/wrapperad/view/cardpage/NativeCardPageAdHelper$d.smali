.class public final Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper$d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->I(Lcom/transsion/wrapperad/view/cardpage/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/widget/AppCompatImageView;

.field final synthetic b:F

.field final synthetic c:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;

.field final synthetic d:Landroid/widget/FrameLayout;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/AppCompatImageView;FLcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;Landroid/widget/FrameLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper$d;->a:Landroidx/appcompat/widget/AppCompatImageView;

    iput p2, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper$d;->b:F

    iput-object p3, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper$d;->c:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;

    iput-object p4, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper$d;->d:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper$d;->c:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;

    invoke-static {p1}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->f(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;)Landroid/animation/ValueAnimator;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/Animator;->removeAllListeners()V

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper$d;->c:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;

    invoke-static {p1}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->f(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;)Landroid/animation/ValueAnimator;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/Animator;->removeAllListeners()V

    :cond_0
    iget-object p1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper$d;->c:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;

    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper$d;->a:Landroidx/appcompat/widget/AppCompatImageView;

    iget-object v1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper$d;->d:Landroid/widget/FrameLayout;

    iget v2, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper$d;->b:F

    invoke-static {p1, v0, v1, v2}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->r(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/FrameLayout;F)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper$d;->a:Landroidx/appcompat/widget/AppCompatImageView;

    iget v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper$d;->b:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    iget-object p1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper$d;->a:Landroidx/appcompat/widget/AppCompatImageView;

    const v0, 0x3dcccccd    # 0.1f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
