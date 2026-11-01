.class public final Lcom/google/android/libraries/places/internal/zzbsq;
.super Ljava/lang/Object;


# instance fields
.field final synthetic zza:Lcom/google/android/libraries/places/internal/zzbsu;

.field private final zzb:Lcom/google/android/libraries/places/internal/zzbwb;

.field private final zzc:I

.field private zzd:I

.field private zze:I

.field private final zzf:Lcom/google/android/libraries/places/internal/zzbsp;

.field private zzg:Z


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzbsu;IILcom/google/android/libraries/places/internal/zzbsp;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbsq;->zza:Lcom/google/android/libraries/places/internal/zzbsu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/google/android/libraries/places/internal/zzbwb;

    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/zzbwb;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbsq;->zzb:Lcom/google/android/libraries/places/internal/zzbwb;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/libraries/places/internal/zzbsq;->zzg:Z

    iput p2, p0, Lcom/google/android/libraries/places/internal/zzbsq;->zzc:I

    iput p3, p0, Lcom/google/android/libraries/places/internal/zzbsq;->zzd:I

    iput-object p4, p0, Lcom/google/android/libraries/places/internal/zzbsq;->zzf:Lcom/google/android/libraries/places/internal/zzbsp;

    return-void
.end method


# virtual methods
.method final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/libraries/places/internal/zzbsq;->zze:I

    return v0
.end method

.method final zzb(I)I
    .locals 3

    if-lez p1, :cond_1

    const v0, 0x7fffffff

    sub-int/2addr v0, p1

    iget v1, p0, Lcom/google/android/libraries/places/internal/zzbsq;->zzd:I

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/google/android/libraries/places/internal/zzbsq;->zzc:I

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Window size overflow for stream: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget v0, p0, Lcom/google/android/libraries/places/internal/zzbsq;->zzd:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/libraries/places/internal/zzbsq;->zzd:I

    return v0
.end method

.method final zzc()I
    .locals 4

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbsq;->zzb:Lcom/google/android/libraries/places/internal/zzbwb;

    iget v1, p0, Lcom/google/android/libraries/places/internal/zzbsq;->zzd:I

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbwb;->zzg()J

    move-result-wide v2

    long-to-int v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Lcom/google/android/libraries/places/internal/zzbsq;->zze:I

    sub-int/2addr v0, v1

    return v0
.end method

.method final zzd()I
    .locals 1

    iget v0, p0, Lcom/google/android/libraries/places/internal/zzbsq;->zzd:I

    return v0
.end method

.method final zze()I
    .locals 2

    iget v0, p0, Lcom/google/android/libraries/places/internal/zzbsq;->zzd:I

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbsq;->zza:Lcom/google/android/libraries/places/internal/zzbsu;

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzbsu;->zzb(Lcom/google/android/libraries/places/internal/zzbsu;)Lcom/google/android/libraries/places/internal/zzbsq;

    move-result-object v1

    iget v1, v1, Lcom/google/android/libraries/places/internal/zzbsq;->zzd:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method final zzf(ILcom/google/android/libraries/places/internal/zzbst;)I
    .locals 8

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbsq;->zze()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbsq;->zzk()Z

    move-result v3

    if-eqz v3, :cond_1

    if-lez v0, :cond_1

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbsq;->zzb:Lcom/google/android/libraries/places/internal/zzbwb;

    int-to-long v4, v0

    invoke-virtual {v3}, Lcom/google/android/libraries/places/internal/zzbwb;->zzg()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    invoke-virtual {v3}, Lcom/google/android/libraries/places/internal/zzbwb;->zzg()J

    move-result-wide v4

    long-to-int v0, v4

    add-int/2addr v2, v0

    invoke-virtual {v3}, Lcom/google/android/libraries/places/internal/zzbwb;->zzg()J

    move-result-wide v4

    long-to-int v0, v4

    iget-boolean v4, p0, Lcom/google/android/libraries/places/internal/zzbsq;->zzg:Z

    invoke-virtual {p0, v3, v0, v4}, Lcom/google/android/libraries/places/internal/zzbsq;->zzj(Lcom/google/android/libraries/places/internal/zzbwb;IZ)V

    goto :goto_1

    :cond_0
    add-int/2addr v2, v0

    invoke-virtual {p0, v3, v0, v1}, Lcom/google/android/libraries/places/internal/zzbsq;->zzj(Lcom/google/android/libraries/places/internal/zzbwb;IZ)V

    :goto_1
    iget v0, p2, Lcom/google/android/libraries/places/internal/zzbst;->zza:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p2, Lcom/google/android/libraries/places/internal/zzbst;->zza:I

    sub-int v0, p1, v2

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbsq;->zze()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    :cond_1
    return v2
.end method

.method final zzg(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/libraries/places/internal/zzbsq;->zze:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/libraries/places/internal/zzbsq;->zze:I

    return-void
.end method

.method final zzh()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/libraries/places/internal/zzbsq;->zze:I

    return-void
.end method

.method final zzi(Lcom/google/android/libraries/places/internal/zzbwb;IZ)V
    .locals 2

    int-to-long v0, p2

    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzbsq;->zzb:Lcom/google/android/libraries/places/internal/zzbwb;

    invoke-virtual {p2, p1, v0, v1}, Lcom/google/android/libraries/places/internal/zzbwb;->zzn(Lcom/google/android/libraries/places/internal/zzbwb;J)V

    iget-boolean p1, p0, Lcom/google/android/libraries/places/internal/zzbsq;->zzg:Z

    or-int/2addr p1, p3

    iput-boolean p1, p0, Lcom/google/android/libraries/places/internal/zzbsq;->zzg:Z

    return-void
.end method

.method final zzj(Lcom/google/android/libraries/places/internal/zzbwb;IZ)V
    .locals 5

    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbsq;->zza:Lcom/google/android/libraries/places/internal/zzbsu;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbsu;->zzd(Lcom/google/android/libraries/places/internal/zzbsu;)Lcom/google/android/libraries/places/internal/zzbts;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/zzbts;->zzd()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbsq;->zza:Lcom/google/android/libraries/places/internal/zzbsu;

    neg-int v2, v0

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzbsu;->zzb(Lcom/google/android/libraries/places/internal/zzbsu;)Lcom/google/android/libraries/places/internal/zzbsq;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/google/android/libraries/places/internal/zzbsq;->zzb(I)I

    invoke-virtual {p0, v2}, Lcom/google/android/libraries/places/internal/zzbsq;->zzb(I)I

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbwb;->zzg()J

    move-result-wide v1

    int-to-long v3, v0

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-nez v1, :cond_1

    if-eqz p3, :cond_1

    const/4 v2, 0x1

    :cond_1
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbsq;->zza:Lcom/google/android/libraries/places/internal/zzbsu;

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzbsu;->zzd(Lcom/google/android/libraries/places/internal/zzbsu;)Lcom/google/android/libraries/places/internal/zzbts;

    move-result-object v1

    iget v3, p0, Lcom/google/android/libraries/places/internal/zzbsq;->zzc:I

    invoke-interface {v1, v2, v3, p1, v0}, Lcom/google/android/libraries/places/internal/zzbts;->zzf(ZILcom/google/android/libraries/places/internal/zzbwb;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbsq;->zzf:Lcom/google/android/libraries/places/internal/zzbsp;

    invoke-interface {v1, v0}, Lcom/google/android/libraries/places/internal/zzbsp;->zzs(I)V

    sub-int/2addr p2, v0

    if-gtz p2, :cond_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method final zzk()Z
    .locals 4

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbsq;->zzb:Lcom/google/android/libraries/places/internal/zzbwb;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbwb;->zzg()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
