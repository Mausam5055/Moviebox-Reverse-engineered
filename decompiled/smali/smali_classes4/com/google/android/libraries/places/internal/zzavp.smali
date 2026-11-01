.class final Lcom/google/android/libraries/places/internal/zzavp;
.super Ljava/lang/Object;


# static fields
.field private static final zza:Lcom/google/android/libraries/places/internal/zzavp;


# instance fields
.field private final zzb:Lcom/google/android/libraries/places/internal/zzavu;

.field private final zzc:Ljava/util/concurrent/ConcurrentMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/libraries/places/internal/zzavp;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzavp;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzavp;->zza:Lcom/google/android/libraries/places/internal/zzavp;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzavp;->zzc:Ljava/util/concurrent/ConcurrentMap;

    new-instance v0, Lcom/google/android/libraries/places/internal/zzaux;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzaux;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzavp;->zzb:Lcom/google/android/libraries/places/internal/zzavu;

    return-void
.end method

.method public static zza()Lcom/google/android/libraries/places/internal/zzavp;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzavp;->zza:Lcom/google/android/libraries/places/internal/zzavp;

    return-object v0
.end method


# virtual methods
.method public final zzb(Ljava/lang/Class;)Lcom/google/android/libraries/places/internal/zzavt;
    .locals 2

    const-string v0, "messageType"

    invoke-static {p1, v0}, Lcom/google/android/libraries/places/internal/zzaud;->zzc(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzavp;->zzc:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/places/internal/zzavt;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzavp;->zzb:Lcom/google/android/libraries/places/internal/zzavu;

    invoke-interface {v1, p1}, Lcom/google/android/libraries/places/internal/zzavu;->zza(Ljava/lang/Class;)Lcom/google/android/libraries/places/internal/zzavt;

    move-result-object v1

    invoke-static {p1, v0}, Lcom/google/android/libraries/places/internal/zzaud;->zzc(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzavp;->zzc:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/internal/zzavt;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    :goto_0
    return-object v1
.end method
