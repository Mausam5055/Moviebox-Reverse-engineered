.class final Lcom/google/android/libraries/places/internal/zzbnx;
.super Lcom/google/android/libraries/places/internal/zzbeg;


# instance fields
.field zza:I

.field final zzb:I

.field final zzc:[B

.field zzd:I


# direct methods
.method constructor <init>([BII)V
    .locals 4

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzbeg;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/libraries/places/internal/zzbnx;->zzd:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ltz p2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    const-string v3, "offset must be >= 0"

    invoke-static {v2, v3}, Lcom/google/android/libraries/places/internal/zzmt;->zzf(ZLjava/lang/Object;)V

    if-ltz p3, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    const-string v3, "length must be >= 0"

    invoke-static {v2, v3}, Lcom/google/android/libraries/places/internal/zzmt;->zzf(ZLjava/lang/Object;)V

    add-int/2addr p3, p2

    if-gtz p3, :cond_2

    move v0, v1

    :cond_2
    const-string v1, "offset + length exceeds array boundary"

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zzmt;->zzf(ZLjava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbnx;->zzc:[B

    iput p2, p0, Lcom/google/android/libraries/places/internal/zzbnx;->zza:I

    iput p3, p0, Lcom/google/android/libraries/places/internal/zzbnx;->zzb:I

    return-void
.end method


# virtual methods
.method public final zzb()V
    .locals 1

    iget v0, p0, Lcom/google/android/libraries/places/internal/zzbnx;->zza:I

    iput v0, p0, Lcom/google/android/libraries/places/internal/zzbnx;->zzd:I

    return-void
.end method

.method public final zzc()V
    .locals 2

    iget v0, p0, Lcom/google/android/libraries/places/internal/zzbnx;->zzd:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iput v0, p0, Lcom/google/android/libraries/places/internal/zzbnx;->zza:I

    return-void

    :cond_0
    new-instance v0, Ljava/nio/InvalidMarkException;

    invoke-direct {v0}, Ljava/nio/InvalidMarkException;-><init>()V

    throw v0
.end method

.method public final zzd()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final zze()I
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/places/internal/zzbeg;->zza(I)V

    iget v0, p0, Lcom/google/android/libraries/places/internal/zzbnx;->zza:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/libraries/places/internal/zzbnx;->zza:I

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbnx;->zzc:[B

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public final zzf()I
    .locals 2

    iget v0, p0, Lcom/google/android/libraries/places/internal/zzbnx;->zzb:I

    iget v1, p0, Lcom/google/android/libraries/places/internal/zzbnx;->zza:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final bridge synthetic zzg(I)Lcom/google/android/libraries/places/internal/zzbnv;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/zzbeg;->zza(I)V

    iget v0, p0, Lcom/google/android/libraries/places/internal/zzbnx;->zza:I

    add-int v1, v0, p1

    iput v1, p0, Lcom/google/android/libraries/places/internal/zzbnx;->zza:I

    new-instance v1, Lcom/google/android/libraries/places/internal/zzbnx;

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbnx;->zzc:[B

    invoke-direct {v1, v2, v0, p1}, Lcom/google/android/libraries/places/internal/zzbnx;-><init>([BII)V

    return-object v1
.end method

.method public final zzi(Ljava/nio/ByteBuffer;)V
    .locals 3

    const-string v0, "dest"

    invoke-static {p1, v0}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/places/internal/zzbeg;->zza(I)V

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbnx;->zzc:[B

    iget v2, p0, Lcom/google/android/libraries/places/internal/zzbnx;->zza:I

    invoke-virtual {p1, v1, v2, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    iget p1, p0, Lcom/google/android/libraries/places/internal/zzbnx;->zza:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzbnx;->zza:I

    return-void
.end method

.method public final zzj(Ljava/io/OutputStream;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p2}, Lcom/google/android/libraries/places/internal/zzbeg;->zza(I)V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbnx;->zzc:[B

    iget v1, p0, Lcom/google/android/libraries/places/internal/zzbnx;->zza:I

    invoke-virtual {p1, v0, v1, p2}, Ljava/io/OutputStream;->write([BII)V

    iget p1, p0, Lcom/google/android/libraries/places/internal/zzbnx;->zza:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzbnx;->zza:I

    return-void
.end method

.method public final zzk([BII)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbnx;->zzc:[B

    iget v1, p0, Lcom/google/android/libraries/places/internal/zzbnx;->zza:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/google/android/libraries/places/internal/zzbnx;->zza:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzbnx;->zza:I

    return-void
.end method

.method public final zzl(I)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/zzbeg;->zza(I)V

    iget v0, p0, Lcom/google/android/libraries/places/internal/zzbnx;->zza:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/libraries/places/internal/zzbnx;->zza:I

    return-void
.end method
