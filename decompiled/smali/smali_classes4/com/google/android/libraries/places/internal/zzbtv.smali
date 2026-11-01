.class final Lcom/google/android/libraries/places/internal/zzbtv;
.super Ljava/lang/Object;


# instance fields
.field zza:[Lcom/google/android/libraries/places/internal/zzbtt;

.field zzb:I

.field private final zzc:Lcom/google/android/libraries/places/internal/zzbwb;

.field private zzd:I

.field private zze:I


# direct methods
.method constructor <init>(IZLcom/google/android/libraries/places/internal/zzbwb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x8

    new-array p1, p1, [Lcom/google/android/libraries/places/internal/zzbtt;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbtv;->zza:[Lcom/google/android/libraries/places/internal/zzbtt;

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzbtv;->zzd:I

    iput-object p3, p0, Lcom/google/android/libraries/places/internal/zzbtv;->zzc:Lcom/google/android/libraries/places/internal/zzbwb;

    return-void
.end method

.method private final zzd(Lcom/google/android/libraries/places/internal/zzbtt;)V
    .locals 7

    iget v0, p1, Lcom/google/android/libraries/places/internal/zzbtt;->zzj:I

    const/16 v1, 0x1000

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbtv;->zza:[Lcom/google/android/libraries/places/internal/zzbtt;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbtv;->zza:[Lcom/google/android/libraries/places/internal/zzbtt;

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzbtv;->zzd:I

    iput v2, p0, Lcom/google/android/libraries/places/internal/zzbtv;->zzb:I

    iput v2, p0, Lcom/google/android/libraries/places/internal/zzbtv;->zze:I

    return-void

    :cond_0
    iget v1, p0, Lcom/google/android/libraries/places/internal/zzbtv;->zze:I

    add-int/2addr v1, v0

    add-int/lit16 v1, v1, -0x1000

    if-lez v1, :cond_2

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbtv;->zza:[Lcom/google/android/libraries/places/internal/zzbtt;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    move v4, v2

    :goto_0
    iget v5, p0, Lcom/google/android/libraries/places/internal/zzbtv;->zzd:I

    if-lt v3, v5, :cond_1

    if-lez v1, :cond_1

    iget-object v5, p0, Lcom/google/android/libraries/places/internal/zzbtv;->zza:[Lcom/google/android/libraries/places/internal/zzbtt;

    aget-object v5, v5, v3

    iget v5, v5, Lcom/google/android/libraries/places/internal/zzbtt;->zzj:I

    sub-int/2addr v1, v5

    iget v6, p0, Lcom/google/android/libraries/places/internal/zzbtv;->zze:I

    sub-int/2addr v6, v5

    iput v6, p0, Lcom/google/android/libraries/places/internal/zzbtv;->zze:I

    iget v5, p0, Lcom/google/android/libraries/places/internal/zzbtv;->zzb:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/google/android/libraries/places/internal/zzbtv;->zzb:I

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbtv;->zza:[Lcom/google/android/libraries/places/internal/zzbtt;

    add-int/lit8 v5, v5, 0x1

    add-int v3, v5, v4

    iget v6, p0, Lcom/google/android/libraries/places/internal/zzbtv;->zzb:I

    invoke-static {v1, v5, v1, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lcom/google/android/libraries/places/internal/zzbtv;->zzd:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/google/android/libraries/places/internal/zzbtv;->zzd:I

    :cond_2
    iget v1, p0, Lcom/google/android/libraries/places/internal/zzbtv;->zzb:I

    add-int/lit8 v1, v1, 0x1

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbtv;->zza:[Lcom/google/android/libraries/places/internal/zzbtt;

    array-length v4, v3

    if-le v1, v4, :cond_3

    add-int v1, v4, v4

    new-array v1, v1, [Lcom/google/android/libraries/places/internal/zzbtt;

    invoke-static {v3, v2, v1, v4, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbtv;->zza:[Lcom/google/android/libraries/places/internal/zzbtt;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google/android/libraries/places/internal/zzbtv;->zzd:I

    iput-object v1, p0, Lcom/google/android/libraries/places/internal/zzbtv;->zza:[Lcom/google/android/libraries/places/internal/zzbtt;

    :cond_3
    iget v1, p0, Lcom/google/android/libraries/places/internal/zzbtv;->zzd:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/android/libraries/places/internal/zzbtv;->zzd:I

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbtv;->zza:[Lcom/google/android/libraries/places/internal/zzbtt;

    aput-object p1, v2, v1

    iget p1, p0, Lcom/google/android/libraries/places/internal/zzbtv;->zzb:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzbtv;->zzb:I

    iget p1, p0, Lcom/google/android/libraries/places/internal/zzbtv;->zze:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzbtv;->zze:I

    return-void
.end method


# virtual methods
.method final zza(Lcom/google/android/libraries/places/internal/zzbwf;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbwf;->zzc()I

    move-result v0

    const/16 v1, 0x7f

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzbtv;->zzc(III)V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbtv;->zzc:Lcom/google/android/libraries/places/internal/zzbwb;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzbwb;->zzk(Lcom/google/android/libraries/places/internal/zzbwf;)Lcom/google/android/libraries/places/internal/zzbwb;

    return-void
.end method

.method final zzb(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_a

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/libraries/places/internal/zzbtt;

    iget-object v4, v3, Lcom/google/android/libraries/places/internal/zzbtt;->zzh:Lcom/google/android/libraries/places/internal/zzbwf;

    invoke-virtual {v4}, Lcom/google/android/libraries/places/internal/zzbwf;->zzg()Lcom/google/android/libraries/places/internal/zzbwf;

    move-result-object v4

    iget-object v5, v3, Lcom/google/android/libraries/places/internal/zzbtt;->zzi:Lcom/google/android/libraries/places/internal/zzbwf;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbtw;->zza()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    const/4 v7, -0x1

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/lit8 v8, v6, 0x1

    const/4 v9, 0x2

    if-lt v8, v9, :cond_1

    const/4 v9, 0x7

    if-gt v8, v9, :cond_1

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbtw;->zzd()[Lcom/google/android/libraries/places/internal/zzbtt;

    move-result-object v9

    aget-object v9, v9, v6

    iget-object v9, v9, Lcom/google/android/libraries/places/internal/zzbtt;->zzi:Lcom/google/android/libraries/places/internal/zzbwf;

    invoke-virtual {v9, v5}, Lcom/google/android/libraries/places/internal/zzbwf;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    move v6, v8

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbtw;->zzd()[Lcom/google/android/libraries/places/internal/zzbtt;

    move-result-object v9

    aget-object v9, v9, v8

    iget-object v9, v9, Lcom/google/android/libraries/places/internal/zzbtt;->zzi:Lcom/google/android/libraries/places/internal/zzbwf;

    invoke-virtual {v9, v5}, Lcom/google/android/libraries/places/internal/zzbwf;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    add-int/lit8 v6, v6, 0x2

    move v11, v8

    move v8, v6

    move v6, v11

    goto :goto_1

    :cond_1
    move v6, v8

    move v8, v7

    goto :goto_1

    :cond_2
    move v6, v7

    move v8, v6

    :goto_1
    if-ne v8, v7, :cond_6

    iget v8, p0, Lcom/google/android/libraries/places/internal/zzbtv;->zzd:I

    :cond_3
    :goto_2
    add-int/lit8 v8, v8, 0x1

    iget-object v9, p0, Lcom/google/android/libraries/places/internal/zzbtv;->zza:[Lcom/google/android/libraries/places/internal/zzbtt;

    array-length v10, v9

    if-ge v8, v10, :cond_5

    aget-object v9, v9, v8

    iget-object v9, v9, Lcom/google/android/libraries/places/internal/zzbtt;->zzh:Lcom/google/android/libraries/places/internal/zzbwf;

    invoke-virtual {v9, v4}, Lcom/google/android/libraries/places/internal/zzbwf;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/google/android/libraries/places/internal/zzbtv;->zza:[Lcom/google/android/libraries/places/internal/zzbtt;

    aget-object v9, v9, v8

    iget-object v9, v9, Lcom/google/android/libraries/places/internal/zzbtt;->zzi:Lcom/google/android/libraries/places/internal/zzbwf;

    invoke-virtual {v9, v5}, Lcom/google/android/libraries/places/internal/zzbwf;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    iget v9, p0, Lcom/google/android/libraries/places/internal/zzbtv;->zzd:I

    sub-int/2addr v8, v9

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbtw;->zzd()[Lcom/google/android/libraries/places/internal/zzbtt;

    move-result-object v9

    array-length v9, v9

    add-int/lit8 v8, v8, 0x3d

    goto :goto_3

    :cond_4
    if-ne v6, v7, :cond_3

    iget v6, p0, Lcom/google/android/libraries/places/internal/zzbtv;->zzd:I

    sub-int v6, v8, v6

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbtw;->zzd()[Lcom/google/android/libraries/places/internal/zzbtt;

    move-result-object v9

    array-length v9, v9

    add-int/lit8 v6, v6, 0x3d

    goto :goto_2

    :cond_5
    move v8, v7

    :cond_6
    :goto_3
    if-eq v8, v7, :cond_7

    const/16 v3, 0x7f

    const/16 v4, 0x80

    invoke-virtual {p0, v8, v3, v4}, Lcom/google/android/libraries/places/internal/zzbtv;->zzc(III)V

    goto :goto_4

    :cond_7
    const/16 v8, 0x40

    if-ne v6, v7, :cond_8

    iget-object v6, p0, Lcom/google/android/libraries/places/internal/zzbtv;->zzc:Lcom/google/android/libraries/places/internal/zzbwb;

    invoke-virtual {v6, v8}, Lcom/google/android/libraries/places/internal/zzbwb;->zzm(I)Lcom/google/android/libraries/places/internal/zzbwb;

    invoke-virtual {p0, v4}, Lcom/google/android/libraries/places/internal/zzbtv;->zza(Lcom/google/android/libraries/places/internal/zzbwf;)V

    invoke-virtual {p0, v5}, Lcom/google/android/libraries/places/internal/zzbtv;->zza(Lcom/google/android/libraries/places/internal/zzbwf;)V

    invoke-direct {p0, v3}, Lcom/google/android/libraries/places/internal/zzbtv;->zzd(Lcom/google/android/libraries/places/internal/zzbtt;)V

    goto :goto_4

    :cond_8
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbtw;->zzb()Lcom/google/android/libraries/places/internal/zzbwf;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/google/android/libraries/places/internal/zzbwf;->zzm(Lcom/google/android/libraries/places/internal/zzbwf;)Z

    move-result v7

    if-eqz v7, :cond_9

    sget-object v7, Lcom/google/android/libraries/places/internal/zzbtt;->zze:Lcom/google/android/libraries/places/internal/zzbwf;

    invoke-virtual {v7, v4}, Lcom/google/android/libraries/places/internal/zzbwf;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    const/16 v3, 0xf

    invoke-virtual {p0, v6, v3, v1}, Lcom/google/android/libraries/places/internal/zzbtv;->zzc(III)V

    invoke-virtual {p0, v5}, Lcom/google/android/libraries/places/internal/zzbtv;->zza(Lcom/google/android/libraries/places/internal/zzbwf;)V

    goto :goto_4

    :cond_9
    const/16 v4, 0x3f

    invoke-virtual {p0, v6, v4, v8}, Lcom/google/android/libraries/places/internal/zzbtv;->zzc(III)V

    invoke-virtual {p0, v5}, Lcom/google/android/libraries/places/internal/zzbtv;->zza(Lcom/google/android/libraries/places/internal/zzbwf;)V

    invoke-direct {p0, v3}, Lcom/google/android/libraries/places/internal/zzbtv;->zzd(Lcom/google/android/libraries/places/internal/zzbtt;)V

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method final zzc(III)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ge p1, p2, :cond_0

    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzbtv;->zzc:Lcom/google/android/libraries/places/internal/zzbwb;

    or-int/2addr p1, p3

    invoke-virtual {p2, p1}, Lcom/google/android/libraries/places/internal/zzbwb;->zzm(I)Lcom/google/android/libraries/places/internal/zzbwb;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbtv;->zzc:Lcom/google/android/libraries/places/internal/zzbwb;

    or-int/2addr p3, p2

    invoke-virtual {v0, p3}, Lcom/google/android/libraries/places/internal/zzbwb;->zzm(I)Lcom/google/android/libraries/places/internal/zzbwb;

    sub-int/2addr p1, p2

    :goto_0
    const/16 p2, 0x80

    if-lt p1, p2, :cond_1

    and-int/lit8 p3, p1, 0x7f

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbtv;->zzc:Lcom/google/android/libraries/places/internal/zzbwb;

    or-int/2addr p2, p3

    invoke-virtual {v0, p2}, Lcom/google/android/libraries/places/internal/zzbwb;->zzm(I)Lcom/google/android/libraries/places/internal/zzbwb;

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzbtv;->zzc:Lcom/google/android/libraries/places/internal/zzbwb;

    invoke-virtual {p2, p1}, Lcom/google/android/libraries/places/internal/zzbwb;->zzm(I)Lcom/google/android/libraries/places/internal/zzbwb;

    return-void
.end method
