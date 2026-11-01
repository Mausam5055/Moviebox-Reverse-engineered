.class final Lcom/google/android/libraries/places/api/model/zza;
.super Lcom/google/android/libraries/places/api/model/AddressComponent$Builder;


# instance fields
.field private zza:Ljava/lang/String;

.field private zzb:Ljava/lang/String;

.field private zzc:Ljava/util/List;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/libraries/places/api/model/AddressComponent$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final getShortName()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zza;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method public final setShortName(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/AddressComponent$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/libraries/places/api/model/zza;->zzb:Ljava/lang/String;

    return-object p0
.end method

.method final zza(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/AddressComponent$Builder;
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/android/libraries/places/api/model/zza;->zza:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null name"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final zzb(Ljava/util/List;)Lcom/google/android/libraries/places/api/model/AddressComponent$Builder;
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/android/libraries/places/api/model/zza;->zzc:Ljava/util/List;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null types"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final zzc()Lcom/google/android/libraries/places/api/model/AddressComponent;
    .locals 4

    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zza;->zza:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/libraries/places/api/model/zza;->zzc:Ljava/util/List;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/google/android/libraries/places/api/model/zzak;

    iget-object v3, p0, Lcom/google/android/libraries/places/api/model/zza;->zzb:Ljava/lang/String;

    invoke-direct {v2, v0, v3, v1}, Lcom/google/android/libraries/places/api/model/zzak;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object v2

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/libraries/places/api/model/zza;->zza:Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v1, " name"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v1, p0, Lcom/google/android/libraries/places/api/model/zza;->zzc:Ljava/util/List;

    if-nez v1, :cond_3

    const-string v1, " types"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Missing required properties:"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
