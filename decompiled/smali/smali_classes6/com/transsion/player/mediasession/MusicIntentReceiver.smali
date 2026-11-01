.class public final Lcom/transsion/player/mediasession/MusicIntentReceiver;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u001f\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/transsion/player/mediasession/MusicIntentReceiver;",
        "Landroid/content/BroadcastReceiver;",
        "<init>",
        "()V",
        "",
        "a",
        "()Ljava/lang/String;",
        "Landroid/content/Context;",
        "context",
        "Landroid/content/Intent;",
        "intent",
        "",
        "onReceive",
        "(Landroid/content/Context;Landroid/content/Intent;)V",
        "LibPlayer_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private final a()Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/transsion/player/mediasession/MusicIntentReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getSimpleName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "intent"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x7708a552

    if-eq v0, v1, :cond_0

    goto/16 :goto_3

    :cond_0
    const-string v0, "android.intent.action.MEDIA_BUTTON"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    const-string v0, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :cond_1
    move-object p1, p2

    :goto_0
    instance-of v0, p1, Landroid/view/KeyEvent;

    if-eqz v0, :cond_2

    check-cast p1, Landroid/view/KeyEvent;

    goto :goto_1

    :cond_2
    move-object p1, p2

    :goto_1
    if-eqz p1, :cond_6

    sget-object v0, Lcom/transsion/player/mediasession/i;->a:Lcom/transsion/player/mediasession/i;

    invoke-direct {p0}, Lcom/transsion/player/mediasession/MusicIntentReceiver;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> onReceive --> \u63a5\u6536\u5230\u901a\u77e5\u70b9\u51fb\u4e8b\u4ef6, = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/player/mediasession/i;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 v0, 0x7e

    if-eq p1, v0, :cond_4

    const/16 v0, 0x7f

    if-eq p1, v0, :cond_3

    packed-switch p1, :pswitch_data_0

    :goto_2
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_4

    :pswitch_0
    sget-object p1, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;->h:Lcom/transsion/player/mediasession/MediaBrowserCompatHelper$a;

    invoke-virtual {p1}, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper$a;->a()Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;->z()V

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_4

    :pswitch_1
    sget-object p1, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;->h:Lcom/transsion/player/mediasession/MediaBrowserCompatHelper$a;

    invoke-virtual {p1}, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper$a;->a()Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;->x()V

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_4

    :pswitch_2
    sget-object p1, Lko/l0;->a:Lko/l0;

    invoke-virtual {p1}, Lko/l0;->h()Lcom/transsion/player/orplayer/g;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-interface {p1}, Lcom/transsion/player/orplayer/g;->stop()V

    goto :goto_2

    :cond_3
    sget-object p1, Lko/l0;->a:Lko/l0;

    invoke-virtual {p1}, Lko/l0;->h()Lcom/transsion/player/orplayer/g;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-interface {p1}, Lcom/transsion/player/orplayer/g;->pause()V

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_4

    :cond_4
    sget-object p1, Lko/l0;->a:Lko/l0;

    invoke-virtual {p1}, Lko/l0;->h()Lcom/transsion/player/orplayer/g;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-interface {p1}, Lcom/transsion/player/orplayer/g;->play()V

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_4

    :cond_5
    :goto_3
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    :cond_6
    :goto_4
    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_6

    :goto_5
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_6
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_7

    goto :goto_7

    :cond_7
    sget-object p2, Lcom/transsion/player/mediasession/i;->a:Lcom/transsion/player/mediasession/i;

    invoke-direct {p0}, Lcom/transsion/player/mediasession/MusicIntentReceiver;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " --> onReceive --> \u63a5\u6536\u5230\u901a\u77e5\u70b9\u51fb\u4e8b\u4ef6 --- it = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/transsion/player/mediasession/i;->a(Ljava/lang/String;)V

    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x56
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
