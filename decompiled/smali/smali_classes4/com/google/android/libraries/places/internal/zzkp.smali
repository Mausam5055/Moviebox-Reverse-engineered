.class final Lcom/google/android/libraries/places/internal/zzkp;
.super Lcom/google/android/libraries/places/internal/zzkv;


# instance fields
.field private final zza:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzb:Lcom/google/android/libraries/places/internal/zznx;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzc:Lcom/google/android/libraries/places/api/model/Place;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzd:Lcom/google/android/libraries/places/api/model/AutocompletePrediction;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zze:Lcom/google/android/gms/common/api/Status;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzf:I


# direct methods
.method synthetic constructor <init>(ILjava/lang/String;Lcom/google/android/libraries/places/internal/zznx;Lcom/google/android/libraries/places/api/model/Place;Lcom/google/android/libraries/places/api/model/AutocompletePrediction;Lcom/google/android/gms/common/api/Status;Lcom/google/android/libraries/places/internal/zzko;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzkv;-><init>()V

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzkp;->zzf:I

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzkp;->zza:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/libraries/places/internal/zzkp;->zzb:Lcom/google/android/libraries/places/internal/zznx;

    iput-object p4, p0, Lcom/google/android/libraries/places/internal/zzkp;->zzc:Lcom/google/android/libraries/places/api/model/Place;

    iput-object p5, p0, Lcom/google/android/libraries/places/internal/zzkp;->zzd:Lcom/google/android/libraries/places/api/model/AutocompletePrediction;

    iput-object p6, p0, Lcom/google/android/libraries/places/internal/zzkp;->zze:Lcom/google/android/gms/common/api/Status;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/libraries/places/internal/zzkv;

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    check-cast p1, Lcom/google/android/libraries/places/internal/zzkv;

    iget v1, p0, Lcom/google/android/libraries/places/internal/zzkp;->zzf:I

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzkv;->zzf()I

    move-result v3

    if-ne v1, v3, :cond_7

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzkp;->zza:Ljava/lang/String;

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzkv;->zze()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzkv;->zze()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :goto_0
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzkp;->zzb:Lcom/google/android/libraries/places/internal/zznx;

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzkv;->zzd()Lcom/google/android/libraries/places/internal/zznx;

    move-result-object v1

    if-nez v1, :cond_7

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzkv;->zzd()Lcom/google/android/libraries/places/internal/zznx;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/libraries/places/internal/zznx;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :goto_1
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzkp;->zzc:Lcom/google/android/libraries/places/api/model/Place;

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzkv;->zzc()Lcom/google/android/libraries/places/api/model/Place;

    move-result-object v1

    if-nez v1, :cond_7

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzkv;->zzc()Lcom/google/android/libraries/places/api/model/Place;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :goto_2
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzkp;->zzd:Lcom/google/android/libraries/places/api/model/AutocompletePrediction;

    if-nez v1, :cond_4

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzkv;->zzb()Lcom/google/android/libraries/places/api/model/AutocompletePrediction;

    move-result-object v1

    if-nez v1, :cond_7

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzkv;->zzb()Lcom/google/android/libraries/places/api/model/AutocompletePrediction;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :goto_3
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzkp;->zze:Lcom/google/android/gms/common/api/Status;

    if-nez v1, :cond_5

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzkv;->zza()Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    if-nez p1, :cond_7

    goto :goto_4

    :cond_5
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzkv;->zza()Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/common/api/Status;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_5

    :cond_6
    :goto_4
    return v0

    :cond_7
    :goto_5
    return v2
.end method

.method public final hashCode()I
    .locals 5

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzkp;->zza:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    iget v2, p0, Lcom/google/android/libraries/places/internal/zzkp;->zzf:I

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzkp;->zzb:Lcom/google/android/libraries/places/internal/zznx;

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lcom/google/android/libraries/places/internal/zznx;->hashCode()I

    move-result v3

    :goto_1
    const v4, 0xf4243

    xor-int/2addr v2, v4

    mul-int/2addr v2, v4

    xor-int/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzkp;->zzc:Lcom/google/android/libraries/places/api/model/Place;

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    mul-int/2addr v0, v4

    xor-int/2addr v0, v3

    mul-int/2addr v0, v4

    xor-int/2addr v0, v2

    mul-int/2addr v0, v4

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzkp;->zzd:Lcom/google/android/libraries/places/api/model/AutocompletePrediction;

    if-nez v2, :cond_3

    move v2, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_3
    xor-int/2addr v0, v2

    mul-int/2addr v0, v4

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzkp;->zze:Lcom/google/android/gms/common/api/Status;

    if-nez v2, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Lcom/google/android/gms/common/api/Status;->hashCode()I

    move-result v1

    :goto_4
    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    iget v0, p0, Lcom/google/android/libraries/places/internal/zzkp;->zzf:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "FAILURE_UNRESOLVABLE"

    goto :goto_0

    :pswitch_0
    const-string v0, "FAILURE_SELECTION"

    goto :goto_0

    :pswitch_1
    const-string v0, "SUCCESS_SELECTION"

    goto :goto_0

    :pswitch_2
    const-string v0, "FAILURE_PREDICTIONS"

    goto :goto_0

    :pswitch_3
    const-string v0, "FAILURE_NO_PREDICTIONS"

    goto :goto_0

    :pswitch_4
    const-string v0, "SUCCESS_PREDICTIONS"

    goto :goto_0

    :pswitch_5
    const-string v0, "TRY_AGAIN_PROGRESS_LOADING"

    goto :goto_0

    :pswitch_6
    const-string v0, "LOADING"

    goto :goto_0

    :pswitch_7
    const-string v0, "RESET"

    goto :goto_0

    :pswitch_8
    const-string v0, "START"

    :goto_0
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzkp;->zza:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzkp;->zzb:Lcom/google/android/libraries/places/internal/zznx;

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzkp;->zzc:Lcom/google/android/libraries/places/api/model/Place;

    iget-object v4, p0, Lcom/google/android/libraries/places/internal/zzkp;->zzd:Lcom/google/android/libraries/places/api/model/AutocompletePrediction;

    iget-object v5, p0, Lcom/google/android/libraries/places/internal/zzkp;->zze:Lcom/google/android/gms/common/api/Status;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AutocompleteState{type="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", query="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", predictions="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", place="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", prediction="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", status="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zza()Lcom/google/android/gms/common/api/Status;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzkp;->zze:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public final zzb()Lcom/google/android/libraries/places/api/model/AutocompletePrediction;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzkp;->zzd:Lcom/google/android/libraries/places/api/model/AutocompletePrediction;

    return-object v0
.end method

.method public final zzc()Lcom/google/android/libraries/places/api/model/Place;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzkp;->zzc:Lcom/google/android/libraries/places/api/model/Place;

    return-object v0
.end method

.method public final zzd()Lcom/google/android/libraries/places/internal/zznx;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzkp;->zzb:Lcom/google/android/libraries/places/internal/zznx;

    return-object v0
.end method

.method public final zze()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzkp;->zza:Ljava/lang/String;

    return-object v0
.end method

.method public final zzf()I
    .locals 1

    iget v0, p0, Lcom/google/android/libraries/places/internal/zzkp;->zzf:I

    return v0
.end method
