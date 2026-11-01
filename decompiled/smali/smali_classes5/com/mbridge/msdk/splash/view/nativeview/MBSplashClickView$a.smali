.class Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/animation/ScaleAnimation;

.field final synthetic b:Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;Landroid/view/animation/ScaleAnimation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView$a;->b:Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;

    iput-object p2, p0, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView$a;->a:Landroid/view/animation/ScaleAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    iget-object p1, p0, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView$a;->b:Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;

    invoke-static {p1}, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;->a(Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView$a;->b:Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;

    invoke-static {p1}, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;->a(Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;)Landroid/widget/ImageView;

    move-result-object p1

    new-instance v0, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView$a$a;

    invoke-direct {v0, p0}, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView$a$a;-><init>(Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView$a;)V

    const-wide/16 v1, 0x2bc

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object p1, p0, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView$a;->b:Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;

    invoke-static {p1}, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;->a(Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
