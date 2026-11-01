.class public final Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$showMsgBubbleController$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/integration/utils/PopWindowManager$IPopWindowManagerController;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$showMsgBubbleController$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh(Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;)V
    .locals 7

    const-string v0, "bean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$showMsgBubbleController$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getMiniappStartTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRefresh:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiniAppActivity"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$showMsgBubbleController$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;->getDelayTime()J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$showMsgBubbleController$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getMiniappStartTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->showPopUpWindowRunnable(J)V

    return-void
.end method

.method public show(Ljava/lang/String;)V
    .locals 1

    const-string v0, "appId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "msgBubbleToast"

    const-string v0, "MiniAppActivity"

    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$showMsgBubbleController$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getResumed()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$showMsgBubbleController$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->showMsgBubbleToast()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
