.class final Lcom/google/android/libraries/places/api/model/zzah;
.super Lcom/google/android/libraries/places/api/model/TimeOfWeek$Builder;


# instance fields
.field private zza:Lcom/google/android/libraries/places/api/model/LocalDate;

.field private zzb:Lcom/google/android/libraries/places/api/model/DayOfWeek;

.field private zzc:Lcom/google/android/libraries/places/api/model/LocalTime;

.field private zzd:Z

.field private zze:B


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/libraries/places/api/model/TimeOfWeek$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lcom/google/android/libraries/places/api/model/TimeOfWeek;
    .locals 5

    iget-byte v0, p0, Lcom/google/android/libraries/places/api/model/zzah;->zze:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zzah;->zzb:Lcom/google/android/libraries/places/api/model/DayOfWeek;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/libraries/places/api/model/zzah;->zzc:Lcom/google/android/libraries/places/api/model/LocalTime;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/google/android/libraries/places/api/model/zzbw;

    iget-object v3, p0, Lcom/google/android/libraries/places/api/model/zzah;->zza:Lcom/google/android/libraries/places/api/model/LocalDate;

    iget-boolean v4, p0, Lcom/google/android/libraries/places/api/model/zzah;->zzd:Z

    invoke-direct {v2, v3, v0, v1, v4}, Lcom/google/android/libraries/places/api/model/zzbw;-><init>(Lcom/google/android/libraries/places/api/model/LocalDate;Lcom/google/android/libraries/places/api/model/DayOfWeek;Lcom/google/android/libraries/places/api/model/LocalTime;Z)V

    return-object v2

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/libraries/places/api/model/zzah;->zzb:Lcom/google/android/libraries/places/api/model/DayOfWeek;

    if-nez v1, :cond_2

    const-string v1, " day"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v1, p0, Lcom/google/android/libraries/places/api/model/zzah;->zzc:Lcom/google/android/libraries/places/api/model/LocalTime;

    if-nez v1, :cond_3

    const-string v1, " time"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-byte v1, p0, Lcom/google/android/libraries/places/api/model/zzah;->zze:B

    if-nez v1, :cond_4

    const-string v1, " truncated"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
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
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zzah;->zza:Lcom/google/android/libraries/places/api/model/LocalDate;

    return-object v0
.end method

.method public final getDay()Lcom/google/android/libraries/places/api/model/DayOfWeek;
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zzah;->zzb:Lcom/google/android/libraries/places/api/model/DayOfWeek;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Property \"day\" has not been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getTime()Lcom/google/android/libraries/places/api/model/LocalTime;
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zzah;->zzc:Lcom/google/android/libraries/places/api/model/LocalTime;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Property \"time\" has not been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final isTruncated()Z
    .locals 2

    iget-byte v0, p0, Lcom/google/android/libraries/places/api/model/zzah;->zze:B

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/libraries/places/api/model/zzah;->zzd:Z

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Property \"truncated\" has not been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setDate(Lcom/google/android/libraries/places/api/model/LocalDate;)Lcom/google/android/libraries/places/api/model/TimeOfWeek$Builder;
    .locals 0
    .param p1    # Lcom/google/android/libraries/places/api/model/LocalDate;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/libraries/places/api/model/zzah;->zza:Lcom/google/android/libraries/places/api/model/LocalDate;

    return-object p0
.end method

.method public final setDay(Lcom/google/android/libraries/places/api/model/DayOfWeek;)Lcom/google/android/libraries/places/api/model/TimeOfWeek$Builder;
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/android/libraries/places/api/model/zzah;->zzb:Lcom/google/android/libraries/places/api/model/DayOfWeek;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null day"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setTime(Lcom/google/android/libraries/places/api/model/LocalTime;)Lcom/google/android/libraries/places/api/model/TimeOfWeek$Builder;
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/android/libraries/places/api/model/zzah;->zzc:Lcom/google/android/libraries/places/api/model/LocalTime;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null time"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setTruncated(Z)Lcom/google/android/libraries/places/api/model/TimeOfWeek$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/libraries/places/api/model/zzah;->zzd:Z

    const/4 p1, 0x1

    iput-byte p1, p0, Lcom/google/android/libraries/places/api/model/zzah;->zze:B

    return-object p0
.end method
