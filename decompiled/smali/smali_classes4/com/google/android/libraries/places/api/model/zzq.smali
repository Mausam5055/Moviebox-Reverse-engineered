.class final Lcom/google/android/libraries/places/api/model/zzq;
.super Lcom/google/android/libraries/places/api/model/OpeningHours$Builder;


# instance fields
.field private zza:Lcom/google/android/libraries/places/api/model/OpeningHours$HoursType;

.field private zzb:Ljava/util/List;

.field private zzc:Ljava/util/List;

.field private zzd:Ljava/util/List;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/libraries/places/api/model/OpeningHours$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final getHoursType()Lcom/google/android/libraries/places/api/model/OpeningHours$HoursType;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zzq;->zza:Lcom/google/android/libraries/places/api/model/OpeningHours$HoursType;

    return-object v0
.end method

.method public final getPeriods()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/api/model/Period;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zzq;->zzb:Ljava/util/List;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Property \"periods\" has not been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getSpecialDays()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/api/model/SpecialDay;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zzq;->zzc:Ljava/util/List;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Property \"specialDays\" has not been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getWeekdayText()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zzq;->zzd:Ljava/util/List;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Property \"weekdayText\" has not been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setHoursType(Lcom/google/android/libraries/places/api/model/OpeningHours$HoursType;)Lcom/google/android/libraries/places/api/model/OpeningHours$Builder;
    .locals 0
    .param p1    # Lcom/google/android/libraries/places/api/model/OpeningHours$HoursType;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/libraries/places/api/model/zzq;->zza:Lcom/google/android/libraries/places/api/model/OpeningHours$HoursType;

    return-object p0
.end method

.method public final setPeriods(Ljava/util/List;)Lcom/google/android/libraries/places/api/model/OpeningHours$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/api/model/Period;",
            ">;)",
            "Lcom/google/android/libraries/places/api/model/OpeningHours$Builder;"
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/android/libraries/places/api/model/zzq;->zzb:Ljava/util/List;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null periods"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setSpecialDays(Ljava/util/List;)Lcom/google/android/libraries/places/api/model/OpeningHours$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/api/model/SpecialDay;",
            ">;)",
            "Lcom/google/android/libraries/places/api/model/OpeningHours$Builder;"
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/android/libraries/places/api/model/zzq;->zzc:Ljava/util/List;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null specialDays"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setWeekdayText(Ljava/util/List;)Lcom/google/android/libraries/places/api/model/OpeningHours$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/libraries/places/api/model/OpeningHours$Builder;"
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/android/libraries/places/api/model/zzq;->zzd:Ljava/util/List;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null weekdayText"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final zza()Lcom/google/android/libraries/places/api/model/OpeningHours;
    .locals 5

    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zzq;->zzb:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/libraries/places/api/model/zzq;->zzc:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/google/android/libraries/places/api/model/zzq;->zzd:Ljava/util/List;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/google/android/libraries/places/api/model/zzbe;

    iget-object v4, p0, Lcom/google/android/libraries/places/api/model/zzq;->zza:Lcom/google/android/libraries/places/api/model/OpeningHours$HoursType;

    invoke-direct {v3, v4, v0, v1, v2}, Lcom/google/android/libraries/places/api/model/zzbe;-><init>(Lcom/google/android/libraries/places/api/model/OpeningHours$HoursType;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v3

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/libraries/places/api/model/zzq;->zzb:Ljava/util/List;

    if-nez v1, :cond_2

    const-string v1, " periods"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v1, p0, Lcom/google/android/libraries/places/api/model/zzq;->zzc:Ljava/util/List;

    if-nez v1, :cond_3

    const-string v1, " specialDays"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v1, p0, Lcom/google/android/libraries/places/api/model/zzq;->zzd:Ljava/util/List;

    if-nez v1, :cond_4

    const-string v1, " weekdayText"

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
