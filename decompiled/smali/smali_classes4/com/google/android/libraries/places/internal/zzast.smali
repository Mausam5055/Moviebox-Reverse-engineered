.class final Lcom/google/android/libraries/places/internal/zzast;
.super Lcom/google/android/libraries/places/internal/zzasx;


# instance fields
.field private final zza:[B

.field private final zzb:I

.field private zzc:I


# direct methods
.method constructor <init>([BII)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/libraries/places/internal/zzasx;-><init>(Lcom/google/android/libraries/places/internal/zzasw;)V

    if-eqz p1, :cond_1

    or-int v0, p2, p3

    add-int v1, p2, p3

    array-length v2, p1

    sub-int v3, v2, v1

    or-int/2addr v0, v3

    if-ltz v0, :cond_0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzast;->zza:[B

    iput p2, p0, Lcom/google/android/libraries/places/internal/zzast;->zzc:I

    iput v1, p0, Lcom/google/android/libraries/places/internal/zzast;->zzb:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p2, v1, v0

    const/4 p2, 0x2

    aput-object p3, v1, p2

    const-string p2, "Array range is invalid. Buffer.length=%d, offset=%d, length=%d"

    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "buffer"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final zzJ()V
    .locals 0

    return-void
.end method

.method public final zzK(B)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzast;->zza:[B

    iget v2, p0, Lcom/google/android/libraries/places/internal/zzast;->zzc:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/android/libraries/places/internal/zzast;->zzc:I

    aput-byte p1, v1, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v1, Lcom/google/android/libraries/places/internal/zzasu;

    iget v2, p0, Lcom/google/android/libraries/places/internal/zzast;->zzc:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/google/android/libraries/places/internal/zzast;->zzb:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    aput-object v3, v5, v0

    const/4 v0, 0x2

    aput-object v4, v5, v0

    const-string v0, "Pos: %d, limit: %d, len: %d"

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lcom/google/android/libraries/places/internal/zzasu;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final zzL(IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shl-int/lit8 p1, p1, 0x3

    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/zzast;->zzu(I)V

    invoke-virtual {p0, p2}, Lcom/google/android/libraries/places/internal/zzast;->zzK(B)V

    return-void
.end method

.method public final zzM(ILcom/google/android/libraries/places/internal/zzask;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/zzast;->zzu(I)V

    invoke-virtual {p2}, Lcom/google/android/libraries/places/internal/zzask;->zzd()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/zzast;->zzu(I)V

    invoke-virtual {p2, p0}, Lcom/google/android/libraries/places/internal/zzask;->zzh(Lcom/google/android/libraries/places/internal/zzarz;)V

    return-void
.end method

.method public final zza([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/libraries/places/internal/zzast;->zze([BII)V

    return-void
.end method

.method public final zzb()I
    .locals 2

    iget v0, p0, Lcom/google/android/libraries/places/internal/zzast;->zzb:I

    iget v1, p0, Lcom/google/android/libraries/places/internal/zzast;->zzc:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final zze([BII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p2, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzast;->zza:[B

    iget v1, p0, Lcom/google/android/libraries/places/internal/zzast;->zzc:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/google/android/libraries/places/internal/zzast;->zzc:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzast;->zzc:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/google/android/libraries/places/internal/zzasu;

    iget v1, p0, Lcom/google/android/libraries/places/internal/zzast;->zzc:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/google/android/libraries/places/internal/zzast;->zzb:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, p2

    const/4 p2, 0x1

    aput-object v2, v3, p2

    const/4 p2, 0x2

    aput-object p3, v3, p2

    const-string p2, "Pos: %d, limit: %d, len: %d"

    invoke-static {p2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Lcom/google/android/libraries/places/internal/zzasu;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final zzh(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x5

    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/zzast;->zzu(I)V

    invoke-virtual {p0, p2}, Lcom/google/android/libraries/places/internal/zzast;->zzi(I)V

    return-void
.end method

.method public final zzi(I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    :try_start_0
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzast;->zza:[B

    iget v4, p0, Lcom/google/android/libraries/places/internal/zzast;->zzc:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/google/android/libraries/places/internal/zzast;->zzc:I

    and-int/lit16 v6, p1, 0xff

    int-to-byte v6, v6

    aput-byte v6, v3, v4

    add-int/lit8 v6, v4, 0x2

    iput v6, p0, Lcom/google/android/libraries/places/internal/zzast;->zzc:I

    shr-int/lit8 v7, p1, 0x8

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v3, v5

    add-int/lit8 v5, v4, 0x3

    iput v5, p0, Lcom/google/android/libraries/places/internal/zzast;->zzc:I

    shr-int/lit8 v7, p1, 0x10

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v3, v6

    add-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/android/libraries/places/internal/zzast;->zzc:I

    shr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, v3, v5
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v3, Lcom/google/android/libraries/places/internal/zzasu;

    iget v4, p0, Lcom/google/android/libraries/places/internal/zzast;->zzc:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, p0, Lcom/google/android/libraries/places/internal/zzast;->zzb:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v0, v7

    aput-object v5, v0, v2

    aput-object v6, v0, v1

    const-string v1, "Pos: %d, limit: %d, len: %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, p1}, Lcom/google/android/libraries/places/internal/zzasu;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public final zzj(IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/zzast;->zzu(I)V

    invoke-virtual {p0, p2, p3}, Lcom/google/android/libraries/places/internal/zzast;->zzk(J)V

    return-void
.end method

.method public final zzk(J)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    :try_start_0
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzast;->zza:[B

    iget v4, p0, Lcom/google/android/libraries/places/internal/zzast;->zzc:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/google/android/libraries/places/internal/zzast;->zzc:I

    long-to-int v6, p1

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v3, v4

    add-int/lit8 v6, v4, 0x2

    iput v6, p0, Lcom/google/android/libraries/places/internal/zzast;->zzc:I

    const/16 v7, 0x8

    shr-long v8, p1, v7

    long-to-int v8, v8

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v3, v5

    add-int/lit8 v5, v4, 0x3

    iput v5, p0, Lcom/google/android/libraries/places/internal/zzast;->zzc:I

    const/16 v8, 0x10

    shr-long v8, p1, v8

    long-to-int v8, v8

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v3, v6

    add-int/lit8 v6, v4, 0x4

    iput v6, p0, Lcom/google/android/libraries/places/internal/zzast;->zzc:I

    const/16 v8, 0x18

    shr-long v8, p1, v8

    long-to-int v8, v8

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v3, v5

    add-int/lit8 v5, v4, 0x5

    iput v5, p0, Lcom/google/android/libraries/places/internal/zzast;->zzc:I

    const/16 v8, 0x20

    shr-long v8, p1, v8

    long-to-int v8, v8

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v3, v6

    add-int/lit8 v6, v4, 0x6

    iput v6, p0, Lcom/google/android/libraries/places/internal/zzast;->zzc:I

    const/16 v8, 0x28

    shr-long v8, p1, v8

    long-to-int v8, v8

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v3, v5

    add-int/lit8 v5, v4, 0x7

    iput v5, p0, Lcom/google/android/libraries/places/internal/zzast;->zzc:I

    const/16 v8, 0x30

    shr-long v8, p1, v8

    long-to-int v8, v8

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v3, v6

    add-int/2addr v4, v7

    iput v4, p0, Lcom/google/android/libraries/places/internal/zzast;->zzc:I

    const/16 v4, 0x38

    shr-long/2addr p1, v4

    long-to-int p1, p1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, v3, v5
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lcom/google/android/libraries/places/internal/zzasu;

    iget v3, p0, Lcom/google/android/libraries/places/internal/zzast;->zzc:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Lcom/google/android/libraries/places/internal/zzast;->zzb:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v0, v6

    aput-object v4, v0, v2

    aput-object v5, v0, v1

    const-string v1, "Pos: %d, limit: %d, len: %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/google/android/libraries/places/internal/zzasu;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final zzl(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shl-int/lit8 p1, p1, 0x3

    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/zzast;->zzu(I)V

    invoke-virtual {p0, p2}, Lcom/google/android/libraries/places/internal/zzast;->zzm(I)V

    return-void
.end method

.method public final zzm(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/zzast;->zzu(I)V

    return-void

    :cond_0
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/places/internal/zzast;->zzw(J)V

    return-void
.end method

.method final zzn(ILcom/google/android/libraries/places/internal/zzavf;Lcom/google/android/libraries/places/internal/zzavt;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/zzast;->zzu(I)V

    move-object p1, p2

    check-cast p1, Lcom/google/android/libraries/places/internal/zzart;

    invoke-virtual {p1, p3}, Lcom/google/android/libraries/places/internal/zzart;->zzak(Lcom/google/android/libraries/places/internal/zzavt;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/zzast;->zzu(I)V

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzasx;->zze:Lcom/google/android/libraries/places/internal/zzasy;

    invoke-interface {p3, p2, p1}, Lcom/google/android/libraries/places/internal/zzavt;->zzj(Ljava/lang/Object;Lcom/google/android/libraries/places/internal/zzasy;)V

    return-void
.end method

.method public final zzo(ILcom/google/android/libraries/places/internal/zzavf;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/places/internal/zzast;->zzu(I)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/google/android/libraries/places/internal/zzast;->zzt(II)V

    const/16 p1, 0x1a

    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/zzast;->zzu(I)V

    invoke-interface {p2}, Lcom/google/android/libraries/places/internal/zzavf;->zzaq()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/zzast;->zzu(I)V

    invoke-interface {p2, p0}, Lcom/google/android/libraries/places/internal/zzavf;->zzaK(Lcom/google/android/libraries/places/internal/zzasx;)V

    const/16 p1, 0xc

    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/zzast;->zzu(I)V

    return-void
.end method

.method public final zzp(ILcom/google/android/libraries/places/internal/zzask;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/places/internal/zzast;->zzu(I)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/google/android/libraries/places/internal/zzast;->zzt(II)V

    const/4 p1, 0x3

    invoke-virtual {p0, p1, p2}, Lcom/google/android/libraries/places/internal/zzast;->zzM(ILcom/google/android/libraries/places/internal/zzask;)V

    const/16 p1, 0xc

    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/zzast;->zzu(I)V

    return-void
.end method

.method public final zzq(ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/zzast;->zzu(I)V

    invoke-virtual {p0, p2}, Lcom/google/android/libraries/places/internal/zzast;->zzr(Ljava/lang/String;)V

    return-void
.end method

.method public final zzr(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/libraries/places/internal/zzast;->zzc:I

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v2

    if-ne v2, v1, :cond_0

    add-int v1, v0, v2

    iput v1, p0, Lcom/google/android/libraries/places/internal/zzast;->zzc:I

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzast;->zza:[B

    iget v4, p0, Lcom/google/android/libraries/places/internal/zzast;->zzb:I

    sub-int/2addr v4, v1

    invoke-static {p1, v3, v1, v4}, Lcom/google/android/libraries/places/internal/zzaxc;->zzb(Ljava/lang/String;[BII)I

    move-result v1

    iput v0, p0, Lcom/google/android/libraries/places/internal/zzast;->zzc:I

    sub-int v3, v1, v0

    sub-int/2addr v3, v2

    invoke-virtual {p0, v3}, Lcom/google/android/libraries/places/internal/zzast;->zzu(I)V

    iput v1, p0, Lcom/google/android/libraries/places/internal/zzast;->zzc:I

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1

    :cond_0
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzaxc;->zzc(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/libraries/places/internal/zzast;->zzu(I)V

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzast;->zza:[B

    iget v2, p0, Lcom/google/android/libraries/places/internal/zzast;->zzc:I

    iget v3, p0, Lcom/google/android/libraries/places/internal/zzast;->zzb:I

    sub-int/2addr v3, v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/libraries/places/internal/zzaxc;->zzb(Ljava/lang/String;[BII)I

    move-result v1

    iput v1, p0, Lcom/google/android/libraries/places/internal/zzast;->zzc:I
    :try_end_0
    .catch Lcom/google/android/libraries/places/internal/zzaxb; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_0
    new-instance v0, Lcom/google/android/libraries/places/internal/zzasu;

    invoke-direct {v0, p1}, Lcom/google/android/libraries/places/internal/zzasu;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :goto_1
    iput v0, p0, Lcom/google/android/libraries/places/internal/zzast;->zzc:I

    invoke-virtual {p0, p1, v1}, Lcom/google/android/libraries/places/internal/zzasx;->zzF(Ljava/lang/String;Lcom/google/android/libraries/places/internal/zzaxb;)V

    return-void
.end method

.method public final zzs(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shl-int/lit8 p1, p1, 0x3

    or-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/zzast;->zzu(I)V

    return-void
.end method

.method public final zzt(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shl-int/lit8 p1, p1, 0x3

    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/zzast;->zzu(I)V

    invoke-virtual {p0, p2}, Lcom/google/android/libraries/places/internal/zzast;->zzu(I)V

    return-void
.end method

.method public final zzu(I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    :goto_0
    and-int/lit8 v1, p1, -0x80

    if-nez v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzast;->zza:[B

    iget v2, p0, Lcom/google/android/libraries/places/internal/zzast;->zzc:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/android/libraries/places/internal/zzast;->zzc:I

    int-to-byte p1, p1

    aput-byte p1, v1, v2

    return-void

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzast;->zza:[B

    iget v2, p0, Lcom/google/android/libraries/places/internal/zzast;->zzc:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/android/libraries/places/internal/zzast;->zzc:I

    or-int/lit16 v3, p1, 0x80

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0

    :goto_1
    new-instance v1, Lcom/google/android/libraries/places/internal/zzasu;

    iget v2, p0, Lcom/google/android/libraries/places/internal/zzast;->zzc:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/google/android/libraries/places/internal/zzast;->zzb:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    aput-object v3, v5, v0

    const/4 v0, 0x2

    aput-object v4, v5, v0

    const-string v0, "Pos: %d, limit: %d, len: %d"

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lcom/google/android/libraries/places/internal/zzasu;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final zzv(IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shl-int/lit8 p1, p1, 0x3

    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/zzast;->zzu(I)V

    invoke-virtual {p0, p2, p3}, Lcom/google/android/libraries/places/internal/zzast;->zzw(J)V

    return-void
.end method

.method public final zzw(J)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzasx;->zzG()Z

    move-result v1

    const/4 v2, 0x7

    const-wide/16 v3, 0x0

    const-wide/16 v5, -0x80

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/google/android/libraries/places/internal/zzast;->zzb:I

    iget v7, p0, Lcom/google/android/libraries/places/internal/zzast;->zzc:I

    sub-int/2addr v1, v7

    const/16 v7, 0xa

    if-lt v1, v7, :cond_1

    :goto_0
    and-long v7, p1, v5

    cmp-long v1, v7, v3

    long-to-int v7, p1

    if-nez v1, :cond_0

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzast;->zza:[B

    iget p2, p0, Lcom/google/android/libraries/places/internal/zzast;->zzc:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/google/android/libraries/places/internal/zzast;->zzc:I

    int-to-long v0, p2

    int-to-byte p2, v7

    invoke-static {p1, v0, v1, p2}, Lcom/google/android/libraries/places/internal/zzawx;->zzn([BJB)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzast;->zza:[B

    iget v8, p0, Lcom/google/android/libraries/places/internal/zzast;->zzc:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/google/android/libraries/places/internal/zzast;->zzc:I

    int-to-long v8, v8

    or-int/lit16 v7, v7, 0x80

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    invoke-static {v1, v8, v9, v7}, Lcom/google/android/libraries/places/internal/zzawx;->zzn([BJB)V

    ushr-long/2addr p1, v2

    goto :goto_0

    :cond_1
    :goto_1
    and-long v7, p1, v5

    cmp-long v1, v7, v3

    if-nez v1, :cond_2

    :try_start_0
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzast;->zza:[B

    iget v2, p0, Lcom/google/android/libraries/places/internal/zzast;->zzc:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/android/libraries/places/internal/zzast;->zzc:I

    long-to-int p1, p1

    int-to-byte p1, p1

    aput-byte p1, v1, v2

    return-void

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzast;->zza:[B

    iget v7, p0, Lcom/google/android/libraries/places/internal/zzast;->zzc:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/google/android/libraries/places/internal/zzast;->zzc:I

    long-to-int v8, p1

    or-int/lit16 v8, v8, 0x80

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v1, v7
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    ushr-long/2addr p1, v2

    goto :goto_1

    :goto_2
    new-instance p2, Lcom/google/android/libraries/places/internal/zzasu;

    iget v1, p0, Lcom/google/android/libraries/places/internal/zzast;->zzc:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/google/android/libraries/places/internal/zzast;->zzb:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    aput-object v2, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const-string v0, "Pos: %d, limit: %d, len: %d"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/google/android/libraries/places/internal/zzasu;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method
