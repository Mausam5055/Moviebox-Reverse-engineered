.class public final Lcom/vungle/ads/internal/util/SuspendableTimer;
.super Ljava/lang/Object;


# instance fields
.field private final durationSecs:D

.field private isCanceled:Z

.field private isPaused:Z

.field private nextDurationSecs:D

.field private final onFinish:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final onTick:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final repeats:Z

.field private startTimeMillis:J

.field private timer:Landroid/os/CountDownTimer;


# direct methods
.method public constructor <init>(DZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DZ",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "onTick"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onFinish"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/vungle/ads/internal/util/SuspendableTimer;->durationSecs:D

    iput-boolean p3, p0, Lcom/vungle/ads/internal/util/SuspendableTimer;->repeats:Z

    iput-object p4, p0, Lcom/vungle/ads/internal/util/SuspendableTimer;->onTick:Lkotlin/jvm/functions/Function0;

    iput-object p5, p0, Lcom/vungle/ads/internal/util/SuspendableTimer;->onFinish:Lkotlin/jvm/functions/Function0;

    iput-wide p1, p0, Lcom/vungle/ads/internal/util/SuspendableTimer;->nextDurationSecs:D

    return-void
.end method

.method public synthetic constructor <init>(DZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p6, 0x4

    if-eqz p6, :cond_0

    sget-object p4, Lcom/vungle/ads/internal/util/SuspendableTimer$1;->INSTANCE:Lcom/vungle/ads/internal/util/SuspendableTimer$1;

    :cond_0
    move-object v4, p4

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/vungle/ads/internal/util/SuspendableTimer;-><init>(DZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final synthetic access$getDurationSecs$p(Lcom/vungle/ads/internal/util/SuspendableTimer;)D
    .locals 2

    iget-wide v0, p0, Lcom/vungle/ads/internal/util/SuspendableTimer;->durationSecs:D

    return-wide v0
.end method

.method public static final synthetic access$getOnFinish$p(Lcom/vungle/ads/internal/util/SuspendableTimer;)Lkotlin/jvm/functions/Function0;
    .locals 0

    iget-object p0, p0, Lcom/vungle/ads/internal/util/SuspendableTimer;->onFinish:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public static final synthetic access$getOnTick$p(Lcom/vungle/ads/internal/util/SuspendableTimer;)Lkotlin/jvm/functions/Function0;
    .locals 0

    iget-object p0, p0, Lcom/vungle/ads/internal/util/SuspendableTimer;->onTick:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public static final synthetic access$getRepeats$p(Lcom/vungle/ads/internal/util/SuspendableTimer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/vungle/ads/internal/util/SuspendableTimer;->repeats:Z

    return p0
.end method

.method public static final synthetic access$isCanceled$p(Lcom/vungle/ads/internal/util/SuspendableTimer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/vungle/ads/internal/util/SuspendableTimer;->isCanceled:Z

    return p0
.end method

.method private final createCountdown(J)Landroid/os/CountDownTimer;
    .locals 1

    new-instance v0, Lcom/vungle/ads/internal/util/SuspendableTimer$a;

    invoke-direct {v0, p1, p2, p0}, Lcom/vungle/ads/internal/util/SuspendableTimer$a;-><init>(JLcom/vungle/ads/internal/util/SuspendableTimer;)V

    return-object v0
.end method

.method private final getDurationMillis()J
    .locals 4

    iget-wide v0, p0, Lcom/vungle/ads/internal/util/SuspendableTimer;->durationSecs:D

    const/16 v2, 0x3e8

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-long v0, v0

    return-wide v0
.end method

.method public static synthetic getElapsedMillis$vungle_ads_release$annotations()V
    .locals 0

    return-void
.end method

.method private final getElapsedSecs()D
    .locals 4

    invoke-virtual {p0}, Lcom/vungle/ads/internal/util/SuspendableTimer;->getElapsedMillis$vungle_ads_release()J

    move-result-wide v0

    const/16 v2, 0x3e8

    int-to-long v2, v2

    div-long/2addr v0, v2

    long-to-double v0, v0

    return-wide v0
.end method

.method private final getNextDurationMillis()J
    .locals 4

    iget-wide v0, p0, Lcom/vungle/ads/internal/util/SuspendableTimer;->nextDurationSecs:D

    const/16 v2, 0x3e8

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-long v0, v0

    return-wide v0
.end method

.method public static synthetic getNextDurationSecs$vungle_ads_release$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getStartTimeMillis$vungle_ads_release$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getTimer$vungle_ads_release$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vungle/ads/internal/util/SuspendableTimer;->isPaused:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vungle/ads/internal/util/SuspendableTimer;->isCanceled:Z

    iget-object v0, p0, Lcom/vungle/ads/internal/util/SuspendableTimer;->timer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vungle/ads/internal/util/SuspendableTimer;->timer:Landroid/os/CountDownTimer;

    return-void
.end method

.method public final getElapsedMillis$vungle_ads_release()J
    .locals 4

    iget-boolean v0, p0, Lcom/vungle/ads/internal/util/SuspendableTimer;->isPaused:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/vungle/ads/internal/util/SuspendableTimer;->getDurationMillis()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/vungle/ads/internal/util/SuspendableTimer;->getNextDurationMillis()J

    move-result-wide v2

    :goto_0
    sub-long/2addr v0, v2

    return-wide v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/vungle/ads/internal/util/SuspendableTimer;->startTimeMillis:J

    goto :goto_0
.end method

.method public final getNextDurationSecs$vungle_ads_release()D
    .locals 2

    iget-wide v0, p0, Lcom/vungle/ads/internal/util/SuspendableTimer;->nextDurationSecs:D

    return-wide v0
.end method

.method public final getStartTimeMillis$vungle_ads_release()J
    .locals 2

    iget-wide v0, p0, Lcom/vungle/ads/internal/util/SuspendableTimer;->startTimeMillis:J

    return-wide v0
.end method

.method public final getTimer$vungle_ads_release()Landroid/os/CountDownTimer;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/util/SuspendableTimer;->timer:Landroid/os/CountDownTimer;

    return-object v0
.end method

.method public final pause()V
    .locals 4

    iget-object v0, p0, Lcom/vungle/ads/internal/util/SuspendableTimer;->timer:Landroid/os/CountDownTimer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, Lcom/vungle/ads/internal/util/SuspendableTimer;->nextDurationSecs:D

    invoke-direct {p0}, Lcom/vungle/ads/internal/util/SuspendableTimer;->getElapsedSecs()D

    move-result-wide v2

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/vungle/ads/internal/util/SuspendableTimer;->nextDurationSecs:D

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vungle/ads/internal/util/SuspendableTimer;->isPaused:Z

    iget-object v0, p0, Lcom/vungle/ads/internal/util/SuspendableTimer;->timer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vungle/ads/internal/util/SuspendableTimer;->timer:Landroid/os/CountDownTimer;

    return-void
.end method

.method public final reset()V
    .locals 0

    invoke-virtual {p0}, Lcom/vungle/ads/internal/util/SuspendableTimer;->cancel()V

    invoke-virtual {p0}, Lcom/vungle/ads/internal/util/SuspendableTimer;->start()V

    return-void
.end method

.method public final resume()V
    .locals 1

    iget-boolean v0, p0, Lcom/vungle/ads/internal/util/SuspendableTimer;->isPaused:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vungle/ads/internal/util/SuspendableTimer;->isPaused:Z

    invoke-virtual {p0}, Lcom/vungle/ads/internal/util/SuspendableTimer;->start()V

    return-void
.end method

.method public final setNextDurationSecs$vungle_ads_release(D)V
    .locals 0

    iput-wide p1, p0, Lcom/vungle/ads/internal/util/SuspendableTimer;->nextDurationSecs:D

    return-void
.end method

.method public final setStartTimeMillis$vungle_ads_release(J)V
    .locals 0

    iput-wide p1, p0, Lcom/vungle/ads/internal/util/SuspendableTimer;->startTimeMillis:J

    return-void
.end method

.method public final setTimer$vungle_ads_release(Landroid/os/CountDownTimer;)V
    .locals 0

    iput-object p1, p0, Lcom/vungle/ads/internal/util/SuspendableTimer;->timer:Landroid/os/CountDownTimer;

    return-void
.end method

.method public final start()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vungle/ads/internal/util/SuspendableTimer;->startTimeMillis:J

    invoke-direct {p0}, Lcom/vungle/ads/internal/util/SuspendableTimer;->getNextDurationMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/vungle/ads/internal/util/SuspendableTimer;->createCountdown(J)Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/ads/internal/util/SuspendableTimer;->timer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    :cond_0
    return-void
.end method
