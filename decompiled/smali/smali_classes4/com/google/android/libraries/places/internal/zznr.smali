.class Lcom/google/android/libraries/places/internal/zznr;
.super Lcom/google/android/libraries/places/internal/zzns;


# instance fields
.field zza:[Ljava/lang/Object;

.field zzb:I

.field zzc:Z


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzns;-><init>()V

    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zznr;->zza:[Ljava/lang/Object;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/libraries/places/internal/zznr;->zzb:I

    return-void
.end method

.method private final zze(I)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zznr;->zza:[Ljava/lang/Object;

    array-length v1, v0

    const/4 v2, 0x0

    if-ge v1, p1, :cond_0

    invoke-static {v1, p1}, Lcom/google/android/libraries/places/internal/zzns;->zzd(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zznr;->zza:[Ljava/lang/Object;

    iput-boolean v2, p0, Lcom/google/android/libraries/places/internal/zznr;->zzc:Z

    return-void

    :cond_0
    iget-boolean p1, p0, Lcom/google/android/libraries/places/internal/zznr;->zzc:Z

    if-eqz p1, :cond_1

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zznr;->zza:[Ljava/lang/Object;

    iput-boolean v2, p0, Lcom/google/android/libraries/places/internal/zznr;->zzc:Z

    :cond_1
    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zznr;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/libraries/places/internal/zznr;->zzb:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/libraries/places/internal/zznr;->zze(I)V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zznr;->zza:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/libraries/places/internal/zznr;->zzb:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/libraries/places/internal/zznr;->zzb:I

    aput-object p1, v0, v1

    return-object p0
.end method

.method public bridge synthetic zzb(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzns;
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public final zzc(Ljava/lang/Iterable;)Lcom/google/android/libraries/places/internal/zzns;
    .locals 2

    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/libraries/places/internal/zznr;->zzb:I

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/google/android/libraries/places/internal/zznr;->zze(I)V

    instance-of v0, p1, Lcom/google/android/libraries/places/internal/zznt;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lcom/google/android/libraries/places/internal/zznt;

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zznr;->zza:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/libraries/places/internal/zznr;->zzb:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/libraries/places/internal/zznt;->zza([Ljava/lang/Object;I)I

    move-result p1

    iput p1, p0, Lcom/google/android/libraries/places/internal/zznr;->zzb:I

    return-object p0

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/places/internal/zzns;->zzb(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzns;

    goto :goto_1

    :cond_2
    return-object p0
.end method
