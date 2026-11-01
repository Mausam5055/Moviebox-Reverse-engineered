.class public Lcom/google/firebase/perf/metrics/Trace;
.super Lcom/google/firebase/perf/application/b;

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/google/firebase/perf/session/a;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/firebase/perf/metrics/Trace;",
            ">;"
        }
    .end annotation
.end field

.field static final CREATOR_DATAONLY:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/firebase/perf/metrics/Trace;",
            ">;"
        }
    .end annotation
.end field

.field private static final logger:Lsc/a;

.field private static final traceNameToTraceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/perf/metrics/Trace;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final clock:Lcom/google/firebase/perf/util/a;

.field private final counterNameToCounterMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/perf/metrics/Counter;",
            ">;"
        }
    .end annotation
.end field

.field private final customAttributesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private endTime:Lcom/google/firebase/perf/util/Timer;

.field private final gaugeManager:Lcom/google/firebase/perf/session/gauges/GaugeManager;

.field private final name:Ljava/lang/String;

.field private final parent:Lcom/google/firebase/perf/metrics/Trace;

.field private final sessionAwareObject:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/firebase/perf/session/a;",
            ">;"
        }
    .end annotation
.end field

.field private final sessions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/perf/session/PerfSession;",
            ">;"
        }
    .end annotation
.end field

.field private startTime:Lcom/google/firebase/perf/util/Timer;

.field private final subtraces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/perf/metrics/Trace;",
            ">;"
        }
    .end annotation
.end field

.field private final transportManager:Lvc/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lsc/a;->e()Lsc/a;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/perf/metrics/Trace;->logger:Lsc/a;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/google/firebase/perf/metrics/Trace;->traceNameToTraceMap:Ljava/util/Map;

    new-instance v0, Lcom/google/firebase/perf/metrics/Trace$a;

    invoke-direct {v0}, Lcom/google/firebase/perf/metrics/Trace$a;-><init>()V

    sput-object v0, Lcom/google/firebase/perf/metrics/Trace;->CREATOR:Landroid/os/Parcelable$Creator;

    new-instance v0, Lcom/google/firebase/perf/metrics/Trace$b;

    invoke-direct {v0}, Lcom/google/firebase/perf/metrics/Trace$b;-><init>()V

    sput-object v0, Lcom/google/firebase/perf/metrics/Trace;->CREATOR_DATAONLY:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;Z)V
    .locals 3
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/firebase/perf/application/a;->b()Lcom/google/firebase/perf/application/a;

    move-result-object v1

    :goto_0
    invoke-direct {p0, v1}, Lcom/google/firebase/perf/application/b;-><init>(Lcom/google/firebase/perf/application/a;)V

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/firebase/perf/metrics/Trace;->sessionAwareObject:Ljava/lang/ref/WeakReference;

    const-class v1, Lcom/google/firebase/perf/metrics/Trace;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/perf/metrics/Trace;

    iput-object v2, p0, Lcom/google/firebase/perf/metrics/Trace;->parent:Lcom/google/firebase/perf/metrics/Trace;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/firebase/perf/metrics/Trace;->name:Ljava/lang/String;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/firebase/perf/metrics/Trace;->subtraces:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/google/firebase/perf/metrics/Trace;->counterNameToCounterMap:Ljava/util/Map;

    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, p0, Lcom/google/firebase/perf/metrics/Trace;->customAttributesMap:Ljava/util/Map;

    const-class v2, Lcom/google/firebase/perf/metrics/Counter;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    const-class v1, Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/perf/util/Timer;

    iput-object v2, p0, Lcom/google/firebase/perf/metrics/Trace;->startTime:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/perf/util/Timer;

    iput-object v1, p0, Lcom/google/firebase/perf/metrics/Trace;->endTime:Lcom/google/firebase/perf/util/Timer;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/perf/metrics/Trace;->sessions:Ljava/util/List;

    const-class v2, Lcom/google/firebase/perf/session/PerfSession;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    if-eqz p2, :cond_1

    iput-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->transportManager:Lvc/k;

    iput-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->clock:Lcom/google/firebase/perf/util/a;

    iput-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->gaugeManager:Lcom/google/firebase/perf/session/gauges/GaugeManager;

    goto :goto_1

    :cond_1
    invoke-static {}, Lvc/k;->k()Lvc/k;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/perf/metrics/Trace;->transportManager:Lvc/k;

    new-instance p1, Lcom/google/firebase/perf/util/a;

    invoke-direct {p1}, Lcom/google/firebase/perf/util/a;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/perf/metrics/Trace;->clock:Lcom/google/firebase/perf/util/a;

    invoke-static {}, Lcom/google/firebase/perf/session/gauges/GaugeManager;->getInstance()Lcom/google/firebase/perf/session/gauges/GaugeManager;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/perf/metrics/Trace;->gaugeManager:Lcom/google/firebase/perf/session/gauges/GaugeManager;

    :goto_1
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;ZLcom/google/firebase/perf/metrics/Trace$a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/perf/metrics/Trace;-><init>(Landroid/os/Parcel;Z)V

    return-void
