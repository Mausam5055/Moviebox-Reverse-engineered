.class public final Lcom/vungle/ads/internal/util/SuspendableTimer$a;
.super Landroid/os/CountDownTimer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/ads/internal/util/SuspendableTimer;->createCountdown(J)Landroid/os/CountDownTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vungle/ads/internal/util/SuspendableTimer;


# direct methods
.method constructor <init>(JLcom/vungle/ads/internal/util/SuspendableTimer;)V
    .locals 0

    iput-object p3, p0, Lcom/vungle/ads/internal/util/SuspendableTimer$a;->this$0:Lcom/vungle/ads/internal/util/SuspendableTimer;

    invoke-direct {p0, p1, p2, p1, p2}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    iget-object v0, p0, Lcom/vungle/ads/internal/util/SuspendableTimer$a;->this$0:Lcom/vungle/ads/internal/util/SuspendableTimer;

    invoke-static {v0}, Lcom/vungle/ads/internal/util/SuspendableTimer;->access$getOnFinish$p(Lcom/vungle/ads/internal/util/SuspendableTimer;)Lkotlin/jvm/functions/Function0;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    invoke-static {v0}, Lcom/vungle/ads/internal/util/SuspendableTimer;->access$getRepeats$p(Lcom/vungle/ads/internal/util/SuspendableTimer;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/vungle/ads/internal/util/SuspendableTimer;->access$isCanceled$p(Lcom/vungle/ads/internal/util/SuspendableTimer;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/vungle/ads/internal/util/SuspendableTimer;->access$getDurationSecs$p(Lcom/vungle/ads/internal/util/SuspendableTimer;)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/vungle/ads/internal/util/SuspendableTimer;->setNextDurationSecs$vungle_ads_release(D)V

    invoke-virtual {v0}, Lcom/vungle/ads/internal/util/SuspendableTimer;->start()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/vungle/ads/internal/util/SuspendableTimer;->cancel()V

    :goto_0
    return-void
.end method

.method public onTick(J)V
    .locals 0

    iget-object p1, p0, Lcom/vungle/ads/internal/util/SuspendableTimer$a;->this$0:Lcom/vungle/ads/internal/util/SuspendableTimer;

    invoke-static {p1}, Lcom/vungle/ads/internal/util/SuspendableTimer;->access$getOnTick$p(Lcom/vungle/ads/internal/util/SuspendableTimer;)Lkotlin/jvm/functions/Function0;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method
