.class public final Lcom/vungle/ads/internal/signals/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/internal/signals/b$b;,
        Lcom/vungle/ads/internal/signals/b$a;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/vungle/ads/internal/signals/b$b;


# instance fields
.field private adAvailabilityCallbackTime:J

.field private eventId:Ljava/lang/String;

.field private final lastAdLoadTime:Ljava/lang/Long;

.field private final loadAdTime:J

.field private playAdTime:J

.field private screenOrientation:I

.field private templateSignals:Ljava/lang/String;

.field private timeBetweenAdAvailabilityAndPlayAd:J

.field private final timeSinceLastAdLoad:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vungle/ads/internal/signals/b$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vungle/ads/internal/signals/b$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vungle/ads/internal/signals/b;->Companion:Lcom/vungle/ads/internal/signals/b$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/vungle/ads/internal/signals/b;-><init>(Ljava/lang/Long;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;JLjava/lang/String;JILkotlinx/serialization/internal/w1;)V
    .locals 4
    .annotation runtime Lkotlin/Deprecated;
    .end annotation

    and-int/lit8 p9, p1, 0x2

    const/4 v0, 0x2

    if-eq v0, p9, :cond_0

    sget-object p9, Lcom/vungle/ads/internal/signals/b$a;->INSTANCE:Lcom/vungle/ads/internal/signals/b$a;

    invoke-virtual {p9}, Lcom/vungle/ads/internal/signals/b$a;->getDescriptor()Lkotlinx/serialization/descriptors/f;

    move-result-object p9

    invoke-static {p1, v0, p9}, Lkotlinx/serialization/internal/m1;->a(IILkotlinx/serialization/descriptors/f;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p9

    iput-object p9, p0, Lcom/vungle/ads/internal/signals/b;->lastAdLoadTime:Ljava/lang/Long;

    iput-wide v0, p0, Lcom/vungle/ads/internal/signals/b;->loadAdTime:J

    and-int/lit8 v2, p1, 0x1

    const/4 v3, 0x0

    if-nez v2, :cond_1

    iput-object v3, p0, Lcom/vungle/ads/internal/signals/b;->templateSignals:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iput-object p2, p0, Lcom/vungle/ads/internal/signals/b;->templateSignals:Ljava/lang/String;

    :goto_0
    iput-wide p3, p0, Lcom/vungle/ads/internal/signals/b;->timeSinceLastAdLoad:J

    and-int/lit8 p2, p1, 0x4

    if-nez p2, :cond_2

    iput-object v3, p0, Lcom/vungle/ads/internal/signals/b;->eventId:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iput-object p5, p0, Lcom/vungle/ads/internal/signals/b;->eventId:Ljava/lang/String;

    :goto_1
    and-int/lit8 p2, p1, 0x8

    if-nez p2, :cond_3

    iput-wide v0, p0, Lcom/vungle/ads/internal/signals/b;->timeBetweenAdAvailabilityAndPlayAd:J

    goto :goto_2

    :cond_3
    iput-wide p6, p0, Lcom/vungle/ads/internal/signals/b;->timeBetweenAdAvailabilityAndPlayAd:J

    :goto_2
    and-int/lit8 p1, p1, 0x10

    if-nez p1, :cond_4

    const/4 p1, 0x0

    iput p1, p0, Lcom/vungle/ads/internal/signals/b;->screenOrientation:I

    goto :goto_3

    :cond_4
    iput p8, p0, Lcom/vungle/ads/internal/signals/b;->screenOrientation:I

    :goto_3
    iput-wide v0, p0, Lcom/vungle/ads/internal/signals/b;->adAvailabilityCallbackTime:J

    iput-wide v0, p0, Lcom/vungle/ads/internal/signals/b;->playAdTime:J

    invoke-direct {p0, p9, v0, v1}, Lcom/vungle/ads/internal/signals/b;->getTimeDifference(Ljava/lang/Long;J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/vungle/ads/internal/signals/b;->timeSinceLastAdLoad:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/signals/b;->lastAdLoadTime:Ljava/lang/Long;

    iput-wide p2, p0, Lcom/vungle/ads/internal/signals/b;->loadAdTime:J

    invoke-direct {p0, p1, p2, p3}, Lcom/vungle/ads/internal/signals/b;->getTimeDifference(Ljava/lang/Long;J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/vungle/ads/internal/signals/b;->timeSinceLastAdLoad:J

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Long;JILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 2

    and-int/lit8 p5, p4, 0x1

    const-wide/16 v0, 0x0

    if-eqz p5, :cond_0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    move-wide p2, v0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/vungle/ads/internal/signals/b;-><init>(Ljava/lang/Long;J)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/vungle/ads/internal/signals/b;Ljava/lang/Long;JILjava/lang/Object;)Lcom/vungle/ads/internal/signals/b;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/vungle/ads/internal/signals/b;->lastAdLoadTime:Ljava/lang/Long;

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    iget-wide p2, p0, Lcom/vungle/ads/internal/signals/b;->loadAdTime:J

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/vungle/ads/internal/signals/b;->copy(Ljava/lang/Long;J)Lcom/vungle/ads/internal/signals/b;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getAdAvailabilityCallbackTime$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getEventId$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getLastAdLoadTime$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getLoadAdTime$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getPlayAdTime$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getScreenOrientation$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getTemplateSignals$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getTimeBetweenAdAvailabilityAndPlayAd$annotations()V
    .locals 0

    return-void
.end method

.method private final getTimeDifference(Ljava/lang/Long;J)J
    .locals 4

    const-wide/16 v0, -0x1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr p2, v2

    const-wide/16 v2, 0x0

    cmp-long p1, p2, v2

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    move-wide v0, p2

    :cond_1
    :goto_0
    return-wide v0
.end method

.method public static synthetic getTimeSinceLastAdLoad$annotations()V
    .locals 0

    return-void
.end method

.method public static final write$Self(Lcom/vungle/ads/internal/signals/b;Le00/d;Lkotlinx/serialization/descriptors/f;)V
    .locals 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "self"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serialDesc"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Le00/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/vungle/ads/internal/signals/b;->templateSignals:Ljava/lang/String;

    if-eqz v1, :cond_1

    :goto_0
    sget-object v1, Lkotlinx/serialization/internal/b2;->a:Lkotlinx/serialization/internal/b2;

    iget-object v2, p0, Lcom/vungle/ads/internal/signals/b;->templateSignals:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v1, v2}, Le00/d;->i(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    :cond_1
    iget-wide v0, p0, Lcom/vungle/ads/internal/signals/b;->timeSinceLastAdLoad:J

    const/4 v2, 0x1

    invoke-interface {p1, p2, v2, v0, v1}, Le00/d;->F(Lkotlinx/serialization/descriptors/f;IJ)V

    const/4 v0, 0x2

    invoke-interface {p1, p2, v0}, Le00/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/vungle/ads/internal/signals/b;->eventId:Ljava/lang/String;

    if-eqz v1, :cond_3

    :goto_1
    sget-object v1, Lkotlinx/serialization/internal/b2;->a:Lkotlinx/serialization/internal/b2;

    iget-object v2, p0, Lcom/vungle/ads/internal/signals/b;->eventId:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v1, v2}, Le00/d;->i(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    :cond_3
    const/4 v0, 0x3

    invoke-interface {p1, p2, v0}, Le00/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    iget-wide v1, p0, Lcom/vungle/ads/internal/signals/b;->timeBetweenAdAvailabilityAndPlayAd:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_5

    :goto_2
    iget-wide v1, p0, Lcom/vungle/ads/internal/signals/b;->timeBetweenAdAvailabilityAndPlayAd:J

    invoke-interface {p1, p2, v0, v1, v2}, Le00/d;->F(Lkotlinx/serialization/descriptors/f;IJ)V

    :cond_5
    const/4 v0, 0x4

    invoke-interface {p1, p2, v0}, Le00/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    iget v1, p0, Lcom/vungle/ads/internal/signals/b;->screenOrientation:I

    if-eqz v1, :cond_7

    :goto_3
    iget p0, p0, Lcom/vungle/ads/internal/signals/b;->screenOrientation:I

    invoke-interface {p1, p2, v0, p0}, Le00/d;->w(Lkotlinx/serialization/descriptors/f;II)V

    :cond_7
    return-void
.end method


# virtual methods
.method public final calculateTimeBetweenAdAvailabilityAndPlayAd()V
    .locals 3

    iget-wide v0, p0, Lcom/vungle/ads/internal/signals/b;->adAvailabilityCallbackTime:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v1, p0, Lcom/vungle/ads/internal/signals/b;->playAdTime:J

    invoke-direct {p0, v0, v1, v2}, Lcom/vungle/ads/internal/signals/b;->getTimeDifference(Ljava/lang/Long;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vungle/ads/internal/signals/b;->timeBetweenAdAvailabilityAndPlayAd:J

    return-void
.end method

.method public final component1()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/signals/b;->lastAdLoadTime:Ljava/lang/Long;

    return-object v0
.end method

.method public final component2()J
    .locals 2

    iget-wide v0, p0, Lcom/vungle/ads/internal/signals/b;->loadAdTime:J

    return-wide v0
.end method

.method public final copy(Ljava/lang/Long;J)Lcom/vungle/ads/internal/signals/b;
    .locals 1

    new-instance v0, Lcom/vungle/ads/internal/signals/b;

    invoke-direct {v0, p1, p2, p3}, Lcom/vungle/ads/internal/signals/b;-><init>(Ljava/lang/Long;J)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vungle/ads/internal/signals/b;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vungle/ads/internal/signals/b;

    iget-object v1, p0, Lcom/vungle/ads/internal/signals/b;->lastAdLoadTime:Ljava/lang/Long;

    iget-object v3, p1, Lcom/vungle/ads/internal/signals/b;->lastAdLoadTime:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/vungle/ads/internal/signals/b;->loadAdTime:J

    iget-wide v5, p1, Lcom/vungle/ads/internal/signals/b;->loadAdTime:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getAdAvailabilityCallbackTime()J
    .locals 2

    iget-wide v0, p0, Lcom/vungle/ads/internal/signals/b;->adAvailabilityCallbackTime:J

    return-wide v0
.end method

.method public final getEventId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/signals/b;->eventId:Ljava/lang/String;

    return-object v0
.end method

.method public final getLastAdLoadTime()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/signals/b;->lastAdLoadTime:Ljava/lang/Long;

    return-object v0
.end method

.method public final getLoadAdTime()J
    .locals 2

    iget-wide v0, p0, Lcom/vungle/ads/internal/signals/b;->loadAdTime:J

    return-wide v0
.end method

.method public final getPlayAdTime()J
    .locals 2

    iget-wide v0, p0, Lcom/vungle/ads/internal/signals/b;->playAdTime:J

    return-wide v0
.end method

.method public final getScreenOrientation()I
    .locals 1

    iget v0, p0, Lcom/vungle/ads/internal/signals/b;->screenOrientation:I

    return v0
.end method

.method public final getTemplateSignals()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/signals/b;->templateSignals:Ljava/lang/String;

    return-object v0
.end method

.method public final getTimeBetweenAdAvailabilityAndPlayAd()J
    .locals 2

    iget-wide v0, p0, Lcom/vungle/ads/internal/signals/b;->timeBetweenAdAvailabilityAndPlayAd:J

    return-wide v0
.end method

.method public final getTimeSinceLastAdLoad()J
    .locals 2

    iget-wide v0, p0, Lcom/vungle/ads/internal/signals/b;->timeSinceLastAdLoad:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/vungle/ads/internal/signals/b;->lastAdLoadTime:Ljava/lang/Long;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/vungle/ads/internal/signals/b;->loadAdTime:J

    invoke-static {v1, v2}, Landroidx/collection/s;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final setAdAvailabilityCallbackTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/vungle/ads/internal/signals/b;->adAvailabilityCallbackTime:J

    return-void
.end method

.method public final setEventId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/vungle/ads/internal/signals/b;->eventId:Ljava/lang/String;

    return-void
.end method

.method public final setPlayAdTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/vungle/ads/internal/signals/b;->playAdTime:J

    return-void
.end method

.method public final setScreenOrientation(I)V
    .locals 0

    iput p1, p0, Lcom/vungle/ads/internal/signals/b;->screenOrientation:I

    return-void
.end method

.method public final setTemplateSignals(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/vungle/ads/internal/signals/b;->templateSignals:Ljava/lang/String;

    return-void
.end method

.method public final setTimeBetweenAdAvailabilityAndPlayAd(J)V
    .locals 0

    iput-wide p1, p0, Lcom/vungle/ads/internal/signals/b;->timeBetweenAdAvailabilityAndPlayAd:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SignaledAd(lastAdLoadTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/signals/b;->lastAdLoadTime:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", loadAdTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/vungle/ads/internal/signals/b;->loadAdTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