.end method

.method private constructor <init>(Lcom/google/firebase/perf/metrics/Trace;Ljava/lang/String;Lcom/google/firebase/perf/util/Timer;Lcom/google/firebase/perf/util/Timer;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;)V
    .locals 1
    .param p1    # Lcom/google/firebase/perf/metrics/Trace;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/perf/metrics/Trace;",
            "Ljava/lang/String;",
            "Lcom/google/firebase/perf/util/Timer;",
            "Lcom/google/firebase/perf/util/Timer;",
            "Ljava/util/List<",
            "Lcom/google/firebase/perf/metrics/Trace;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/perf/metrics/Counter;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/firebase/perf/application/b;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->sessionAwareObject:Ljava/lang/ref/WeakReference;

    iput-object p1, p0, Lcom/google/firebase/perf/metrics/Trace;->parent:Lcom/google/firebase/perf/metrics/Trace;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/firebase/perf/metrics/Trace;->name:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/firebase/perf/metrics/Trace;->startTime:Lcom/google/firebase/perf/util/Timer;

    iput-object p4, p0, Lcom/google/firebase/perf/metrics/Trace;->endTime:Lcom/google/firebase/perf/util/Timer;

    if-eqz p5, :cond_0

    goto :goto_0

    :cond_0
    new-instance p5, Ljava/util/ArrayList;

    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    iput-object p5, p0, Lcom/google/firebase/perf/metrics/Trace;->subtraces:Ljava/util/List;

    if-eqz p6, :cond_1

    goto :goto_1

    :cond_1
    new-instance p6, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p6}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    :goto_1
    iput-object p6, p0, Lcom/google/firebase/perf/metrics/Trace;->counterNameToCounterMap:Ljava/util/Map;

    if-eqz p7, :cond_2

    goto :goto_2

    :cond_2
    new-instance p7, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p7}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    :goto_2
    iput-object p7, p0, Lcom/google/firebase/perf/metrics/Trace;->customAttributesMap:Ljava/util/Map;

    iget-object p2, p1, Lcom/google/firebase/perf/metrics/Trace;->clock:Lcom/google/firebase/perf/util/a;

    iput-object p2, p0, Lcom/google/firebase/perf/metrics/Trace;->clock:Lcom/google/firebase/perf/util/a;

    iget-object p2, p1, Lcom/google/firebase/perf/metrics/Trace;->transportManager:Lvc/k;

    iput-object p2, p0, Lcom/google/firebase/perf/metrics/Trace;->transportManager:Lvc/k;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p2}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/google/firebase/perf/metrics/Trace;->sessions:Ljava/util/List;

    iget-object p1, p1, Lcom/google/firebase/perf/metrics/Trace;->gaugeManager:Lcom/google/firebase/perf/session/gauges/GaugeManager;

    iput-object p1, p0, Lcom/google/firebase/perf/metrics/Trace;->gaugeManager:Lcom/google/firebase/perf/session/gauges/GaugeManager;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lvc/k;->k()Lvc/k;

    move-result-object v2

    new-instance v3, Lcom/google/firebase/perf/util/a;

    invoke-direct {v3}, Lcom/google/firebase/perf/util/a;-><init>()V

    invoke-static {}, Lcom/google/firebase/perf/application/a;->b()Lcom/google/firebase/perf/application/a;

    move-result-object v4

    invoke-static {}, Lcom/google/firebase/perf/session/gauges/GaugeManager;->getInstance()Lcom/google/firebase/perf/session/gauges/GaugeManager;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/perf/metrics/Trace;-><init>(Ljava/lang/String;Lvc/k;Lcom/google/firebase/perf/util/a;Lcom/google/firebase/perf/application/a;Lcom/google/firebase/perf/session/gauges/GaugeManager;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lvc/k;Lcom/google/firebase/perf/util/a;Lcom/google/firebase/perf/application/a;)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lvc/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/firebase/perf/util/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/google/firebase/perf/application/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/google/firebase/perf/session/gauges/GaugeManager;->getInstance()Lcom/google/firebase/perf/session/gauges/GaugeManager;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/perf/metrics/Trace;-><init>(Ljava/lang/String;Lvc/k;Lcom/google/firebase/perf/util/a;Lcom/google/firebase/perf/application/a;Lcom/google/firebase/perf/session/gauges/GaugeManager;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lvc/k;Lcom/google/firebase/perf/util/a;Lcom/google/firebase/perf/application/a;Lcom/google/firebase/perf/session/gauges/GaugeManager;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lvc/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/firebase/perf/util/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/google/firebase/perf/application/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/google/firebase/perf/session/gauges/GaugeManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p4}, Lcom/google/firebase/perf/application/b;-><init>(Lcom/google/firebase/perf/application/a;)V

    new-instance p4, Ljava/lang/ref/WeakReference;

    invoke-direct {p4, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p4, p0, Lcom/google/firebase/perf/metrics/Trace;->sessionAwareObject:Ljava/lang/ref/WeakReference;

    const/4 p4, 0x0

    iput-object p4, p0, Lcom/google/firebase/perf/metrics/Trace;->parent:Lcom/google/firebase/perf/metrics/Trace;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/perf/metrics/Trace;->name:Ljava/lang/String;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/perf/metrics/Trace;->subtraces:Ljava/util/List;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/perf/metrics/Trace;->counterNameToCounterMap:Ljava/util/Map;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/perf/metrics/Trace;->customAttributesMap:Ljava/util/Map;

    iput-object p3, p0, Lcom/google/firebase/perf/metrics/Trace;->clock:Lcom/google/firebase/perf/util/a;

    iput-object p2, p0, Lcom/google/firebase/perf/metrics/Trace;->transportManager:Lvc/k;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/perf/metrics/Trace;->sessions:Ljava/util/List;

    iput-object p5, p0, Lcom/google/firebase/perf/metrics/Trace;->gaugeManager:Lcom/google/firebase/perf/session/gauges/GaugeManager;

    return-void
.end method

.method private checkAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/firebase/perf/metrics/Trace;->isStopped()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/google/firebase/perf/metrics/Trace;->customAttributesMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/google/firebase/perf/metrics/Trace;->customAttributesMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    const/4 v3, 0x5

    if-ge v2, v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object p2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v0

    const-string v0, "Exceeds max limit of number of attributes - %d"

    invoke-static {p2, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-static {p1, p2}, Ltc/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object p2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-object v2, p0, Lcom/google/firebase/perf/metrics/Trace;->name:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v0

    const-string v0, "Trace \'%s\' has been stopped"

    invoke-static {p2, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static create(Ljava/lang/String;)Lcom/google/firebase/perf/metrics/Trace;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/google/firebase/perf/metrics/Trace;

    invoke-direct {v0, p0}, Lcom/google/firebase/perf/metrics/Trace;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static declared-synchronized getTrace(Ljava/lang/String;)Lcom/google/firebase/perf/metrics/Trace;
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-class v0, Lcom/google/firebase/perf/metrics/Trace;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/firebase/perf/metrics/Trace;->traceNameToTraceMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/perf/metrics/Trace;

    if-nez v2, :cond_0

    new-instance v2, Lcom/google/firebase/perf/metrics/Trace;

    invoke-direct {v2, p0}, Lcom/google/firebase/perf/metrics/Trace;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-object v2

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method static declared-synchronized getTrace(Ljava/lang/String;Lvc/k;Lcom/google/firebase/perf/util/a;Lcom/google/firebase/perf/application/a;)Lcom/google/firebase/perf/metrics/Trace;
    .locals 9
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lvc/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/perf/util/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/firebase/perf/application/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-class v0, Lcom/google/firebase/perf/metrics/Trace;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/firebase/perf/metrics/Trace;->traceNameToTraceMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/perf/metrics/Trace;

    if-nez v2, :cond_0

    new-instance v2, Lcom/google/firebase/perf/metrics/Trace;

    invoke-static {}, Lcom/google/firebase/perf/session/gauges/GaugeManager;->getInstance()Lcom/google/firebase/perf/session/gauges/GaugeManager;

    move-result-object v8

    move-object v3, v2

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v3 .. v8}, Lcom/google/firebase/perf/metrics/Trace;-><init>(Ljava/lang/String;Lvc/k;Lcom/google/firebase/perf/util/a;Lcom/google/firebase/perf/application/a;Lcom/google/firebase/perf/session/gauges/GaugeManager;)V

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-object v2

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private obtainOrCreateCounterByName(Ljava/lang/String;)Lcom/google/firebase/perf/metrics/Counter;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->counterNameToCounterMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/perf/metrics/Counter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/firebase/perf/metrics/Counter;

    invoke-direct {v0, p1}, Lcom/google/firebase/perf/metrics/Counter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/firebase/perf/metrics/Trace;->counterNameToCounterMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private setEndTimeOfLastStage(Lcom/google/firebase/perf/util/Timer;)V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->subtraces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->subtraces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/google/firebase/perf/metrics/Trace;->subtraces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/perf/metrics/Trace;

    iget-object v1, v0, Lcom/google/firebase/perf/metrics/Trace;->endTime:Lcom/google/firebase/perf/util/Timer;

    if-nez v1, :cond_1

    iput-object p1, v0, Lcom/google/firebase/perf/metrics/Trace;->endTime:Lcom/google/firebase/perf/util/Timer;

    :cond_1
    return-void
.end method

.method static startTrace(Ljava/lang/String;)Lcom/google/firebase/perf/metrics/Trace;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    sget-object v0, Lcom/google/firebase/perf/metrics/Trace;->traceNameToTraceMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/metrics/Trace;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/firebase/perf/metrics/Trace;->start()V

    :cond_0
    return-object p0
.end method

.method static stopTrace(Ljava/lang/String;)Lcom/google/firebase/perf/metrics/Trace;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    sget-object v0, Lcom/google/firebase/perf/metrics/Trace;->traceNameToTraceMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/perf/metrics/Trace;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/firebase/perf/metrics/Trace;->stop()V

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v1
.end method


# virtual methods
.method public describeContents()I
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method protected finalize()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/firebase/perf/metrics/Trace;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/firebase/perf/metrics/Trace;->logger:Lsc/a;

    const-string v2, "Trace \'%s\' is started but not stopped when it is destructed!"

    iget-object v3, p0, Lcom/google/firebase/perf/metrics/Trace;->name:Ljava/lang/String;

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    invoke-virtual {v1, v2, v4}, Lsc/a;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/google/firebase/perf/application/b;->incrementTsnsCount(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :goto_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->customAttributesMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getAttributes()Ljava/util/Map;
    .locals 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/google/firebase/perf/metrics/Trace;->customAttributesMap:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method getCounters()Ljava/util/Map;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/perf/metrics/Counter;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->counterNameToCounterMap:Ljava/util/Map;

    return-object v0
.end method

.method getEndTime()Lcom/google/firebase/perf/util/Timer;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->endTime:Lcom/google/firebase/perf/util/Timer;

    return-object v0
.end method

.method public getLongMetric(Ljava/lang/String;)J
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->counterNameToCounterMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/perf/metrics/Counter;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_1
    invoke-virtual {p1}, Lcom/google/firebase/perf/metrics/Counter;->getCount()J

    move-result-wide v0

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->name:Ljava/lang/String;

    return-object v0
.end method

.method getSessions()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/perf/session/PerfSession;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->sessions:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/google/firebase/perf/metrics/Trace;->sessions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/perf/session/PerfSession;

    if-eqz v3, :cond_0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getStartTime()Lcom/google/firebase/perf/util/Timer;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->startTime:Lcom/google/firebase/perf/util/Timer;

    return-object v0
.end method

.method getSubtraces()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/perf/metrics/Trace;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->subtraces:Ljava/util/List;

    return-object v0
.end method

.method hasStarted()Z
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->startTime:Lcom/google/firebase/perf/util/Timer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public incrementMetric(Ljava/lang/String;J)V
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p1}, Ltc/e;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    sget-object p2, Lcom/google/firebase/perf/metrics/Trace;->logger:Lsc/a;

    const-string p3, "Cannot increment metric \'%s\'. Metric name is invalid.(%s)"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    aput-object v3, v2, v0

    invoke-virtual {p2, p3, v2}, Lsc/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/firebase/perf/metrics/Trace;->hasStarted()Z

    move-result v3

    if-nez v3, :cond_1

    sget-object p2, Lcom/google/firebase/perf/metrics/Trace;->logger:Lsc/a;

    iget-object p3, p0, Lcom/google/firebase/perf/metrics/Trace;->name:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    aput-object p3, v2, v0

    const-string p1, "Cannot increment metric \'%s\' for trace \'%s\' because it\'s not started"

    invoke-virtual {p2, p1, v2}, Lsc/a;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/firebase/perf/metrics/Trace;->isStopped()Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object p2, Lcom/google/firebase/perf/metrics/Trace;->logger:Lsc/a;

    iget-object p3, p0, Lcom/google/firebase/perf/metrics/Trace;->name:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    aput-object p3, v2, v0

    const-string p1, "Cannot increment metric \'%s\' for trace \'%s\' because it\'s been stopped"

    invoke-virtual {p2, p1, v2}, Lsc/a;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/firebase/perf/metrics/Trace;->obtainOrCreateCounterByName(Ljava/lang/String;)Lcom/google/firebase/perf/metrics/Counter;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Lcom/google/firebase/perf/metrics/Counter;->increment(J)V

    sget-object p2, Lcom/google/firebase/perf/metrics/Trace;->logger:Lsc/a;

    invoke-virtual {v3}, Lcom/google/firebase/perf/metrics/Counter;->getCount()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    iget-object v3, p0, Lcom/google/firebase/perf/metrics/Trace;->name:Ljava/lang/String;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v1

    aput-object p3, v4, v0

    aput-object v3, v4, v2

    const-string p1, "Incrementing metric \'%s\' to %d on trace \'%s\'"

    invoke-virtual {p2, p1, v4}, Lsc/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method isActive()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/firebase/perf/metrics/Trace;->hasStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/firebase/perf/metrics/Trace;->isStopped()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isStopped()Z
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->endTime:Lcom/google/firebase/perf/util/Timer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public putAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/perf/metrics/Trace;->checkAttribute(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/google/firebase/perf/metrics/Trace;->logger:Lsc/a;

    const-string v5, "Setting attribute \'%s\' to \'%s\' on trace \'%s\'"

    iget-object v6, p0, Lcom/google/firebase/perf/metrics/Trace;->name:Ljava/lang/String;

    new-array v7, v1, [Ljava/lang/Object;

    aput-object p1, v7, v3

    aput-object p2, v7, v2

    aput-object v6, v7, v0

    invoke-virtual {v4, v5, v7}, Lsc/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    sget-object v5, Lcom/google/firebase/perf/metrics/Trace;->logger:Lsc/a;

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    aput-object p2, v1, v2

    aput-object v4, v1, v0

    const-string v0, "Can not set attribute \'%s\' with value \'%s\' (%s)"

    invoke-virtual {v5, v0, v1}, Lsc/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move v2, v3

    :goto_0
    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->customAttributesMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public putMetric(Ljava/lang/String;J)V
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p1}, Ltc/e;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    sget-object p2, Lcom/google/firebase/perf/metrics/Trace;->logger:Lsc/a;

    const-string p3, "Cannot set value for metric \'%s\'. Metric name is invalid.(%s)"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    aput-object v3, v2, v0

    invoke-virtual {p2, p3, v2}, Lsc/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/firebase/perf/metrics/Trace;->hasStarted()Z

    move-result v3

    if-nez v3, :cond_1

    sget-object p2, Lcom/google/firebase/perf/metrics/Trace;->logger:Lsc/a;

    iget-object p3, p0, Lcom/google/firebase/perf/metrics/Trace;->name:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    aput-object p3, v2, v0

    const-string p1, "Cannot set value for metric \'%s\' for trace \'%s\' because it\'s not started"

    invoke-virtual {p2, p1, v2}, Lsc/a;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/firebase/perf/metrics/Trace;->isStopped()Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object p2, Lcom/google/firebase/perf/metrics/Trace;->logger:Lsc/a;

    iget-object p3, p0, Lcom/google/firebase/perf/metrics/Trace;->name:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    aput-object p3, v2, v0

    const-string p1, "Cannot set value for metric \'%s\' for trace \'%s\' because it\'s been stopped"

    invoke-virtual {p2, p1, v2}, Lsc/a;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/firebase/perf/metrics/Trace;->obtainOrCreateCounterByName(Ljava/lang/String;)Lcom/google/firebase/perf/metrics/Counter;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Lcom/google/firebase/perf/metrics/Counter;->setCount(J)V

    sget-object v3, Lcom/google/firebase/perf/metrics/Trace;->logger:Lsc/a;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iget-object p3, p0, Lcom/google/firebase/perf/metrics/Trace;->name:Ljava/lang/String;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v1

    aput-object p2, v4, v0

    aput-object p3, v4, v2

    const-string p1, "Setting metric \'%s\' to \'%s\' on trace \'%s\'"

    invoke-virtual {v3, p1, v4}, Lsc/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    invoke-virtual {p0}, Lcom/google/firebase/perf/metrics/Trace;->isStopped()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/google/firebase/perf/metrics/Trace;->logger:Lsc/a;

    const-string v0, "Can\'t remove a attribute from a Trace that\'s stopped."

    invoke-virtual {p1, v0}, Lsc/a;->c(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->customAttributesMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public start()V
    .locals 6
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/google/firebase/perf/config/a;->g()Lcom/google/firebase/perf/config/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/perf/config/a;->K()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v0, Lcom/google/firebase/perf/metrics/Trace;->logger:Lsc/a;

    const-string v1, "Trace feature is disabled."

    invoke-virtual {v0, v1}, Lsc/a;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/google/firebase/perf/metrics/Trace;->name:Ljava/lang/String;

    invoke-static {v2}, Ltc/e;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    sget-object v3, Lcom/google/firebase/perf/metrics/Trace;->logger:Lsc/a;

    iget-object v4, p0, Lcom/google/firebase/perf/metrics/Trace;->name:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v4, v5, v1

    aput-object v2, v5, v0

    const-string v0, "Cannot start trace \'%s\'. Trace name is invalid.(%s)"

    invoke-virtual {v3, v0, v5}, Lsc/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/google/firebase/perf/metrics/Trace;->startTime:Lcom/google/firebase/perf/util/Timer;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/google/firebase/perf/metrics/Trace;->logger:Lsc/a;

    iget-object v3, p0, Lcom/google/firebase/perf/metrics/Trace;->name:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v3, v0, v1

    const-string v1, "Trace \'%s\' has already started, should not start again!"

    invoke-virtual {v2, v1, v0}, Lsc/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->clock:Lcom/google/firebase/perf/util/a;

    invoke-virtual {v0}, Lcom/google/firebase/perf/util/a;->a()Lcom/google/firebase/perf/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->startTime:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {p0}, Lcom/google/firebase/perf/application/b;->registerForAppState()V

    invoke-static {}, Lcom/google/firebase/perf/session/SessionManager;->getInstance()Lcom/google/firebase/perf/session/SessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/perf/session/SessionManager;->perfSession()Lcom/google/firebase/perf/session/PerfSession;

    move-result-object v0

    invoke-static {}, Lcom/google/firebase/perf/session/SessionManager;->getInstance()Lcom/google/firebase/perf/session/SessionManager;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/perf/metrics/Trace;->sessionAwareObject:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1, v2}, Lcom/google/firebase/perf/session/SessionManager;->registerForSessionUpdates(Ljava/lang/ref/WeakReference;)V

    invoke-virtual {p0, v0}, Lcom/google/firebase/perf/metrics/Trace;->updateSession(Lcom/google/firebase/perf/session/PerfSession;)V

    invoke-virtual {v0}, Lcom/google/firebase/perf/session/PerfSession;->isGaugeAndEventCollectionEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/firebase/perf/metrics/Trace;->gaugeManager:Lcom/google/firebase/perf/session/gauges/GaugeManager;

    invoke-virtual {v0}, Lcom/google/firebase/perf/session/PerfSession;->getTimer()Lcom/google/firebase/perf/util/Timer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/firebase/perf/session/gauges/GaugeManager;->collectGaugeMetricOnce(Lcom/google/firebase/perf/util/Timer;)V

    :cond_3
    return-void
.end method

.method startStage(Ljava/lang/String;)V
    .locals 10
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->clock:Lcom/google/firebase/perf/util/a;

    invoke-virtual {v0}, Lcom/google/firebase/perf/util/a;->a()Lcom/google/firebase/perf/util/Timer;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/google/firebase/perf/metrics/Trace;->setEndTimeOfLastStage(Lcom/google/firebase/perf/util/Timer;)V

    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->subtraces:Ljava/util/List;

    new-instance v9, Lcom/google/firebase/perf/metrics/Trace;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v8}, Lcom/google/firebase/perf/metrics/Trace;-><init>(Lcom/google/firebase/perf/metrics/Trace;Ljava/lang/String;Lcom/google/firebase/perf/util/Timer;Lcom/google/firebase/perf/util/Timer;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;)V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public stop()V
    .locals 4
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/firebase/perf/metrics/Trace;->hasStarted()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/google/firebase/perf/metrics/Trace;->logger:Lsc/a;

    iget-object v3, p0, Lcom/google/firebase/perf/metrics/Trace;->name:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v3, v1, v0

    const-string v0, "Trace \'%s\' has not been started so unable to stop!"

    invoke-virtual {v2, v0, v1}, Lsc/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/firebase/perf/metrics/Trace;->isStopped()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/google/firebase/perf/metrics/Trace;->logger:Lsc/a;

    iget-object v3, p0, Lcom/google/firebase/perf/metrics/Trace;->name:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v3, v1, v0

    const-string v0, "Trace \'%s\' has already stopped, should not stop again!"

    invoke-virtual {v2, v0, v1}, Lsc/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-static {}, Lcom/google/firebase/perf/session/SessionManager;->getInstance()Lcom/google/firebase/perf/session/SessionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/perf/metrics/Trace;->sessionAwareObject:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/session/SessionManager;->unregisterForSessionUpdates(Ljava/lang/ref/WeakReference;)V

    invoke-virtual {p0}, Lcom/google/firebase/perf/application/b;->unregisterForAppState()V

    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->clock:Lcom/google/firebase/perf/util/a;

    invoke-virtual {v0}, Lcom/google/firebase/perf/util/a;->a()Lcom/google/firebase/perf/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->endTime:Lcom/google/firebase/perf/util/Timer;

    iget-object v1, p0, Lcom/google/firebase/perf/metrics/Trace;->parent:Lcom/google/firebase/perf/metrics/Trace;

    if-nez v1, :cond_3

    invoke-direct {p0, v0}, Lcom/google/firebase/perf/metrics/Trace;->setEndTimeOfLastStage(Lcom/google/firebase/perf/util/Timer;)V

    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->transportManager:Lvc/k;

    new-instance v1, Lcom/google/firebase/perf/metrics/j;

    invoke-direct {v1, p0}, Lcom/google/firebase/perf/metrics/j;-><init>(Lcom/google/firebase/perf/metrics/Trace;)V

    invoke-virtual {v1}, Lcom/google/firebase/perf/metrics/j;->a()Lcom/google/firebase/perf/v1/i;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/firebase/perf/application/b;->getAppState()Lcom/google/firebase/perf/v1/ApplicationProcessState;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lvc/k;->C(Lcom/google/firebase/perf/v1/i;Lcom/google/firebase/perf/v1/ApplicationProcessState;)V

    invoke-static {}, Lcom/google/firebase/perf/session/SessionManager;->getInstance()Lcom/google/firebase/perf/session/SessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/perf/session/SessionManager;->perfSession()Lcom/google/firebase/perf/session/PerfSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/perf/session/PerfSession;->isGaugeAndEventCollectionEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->gaugeManager:Lcom/google/firebase/perf/session/gauges/GaugeManager;

    invoke-static {}, Lcom/google/firebase/perf/session/SessionManager;->getInstance()Lcom/google/firebase/perf/session/SessionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/perf/session/SessionManager;->perfSession()Lcom/google/firebase/perf/session/PerfSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/perf/session/PerfSession;->getTimer()Lcom/google/firebase/perf/util/Timer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/session/gauges/GaugeManager;->collectGaugeMetricOnce(Lcom/google/firebase/perf/util/Timer;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/google/firebase/perf/metrics/Trace;->logger:Lsc/a;

    const-string v1, "Trace name is empty, no log is sent to server"

    invoke-virtual {v0, v1}, Lsc/a;->c(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method stopStage()V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->clock:Lcom/google/firebase/perf/util/a;

    invoke-virtual {v0}, Lcom/google/firebase/perf/util/a;->a()Lcom/google/firebase/perf/util/Timer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/perf/metrics/Trace;->setEndTimeOfLastStage(Lcom/google/firebase/perf/util/Timer;)V

    return-void
.end method

.method public updateSession(Lcom/google/firebase/perf/session/PerfSession;)V
    .locals 1

    if-nez p1, :cond_0

    sget-object p1, Lcom/google/firebase/perf/metrics/Trace;->logger:Lsc/a;

    const-string v0, "Unable to add new SessionId to the Trace. Continuing without it."

    invoke-virtual {p1, v0}, Lsc/a;->j(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/firebase/perf/metrics/Trace;->hasStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/firebase/perf/metrics/Trace;->isStopped()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->sessions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    iget-object p2, p0, Lcom/google/firebase/perf/metrics/Trace;->parent:Lcom/google/firebase/perf/metrics/Trace;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p2, p0, Lcom/google/firebase/perf/metrics/Trace;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/firebase/perf/metrics/Trace;->subtraces:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    iget-object p2, p0, Lcom/google/firebase/perf/metrics/Trace;->counterNameToCounterMap:Ljava/util/Map;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    iget-object p2, p0, Lcom/google/firebase/perf/metrics/Trace;->startTime:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p2, p0, Lcom/google/firebase/perf/metrics/Trace;->endTime:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p2, p0, Lcom/google/firebase/perf/metrics/Trace;->sessions:Ljava/util/List;

    monitor-enter p2

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->sessions:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
