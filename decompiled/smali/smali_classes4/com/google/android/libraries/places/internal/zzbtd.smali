.class public final Lcom/google/android/libraries/places/internal/zzbtd;
.super Ljava/lang/Object;


# instance fields
.field private final zza:[Ljava/lang/String;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/libraries/places/internal/zzbtb;Lcom/google/android/libraries/places/internal/zzbtc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbtb;->zzc(Lcom/google/android/libraries/places/internal/zzbtb;)Ljava/util/List;

    move-result-object p2

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbtb;->zzc(Lcom/google/android/libraries/places/internal/zzbtb;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {p2, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbtd;->zza:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbtd;->zza()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/google/android/libraries/places/internal/zzbtd;->zzb(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Lcom/google/android/libraries/places/internal/zzbtd;->zzc(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbtd;->zza:[Ljava/lang/String;

    array-length v0, v0

    shr-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final zzb(I)Ljava/lang/String;
    .locals 2

    add-int/2addr p1, p1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbtd;->zza:[Ljava/lang/String;

    array-length v1, v0

    if-lt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    aget-object p1, v0, p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final zzc(I)Ljava/lang/String;
    .locals 2

    add-int/2addr p1, p1

    add-int/lit8 p1, p1, 0x1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbtd;->zza:[Ljava/lang/String;

    array-length v1, v0

    if-lt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    aget-object p1, v0, p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
