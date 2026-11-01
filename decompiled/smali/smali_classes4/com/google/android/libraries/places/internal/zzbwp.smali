.class public final Lcom/google/android/libraries/places/internal/zzbwp;
.super Lcom/google/android/libraries/places/internal/zzbwf;


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field private final transient zzc:[[B

.field private final transient zzd:[I


# direct methods
.method public constructor <init>([[B[I)V
    .locals 1

    const-string v0, "segments"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "directory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/libraries/places/internal/zzbwf;->zzb:Lcom/google/android/libraries/places/internal/zzbwf;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbwf;->zzn()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/libraries/places/internal/zzbwf;-><init>([B)V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbwp;->zzc:[[B

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbwp;->zzd:[I

    return-void
.end method

.method private final zzs()Lcom/google/android/libraries/places/internal/zzbwf;
    .locals 2

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbwf;

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbwf;->zzp()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/libraries/places/internal/zzbwf;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v1, p1, Lcom/google/android/libraries/places/internal/zzbwf;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/google/android/libraries/places/internal/zzbwf;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbwf;->zzc()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbwf;->zzc()I

    move-result v3

    if-ne v1, v3, :cond_1

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbwf;->zzc()I

    move-result v1

    invoke-virtual {p0, v2, p1, v2, v1}, Lcom/google/android/libraries/places/internal/zzbwf;->zzk(ILcom/google/android/libraries/places/internal/zzbwf;II)Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    move v0, v2

    nop

    :cond_2
    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 8

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbwf;->zzb()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbwp;->zzc:[[B

    const/4 v1, 0x0

    const/4 v2, 0x1

    move v3, v1

    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_2

    iget-object v5, p0, Lcom/google/android/libraries/places/internal/zzbwp;->zzd:[I

    iget-object v6, p0, Lcom/google/android/libraries/places/internal/zzbwp;->zzc:[[B

    add-int/2addr v4, v1

    aget v4, v5, v4

    aget v5, v5, v1

    sub-int v3, v5, v3

    add-int/2addr v3, v4

    aget-object v6, v6, v1

    :goto_1
    if-ge v4, v3, :cond_1

    mul-int/lit8 v2, v2, 0x1f

    aget-byte v7, v6, v4

    add-int/2addr v2, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    move v3, v5

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v2}, Lcom/google/android/libraries/places/internal/zzbwf;->zzh(I)V

    move v0, v2

    :goto_2
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzbwp;->zzs()Lcom/google/android/libraries/places/internal/zzbwf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbwf;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza(I)B
    .locals 7

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbwp;->zzc:[[B

    array-length v0, v0

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbwp;->zzd:[I

    add-int/lit8 v0, v0, -0x1

    aget v0, v1, v0

    int-to-long v1, v0

    int-to-long v3, p1

    const-wide/16 v5, 0x1

    invoke-static/range {v1 .. v6}, Lcom/google/android/libraries/places/internal/zzbvv;->zzb(JJJ)V

    invoke-static {p0, p1}, Lcom/google/android/libraries/places/internal/zzbwz;->zza(Lcom/google/android/libraries/places/internal/zzbwp;I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbwp;->zzd:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    :goto_0
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbwp;->zzd:[I

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbwp;->zzc:[[B

    sub-int/2addr p1, v1

    array-length v1, v3

    add-int/2addr v1, v0

    aget v1, v2, v1

    add-int/2addr p1, v1

    aget-object v0, v3, v0

    aget-byte p1, v0, p1

    return p1
.end method

.method public final zzc()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbwp;->zzc:[[B

    array-length v0, v0

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbwp;->zzd:[I

    add-int/lit8 v0, v0, -0x1

    aget v0, v1, v0

    return v0
.end method

.method public final zze()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzbwp;->zzs()Lcom/google/android/libraries/places/internal/zzbwf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbwf;->zze()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzg()Lcom/google/android/libraries/places/internal/zzbwf;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzbwp;->zzs()Lcom/google/android/libraries/places/internal/zzbwf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbwf;->zzg()Lcom/google/android/libraries/places/internal/zzbwf;

    move-result-object v0

    return-object v0
.end method

.method public final zzj(Lcom/google/android/libraries/places/internal/zzbwb;II)V
    .locals 11

    const-string p2, "buffer"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-static {p0, p2}, Lcom/google/android/libraries/places/internal/zzbwz;->zza(Lcom/google/android/libraries/places/internal/zzbwp;I)I

    move-result v0

    move v1, p2

    :goto_0
    if-ge v1, p3, :cond_2

    if-nez v0, :cond_0

    move v0, p2

    move v2, v0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbwp;->zzd:[I

    add-int/lit8 v3, v0, -0x1

    aget v2, v2, v3

    :goto_1
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbwp;->zzd:[I

    aget v4, v3, v0

    sub-int/2addr v4, v2

    iget-object v5, p0, Lcom/google/android/libraries/places/internal/zzbwp;->zzc:[[B

    add-int/2addr v4, v2

    array-length v5, v5

    add-int/2addr v5, v0

    aget v3, v3, v5

    invoke-static {p3, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    sub-int/2addr v4, v1

    sub-int v2, v1, v2

    add-int v7, v3, v2

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbwp;->zzc:[[B

    add-int v8, v7, v4

    aget-object v6, v2, v0

    new-instance v2, Lcom/google/android/libraries/places/internal/zzbwn;

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/google/android/libraries/places/internal/zzbwn;-><init>([BIIZZ)V

    iget-object v3, p1, Lcom/google/android/libraries/places/internal/zzbwb;->zza:Lcom/google/android/libraries/places/internal/zzbwn;

    if-nez v3, :cond_1

    iput-object v2, v2, Lcom/google/android/libraries/places/internal/zzbwn;->zzh:Lcom/google/android/libraries/places/internal/zzbwn;

    iput-object v2, v2, Lcom/google/android/libraries/places/internal/zzbwn;->zzg:Lcom/google/android/libraries/places/internal/zzbwn;

    iput-object v2, p1, Lcom/google/android/libraries/places/internal/zzbwb;->zza:Lcom/google/android/libraries/places/internal/zzbwn;

    goto :goto_2

    :cond_1
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    iget-object v3, v3, Lcom/google/android/libraries/places/internal/zzbwn;->zzh:Lcom/google/android/libraries/places/internal/zzbwn;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v3, v2}, Lcom/google/android/libraries/places/internal/zzbwn;->zzb(Lcom/google/android/libraries/places/internal/zzbwn;)Lcom/google/android/libraries/places/internal/zzbwn;

    :goto_2
    add-int/2addr v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbwb;->zzg()J

    move-result-wide v0

    int-to-long p2, p3

    add-long/2addr v0, p2

    invoke-virtual {p1, v0, v1}, Lcom/google/android/libraries/places/internal/zzbwb;->zzE(J)V

    return-void
.end method

.method public final zzk(ILcom/google/android/libraries/places/internal/zzbwf;II)Z
    .locals 6

    const-string p1, "other"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbwf;->zzc()I

    move-result p1

    sub-int/2addr p1, p4

    const/4 p3, 0x0

    if-gez p1, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {p0, p3}, Lcom/google/android/libraries/places/internal/zzbwz;->zza(Lcom/google/android/libraries/places/internal/zzbwp;I)I

    move-result p1

    move v0, p3

    move v1, v0

    :goto_0
    if-ge v0, p4, :cond_3

    if-nez p1, :cond_1

    move p1, p3

    move v2, p1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbwp;->zzd:[I

    add-int/lit8 v3, p1, -0x1

    aget v2, v2, v3

    :goto_1
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbwp;->zzd:[I

    aget v4, v3, p1

    sub-int/2addr v4, v2

    iget-object v5, p0, Lcom/google/android/libraries/places/internal/zzbwp;->zzc:[[B

    add-int/2addr v4, v2

    array-length v5, v5

    add-int/2addr v5, p1

    aget v3, v3, v5

    invoke-static {p4, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    sub-int/2addr v4, v0

    sub-int v2, v0, v2

    add-int/2addr v3, v2

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbwp;->zzc:[[B

    aget-object v2, v2, p1

    invoke-virtual {p2, v1, v2, v3, v4}, Lcom/google/android/libraries/places/internal/zzbwf;->zzl(I[BII)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    add-int/2addr v1, v4

    add-int/2addr v0, v4

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p3, 0x1

    :goto_2
    return p3
.end method

.method public final zzl(I[BII)Z
    .locals 6

    const-string v0, "other"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-ltz p1, :cond_4

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbwf;->zzc()I

    move-result v1

    sub-int/2addr v1, p4

    if-gt p1, v1, :cond_4

    if-ltz p3, :cond_4

    array-length v1, p2

    sub-int/2addr v1, p4

    if-le p3, v1, :cond_0

    goto :goto_2

    :cond_0
    add-int/2addr p4, p1

    invoke-static {p0, p1}, Lcom/google/android/libraries/places/internal/zzbwz;->zza(Lcom/google/android/libraries/places/internal/zzbwp;I)I

    move-result v1

    :goto_0
    if-ge p1, p4, :cond_3

    if-nez v1, :cond_1

    move v1, v0

    move v2, v1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbwp;->zzd:[I

    add-int/lit8 v3, v1, -0x1

    aget v2, v2, v3

    :goto_1
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbwp;->zzd:[I

    aget v4, v3, v1

    sub-int/2addr v4, v2

    iget-object v5, p0, Lcom/google/android/libraries/places/internal/zzbwp;->zzc:[[B

    add-int/2addr v4, v2

    array-length v5, v5

    add-int/2addr v5, v1

    aget v3, v3, v5

    invoke-static {p4, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    sub-int/2addr v4, p1

    sub-int v2, p1, v2

    add-int/2addr v3, v2

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbwp;->zzc:[[B

    aget-object v2, v2, v1

    invoke-static {v2, v3, p2, p3, v4}, Lcom/google/android/libraries/places/internal/zzbvv;->zzc([BI[BII)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    add-int/2addr p3, v4

    add-int/2addr p1, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    :cond_4
    :goto_2
    return v0
.end method

.method public final zzo()[B
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbwf;->zzp()[B

    move-result-object v0

    return-object v0
.end method

.method public final zzp()[B
    .locals 8

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbwf;->zzc()I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    iget-object v4, p0, Lcom/google/android/libraries/places/internal/zzbwp;->zzc:[[B

    array-length v5, v4

    if-ge v1, v5, :cond_0

    iget-object v6, p0, Lcom/google/android/libraries/places/internal/zzbwp;->zzd:[I

    add-int/2addr v5, v1

    aget v5, v6, v5

    aget v6, v6, v1

    aget-object v4, v4, v1

    sub-int v2, v6, v2

    add-int v7, v5, v2

    invoke-static {v4, v0, v3, v5, v7}, Lkotlin/collections/ArraysKt;->j([B[BIII)[B

    add-int/2addr v3, v2

    add-int/lit8 v1, v1, 0x1

    move v2, v6

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final zzq()[I
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbwp;->zzd:[I

    return-object v0
.end method

.method public final zzr()[[B
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbwp;->zzc:[[B

    return-object v0
.end method
