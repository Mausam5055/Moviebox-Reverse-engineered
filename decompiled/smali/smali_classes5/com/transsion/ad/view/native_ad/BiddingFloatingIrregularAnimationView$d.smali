.class public final Lcom/transsion/ad/view/native_ad/BiddingFloatingIrregularAnimationView$d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ad/view/native_ad/BiddingFloatingIrregularAnimationView;->q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/ad/view/native_ad/BiddingFloatingIrregularAnimationView;


# direct methods
.method constructor <init>(Lcom/transsion/ad/view/native_ad/BiddingFloatingIrregularAnimationView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/ad/view/native_ad/BiddingFloatingIrregularAnimationView$d;->a:Lcom/transsion/ad/view/native_ad/BiddingFloatingIrregularAnimationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/ad/view/native_ad/BiddingFloatingIrregularAnimationView$d;->a:Lcom/transsion/ad/view/native_ad/BiddingFloatingIrregularAnimationView;

    const/4 v0, 0x0

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
