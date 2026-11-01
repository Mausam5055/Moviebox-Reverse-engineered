.class public final Lcom/cloud/tmc/integration/audio/recording/RecorderTimer$scheduleTimer$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/integration/audio/recording/RecorderTimer;->scheduleTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "com/cloud/tmc/integration/audio/recording/RecorderTimer$scheduleTimer$1$1",
        "Ljava/lang/Runnable;",
        "run",
        "",
        "com.cloud.tmc.integration"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $it:Lcom/cloud/tmc/integration/audio/recording/RecorderTimer$TimerListener;

.field final synthetic this$0:Lcom/cloud/tmc/integration/audio/recording/RecorderTimer;


# direct methods
.method constructor <init>(Lcom/cloud/tmc/integration/audio/recording/RecorderTimer$TimerListener;Lcom/cloud/tmc/integration/audio/recording/RecorderTimer;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderTimer$scheduleTimer$1$1;->$it:Lcom/cloud/tmc/integration/audio/recording/RecorderTimer$TimerListener;

    iput-object p2, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderTimer$scheduleTimer$1$1;->this$0:Lcom/cloud/tmc/integration/audio/recording/RecorderTimer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderTimer$scheduleTimer$1$1;->$it:Lcom/cloud/tmc/integration/audio/recording/RecorderTimer$TimerListener;

    iget-object v1, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderTimer$scheduleTimer$1$1;->this$0:Lcom/cloud/tmc/integration/audio/recording/RecorderTimer;

    invoke-virtual {v1}, Lcom/cloud/tmc/integration/audio/recording/RecorderTimer;->getElapsedTime()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/cloud/tmc/integration/audio/recording/RecorderTimer$TimerListener;->onTick(J)V

    invoke-static {}, Lcom/cloud/tmc/integration/audio/recording/RecorderTimer;->access$getHandler$cp()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0xd

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
