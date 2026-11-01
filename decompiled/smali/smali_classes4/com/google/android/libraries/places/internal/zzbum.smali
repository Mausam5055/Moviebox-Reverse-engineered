.class final Lcom/google/android/libraries/places/internal/zzbum;
.super Ljava/io/InputStream;

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzazr;
.implements Lcom/google/android/libraries/places/internal/zzbav;


# instance fields
.field private zza:Lcom/google/android/libraries/places/internal/zzavf;

.field private final zzb:Lcom/google/android/libraries/places/internal/zzavn;

.field private zzc:Ljava/io/ByteArrayInputStream;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzavf;Lcom/google/android/libraries/places/internal/zzavn;)V
    .locals 0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbum;->zza:Lcom/google/android/libraries/places/internal/zzavf;

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbum;->zzb:Lcom/google/android/libraries/places/internal/zzavn;

    return-void
.end method


# virtual methods
.method public final available()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbum;->zza:Lcom/google/android/libraries/places/internal/zzavf;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/zzavf;->zzaq()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbum;->zzc:Ljava/io/ByteArrayInputStream;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final read()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbum;->zza:Lcom/google/android/libraries/places/internal/zzavf;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/zzavf;->zzao()[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v1, p0, Lcom/google/android/libraries/places/internal/zzbum;->zzc:Ljava/io/ByteArrayInputStream;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbum;->zza:Lcom/google/android/libraries/places/internal/zzavf;

    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbum;->zzc:Ljava/io/ByteArrayInputStream;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public final read([BII)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbum;->zza:Lcom/google/android/libraries/places/internal/zzavf;

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/zzavf;->zzaq()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iput-object v2, p0, Lcom/google/android/libraries/places/internal/zzbum;->zza:Lcom/google/android/libraries/places/internal/zzavf;

    iput-object v2, p0, Lcom/google/android/libraries/places/internal/zzbum;->zzc:Ljava/io/ByteArrayInputStream;

    return v1

    :cond_0
    if-lt p3, v0, :cond_1

    invoke-static {p1, p2, v0}, Lcom/google/android/libraries/places/internal/zzasx;->zzD([BII)Lcom/google/android/libraries/places/internal/zzasx;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzbum;->zza:Lcom/google/android/libraries/places/internal/zzavf;

    invoke-interface {p2, p1}, Lcom/google/android/libraries/places/internal/zzavf;->zzaK(Lcom/google/android/libraries/places/internal/zzasx;)V

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzasx;->zzE()V

    iput-object v2, p0, Lcom/google/android/libraries/places/internal/zzbum;->zza:Lcom/google/android/libraries/places/internal/zzavf;

    iput-object v2, p0, Lcom/google/android/libraries/places/internal/zzbum;->zzc:Ljava/io/ByteArrayInputStream;

    return v0

    :cond_1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbum;->zza:Lcom/google/android/libraries/places/internal/zzavf;

    invoke-interface {v3}, Lcom/google/android/libraries/places/internal/zzavf;->zzao()[B

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbum;->zzc:Ljava/io/ByteArrayInputStream;

    iput-object v2, p0, Lcom/google/android/libraries/places/internal/zzbum;->zza:Lcom/google/android/libraries/places/internal/zzavf;

    :cond_2
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbum;->zzc:Ljava/io/ByteArrayInputStream;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayInputStream;->read([BII)I

    move-result p1

    return p1

    :cond_3
    return v1
.end method

.method public final zza(Ljava/io/OutputStream;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbum;->zza:Lcom/google/android/libraries/places/internal/zzavf;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/zzavf;->zzaq()I

    move-result v0

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbum;->zza:Lcom/google/android/libraries/places/internal/zzavf;

    invoke-interface {v2, p1}, Lcom/google/android/libraries/places/internal/zzavf;->zzan(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lcom/google/android/libraries/places/internal/zzbum;->zza:Lcom/google/android/libraries/places/internal/zzavf;

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbum;->zzc:Ljava/io/ByteArrayInputStream;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    const-string v3, "outputStream cannot be null!"

    invoke-static {p1, v3}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0x2000

    new-array v3, v3, [B

    const-wide/16 v4, 0x0

    :goto_0
    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_1

    long-to-int p1, v4

    iput-object v1, p0, Lcom/google/android/libraries/places/internal/zzbum;->zzc:Ljava/io/ByteArrayInputStream;

    return p1

    :cond_1
    invoke-virtual {p1, v3, v2, v6}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v6, v6

    add-long/2addr v4, v6

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_1
    return v0
.end method

.method final zzb()Lcom/google/android/libraries/places/internal/zzavf;
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbum;->zza:Lcom/google/android/libraries/places/internal/zzavf;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "message not available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final zzc()Lcom/google/android/libraries/places/internal/zzavn;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbum;->zzb:Lcom/google/android/libraries/places/internal/zzavn;

    return-object v0
.end method
