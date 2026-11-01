.class public final Lcom/google/android/libraries/places/internal/zzbwo;
.super Ljava/lang/Object;


# static fields
.field public static final zza:Lcom/google/android/libraries/places/internal/zzbwo;

.field private static final zzb:Lcom/google/android/libraries/places/internal/zzbwn;

.field private static final zzc:I

.field private static final zzd:[Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbwo;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzbwo;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbwo;->zza:Lcom/google/android/libraries/places/internal/zzbwo;

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbwn;

    const/4 v7, 0x0

    new-array v2, v7, [B

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/libraries/places/internal/zzbwn;-><init>([BIIZZ)V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbwo;->zzb:Lcom/google/android/libraries/places/internal/zzbwn;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    add-int/2addr v0, v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    sput v0, Lcom/google/android/libraries/places/internal/zzbwo;->zzc:I

    new-array v1, v0, [Ljava/util/concurrent/atomic/AtomicReference;

    :goto_0
    if-ge v7, v0, :cond_0

    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    aput-object v2, v1, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    sput-object v1, Lcom/google/android/libraries/places/internal/zzbwo;->zzd:[Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final zza()Lcom/google/android/libraries/places/internal/zzbwn;
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbwo;->zzc()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/internal/zzbwo;->zzb:Lcom/google/android/libraries/places/internal/zzbwn;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/libraries/places/internal/zzbwn;

    if-ne v2, v1, :cond_0

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbwn;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzbwn;-><init>()V

    return-object v0

    :cond_0
    const/4 v1, 0x0

    if-nez v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbwn;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzbwn;-><init>()V

    return-object v0

    :cond_1
    iget-object v3, v2, Lcom/google/android/libraries/places/internal/zzbwn;->zzg:Lcom/google/android/libraries/places/internal/zzbwn;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iput-object v1, v2, Lcom/google/android/libraries/places/internal/zzbwn;->zzg:Lcom/google/android/libraries/places/internal/zzbwn;

    const/4 v0, 0x0

    iput v0, v2, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    return-object v2
.end method

.method public static final zzb(Lcom/google/android/libraries/places/internal/zzbwn;)V
    .locals 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "segment"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbwn;->zzg:Lcom/google/android/libraries/places/internal/zzbwn;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbwn;->zzh:Lcom/google/android/libraries/places/internal/zzbwn;

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbwn;->zze:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbwo;->zzc()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/internal/zzbwo;->zzb:Lcom/google/android/libraries/places/internal/zzbwn;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/libraries/places/internal/zzbwn;

    if-eq v2, v1, :cond_3

    const/4 v1, 0x0

    if-eqz v2, :cond_1

    iget v3, v2, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    const/high16 v4, 0x10000

    if-lt v3, v4, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void

    :cond_2
    iput-object v2, p0, Lcom/google/android/libraries/places/internal/zzbwn;->zzg:Lcom/google/android/libraries/places/internal/zzbwn;

    iput v1, p0, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    add-int/lit16 v3, v3, 0x2000

    iput v3, p0, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed requirement."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final zzc()Ljava/util/concurrent/atomic/AtomicReference;
    .locals 6

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    sget v2, Lcom/google/android/libraries/places/internal/zzbwo;->zzc:I

    int-to-long v2, v2

    const-wide/16 v4, -0x1

    add-long/2addr v2, v4

    and-long/2addr v0, v2

    sget-object v2, Lcom/google/android/libraries/places/internal/zzbwo;->zzd:[Ljava/util/concurrent/atomic/AtomicReference;

    long-to-int v0, v0

    aget-object v0, v2, v0

    return-object v0
.end method
