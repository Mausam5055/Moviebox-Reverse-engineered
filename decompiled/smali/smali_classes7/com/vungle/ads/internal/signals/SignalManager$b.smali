.class public final Lcom/vungle/ads/internal/signals/SignalManager$b;
.super Lcom/vungle/ads/internal/util/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/ads/internal/signals/SignalManager;->registerNotifications()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vungle/ads/internal/signals/SignalManager;


# direct methods
.method constructor <init>(Lcom/vungle/ads/internal/signals/SignalManager;)V
    .locals 0

    iput-object p1, p0, Lcom/vungle/ads/internal/signals/SignalManager$b;->this$0:Lcom/vungle/ads/internal/signals/SignalManager;

    invoke-direct {p0}, Lcom/vungle/ads/internal/util/a$b;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackground()V
    .locals 7

    sget-object v0, Lcom/vungle/ads/internal/util/o;->Companion:Lcom/vungle/ads/internal/util/o$a;

    const-string v1, "SignalManager"

    const-string v2, "SignalManager#onBackground()"

    invoke-virtual {v0, v1, v2}, Lcom/vungle/ads/internal/util/o$a;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vungle/ads/internal/signals/SignalManager$b;->this$0:Lcom/vungle/ads/internal/signals/SignalManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/vungle/ads/internal/signals/SignalManager;->setEnterBackgroundTime(J)V

    iget-object v0, p0, Lcom/vungle/ads/internal/signals/SignalManager$b;->this$0:Lcom/vungle/ads/internal/signals/SignalManager;

    invoke-virtual {v0}, Lcom/vungle/ads/internal/signals/SignalManager;->getSessionDuration()J

    move-result-wide v1

    iget-object v3, p0, Lcom/vungle/ads/internal/signals/SignalManager$b;->this$0:Lcom/vungle/ads/internal/signals/SignalManager;

    invoke-virtual {v3}, Lcom/vungle/ads/internal/signals/SignalManager;->getEnterBackgroundTime()J

    move-result-wide v3

    iget-object v5, p0, Lcom/vungle/ads/internal/signals/SignalManager$b;->this$0:Lcom/vungle/ads/internal/signals/SignalManager;

    invoke-virtual {v5}, Lcom/vungle/ads/internal/signals/SignalManager;->getEnterForegroundTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/vungle/ads/internal/signals/SignalManager;->setSessionDuration(J)V

    return-void
.end method

.method public onForeground()V
    .locals 6

    sget-object v0, Lcom/vungle/ads/internal/util/o;->Companion:Lcom/vungle/ads/internal/util/o$a;

    const-string v1, "SignalManager"

    const-string v2, "SignalManager#onForeground()"

    invoke-virtual {v0, v1, v2}, Lcom/vungle/ads/internal/util/o$a;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/vungle/ads/internal/signals/SignalManager$b;->this$0:Lcom/vungle/ads/internal/signals/SignalManager;

    invoke-virtual {v2}, Lcom/vungle/ads/internal/signals/SignalManager;->getEnterBackgroundTime()J

    move-result-wide v2

    sub-long v2, v0, v2

    sget-object v4, Lcom/vungle/ads/internal/ConfigManager;->INSTANCE:Lcom/vungle/ads/internal/ConfigManager;

    invoke-virtual {v4}, Lcom/vungle/ads/internal/ConfigManager;->getSignalsSessionTimeout()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/vungle/ads/internal/signals/SignalManager$b;->this$0:Lcom/vungle/ads/internal/signals/SignalManager;

    invoke-virtual {v2}, Lcom/vungle/ads/internal/signals/SignalManager;->createNewSessionData()V

    :cond_0
    iget-object v2, p0, Lcom/vungle/ads/internal/signals/SignalManager$b;->this$0:Lcom/vungle/ads/internal/signals/SignalManager;

    invoke-virtual {v2, v0, v1}, Lcom/vungle/ads/internal/signals/SignalManager;->setEnterForegroundTime(J)V

    iget-object v0, p0, Lcom/vungle/ads/internal/signals/SignalManager$b;->this$0:Lcom/vungle/ads/internal/signals/SignalManager;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/vungle/ads/internal/signals/SignalManager;->setEnterBackgroundTime(J)V

    return-void
.end method
