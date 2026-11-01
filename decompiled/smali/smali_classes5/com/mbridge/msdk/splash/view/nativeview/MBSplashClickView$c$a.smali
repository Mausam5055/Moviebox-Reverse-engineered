.class Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView$c$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView$c;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/animation/Animation;

.field final synthetic b:Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView$c;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView$c;Landroid/view/animation/Animation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView$c$a;->b:Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView$c;

    iput-object p2, p0, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView$c$a;->a:Landroid/view/animation/Animation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView$c$a;->b:Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView$c;

    iget-object v0, v0, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView$c;->a:Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;

    invoke-static {v0}, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;->b(Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView$c$a;->a:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
