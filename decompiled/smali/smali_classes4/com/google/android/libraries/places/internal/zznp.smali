.class abstract Lcom/google/android/libraries/places/internal/zznp;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# instance fields
.field final zza:Ljava/lang/Comparable;


# direct methods
.method constructor <init>(Ljava/lang/Comparable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zznp;->zza:Ljava/lang/Comparable;

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/android/libraries/places/internal/zznp;

    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/zznp;->zza(Lcom/google/android/libraries/places/internal/zznp;)I

    move-result p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/google/android/libraries/places/internal/zznp;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/libraries/places/internal/zznp;

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/zznp;->zza(Lcom/google/android/libraries/places/internal/zznp;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :catch_0
    :cond_0
    return v1
.end method

.method public abstract hashCode()I
.end method

.method public zza(Lcom/google/android/libraries/places/internal/zznp;)I
    .locals 5

    invoke-static {}, Lcom/google/android/libraries/places/internal/zznn;->zzb()Lcom/google/android/libraries/places/internal/zznn;

    move-result-object v0

    const/4 v1, 0x1

    if-eq p1, v0, :cond_3

    invoke-static {}, Lcom/google/android/libraries/places/internal/zznl;->zzb()Lcom/google/android/libraries/places/internal/zznl;

    move-result-object v0

    const/4 v2, -0x1

    if-ne p1, v0, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zznp;->zza:Ljava/lang/Comparable;

    iget-object v3, p1, Lcom/google/android/libraries/places/internal/zznp;->zza:Ljava/lang/Comparable;

    sget v4, Lcom/google/android/libraries/places/internal/zzok;->zzc:I

    invoke-interface {v0, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    :cond_1
    instance-of v0, p0, Lcom/google/android/libraries/places/internal/zznm;

    instance-of p1, p1, Lcom/google/android/libraries/places/internal/zznm;

    if-ne v0, p1, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    :goto_0
    return v2

    :cond_3
    return v1
.end method

.method abstract zzc(Ljava/lang/StringBuilder;)V
.end method

.method abstract zzd(Ljava/lang/StringBuilder;)V
.end method

.method abstract zze(Ljava/lang/Comparable;)Z
.end method
