.class public final Lcom/transsion/ad/view/native_ad/BiddingFloatingIrregularAnimationView$c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ad/view/native_ad/BiddingFloatingIrregularAnimationView;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/ad/view/native_ad/BiddingFloatingIrregularAnimationView;

.field final synthetic b:F


# direct methods
.method constructor <init>(Lcom/transsion/ad/view/native_ad/BiddingFloatingIrregularAnimationView;F)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/ad/view/native_ad/BiddingFloatingIrregularAnimationView$c;->a:Lcom/transsion/ad/view/native_ad/BiddingFloatingIrregularAnimationView;

    iput p2, p0, Lcom/transsion/ad/view/native_ad/BiddingFloatingIrregularAnimationView$c;->b:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/ad/view/native_ad/BiddingFloatingIrregularAnimationView$c;->a:Lcom/transsion/ad/view/native_ad/BiddingFloatingIrregularAnimationView;

    iget v0, p0, Lcom/transsion/ad/view/native_ad/BiddingFloatingIrregularAnimationView$c;->b:F

    invoke-static {p1, v0}, Lcom/transsion/ad/view/native_ad/BiddingFloatingIrregularAnimationView;->access$setCurrentTranslationX$p(Lcom/transsion/ad/view/native_ad/BiddingFloatingIrregularAnimationView;F)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
