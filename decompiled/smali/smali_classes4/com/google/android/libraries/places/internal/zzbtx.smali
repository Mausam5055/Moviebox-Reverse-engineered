.class final Lcom/google/android/libraries/places/internal/zzbtx;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzbws;


# instance fields
.field zza:I

.field zzb:B

.field zzc:I

.field zzd:I

.field zze:S

.field private final zzf:Lcom/google/android/libraries/places/internal/zzbwd;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/places/internal/zzbwd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbtx;->zzf:Lcom/google/android/libraries/places/internal/zzbwd;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public final zza(Lcom/google/android/libraries/places/internal/zzbwb;J)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p2, 0x1

    const/4 p3, 0x0

    :goto_0
    iget v0, p0, Lcom/google/android/libraries/places/internal/zzbtx;->zzd:I

    const-wide/16 v1, -0x1

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbtx;->zzf:Lcom/google/android/libraries/places/internal/zzbwd;

    iget-short v3, p0, Lcom/google/android/libraries/places/internal/zzbtx;->zze:S

    int-to-long v3, v3

    invoke-interface {v0, v3, v4}, Lcom/google/android/libraries/places/internal/zzbwd;->zzF(J)V

    iput-short p3, p0, Lcom/google/android/libraries/places/internal/zzbtx;->zze:S

    iget-byte v0, p0, Lcom/google/android/libraries/places/internal/zzbtx;->zzb:B

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget v0, p0, Lcom/google/android/libraries/places/internal/zzbtx;->zzc:I

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbtx;->zzf:Lcom/google/android/libraries/places/internal/zzbwd;

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzbub;->zzb(Lcom/google/android/libraries/places/internal/zzbwd;)I

    move-result v1

    iput v1, p0, Lcom/google/android/libraries/places/internal/zzbtx;->zzd:I

    iput v1, p0, Lcom/google/android/libraries/places/internal/zzbtx;->zza:I

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbtx;->zzf:Lcom/google/android/libraries/places/internal/zzbwd;

    invoke-interface {v1}, Lcom/google/android/libraries/places/internal/zzbwd;->zzc()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbtx;->zzf:Lcom/google/android/libraries/places/internal/zzbwd;

    invoke-interface {v2}, Lcom/google/android/libraries/places/internal/zzbwd;->zzc()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    iput-byte v2, p0, Lcom/google/android/libraries/places/internal/zzbtx;->zzb:B

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbub;->zzg()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    int-to-byte v1, v1

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbub;->zzg()Ljava/util/logging/Logger;

    move-result-object v2

    iget v4, p0, Lcom/google/android/libraries/places/internal/zzbtx;->zzc:I

    iget v5, p0, Lcom/google/android/libraries/places/internal/zzbtx;->zza:I

    iget-byte v6, p0, Lcom/google/android/libraries/places/internal/zzbtx;->zzb:B

    invoke-static {p2, v4, v5, v1, v6}, Lcom/google/android/libraries/places/internal/zzbty;->zza(ZIIBB)Ljava/lang/String;

    move-result-object v4

    const-string v5, "io.grpc.okhttp.internal.framed.Http2$ContinuationSource"

    const-string v6, "readContinuationHeader"

    invoke-virtual {v2, v3, v5, v6, v4}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbtx;->zzf:Lcom/google/android/libraries/places/internal/zzbwd;

    invoke-interface {v2}, Lcom/google/android/libraries/places/internal/zzbwd;->zze()I

    move-result v2

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    iput v2, p0, Lcom/google/android/libraries/places/internal/zzbtx;->zzc:I

    const/16 v3, 0x9

    if-ne v1, v3, :cond_3

    if-ne v2, v0, :cond_2

    goto :goto_0

    :cond_2
    new-array p1, p3, [Ljava/lang/Object;

    const-string p2, "TYPE_CONTINUATION streamId changed"

    invoke-static {p2, p1}, Lcom/google/android/libraries/places/internal/zzbub;->zze(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_3
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    new-array p2, p2, [Ljava/lang/Object;

    aput-object p1, p2, p3

    const-string p1, "%s != TYPE_CONTINUATION"

    invoke-static {p1, p2}, Lcom/google/android/libraries/places/internal/zzbub;->zze(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_4
    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzbtx;->zzf:Lcom/google/android/libraries/places/internal/zzbwd;

    const-wide/16 v3, 0x2000

    int-to-long v5, v0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    invoke-interface {p2, p1, v3, v4}, Lcom/google/android/libraries/places/internal/zzbws;->zza(Lcom/google/android/libraries/places/internal/zzbwb;J)J

    move-result-wide p1

    cmp-long p3, p1, v1

    if-eqz p3, :cond_5

    iget p3, p0, Lcom/google/android/libraries/places/internal/zzbtx;->zzd:I

    long-to-int v0, p1

    sub-int/2addr p3, v0

    iput p3, p0, Lcom/google/android/libraries/places/internal/zzbtx;->zzd:I

    return-wide p1

    :cond_5
    :goto_1
    return-wide v1
.end method
