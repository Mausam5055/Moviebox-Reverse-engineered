.class final Lcom/google/android/libraries/places/api/model/zzm;
.super Lcom/google/android/libraries/places/api/model/zzca;


# instance fields
.field private zza:I

.field private zzb:I

.field private zzc:I

.field private zzd:B


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/libraries/places/api/model/zzca;-><init>()V

    return-void
.end method


# virtual methods
.method final zza(I)Lcom/google/android/libraries/places/api/model/zzca;
    .locals 0

    iput p1, p0, Lcom/google/android/libraries/places/api/model/zzm;->zzc:I

    iget-byte p1, p0, Lcom/google/android/libraries/places/api/model/zzm;->zzd:B

    or-int/lit8 p1, p1, 0x4

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/google/android/libraries/places/api/model/zzm;->zzd:B

    return-object p0
.end method

.method final zzb(I)Lcom/google/android/libraries/places/api/model/zzca;
    .locals 0

    iput p1, p0, Lcom/google/android/libraries/places/api/model/zzm;->zzb:I

    iget-byte p1, p0, Lcom/google/android/libraries/places/api/model/zzm;->zzd:B

    or-int/lit8 p1, p1, 0x2

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/google/android/libraries/places/api/model/zzm;->zzd:B

    return-object p0
.end method

.method final zzc(I)Lcom/google/android/libraries/places/api/model/zzca;
    .locals 0

    iput p1, p0, Lcom/google/android/libraries/places/api/model/zzm;->zza:I

    iget-byte p1, p0, Lcom/google/android/libraries/places/api/model/zzm;->zzd:B

    or-int/lit8 p1, p1, 0x1

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/google/android/libraries/places/api/model/zzm;->zzd:B

    return-object p0
.end method

.method final zzd()Lcom/google/android/libraries/places/api/model/LocalDate;
    .locals 4

    iget-byte v0, p0, Lcom/google/android/libraries/places/api/model/zzm;->zzd:B

    const/4 v1, 0x7

    if-eq v0, v1, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-byte v1, p0, Lcom/google/android/libraries/places/api/model/zzm;->zzd:B

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    const-string v1, " year"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-byte v1, p0, Lcom/google/android/libraries/places/api/model/zzm;->zzd:B

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    const-string v1, " month"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-byte v1, p0, Lcom/google/android/libraries/places/api/model/zzm;->zzd:B

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_2

    const-string v1, " day"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Missing required properties:"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    new-instance v0, Lcom/google/android/libraries/places/api/model/zzba;

    iget v1, p0, Lcom/google/android/libraries/places/api/model/zzm;->zza:I

    iget v2, p0, Lcom/google/android/libraries/places/api/model/zzm;->zzb:I

    iget v3, p0, Lcom/google/android/libraries/places/api/model/zzm;->zzc:I

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/libraries/places/api/model/zzba;-><init>(III)V

    return-object v0
.end method
