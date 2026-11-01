.class Lcom/mbridge/msdk/splash/manager/b$d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mbridge/msdk/click/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/splash/manager/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/splash/manager/b;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/splash/manager/b;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/splash/manager/b$d;->a:Lcom/mbridge/msdk/splash/manager/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishRedirection(Lcom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/mbridge/msdk/splash/manager/b$d;->a:Lcom/mbridge/msdk/splash/manager/b;

    iget-object p2, p2, Lcom/mbridge/msdk/splash/manager/b;->c:Lcom/mbridge/msdk/splash/view/MBSplashView;

    invoke-static {p1, p2}, Lcom/mbridge/msdk/foundation/tools/s0;->a(Lcom/mbridge/msdk/out/Campaign;Landroid/view/ViewGroup;)V

    return-void
.end method

.method public onRedirectionFailed(Lcom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/mbridge/msdk/splash/manager/b$d;->a:Lcom/mbridge/msdk/splash/manager/b;

    iget-object p2, p2, Lcom/mbridge/msdk/splash/manager/b;->c:Lcom/mbridge/msdk/splash/view/MBSplashView;

    invoke-static {p1, p2}, Lcom/mbridge/msdk/foundation/tools/s0;->a(Lcom/mbridge/msdk/out/Campaign;Landroid/view/ViewGroup;)V

    return-void
.end method

.method public onStartRedirection(Lcom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V
    .locals 0

    iget-object p2, p0, Lcom/mbridge/msdk/splash/manager/b$d;->a:Lcom/mbridge/msdk/splash/manager/b;

    iget-object p2, p2, Lcom/mbridge/msdk/splash/manager/b;->c:Lcom/mbridge/msdk/splash/view/MBSplashView;

    invoke-static {p1, p2}, Lcom/mbridge/msdk/foundation/tools/s0;->b(Lcom/mbridge/msdk/out/Campaign;Landroid/view/ViewGroup;)V

    return-void
.end method
