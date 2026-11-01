.class public final Lcom/vungle/ads/internal/util/RingerModeReceiver;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J#\u0010\t\u001a\u00020\u00082\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nR$\u0010\u000c\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/vungle/ads/internal/util/RingerModeReceiver;",
        "Landroid/content/BroadcastReceiver;",
        "<init>",
        "()V",
        "Landroid/content/Context;",
        "context",
        "Landroid/content/Intent;",
        "intent",
        "",
        "onReceive",
        "(Landroid/content/Context;Landroid/content/Intent;)V",
        "Lcom/vungle/ads/internal/ui/i;",
        "webClient",
        "Lcom/vungle/ads/internal/ui/i;",
        "getWebClient",
        "()Lcom/vungle/ads/internal/ui/i;",
        "setWebClient",
        "(Lcom/vungle/ads/internal/ui/i;)V",
        "vungle-ads_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private webClient:Lcom/vungle/ads/internal/ui/i;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final getWebClient()Lcom/vungle/ads/internal/ui/i;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/util/RingerModeReceiver;->webClient:Lcom/vungle/ads/internal/ui/i;

    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string p1, "RingerModeReceiver"

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception p2

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "android.media.EXTRA_RINGER_MODE"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    sget-object v0, Lcom/vungle/ads/internal/util/o;->Companion:Lcom/vungle/ads/internal/util/o$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "receive ringermode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/vungle/ads/internal/util/o$a;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eqz p2, :cond_3

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    goto :goto_2

    :cond_1
    iget-object p2, p0, Lcom/vungle/ads/internal/util/RingerModeReceiver;->webClient:Lcom/vungle/ads/internal/ui/i;

    if-eqz p2, :cond_4

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/vungle/ads/internal/ui/i;->notifySilentModeChange(Z)V

    goto :goto_2

    :cond_2
    iget-object p2, p0, Lcom/vungle/ads/internal/util/RingerModeReceiver;->webClient:Lcom/vungle/ads/internal/ui/i;

    if-eqz p2, :cond_4

    invoke-virtual {p2, v0}, Lcom/vungle/ads/internal/ui/i;->notifySilentModeChange(Z)V

    goto :goto_2

    :cond_3
    iget-object p2, p0, Lcom/vungle/ads/internal/util/RingerModeReceiver;->webClient:Lcom/vungle/ads/internal/ui/i;

    if-eqz p2, :cond_4

    invoke-virtual {p2, v0}, Lcom/vungle/ads/internal/ui/i;->notifySilentModeChange(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    sget-object v0, Lcom/vungle/ads/internal/util/o;->Companion:Lcom/vungle/ads/internal/util/o$a;

    invoke-virtual {v0, p1, p2}, Lcom/vungle/ads/internal/util/o$a;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_2
    return-void
.end method

.method public final setWebClient(Lcom/vungle/ads/internal/ui/i;)V
    .locals 0

    iput-object p1, p0, Lcom/vungle/ads/internal/util/RingerModeReceiver;->webClient:Lcom/vungle/ads/internal/ui/i;

    return-void
.end method
