.class final Lcom/google/android/libraries/places/internal/zzbnd;
.super Ljava/lang/Object;


# instance fields
.field private zza:Ljava/util/List;

.field private zzb:I

.field private zzc:I


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbnd;->zza:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbnd;->zza:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzb()Lcom/google/android/libraries/places/internal/zzaye;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbnd;->zzg()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbnd;->zza:Ljava/util/List;

    iget v1, p0, Lcom/google/android/libraries/places/internal/zzbnd;->zzb:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzazs;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzazs;->zza()Lcom/google/android/libraries/places/internal/zzaye;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Index is off the end of the address group list"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzc()Ljava/net/SocketAddress;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbnd;->zzg()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbnd;->zza:Ljava/util/List;

    iget v1, p0, Lcom/google/android/libraries/places/internal/zzbnd;->zzb:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzazs;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzazs;->zzb()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/google/android/libraries/places/internal/zzbnd;->zzc:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/SocketAddress;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Index is past the end of the address group list"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzd()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/libraries/places/internal/zzbnd;->zzb:I

    iput v0, p0, Lcom/google/android/libraries/places/internal/zzbnd;->zzc:I

    return-void
.end method

.method public final zze(Lcom/google/android/libraries/places/internal/zznx;)V
    .locals 0

    if-nez p1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbnd;->zza:Ljava/util/List;

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbnd;->zzd()V

    return-void
.end method

.method public final zzf()Z
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbnd;->zzg()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbnd;->zza:Ljava/util/List;

    iget v2, p0, Lcom/google/android/libraries/places/internal/zzbnd;->zzb:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzazs;

    iget v2, p0, Lcom/google/android/libraries/places/internal/zzbnd;->zzc:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/google/android/libraries/places/internal/zzbnd;->zzc:I

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzazs;->zzb()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_2

    iget v0, p0, Lcom/google/android/libraries/places/internal/zzbnd;->zzb:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/google/android/libraries/places/internal/zzbnd;->zzb:I

    iput v1, p0, Lcom/google/android/libraries/places/internal/zzbnd;->zzc:I

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbnd;->zza:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    return v3

    :cond_1
    return v1

    :cond_2
    return v3
.end method

.method public final zzg()Z
    .locals 2

    iget v0, p0, Lcom/google/android/libraries/places/internal/zzbnd;->zzb:I

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbnd;->zza:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzh(Ljava/net/SocketAddress;)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbnd;->zza:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbnd;->zza:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/libraries/places/internal/zzazs;

    invoke-virtual {v2}, Lcom/google/android/libraries/places/internal/zzazs;->zzb()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput v1, p0, Lcom/google/android/libraries/places/internal/zzbnd;->zzb:I

    iput v2, p0, Lcom/google/android/libraries/places/internal/zzbnd;->zzc:I

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method
