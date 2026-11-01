.class Lcom/mbridge/msdk/splash/signal/SplashExpandDialog$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/mbridge/msdk/splash/signal/SplashExpandDialog$a;->a:Lcom/mbridge/msdk/splash/signal/SplashExpandDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/mbridge/msdk/splash/signal/SplashExpandDialog$a;->a:Lcom/mbridge/msdk/splash/signal/SplashExpandDialog;

    invoke-virtual {p1}, Lcom/mbridge/msdk/splash/signal/SplashExpandDialog;->dismiss()V

    return-void
.end method
