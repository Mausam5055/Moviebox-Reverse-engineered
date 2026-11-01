.class final Lcom/google/android/libraries/places/internal/zzqv;
.super Lcom/google/android/libraries/places/internal/zzqp;


# static fields
.field static final zza:Z

.field static final zzb:Z

.field static final zzc:Z

.field private static final zzd:Ljava/util/concurrent/atomic/AtomicReference;

.field private static final zze:Ljava/util/concurrent/atomic/AtomicLong;

.field private static final zzf:Ljava/util/concurrent/ConcurrentLinkedQueue;


# instance fields
.field private volatile zzg:Lcom/google/android/libraries/places/internal/zzpw;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const-string v3, "robolectric"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/google/android/libraries/places/internal/zzqv;->zza:Z

    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string v3, "goldfish"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "ranchu"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/google/android/libraries/places/internal/zzqv;->zzb:Z

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v3, "eng"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "userdebug"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    move v1, v2

    :cond_5
    sput-boolean v1, Lcom/google/android/libraries/places/internal/zzqv;->zzc:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzqv;->zzd:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzqv;->zze:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzqv;->zzf:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzqp;-><init>(Ljava/lang/String;)V

    sget-boolean p1, Lcom/google/android/libraries/places/internal/zzqv;->zza:Z

    if-nez p1, :cond_2

    sget-boolean p1, Lcom/google/android/libraries/places/internal/zzqv;->zzb:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-boolean p1, Lcom/google/android/libraries/places/internal/zzqv;->zzc:Z

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzrb;->zzc()Lcom/google/android/libraries/places/internal/zzqy;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/places/internal/zzqy;->zzb(Z)Lcom/google/android/libraries/places/internal/zzqy;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzqp;->zza()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/places/internal/zzqy;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzpw;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzqv;->zzg:Lcom/google/android/libraries/places/internal/zzpw;

    return-void

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzqv;->zzg:Lcom/google/android/libraries/places/internal/zzpw;

    return-void

    :cond_2
    :goto_0
    new-instance p1, Lcom/google/android/libraries/places/internal/zzqq;

    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/zzqq;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzqp;->zza()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/places/internal/zzqq;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzpw;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzqv;->zzg:Lcom/google/android/libraries/places/internal/zzpw;

    return-void
.end method

.method public static zzb(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzpw;
    .locals 5

    sget-object v0, Lcom/google/android/libraries/places/internal/zzqv;->zzd:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzqr;

    invoke-interface {v0, p0}, Lcom/google/android/libraries/places/internal/zzqr;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzpw;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lcom/google/android/libraries/places/internal/zzqv;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    const/16 v4, 0x24

    if-ne v2, v4, :cond_1

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    if-eq v2, v3, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    invoke-direct {v0, p0}, Lcom/google/android/libraries/places/internal/zzqv;-><init>(Ljava/lang/String;)V

    sget-object p0, Lcom/google/android/libraries/places/internal/zzqt;->zza:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    sget-object p0, Lcom/google/android/libraries/places/internal/zzqv;->zzd:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_5

    :goto_2
    sget-object p0, Lcom/google/android/libraries/places/internal/zzqt;->zza:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/libraries/places/internal/zzqv;

    if-eqz p0, :cond_3

    sget-object v1, Lcom/google/android/libraries/places/internal/zzqv;->zzd:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/places/internal/zzqr;

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzqp;->zza()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/libraries/places/internal/zzqr;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzpw;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/libraries/places/internal/zzqv;->zzg:Lcom/google/android/libraries/places/internal/zzpw;

    goto :goto_2

    :cond_3
    sget-object p0, Lcom/google/android/libraries/places/internal/zzqv;->zzf:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/libraries/places/internal/zzqu;

    if-nez p0, :cond_4

    goto :goto_3

    :cond_4
    sget-object p0, Lcom/google/android/libraries/places/internal/zzqv;->zze:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndDecrement()J

    const/4 p0, 0x0

    throw p0

    :cond_5
    :goto_3
    return-object v0
.end method
