.class Lcom/mbridge/msdk/splash/signal/SplashExpandDialog$b;
.super Lcom/mbridge/msdk/mbsignalcommon/listener/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/splash/signal/SplashExpandDialog;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/splash/signal/SplashExpandDialog;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/splash/signal/SplashExpandDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/splash/signal/SplashExpandDialog$b;->a:Lcom/mbridge/msdk/splash/signal/SplashExpandDialog;

    invoke-direct {p0}, Lcom/mbridge/msdk/mbsignalcommon/listener/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/mbsignalcommon/listener/b;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "javascript:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/mbridge/msdk/setting/util/a;->a()Lcom/mbridge/msdk/setting/util/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/setting/util/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/mbridge/msdk/splash/signal/SplashExpandDialog$b$a;

    invoke-direct {v0, p0}, Lcom/mbridge/msdk/splash/signal/SplashExpandDialog$b$a;-><init>(Lcom/mbridge/msdk/splash/signal/SplashExpandDialog$b;)V

    invoke-virtual {p1, p2, v0}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    iget-object p1, p0, Lcom/mbridge/msdk/splash/signal/SplashExpandDialog$b;->a:Lcom/mbridge/msdk/splash/signal/SplashExpandDialog;

    invoke-static {p1}, Lcom/mbridge/msdk/splash/signal/SplashExpandDialog;->a(Lcom/mbridge/msdk/splash/signal/SplashExpandDialog;)V

    return-void
.end method
