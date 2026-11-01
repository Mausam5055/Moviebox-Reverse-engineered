.class public Lcom/mbridge/msdk/interstitial/controller/a$d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/interstitial/controller/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/interstitial/controller/a;


# direct methods
.method public constructor <init>(Lcom/mbridge/msdk/interstitial/controller/a;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/interstitial/controller/a$d;->a:Lcom/mbridge/msdk/interstitial/controller/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/interstitial/controller/a$d;->a:Lcom/mbridge/msdk/interstitial/controller/a;

    invoke-static {v0}, Lcom/mbridge/msdk/interstitial/controller/a;->e(Lcom/mbridge/msdk/interstitial/controller/a;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/interstitial/controller/a$d;->a:Lcom/mbridge/msdk/interstitial/controller/a;

    invoke-static {v0}, Lcom/mbridge/msdk/interstitial/controller/a;->e(Lcom/mbridge/msdk/interstitial/controller/a;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/interstitial/controller/a$d;->a:Lcom/mbridge/msdk/interstitial/controller/a;

    invoke-static {v0, p1}, Lcom/mbridge/msdk/interstitial/controller/a;->a(Lcom/mbridge/msdk/interstitial/controller/a;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public b()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/interstitial/controller/a$d;->a:Lcom/mbridge/msdk/interstitial/controller/a;

    invoke-static {v0}, Lcom/mbridge/msdk/interstitial/controller/a;->e(Lcom/mbridge/msdk/interstitial/controller/a;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/interstitial/controller/a$d;->a:Lcom/mbridge/msdk/interstitial/controller/a;

    invoke-static {v0}, Lcom/mbridge/msdk/interstitial/controller/a;->e(Lcom/mbridge/msdk/interstitial/controller/a;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public c()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/interstitial/controller/a$d;->a:Lcom/mbridge/msdk/interstitial/controller/a;

    invoke-static {v0}, Lcom/mbridge/msdk/interstitial/controller/a;->c(Lcom/mbridge/msdk/interstitial/controller/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
