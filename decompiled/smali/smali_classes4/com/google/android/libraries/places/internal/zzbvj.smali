.class public final Lcom/google/android/libraries/places/internal/zzbvj;
.super Ljava/lang/Object;


# instance fields
.field final zza:[Ljava/lang/String;

.field final zzb:I


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/places/internal/zzazs;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "eag"

    invoke-static {p1, v0}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzazs;->zzb()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbvj;->zza:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzazs;->zzb()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/SocketAddress;

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbvj;->zza:[Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    move v0, v3

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbvj;->zza:[Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbvj;->zza:[Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzbvj;->zzb:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    :cond_1
    instance-of v1, p1, Lcom/google/android/libraries/places/internal/zzbvj;

    if-nez v1, :cond_2

    return v0

    :cond_2
    check-cast p1, Lcom/google/android/libraries/places/internal/zzbvj;

    iget v1, p1, Lcom/google/android/libraries/places/internal/zzbvj;->zzb:I

    iget v2, p0, Lcom/google/android/libraries/places/internal/zzbvj;->zzb:I

    if-ne v1, v2, :cond_4

    iget-object p1, p1, Lcom/google/android/libraries/places/internal/zzbvj;->zza:[Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbvj;->zza:[Ljava/lang/String;

    array-length v2, p1

    array-length v3, v1

    if-eq v2, v3, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {p1, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_4
    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/libraries/places/internal/zzbvj;->zzb:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbvj;->zza:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
