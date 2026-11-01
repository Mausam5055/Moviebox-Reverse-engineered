.class public final Lcom/transsion/upgradesdk/net/g;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field public final synthetic a:Lzv/f;


# direct methods
.method public constructor <init>(Lzv/f;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/upgradesdk/net/g;->a:Lzv/f;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    move-object p2, p1

    :goto_0
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_2

    :cond_1
    iget-object p2, p0, Lcom/transsion/upgradesdk/net/g;->a:Lzv/f;

    invoke-static {p2}, Lzv/f;->b(Lzv/f;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method
