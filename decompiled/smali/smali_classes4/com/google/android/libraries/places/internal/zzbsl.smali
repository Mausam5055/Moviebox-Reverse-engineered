.class final Lcom/google/android/libraries/places/internal/zzbsl;
.super Lcom/google/android/libraries/places/internal/zzbeg;


# instance fields
.field private final zza:Lcom/google/android/libraries/places/internal/zzbwb;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzbwb;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzbeg;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbsl;->zza:Lcom/google/android/libraries/places/internal/zzbwb;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbsl;->zza:Lcom/google/android/libraries/places/internal/zzbwb;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbwb;->zzg()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzbwb;->zzF(J)V

    return-void
.end method

.method public final zze()I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbsl;->zza:Lcom/google/android/libraries/places/internal/zzbwb;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbwb;->zzc()B

    move-result v0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v0, v0, 0xff

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final zzf()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbsl;->zza:Lcom/google/android/libraries/places/internal/zzbwb;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbwb;->zzg()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public final zzg(I)Lcom/google/android/libraries/places/internal/zzbnv;
    .locals 4

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbwb;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzbwb;-><init>()V

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbsl;->zza:Lcom/google/android/libraries/places/internal/zzbwb;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/libraries/places/internal/zzbwb;->zzn(Lcom/google/android/libraries/places/internal/zzbwb;J)V

    new-instance p1, Lcom/google/android/libraries/places/internal/zzbsl;

    invoke-direct {p1, v0}, Lcom/google/android/libraries/places/internal/zzbsl;-><init>(Lcom/google/android/libraries/places/internal/zzbwb;)V

    return-object p1
.end method

.method public final zzi(Ljava/nio/ByteBuffer;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final zzj(Ljava/io/OutputStream;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-long v0, p2

    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzbsl;->zza:Lcom/google/android/libraries/places/internal/zzbwb;

    invoke-virtual {p2, p1, v0, v1}, Lcom/google/android/libraries/places/internal/zzbwb;->zzr(Ljava/io/OutputStream;J)Lcom/google/android/libraries/places/internal/zzbwb;

    return-void
.end method

.method public final zzk([BII)V
    .locals 2

    :goto_0
    if-lez p3, :cond_1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbsl;->zza:Lcom/google/android/libraries/places/internal/zzbwb;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/libraries/places/internal/zzbwb;->zzd([BII)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    sub-int/2addr p3, v0

    add-int/2addr p2, v0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "EOF trying to read "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " bytes"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void
.end method

.method public final zzl(I)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbsl;->zza:Lcom/google/android/libraries/places/internal/zzbwb;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzbwb;->zzF(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
