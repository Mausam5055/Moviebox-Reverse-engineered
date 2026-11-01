.class final Lcom/google/android/libraries/places/internal/zzop;
.super Lcom/google/android/libraries/places/internal/zzob;


# instance fields
.field private final transient zza:Lcom/google/android/libraries/places/internal/zzoa;

.field private final transient zzb:Lcom/google/android/libraries/places/internal/zznx;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzoa;Lcom/google/android/libraries/places/internal/zznx;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzob;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzop;->zza:Lcom/google/android/libraries/places/internal/zzoa;

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzop;->zzb:Lcom/google/android/libraries/places/internal/zznx;

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzop;->zza:Lcom/google/android/libraries/places/internal/zzoa;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzoa;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzop;->zzb:Lcom/google/android/libraries/places/internal/zznx;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zznx;->zzq(I)Lcom/google/android/libraries/places/internal/zzoy;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzop;->zza:Lcom/google/android/libraries/places/internal/zzoa;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method final zza([Ljava/lang/Object;I)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzop;->zzb:Lcom/google/android/libraries/places/internal/zznx;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/libraries/places/internal/zznt;->zza([Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public final zzd()Lcom/google/android/libraries/places/internal/zznx;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzop;->zzb:Lcom/google/android/libraries/places/internal/zznx;

    return-object v0
.end method

.method public final zze()Lcom/google/android/libraries/places/internal/zzox;
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzop;->zzb:Lcom/google/android/libraries/places/internal/zznx;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zznx;->zzq(I)Lcom/google/android/libraries/places/internal/zzoy;

    move-result-object v0

    return-object v0
.end method

.method final zzf()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
