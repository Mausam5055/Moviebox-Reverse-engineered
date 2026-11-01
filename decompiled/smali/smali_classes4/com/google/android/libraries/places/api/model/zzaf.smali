.class final Lcom/google/android/libraries/places/api/model/zzaf;
.super Lcom/google/android/libraries/places/api/model/SpecialDay$Builder;


# instance fields
.field private zza:Lcom/google/android/libraries/places/api/model/LocalDate;

.field private zzb:Z

.field private zzc:B


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/libraries/places/api/model/SpecialDay$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lcom/google/android/libraries/places/api/model/SpecialDay;
    .locals 3

    iget-byte v0, p0, Lcom/google/android/libraries/places/api/model/zzaf;->zzc:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zzaf;->zza:Lcom/google/android/libraries/places/api/model/LocalDate;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/google/android/libraries/places/api/model/zzbu;

    iget-boolean v2, p0, Lcom/google/android/libraries/places/api/model/zzaf;->zzb:Z

    invoke-direct {v1, v0, v2}, Lcom/google/android/libraries/places/api/model/zzbu;-><init>(Lcom/google/android/libraries/places/api/model/LocalDate;Z)V

    return-object v1

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/libraries/places/api/model/zzaf;->zza:Lcom/google/android/libraries/places/api/model/LocalDate;

    if-nez v1, :cond_2

    const-string v1, " date"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-byte v1, p0, Lcom/google/android/libraries/places/api/model/zzaf;->zzc:B

    if-nez v1, :cond_3

    const-string v1, " exceptional"

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

.method public final getDate()Lcom/google/android/libraries/places/api/model/LocalDate;
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zzaf;->zza:Lcom/google/android/libraries/places/api/model/LocalDate;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Property \"date\" has not been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final isExceptional()Z
    .locals 2

    iget-byte v0, p0, Lcom/google/android/libraries/places/api/model/zzaf;->zzc:B

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/libraries/places/api/model/zzaf;->zzb:Z

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Property \"exceptional\" has not been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setDate(Lcom/google/android/libraries/places/api/model/LocalDate;)Lcom/google/android/libraries/places/api/model/SpecialDay$Builder;
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/android/libraries/places/api/model/zzaf;->zza:Lcom/google/android/libraries/places/api/model/LocalDate;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null date"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setExceptional(Z)Lcom/google/android/libraries/places/api/model/SpecialDay$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/libraries/places/api/model/zzaf;->zzb:Z

    const/4 p1, 0x1

    iput-byte p1, p0, Lcom/google/android/libraries/places/api/model/zzaf;->zzc:B

    return-object p0
.end method
