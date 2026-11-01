.class public final Lcom/google/android/libraries/places/internal/zzbqo;
.super Ljava/lang/Object;


# static fields
.field public static final zza:Lcom/google/android/libraries/places/internal/zzbqo;


# instance fields
.field private final zzb:[Lcom/google/android/libraries/places/internal/zzbdr;

.field private final zzc:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbqo;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/libraries/places/internal/zzbdr;

    invoke-direct {v0, v1}, Lcom/google/android/libraries/places/internal/zzbqo;-><init>([Lcom/google/android/libraries/places/internal/zzbdr;)V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbqo;->zza:Lcom/google/android/libraries/places/internal/zzbqo;

    return-void
.end method

.method constructor <init>([Lcom/google/android/libraries/places/internal/zzbdr;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbqo;->zzc:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbqo;->zzb:[Lcom/google/android/libraries/places/internal/zzbdr;

    return-void
.end method

.method public static zza([Lcom/google/android/libraries/places/internal/zzayx;Lcom/google/android/libraries/places/internal/zzaye;Lcom/google/android/libraries/places/internal/zzbcf;)Lcom/google/android/libraries/places/internal/zzbqo;
    .locals 1

    new-instance p1, Lcom/google/android/libraries/places/internal/zzbqo;

    invoke-direct {p1, p0}, Lcom/google/android/libraries/places/internal/zzbqo;-><init>([Lcom/google/android/libraries/places/internal/zzbdr;)V

    const/4 p2, 0x0

    :goto_0
    array-length v0, p0

    if-ge p2, v0, :cond_0

    aget-object v0, p0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method


# virtual methods
.method public final zzb()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbqo;->zzb:[Lcom/google/android/libraries/places/internal/zzbdr;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v1, v1, v0

    check-cast v1, Lcom/google/android/libraries/places/internal/zzayx;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final zzc(Lcom/google/android/libraries/places/internal/zzbcf;)V
    .locals 2

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbqo;->zzb:[Lcom/google/android/libraries/places/internal/zzbdr;

    array-length v1, v0

    if-ge p1, v1, :cond_0

    aget-object v0, v0, p1

    check-cast v0, Lcom/google/android/libraries/places/internal/zzayx;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final zzd()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbqo;->zzb:[Lcom/google/android/libraries/places/internal/zzbdr;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v1, v1, v0

    check-cast v1, Lcom/google/android/libraries/places/internal/zzayx;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final zze(I)V
    .locals 2

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbqo;->zzb:[Lcom/google/android/libraries/places/internal/zzbdr;

    array-length v1, v0

    if-ge p1, v1, :cond_0

    aget-object v0, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final zzf(IJJ)V
    .locals 0

    const/4 p1, 0x0

    :goto_0
    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzbqo;->zzb:[Lcom/google/android/libraries/places/internal/zzbdr;

    array-length p3, p2

    if-ge p1, p3, :cond_0

    aget-object p2, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final zzg(J)V
    .locals 1

    const/4 p1, 0x0

    :goto_0
    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzbqo;->zzb:[Lcom/google/android/libraries/places/internal/zzbdr;

    array-length v0, p2

    if-ge p1, v0, :cond_0

    aget-object p2, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final zzh(J)V
    .locals 1

    const/4 p1, 0x0

    :goto_0
    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzbqo;->zzb:[Lcom/google/android/libraries/places/internal/zzbdr;

    array-length v0, p2

    if-ge p1, v0, :cond_0

    aget-object p2, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final zzi(I)V
    .locals 2

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbqo;->zzb:[Lcom/google/android/libraries/places/internal/zzbdr;

    array-length v1, v0

    if-ge p1, v1, :cond_0

    aget-object v0, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final zzj(IJJ)V
    .locals 0

    const/4 p1, 0x0

    :goto_0
    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzbqo;->zzb:[Lcom/google/android/libraries/places/internal/zzbdr;

    array-length p3, p2

    if-ge p1, p3, :cond_0

    aget-object p2, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final zzk(J)V
    .locals 1

    const/4 p1, 0x0

    :goto_0
    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzbqo;->zzb:[Lcom/google/android/libraries/places/internal/zzbdr;

    array-length v0, p2

    if-ge p1, v0, :cond_0

    aget-object p2, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final zzl(J)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbqo;->zzb:[Lcom/google/android/libraries/places/internal/zzbdr;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Lcom/google/android/libraries/places/internal/zzbdr;->zza(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final zzm(Lcom/google/android/libraries/places/internal/zzbdo;)V
    .locals 2

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbqo;->zzc:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbqo;->zzb:[Lcom/google/android/libraries/places/internal/zzbdr;

    :goto_0
    array-length v0, p1

    if-ge v1, v0, :cond_0

    aget-object v0, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
