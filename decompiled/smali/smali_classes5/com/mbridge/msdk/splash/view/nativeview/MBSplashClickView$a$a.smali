.class Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView$a$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView$a;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView$a;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView$a;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView$a$a;->a:Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView$a$a;->a:Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView$a;

    iget-object v0, v0, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView$a;->b:Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;

    invoke-static {v0}, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;->a(Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView$a$a;->a:Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView$a;

    iget-object v1, v1, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView$a;->a:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
