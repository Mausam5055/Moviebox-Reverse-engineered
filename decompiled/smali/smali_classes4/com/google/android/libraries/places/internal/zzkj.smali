.class final Lcom/google/android/libraries/places/internal/zzkj;
.super Lcom/google/android/libraries/places/internal/zzks;


# instance fields
.field private zza:Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;

.field private zzb:Lcom/google/android/libraries/places/internal/zznx;

.field private zzc:Lcom/google/android/libraries/places/internal/zzkr;

.field private zzd:Ljava/lang/String;

.field private zze:Ljava/lang/String;

.field private zzf:Lcom/google/android/libraries/places/api/model/LocationBias;

.field private zzg:Lcom/google/android/libraries/places/api/model/LocationRestriction;

.field private zzh:Lcom/google/android/libraries/places/internal/zznx;

.field private zzi:Lcom/google/android/libraries/places/api/model/TypeFilter;

.field private zzj:Lcom/google/android/libraries/places/internal/zznx;

.field private zzk:I

.field private zzl:I

.field private zzm:Ljava/lang/String;

.field private zzn:B


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzks;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/google/android/libraries/places/internal/zzkt;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzks;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzkt;->zzh()Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzkj;->zza:Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzkt;->zzj()Lcom/google/android/libraries/places/internal/zznx;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzkj;->zzb:Lcom/google/android/libraries/places/internal/zznx;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzkt;->zzf()Lcom/google/android/libraries/places/internal/zzkr;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzkj;->zzc:Lcom/google/android/libraries/places/internal/zzkr;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzkt;->zzm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzkj;->zzd:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzkt;->zzl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzkj;->zze:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzkt;->zzc()Lcom/google/android/libraries/places/api/model/LocationBias;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzkj;->zzf:Lcom/google/android/libraries/places/api/model/LocationBias;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzkt;->zzd()Lcom/google/android/libraries/places/api/model/LocationRestriction;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzkj;->zzg:Lcom/google/android/libraries/places/api/model/LocationRestriction;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzkt;->zzi()Lcom/google/android/libraries/places/internal/zznx;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzkj;->zzh:Lcom/google/android/libraries/places/internal/zznx;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzkt;->zze()Lcom/google/android/libraries/places/api/model/TypeFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzkj;->zzi:Lcom/google/android/libraries/places/api/model/TypeFilter;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzkt;->zzk()Lcom/google/android/libraries/places/internal/zznx;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzkj;->zzj:Lcom/google/android/libraries/places/internal/zznx;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzkt;->zza()I

    move-result v0

    iput v0, p0, Lcom/google/android/libraries/places/internal/zzkj;->zzk:I

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzkt;->zzb()I

    move-result v0

    iput v0, p0, Lcom/google/android/libraries/places/internal/zzkj;->zzl:I

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzkt;->zzn()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzkj;->zzm:Ljava/lang/String;

    const/4 p1, 0x3

    iput-byte p1, p0, Lcom/google/android/libraries/places/internal/zzkj;->zzn:B

    return-void
.end method


# virtual methods
.method public final zza(Ljava/util/List;)Lcom/google/android/libraries/places/internal/zzks;
    .locals 0

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zznx;->zzj(Ljava/util/Collection;)Lcom/google/android/libraries/places/internal/zznx;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzkj;->zzh:Lcom/google/android/libraries/places/internal/zznx;

    return-object p0
.end method

