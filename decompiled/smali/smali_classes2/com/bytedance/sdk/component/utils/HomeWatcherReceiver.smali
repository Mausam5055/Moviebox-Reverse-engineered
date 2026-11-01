.class public Lcom/bytedance/sdk/component/utils/HomeWatcherReceiver;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/utils/HomeWatcherReceiver$Sj;
    }
.end annotation


# instance fields
.field private Sj:Lcom/bytedance/sdk/component/utils/HomeWatcherReceiver$Sj;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public Sj(Lcom/bytedance/sdk/component/utils/HomeWatcherReceiver$Sj;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/utils/HomeWatcherReceiver;->Sj:Lcom/bytedance/sdk/component/utils/HomeWatcherReceiver$Sj;

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onReceive: action: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "reason"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "reason: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    const-string p2, "homekey"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/component/utils/HomeWatcherReceiver;->Sj:Lcom/bytedance/sdk/component/utils/HomeWatcherReceiver$Sj;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/bytedance/sdk/component/utils/HomeWatcherReceiver$Sj;->Sj()V

    return-void

    :cond_1
    const-string p2, "recentapps"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p1, p0, Lcom/bytedance/sdk/component/utils/HomeWatcherReceiver;->Sj:Lcom/bytedance/sdk/component/utils/HomeWatcherReceiver$Sj;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/bytedance/sdk/component/utils/HomeWatcherReceiver$Sj;->sP()V

    return-void

    :cond_2
    const-string p2, "assist"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_3
    return-void
.end method
