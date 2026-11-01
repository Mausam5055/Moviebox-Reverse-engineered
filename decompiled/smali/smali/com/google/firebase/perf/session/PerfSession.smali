.class public Lcom/google/firebase/perf/session/PerfSession;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/firebase/perf/session/PerfSession;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final creationTime:Lcom/google/firebase/perf/util/Timer;

.field private isGaugeAndEventCollectionEnabled:Z

.field private final sessionId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/perf/session/PerfSession$a;

    invoke-direct {v0}, Lcom/google/firebase/perf/session/PerfSession$a;-><init>()V

    sput-object v0, Lcom/google/firebase/perf/session/PerfSession;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/firebase/perf/session/PerfSession;->isGaugeAndEventCollectionEnabled:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/perf/session/PerfSession;->sessionId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/google/firebase/perf/session/PerfSession;->isGaugeAndEventCollectionEnabled:Z

    const-class v0, Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/perf/util/Timer;

    iput-object p1, p0, Lcom/google/firebase/perf/session/PerfSession;->creationTime:Lcom/google/firebase/perf/util/Timer;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/firebase/perf/session/PerfSession$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/perf/session/PerfSession;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/firebase/perf/util/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/firebase/perf/session/PerfSession;->isGaugeAndEventCollectionEnabled:Z

    iput-object p1, p0, Lcom/google/firebase/perf/session/PerfSession;->sessionId:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/google/firebase/perf/util/a;->a()Lcom/google/firebase/perf/util/Timer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/perf/session/PerfSession;->creationTime:Lcom/google/firebase/perf/util/Timer;

    return-void
.end method

.method public static buildAndSort(Ljava/util/List;)[Lcom/google/firebase/perf/v1/h;
    .locals 8
    .param p0    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/perf/session/PerfSession;",
            ">;)[",
            "Lcom/google/firebase/perf/v1/h;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/firebase/perf/v1/h;

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/perf/session/PerfSession;

    invoke-virtual {v2}, Lcom/google/firebase/perf/session/PerfSession;->build()Lcom/google/firebase/perf/v1/h;

    move-result-object v2

    const/4 v3, 0x1

    move v5, v1

    move v4, v3

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_2

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/firebase/perf/session/PerfSession;

    invoke-virtual {v6}, Lcom/google/firebase/perf/session/PerfSession;->build()Lcom/google/firebase/perf/v1/h;

    move-result-object v6

    if-nez v5, :cond_1

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/firebase/perf/session/PerfSession;

    invoke-virtual {v7}, Lcom/google/firebase/perf/session/PerfSession;->isVerbose()Z

    move-result v7

    if-eqz v7, :cond_1

    aput-object v6, v0, v1

    aput-object v2, v0, v4

    move v5, v3

    goto :goto_1

    :cond_1
    aput-object v6, v0, v4

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-nez v5, :cond_3

    aput-object v2, v0, v1

    :cond_3
    return-object v0
.end method

.method public static createWithId(Ljava/lang/String;)Lcom/google/firebase/perf/session/PerfSession;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "-"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lcom/google/firebase/perf/session/PerfSession;

    new-instance v1, Lcom/google/firebase/perf/util/a;

    invoke-direct {v1}, Lcom/google/firebase/perf/util/a;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/google/firebase/perf/session/PerfSession;-><init>(Ljava/lang/String;Lcom/google/firebase/perf/util/a;)V

    invoke-static {}, Lcom/google/firebase/perf/session/PerfSession;->shouldCollectGaugesAndEvents()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/google/firebase/perf/session/PerfSession;->setGaugeAndEventCollectionEnabled(Z)V

    return-object v0
.end method

.method static isVerbose(Lcom/google/firebase/perf/v1/h;)Z
    .locals 2
    .param p0    # Lcom/google/firebase/perf/v1/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/h;->n()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/perf/v1/SessionVerbosity;

    sget-object v1, Lcom/google/firebase/perf/v1/SessionVerbosity;->GAUGES_AND_SYSTEM_EVENTS:Lcom/google/firebase/perf/v1/SessionVerbosity;

    if-ne v0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static shouldCollectGaugesAndEvents()Z
    .locals 5

    invoke-static {}, Lcom/google/firebase/perf/config/a;->g()Lcom/google/firebase/perf/config/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/perf/config/a;->K()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    invoke-virtual {v0}, Lcom/google/firebase/perf/config/a;->D()D

    move-result-wide v3

    cmpg-double v0, v1, v3

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public build()Lcom/google/firebase/perf/v1/h;
    .locals 2

    invoke-static {}, Lcom/google/firebase/perf/v1/h;->o()Lcom/google/firebase/perf/v1/h$c;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/perf/session/PerfSession;->sessionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/v1/h$c;->i(Ljava/lang/String;)Lcom/google/firebase/perf/v1/h$c;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/firebase/perf/session/PerfSession;->isGaugeAndEventCollectionEnabled:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/firebase/perf/v1/SessionVerbosity;->GAUGES_AND_SYSTEM_EVENTS:Lcom/google/firebase/perf/v1/SessionVerbosity;

    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/v1/h$c;->d(Lcom/google/firebase/perf/v1/SessionVerbosity;)Lcom/google/firebase/perf/v1/h$c;

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$b;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/perf/v1/h;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getTimer()Lcom/google/firebase/perf/util/Timer;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/session/PerfSession;->creationTime:Lcom/google/firebase/perf/util/Timer;

    return-object v0
.end method

.method public isGaugeAndEventCollectionEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/firebase/perf/session/PerfSession;->isGaugeAndEventCollectionEnabled:Z

    return v0
.end method

.method public isSessionRunningTooLong()Z
    .locals 4

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v1, p0, Lcom/google/firebase/perf/session/PerfSession;->creationTime:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Timer;->getDurationMicros()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v0

    invoke-static {}, Lcom/google/firebase/perf/config/a;->g()Lcom/google/firebase/perf/config/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/perf/config/a;->A()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVerbose()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/firebase/perf/session/PerfSession;->isGaugeAndEventCollectionEnabled:Z

    return v0
.end method

.method public sessionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/session/PerfSession;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public setGaugeAndEventCollectionEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/firebase/perf/session/PerfSession;->isGaugeAndEventCollectionEnabled:Z

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p2, p0, Lcom/google/firebase/perf/session/PerfSession;->sessionId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/google/firebase/perf/session/PerfSession;->isGaugeAndEventCollectionEnabled:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-object p2, p0, Lcom/google/firebase/perf/session/PerfSession;->creationTime:Lcom/google/firebase/perf/util/Timer;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
