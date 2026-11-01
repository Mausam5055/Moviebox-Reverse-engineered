.class public final Lcom/google/android/libraries/places/internal/zzbmw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzbis;


# instance fields
.field private final zza:Lcom/google/android/libraries/places/internal/zzbmv;

.field private zzb:I

.field private zzc:Lcom/google/android/libraries/places/internal/zzbra;

.field private zzd:Lcom/google/android/libraries/places/internal/zzazc;

.field private final zze:Lcom/google/android/libraries/places/internal/zzbmu;

.field private final zzf:Ljava/nio/ByteBuffer;

.field private final zzg:Lcom/google/android/libraries/places/internal/zzbrb;

.field private final zzh:Lcom/google/android/libraries/places/internal/zzbqo;

.field private zzi:Z

.field private zzj:I

.field private zzk:I

.field private zzl:J


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/places/internal/zzbmv;Lcom/google/android/libraries/places/internal/zzbrb;Lcom/google/android/libraries/places/internal/zzbqo;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzb:I

    sget-object v1, Lcom/google/android/libraries/places/internal/zzaza;->zza:Lcom/google/android/libraries/places/internal/zzazb;

    iput-object v1, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzd:Lcom/google/android/libraries/places/internal/zzazc;

    new-instance v1, Lcom/google/android/libraries/places/internal/zzbmu;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/libraries/places/internal/zzbmu;-><init>(Lcom/google/android/libraries/places/internal/zzbmw;Lcom/google/android/libraries/places/internal/zzbmt;)V

    iput-object v1, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zze:Lcom/google/android/libraries/places/internal/zzbmu;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzf:Ljava/nio/ByteBuffer;

    iput v0, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzk:I

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zza:Lcom/google/android/libraries/places/internal/zzbmv;

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzg:Lcom/google/android/libraries/places/internal/zzbrb;

    iput-object p3, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzh:Lcom/google/android/libraries/places/internal/zzbqo;

    return-void
.end method

.method static bridge synthetic zzg(Lcom/google/android/libraries/places/internal/zzbmw;)Lcom/google/android/libraries/places/internal/zzbrb;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzg:Lcom/google/android/libraries/places/internal/zzbrb;

    return-object p0
.end method

