.class public final Lcom/transsion/player/mediasession/MediaBrowserCompatHelper$b;
.super Landroid/support/v4/media/MediaBrowserCompat$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic c:Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;


# direct methods
.method constructor <init>(Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper$b;->c:Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;

    invoke-direct {p0}, Landroid/support/v4/media/MediaBrowserCompat$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    invoke-super {p0}, Landroid/support/v4/media/MediaBrowserCompat$c;->a()V

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper$b;->c:Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;

    invoke-static {v1}, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;->i(Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;)Landroid/support/v4/media/MediaBrowserCompat;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/support/v4/media/MediaBrowserCompat;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper$b;->c:Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;

    invoke-static {v2}, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;->i(Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;)Landroid/support/v4/media/MediaBrowserCompat;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3, v1}, Landroid/support/v4/media/MediaBrowserCompat;->g(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto/16 :goto_6

    :catch_0
    move-exception v1

    goto :goto_4

    :cond_0
    :goto_0
    invoke-static {v2}, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;->i(Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;)Landroid/support/v4/media/MediaBrowserCompat;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {v2}, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;->l(Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;)Landroid/support/v4/media/MediaBrowserCompat$n;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Landroid/support/v4/media/MediaBrowserCompat;->f(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserCompat$n;)V

    :cond_1
    iget-object v1, p0, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper$b;->c:Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;

    new-instance v2, Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper$b;->c:Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;

    invoke-static {v4}, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;->i(Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;)Landroid/support/v4/media/MediaBrowserCompat;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v4}, Landroid/support/v4/media/MediaBrowserCompat;->d()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/support/v4/media/session/MediaControllerCompat;-><init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    invoke-static {v1, v2}, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;->o(Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;Landroid/support/v4/media/session/MediaControllerCompat;)V

    iget-object v1, p0, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper$b;->c:Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;

    invoke-static {v1}, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;->j(Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;)Landroid/support/v4/media/session/MediaControllerCompat;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper$b;->c:Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;

    invoke-static {v2}, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;->k(Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;)Landroid/support/v4/media/session/MediaControllerCompat$a;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/media/session/MediaControllerCompat;->c(Landroid/support/v4/media/session/MediaControllerCompat$a;)V

    :cond_2
    iget-object v1, p0, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper$b;->c:Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;

    invoke-static {v1}, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;->g(Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    iget-object v2, p0, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper$b;->c:Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-static {v2}, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;->j(Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;)Landroid/support/v4/media/session/MediaControllerCompat;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/support/v4/media/session/MediaControllerCompat;->b()Landroid/support/v4/media/session/MediaControllerCompat$e;

    move-result-object v4

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_2
    invoke-interface {v3, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper$b;->c:Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;

    invoke-static {v1}, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;->g(Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_3
    iget-object v1, p0, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper$b;->c:Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;

    invoke-static {v1, v0}, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;->m(Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;Z)V

    goto :goto_5

    :goto_4
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object v2, Lcom/transsion/player/mediasession/i;->a:Lcom/transsion/player/mediasession/i;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mediaSource --> connectionCallback --> e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/transsion/player/mediasession/i;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_5
    return-void

    :goto_6
    iget-object v2, p0, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper$b;->c:Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;

    invoke-static {v2, v0}, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;->m(Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;Z)V

    throw v1
.end method

.method public b()V
    .locals 2

    invoke-super {p0}, Landroid/support/v4/media/MediaBrowserCompat$c;->b()V

    iget-object v0, p0, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper$b;->c:Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;->m(Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;Z)V

    return-void
.end method

.method public c()V
    .locals 0

    invoke-super {p0}, Landroid/support/v4/media/MediaBrowserCompat$c;->c()V

    return-void
.end method
