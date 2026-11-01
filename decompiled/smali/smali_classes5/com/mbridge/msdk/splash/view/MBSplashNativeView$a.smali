.class Lcom/mbridge/msdk/splash/view/MBSplashNativeView$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/splash/view/MBSplashNativeView;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/splash/view/MBSplashNativeView;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/splash/view/MBSplashNativeView;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/splash/view/MBSplashNativeView$a;->a:Lcom/mbridge/msdk/splash/view/MBSplashNativeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/mbridge/msdk/splash/view/MBSplashNativeView$a;->a:Lcom/mbridge/msdk/splash/view/MBSplashNativeView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->a(I)V

    return-void
.end method