.method public final zzb(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzks;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzkj;->zze:Ljava/lang/String;

    return-object p0
.end method

.method public final zzc(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzks;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzkj;->zzd:Ljava/lang/String;

    return-object p0
.end method

.method public final zzd(Lcom/google/android/libraries/places/api/model/LocationBias;)Lcom/google/android/libraries/places/internal/zzks;
    .locals 0
    .param p1    # Lcom/google/android/libraries/places/api/model/LocationBias;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzkj;->zzf:Lcom/google/android/libraries/places/api/model/LocationBias;

    return-object p0
.end method

.method public final zze(Lcom/google/android/libraries/places/api/model/LocationRestriction;)Lcom/google/android/libraries/places/internal/zzks;
    .locals 0
    .param p1    # Lcom/google/android/libraries/places/api/model/LocationRestriction;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzkj;->zzg:Lcom/google/android/libraries/places/api/model/LocationRestriction;

    return-object p0
.end method

.method public final zzf(Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;)Lcom/google/android/libraries/places/internal/zzks;
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzkj;->zza:Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null mode"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzg(Lcom/google/android/libraries/places/internal/zzkr;)Lcom/google/android/libraries/places/internal/zzks;
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzkj;->zzc:Lcom/google/android/libraries/places/internal/zzkr;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null origin"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzh(Ljava/util/List;)Lcom/google/android/libraries/places/internal/zzks;
    .locals 0

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zznx;->zzj(Ljava/util/Collection;)Lcom/google/android/libraries/places/internal/zznx;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzkj;->zzb:Lcom/google/android/libraries/places/internal/zznx;

    return-object p0
.end method

.method public final zzi(I)Lcom/google/android/libraries/places/internal/zzks;
    .locals 0

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzkj;->zzk:I

    iget-byte p1, p0, Lcom/google/android/libraries/places/internal/zzkj;->zzn:B

    or-int/lit8 p1, p1, 0x1

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/google/android/libraries/places/internal/zzkj;->zzn:B

    return-object p0
.end method

.method public final zzj(I)Lcom/google/android/libraries/places/internal/zzks;
    .locals 0

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzkj;->zzl:I

    iget-byte p1, p0, Lcom/google/android/libraries/places/internal/zzkj;->zzn:B

    or-int/lit8 p1, p1, 0x2

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/google/android/libraries/places/internal/zzkj;->zzn:B

    return-object p0
.end method

.method public final zzk(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzks;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzkj;->zzm:Ljava/lang/String;

    return-object p0
.end method

.method public final zzl(Lcom/google/android/libraries/places/api/model/TypeFilter;)Lcom/google/android/libraries/places/internal/zzks;
    .locals 0
    .param p1    # Lcom/google/android/libraries/places/api/model/TypeFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzkj;->zzi:Lcom/google/android/libraries/places/api/model/TypeFilter;

    return-object p0
.end method

.method public final zzm(Ljava/util/List;)Lcom/google/android/libraries/places/internal/zzks;
    .locals 0

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zznx;->zzj(Ljava/util/Collection;)Lcom/google/android/libraries/places/internal/zznx;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzkj;->zzj:Lcom/google/android/libraries/places/internal/zznx;

    return-object p0
.end method

.method public final zzn()Lcom/google/android/libraries/places/internal/zzkt;
    .locals 17

    move-object/from16 v0, p0

    iget-byte v1, v0, Lcom/google/android/libraries/places/internal/zzkj;->zzn:B

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    iget-object v4, v0, Lcom/google/android/libraries/places/internal/zzkj;->zza:Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;

    if-eqz v4, :cond_1

    iget-object v5, v0, Lcom/google/android/libraries/places/internal/zzkj;->zzb:Lcom/google/android/libraries/places/internal/zznx;

    if-eqz v5, :cond_1

    iget-object v6, v0, Lcom/google/android/libraries/places/internal/zzkj;->zzc:Lcom/google/android/libraries/places/internal/zzkr;

    if-eqz v6, :cond_1

    iget-object v11, v0, Lcom/google/android/libraries/places/internal/zzkj;->zzh:Lcom/google/android/libraries/places/internal/zznx;

    if-eqz v11, :cond_1

    iget-object v13, v0, Lcom/google/android/libraries/places/internal/zzkj;->zzj:Lcom/google/android/libraries/places/internal/zznx;

    if-nez v13, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/google/android/libraries/places/internal/zzkm;

    iget-object v7, v0, Lcom/google/android/libraries/places/internal/zzkj;->zzd:Ljava/lang/String;

    iget-object v8, v0, Lcom/google/android/libraries/places/internal/zzkj;->zze:Ljava/lang/String;

    iget-object v9, v0, Lcom/google/android/libraries/places/internal/zzkj;->zzf:Lcom/google/android/libraries/places/api/model/LocationBias;

    iget-object v10, v0, Lcom/google/android/libraries/places/internal/zzkj;->zzg:Lcom/google/android/libraries/places/api/model/LocationRestriction;

    iget-object v12, v0, Lcom/google/android/libraries/places/internal/zzkj;->zzi:Lcom/google/android/libraries/places/api/model/TypeFilter;

    iget v14, v0, Lcom/google/android/libraries/places/internal/zzkj;->zzk:I

    iget v15, v0, Lcom/google/android/libraries/places/internal/zzkj;->zzl:I

    iget-object v2, v0, Lcom/google/android/libraries/places/internal/zzkj;->zzm:Ljava/lang/String;

    move-object v3, v1

    move-object/from16 v16, v2

    invoke-direct/range {v3 .. v16}, Lcom/google/android/libraries/places/internal/zzkm;-><init>(Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;Lcom/google/android/libraries/places/internal/zznx;Lcom/google/android/libraries/places/internal/zzkr;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/libraries/places/api/model/LocationBias;Lcom/google/android/libraries/places/api/model/LocationRestriction;Lcom/google/android/libraries/places/internal/zznx;Lcom/google/android/libraries/places/api/model/TypeFilter;Lcom/google/android/libraries/places/internal/zznx;IILjava/lang/String;)V

    return-object v1

    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/google/android/libraries/places/internal/zzkj;->zza:Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;

    if-nez v2, :cond_2

    const-string v2, " mode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v2, v0, Lcom/google/android/libraries/places/internal/zzkj;->zzb:Lcom/google/android/libraries/places/internal/zznx;

    if-nez v2, :cond_3

    const-string v2, " placeFields"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v2, v0, Lcom/google/android/libraries/places/internal/zzkj;->zzc:Lcom/google/android/libraries/places/internal/zzkr;

    if-nez v2, :cond_4

    const-string v2, " origin"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-object v2, v0, Lcom/google/android/libraries/places/internal/zzkj;->zzh:Lcom/google/android/libraries/places/internal/zznx;

    if-nez v2, :cond_5

    const-string v2, " countries"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    iget-object v2, v0, Lcom/google/android/libraries/places/internal/zzkj;->zzj:Lcom/google/android/libraries/places/internal/zznx;

    if-nez v2, :cond_6

    const-string v2, " typesFilter"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    iget-byte v2, v0, Lcom/google/android/libraries/places/internal/zzkj;->zzn:B

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_7

    const-string v2, " primaryColor"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    iget-byte v2, v0, Lcom/google/android/libraries/places/internal/zzkj;->zzn:B

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_8

    const-string v2, " primaryColorDark"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Missing required properties:"

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