.method static bridge synthetic zzh(Lcom/google/android/libraries/places/internal/zzbmw;[BII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/libraries/places/internal/zzbmw;->zzk([BII)V

    return-void
.end method

.method private final zzi(ZZ)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzc:Lcom/google/android/libraries/places/internal/zzbra;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzc:Lcom/google/android/libraries/places/internal/zzbra;

    iget v1, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzj:I

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zza:Lcom/google/android/libraries/places/internal/zzbmv;

    invoke-interface {v2, v0, p1, p2, v1}, Lcom/google/android/libraries/places/internal/zzbmv;->zzi(Lcom/google/android/libraries/places/internal/zzbra;ZZI)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzj:I

    return-void
.end method

.method private final zzj(Lcom/google/android/libraries/places/internal/zzbms;Z)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbms;->zza(Lcom/google/android/libraries/places/internal/zzbms;)I

    move-result v2

    iget v3, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzb:I

    if-ltz v3, :cond_1

    if-gt v2, v3, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/google/android/libraries/places/internal/zzbdo;->zzj:Lcom/google/android/libraries/places/internal/zzbdo;

    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzb:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v0

    aput-object v3, v4, v1

    const-string v0, "message too large %d > %d"

    invoke-static {p2, v0, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object p1

    new-instance p2, Lcom/google/android/libraries/places/internal/zzbdq;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lcom/google/android/libraries/places/internal/zzbdq;-><init>(Lcom/google/android/libraries/places/internal/zzbdo;Lcom/google/android/libraries/places/internal/zzbcf;)V

    throw p2

    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzf:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzf:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzg:Lcom/google/android/libraries/places/internal/zzbrb;

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzf:Ljava/nio/ByteBuffer;

    const/4 v4, 0x5

    invoke-interface {p2, v4}, Lcom/google/android/libraries/places/internal/zzbrb;->zza(I)Lcom/google/android/libraries/places/internal/zzbra;

    move-result-object p2

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v3}, Ljava/nio/Buffer;->position()I

    move-result v3

    invoke-interface {p2, v4, v0, v3}, Lcom/google/android/libraries/places/internal/zzbra;->zzd([BII)V

    if-nez v2, :cond_2

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzc:Lcom/google/android/libraries/places/internal/zzbra;

    return-void

    :cond_2
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zza:Lcom/google/android/libraries/places/internal/zzbmv;

    iget v4, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzj:I

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, p2, v0, v0, v4}, Lcom/google/android/libraries/places/internal/zzbmv;->zzi(Lcom/google/android/libraries/places/internal/zzbra;ZZI)V

    iput v1, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzj:I

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbms;->zzb(Lcom/google/android/libraries/places/internal/zzbms;)Ljava/util/List;

    move-result-object p1

    move p2, v0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge p2, v3, :cond_3

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zza:Lcom/google/android/libraries/places/internal/zzbmv;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/libraries/places/internal/zzbra;

    invoke-interface {v3, v4, v0, v0, v0}, Lcom/google/android/libraries/places/internal/zzbmv;->zzi(Lcom/google/android/libraries/places/internal/zzbra;ZZI)V

    add-int/2addr p2, v1

    goto :goto_1

    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/internal/zzbra;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzc:Lcom/google/android/libraries/places/internal/zzbra;

    int-to-long p1, v2

    iput-wide p1, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzl:J

    return-void
.end method

.method private final zzk([BII)V
    .locals 2

    :goto_0
    if-lez p3, :cond_2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzc:Lcom/google/android/libraries/places/internal/zzbra;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/zzbra;->zzb()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/google/android/libraries/places/internal/zzbmw;->zzi(ZZ)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzc:Lcom/google/android/libraries/places/internal/zzbra;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzg:Lcom/google/android/libraries/places/internal/zzbrb;

    invoke-interface {v0, p3}, Lcom/google/android/libraries/places/internal/zzbrb;->zza(I)Lcom/google/android/libraries/places/internal/zzbra;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzc:Lcom/google/android/libraries/places/internal/zzbra;

    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzc:Lcom/google/android/libraries/places/internal/zzbra;

    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/zzbra;->zzb()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzc:Lcom/google/android/libraries/places/internal/zzbra;

    invoke-interface {v1, p1, p2, v0}, Lcom/google/android/libraries/places/internal/zzbra;->zzd([BII)V

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/libraries/places/internal/zzazc;)Lcom/google/android/libraries/places/internal/zzbis;
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzd:Lcom/google/android/libraries/places/internal/zzazc;

    return-object p0
.end method

.method public final zzb()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzi:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzi:Z

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzc:Lcom/google/android/libraries/places/internal/zzbra;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/google/android/libraries/places/internal/zzbra;->zza()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzc:Lcom/google/android/libraries/places/internal/zzbra;

    :cond_0
    invoke-direct {p0, v0, v0}, Lcom/google/android/libraries/places/internal/zzbmw;->zzi(ZZ)V

    :cond_1
    return-void
.end method

.method public final zzc()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzc:Lcom/google/android/libraries/places/internal/zzbra;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/zzbra;->zza()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/libraries/places/internal/zzbmw;->zzi(ZZ)V

    :cond_0
    return-void
.end method

.method public final zzd(I)V
    .locals 2

    iget v0, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzb:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "max size already set"

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zzmt;->zzp(ZLjava/lang/Object;)V

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzb:I

    return-void
.end method

.method public final zze(Ljava/io/InputStream;)V
    .locals 10

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "Failed to frame message"

    iget-boolean v4, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzi:Z

    if-nez v4, :cond_9

    iget v4, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzj:I

    add-int/2addr v4, v2

    iput v4, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzj:I

    iget v4, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzk:I

    add-int/2addr v4, v2

    iput v4, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzk:I

    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzl:J

    iget-object v5, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzh:Lcom/google/android/libraries/places/internal/zzbqo;

    invoke-virtual {v5, v4}, Lcom/google/android/libraries/places/internal/zzbqo;->zzi(I)V

    iget-object v4, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzd:Lcom/google/android/libraries/places/internal/zzazc;

    sget-object v5, Lcom/google/android/libraries/places/internal/zzaza;->zza:Lcom/google/android/libraries/places/internal/zzazb;

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/android/libraries/places/internal/zzbdq; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v8, -0x1

    const-string v9, "message too large %d > %d"

    if-eqz v7, :cond_2

    if-eq v4, v5, :cond_2

    :try_start_1
    new-instance v4, Lcom/google/android/libraries/places/internal/zzbms;

    invoke-direct {v4, p0, v6}, Lcom/google/android/libraries/places/internal/zzbms;-><init>(Lcom/google/android/libraries/places/internal/zzbmw;Lcom/google/android/libraries/places/internal/zzbmr;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/google/android/libraries/places/internal/zzbdq; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-interface {p1, v4}, Lcom/google/android/libraries/places/internal/zzazr;->zza(Ljava/io/OutputStream;)I

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    iget v5, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzb:I

    if-ltz v5, :cond_1

    if-gt p1, v5, :cond_0

    goto :goto_0

    :cond_0
    sget-object v4, Lcom/google/android/libraries/places/internal/zzbdo;->zzj:Lcom/google/android/libraries/places/internal/zzbdo;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget v7, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzb:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    aput-object v7, v0, v2

    invoke-static {v5, v9, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object p1

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbdq;

    invoke-direct {v0, p1, v6}, Lcom/google/android/libraries/places/internal/zzbdq;-><init>(Lcom/google/android/libraries/places/internal/zzbdo;Lcom/google/android/libraries/places/internal/zzbcf;)V

    throw v0

    :catch_0
    move-exception p1

    goto/16 :goto_4

    :catch_1
    move-exception p1

    goto/16 :goto_5

    :catch_2
    move-exception p1

    goto/16 :goto_6

    :cond_1
    :goto_0
    invoke-direct {p0, v4, v2}, Lcom/google/android/libraries/places/internal/zzbmw;->zzj(Lcom/google/android/libraries/places/internal/zzbms;Z)V

    goto/16 :goto_2

    :catchall_0
    move-exception p1

    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    throw p1

    :cond_2
    if-eq v7, v8, :cond_6

    int-to-long v4, v7

    iput-wide v4, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzl:J

    iget v4, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzb:I

    if-ltz v4, :cond_4

    if-gt v7, v4, :cond_3

    goto :goto_1

    :cond_3
    sget-object p1, Lcom/google/android/libraries/places/internal/zzbdo;->zzj:Lcom/google/android/libraries/places/internal/zzbdo;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v7, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzb:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v5, v0, v1

    aput-object v7, v0, v2

    invoke-static {v4, v9, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object p1

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbdq;

    invoke-direct {v0, p1, v6}, Lcom/google/android/libraries/places/internal/zzbdq;-><init>(Lcom/google/android/libraries/places/internal/zzbdo;Lcom/google/android/libraries/places/internal/zzbcf;)V

    throw v0

    :cond_4
    :goto_1
    iget-object v4, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzf:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v4, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzf:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzc:Lcom/google/android/libraries/places/internal/zzbra;

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzg:Lcom/google/android/libraries/places/internal/zzbrb;

    iget-object v5, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/Buffer;->position()I

    move-result v5

    add-int/2addr v5, v7

    invoke-interface {v4, v5}, Lcom/google/android/libraries/places/internal/zzbrb;->zza(I)Lcom/google/android/libraries/places/internal/zzbra;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzc:Lcom/google/android/libraries/places/internal/zzbra;

    :cond_5
    iget-object v4, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzf:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/Buffer;->position()I

    move-result v5

    invoke-direct {p0, v4, v1, v5}, Lcom/google/android/libraries/places/internal/zzbmw;->zzk([BII)V

    iget-object v4, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zze:Lcom/google/android/libraries/places/internal/zzbmu;

    invoke-interface {p1, v4}, Lcom/google/android/libraries/places/internal/zzazr;->zza(Ljava/io/OutputStream;)I

    move-result p1

    goto :goto_2

    :cond_6
    new-instance v4, Lcom/google/android/libraries/places/internal/zzbms;

    invoke-direct {v4, p0, v6}, Lcom/google/android/libraries/places/internal/zzbms;-><init>(Lcom/google/android/libraries/places/internal/zzbmw;Lcom/google/android/libraries/places/internal/zzbmr;)V

    invoke-interface {p1, v4}, Lcom/google/android/libraries/places/internal/zzazr;->zza(Ljava/io/OutputStream;)I

    move-result p1

    invoke-direct {p0, v4, v1}, Lcom/google/android/libraries/places/internal/zzbmw;->zzj(Lcom/google/android/libraries/places/internal/zzbms;Z)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/google/android/libraries/places/internal/zzbdq; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    :goto_2
    if-eq v7, v8, :cond_8

    if-ne p1, v7, :cond_7

    goto :goto_3

    :cond_7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    aput-object v3, v0, v2

    const-string p1, "Message length inaccurate %s != %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzbdo;->zzo:Lcom/google/android/libraries/places/internal/zzbdo;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object p1

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbdq;

    invoke-direct {v0, p1, v6}, Lcom/google/android/libraries/places/internal/zzbdq;-><init>(Lcom/google/android/libraries/places/internal/zzbdo;Lcom/google/android/libraries/places/internal/zzbcf;)V

    throw v0

    :cond_8
    :goto_3
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzh:Lcom/google/android/libraries/places/internal/zzbqo;

    int-to-long v5, p1

    invoke-virtual {v0, v5, v6}, Lcom/google/android/libraries/places/internal/zzbqo;->zzk(J)V

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzh:Lcom/google/android/libraries/places/internal/zzbqo;

    iget-wide v0, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzl:J

    invoke-virtual {p1, v0, v1}, Lcom/google/android/libraries/places/internal/zzbqo;->zzl(J)V

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzh:Lcom/google/android/libraries/places/internal/zzbqo;

    iget v2, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzk:I

    iget-wide v3, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzl:J

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/libraries/places/internal/zzbqo;->zzj(IJJ)V

    return-void

    :goto_4
    sget-object v0, Lcom/google/android/libraries/places/internal/zzbdo;->zzo:Lcom/google/android/libraries/places/internal/zzbdo;

    invoke-virtual {v0, v3}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzbdo;->zzf(Ljava/lang/Throwable;)Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object p1

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbdq;

    invoke-direct {v0, p1, v6}, Lcom/google/android/libraries/places/internal/zzbdq;-><init>(Lcom/google/android/libraries/places/internal/zzbdo;Lcom/google/android/libraries/places/internal/zzbcf;)V

    throw v0

    :goto_5
    throw p1

    :goto_6
    sget-object v0, Lcom/google/android/libraries/places/internal/zzbdo;->zzo:Lcom/google/android/libraries/places/internal/zzbdo;

    invoke-virtual {v0, v3}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzbdo;->zzf(Ljava/lang/Throwable;)Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object p1

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbdq;

    invoke-direct {v0, p1, v6}, Lcom/google/android/libraries/places/internal/zzbdq;-><init>(Lcom/google/android/libraries/places/internal/zzbdo;Lcom/google/android/libraries/places/internal/zzbcf;)V

    throw v0

    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Framer already closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzf()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzi:Z

    return v0
.end method
