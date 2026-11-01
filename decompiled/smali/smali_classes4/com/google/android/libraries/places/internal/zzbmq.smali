.class public final Lcom/google/android/libraries/places/internal/zzbmq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;
.implements Lcom/google/android/libraries/places/internal/zzbgj;


# instance fields
.field private zza:Lcom/google/android/libraries/places/internal/zzbmm;

.field private zzb:I

.field private final zzc:Lcom/google/android/libraries/places/internal/zzbqo;

.field private final zzd:Lcom/google/android/libraries/places/internal/zzbqz;

.field private zze:Lcom/google/android/libraries/places/internal/zzazo;

.field private zzf:I

.field private zzg:Z

.field private zzh:Lcom/google/android/libraries/places/internal/zzbge;

.field private zzi:Lcom/google/android/libraries/places/internal/zzbge;

.field private zzj:J

.field private zzk:Z

.field private zzl:I

.field private zzm:I

.field private zzn:Z

.field private volatile zzo:Z

.field private zzp:I


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/places/internal/zzbmm;Lcom/google/android/libraries/places/internal/zzazo;ILcom/google/android/libraries/places/internal/zzbqo;Lcom/google/android/libraries/places/internal/zzbqz;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/libraries/places/internal/zzbmq;->zzp:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/google/android/libraries/places/internal/zzbmq;->zzf:I

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbge;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzbge;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbmq;->zzi:Lcom/google/android/libraries/places/internal/zzbge;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbmq;->zzk:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/libraries/places/internal/zzbmq;->zzl:I

    iput-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbmq;->zzn:Z

    iput-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbmq;->zzo:Z

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbmq;->zza:Lcom/google/android/libraries/places/internal/zzbmm;

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbmq;->zze:Lcom/google/android/libraries/places/internal/zzazo;

    iput p3, p0, Lcom/google/android/libraries/places/internal/zzbmq;->zzb:I

    iput-object p4, p0, Lcom/google/android/libraries/places/internal/zzbmq;->zzc:Lcom/google/android/libraries/places/internal/zzbqo;

    iput-object p5, p0, Lcom/google/android/libraries/places/internal/zzbmq;->zzd:Lcom/google/android/libraries/places/internal/zzbqz;

    return-void
.end method

.method private final zzh()V
    .locals 12

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/google/android/libraries/places/internal/zzbmq;->zzk:Z

    if-eqz v3, :cond_0

    return-void

    :cond_0
    iput-boolean v2, p0, Lcom/google/android/libraries/places/internal/zzbmq;->zzk:Z

    :goto_0
    :try_start_0
    iget-wide v3, p0, Lcom/google/android/libraries/places/internal/zzbmq;->zzj:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_f

    :try_start_1
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbmq;->zzh:Lcom/google/android/libraries/places/internal/zzbge;

    if-nez v3, :cond_1

    new-instance v3, Lcom/google/android/libraries/places/internal/zzbge;

    invoke-direct {v3}, Lcom/google/android/libraries/places/internal/zzbge;-><init>()V

    iput-object v3, p0, Lcom/google/android/libraries/places/internal/zzbmq;->zzh:Lcom/google/android/libraries/places/internal/zzbge;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    move v3, v1

    goto :goto_1

    :catchall_0
    move-exception v2

    goto/16 :goto_5

    :goto_1
    :try_start_2
    iget v4, p0, Lcom/google/android/libraries/places/internal/zzbmq;->zzf:I

    iget-object v5, p0, Lcom/google/android/libraries/places/internal/zzbmq;->zzh:Lcom/google/android/libraries/places/internal/zzbge;

    invoke-virtual {v5}, Lcom/google/android/libraries/places/internal/zzbge;->zzf()I

    move-result v5

    sub-int/2addr v4, v5

    if-lez v4, :cond_3

    iget-object v5, p0, Lcom/google/android/libraries/places/internal/zzbmq;->zzi:Lcom/google/android/libraries/places/internal/zzbge;

    invoke-virtual {v5}, Lcom/google/android/libraries/places/internal/zzbge;->zzf()I

    move-result v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-nez v5, :cond_2

    if-lez v3, :cond_f

    :try_start_3
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbmq;->zza:Lcom/google/android/libraries/places/internal/zzbmm;

    invoke-interface {v2, v3}, Lcom/google/android/libraries/places/internal/zzbmm;->zzE(I)V

    iget v2, p0, Lcom/google/android/libraries/places/internal/zzbmq;->zzp:I

    if-ne v2, v0, :cond_f

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbmq;->zzc:Lcom/google/android/libraries/places/internal/zzbqo;

    int-to-long v4, v3

    invoke-virtual {v0, v4, v5}, Lcom/google/android/libraries/places/internal/zzbqo;->zzh(J)V

    iget v0, p0, Lcom/google/android/libraries/places/internal/zzbmq;->zzm:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/google/android/libraries/places/internal/zzbmq;->zzm:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_7

    :catchall_1
    move-exception v0

    goto/16 :goto_8

    :cond_2
    :try_start_4
    iget-object v5, p0, Lcom/google/android/libraries/places/internal/zzbmq;->zzi:Lcom/google/android/libraries/places/internal/zzbge;

    invoke-virtual {v5}, Lcom/google/android/libraries/places/internal/zzbge;->zzf()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v5, p0, Lcom/google/android/libraries/places/internal/zzbmq;->zzh:Lcom/google/android/libraries/places/internal/zzbge;

    iget-object v6, p0, Lcom/google/android/libraries/places/internal/zzbmq;->zzi:Lcom/google/android/libraries/places/internal/zzbge;

    invoke-virtual {v6, v4}, Lcom/google/android/libraries/places/internal/zzbge;->zzg(I)Lcom/google/android/libraries/places/internal/zzbnv;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/google/android/libraries/places/internal/zzbge;->zzh(Lcom/google/android/libraries/places/internal/zzbnv;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v2

    goto/16 :goto_6

    :cond_3
    if-lez v3, :cond_4

    :try_start_5
    iget-object v4, p0, Lcom/google/android/libraries/places/internal/zzbmq;->zza:Lcom/google/android/libraries/places/internal/zzbmm;

    invoke-interface {v4, v3}, Lcom/google/android/libraries/places/internal/zzbmm;->zzE(I)V

    iget v4, p0, Lcom/google/android/libraries/places/internal/zzbmq;->zzp:I

    if-ne v4, v0, :cond_4

    iget-object v4, p0, Lcom/google/android/libraries/places/internal/zzbmq;->zzc:Lcom/google/android/libraries/places/internal/zzbqo;

    int-to-long v5, v3

    invoke-virtual {v4, v5, v6}, Lcom/google/android/libraries/places/internal/zzbqo;->zzh(J)V

    iget v4, p0, Lcom/google/android/libraries/places/internal/zzbmq;->zzm:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/google/android/libraries/places/internal/zzbmq;->zzm:I

    :cond_4
    iget v3, p0, Lcom/google/android/libraries/places/internal/zzbmq;->zzp:I

    add-int/lit8 v4, v3, -0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_d

    if-eqz v4, :cond_9

    if-eq v4, v2, :cond_6

    new-instance v0, Ljava/lang/AssertionError;

    if-eq v3, v2, :cond_5

    const-string v2, "BODY"

    goto :goto_2

    :cond_5
    const-string v2, "HEADER"

    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_6
    iget-object v6, p0, Lcom/google/android/libraries/places/internal/zzbmq;->zzc:Lcom/google/android/libraries/places/internal/zzbqo;

    iget v7, p0, Lcom/google/android/libraries/places/internal/zzbmq;->zzl:I

    iget v3, p0, Lcom/google/android/libraries/places/internal/zzbmq;->zzm:I

    int-to-long v8, v3

    const-wide/16 v10, -0x1

    invoke-virtual/range {v6 .. v11}, Lcom/google/android/libraries/places/internal/zzbqo;->zzf(IJJ)V

    iput v1, p0, Lcom/google/android/libraries/places/internal/zzbmq;->zzm:I

    iget-boolean v3, p0, Lcom/google/android/libraries/places/internal/zzbmq;->zzg:Z

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbmq;->zze:Lcom/google/android/libraries/places/internal/zzazo;

    sget-object v4, Lcom/google/android/libraries/places/internal/zzaza;->zza:Lcom/google/android/libraries/places/internal/zzazb;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eq v3, v4, :cond_7

    :try_start_6
    iget-object v4, p0, Lcom/google/android/libraries/places/internal/zzbmq;->zzh:Lcom/google/android/libraries/places/internal/zzbge;

    new-instance v6, Lcom/google/android/libraries/places/internal/zzbnw;

    invoke-direct {v6, v4}, Lcom/google/android/libraries/places/internal/zzbnw;-><init>(Lcom/google/android/libraries/places/internal/zzbnv;)V

    invoke-interface {v3, v6}, Lcom/google/android/libraries/places/internal/zzazo;->zza(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v3

    new-instance v4, Lcom/google/android/libraries/places/internal/zzbmp;

    iget v6, p0, Lcom/google/android/libraries/places/internal/zzbmq;->zzb:I

    iget-object v7, p0, Lcom/google/android/libraries/places/internal/zzbmq;->zzc:Lcom/google/android/libraries/places/internal/zzbqo;

    invoke-direct {v4, v3, v6, v7}, Lcom/google/android/libraries/places/internal/zzbmp;-><init>(Ljava/io/InputStream;ILcom/google/android/libraries/places/internal/zzbqo;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_7
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_7
    sget-object v0, Lcom/google/android/libraries/places/internal/zzbdo;->zzo:Lcom/google/android/libraries/places/internal/zzbdo;

    const-string v2, "Can\'t decode compressed gRPC message as compression not configured"

    invoke-virtual {v0, v2}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object v0

    new-instance v2, Lcom/google/android/libraries/places/internal/zzbdq;

    invoke-direct {v2, v0, v5}, Lcom/google/android/libraries/places/internal/zzbdq;-><init>(Lcom/google/android/libraries/places/internal/zzbdo;Lcom/google/android/libraries/places/internal/zzbcf;)V

    throw v2

    :cond_8
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbmq;->zzc:Lcom/google/android/libraries/places/internal/zzbqo;

    iget-object v4, p0, Lcom/google/android/libraries/places/internal/zzbmq;->zzh:Lcom/google/android/libraries/places/internal/zzbge;

    invoke-virtual {v4}, Lcom/google/android/libraries/places/internal/zzbge;->zzf()I

    move-result v4

    int-to-long v6, v4

    invoke-virtual {v3, v6, v7}, Lcom/google/android/libraries/places/internal/zzbqo;->zzg(J)V

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbmq;->zzh:Lcom/google/android/libraries/places/internal/zzbge;

    new-instance v4, Lcom/google/android/libraries/places/internal/zzbnw;

    invoke-direct {v4, v3}, Lcom/google/android/libraries/places/internal/zzbnw;-><init>(Lcom/google/android/libraries/places/internal/zzbnv;)V

    :goto_3
    iput-object v5, p0, Lcom/google/android/libraries/places/internal/zzbmq;->zzh:Lcom/google/android/libraries/places/internal/zzbge;

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbmq;->zza:Lcom/google/android/libraries/places/internal/zzbmm;

    new-instance v6, Lcom/google/android/libraries/places/internal/zzbmo;

    invoke-direct {v6, v4, v5}, Lcom/google/android/libraries/places/internal/zzbmo;-><init>(Ljava/io/InputStream;Lcom/google/android/libraries/places/internal/zzbmn;)V

    invoke-interface {v3, v6}, Lcom/google/android/libraries/places/internal/zzbmm;->zzr(Lcom/google/android/libraries/places/internal/zzbqq;)V

    iput v2, p0, Lcom/google/android/libraries/places/internal/zzbmq;->zzp:I

    const/4 v3, 0x5

    iput v3, p0, Lcom/google/android/libraries/places/internal/zzbmq;->zzf:I

    iget-wide v3, p0, Lcom/google/android/libraries/places/internal/zzbmq;->zzj:J

    const-wide/16 v5, -0x1

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/google/android/libraries/places/internal/zzbmq;->zzj:J

    goto/16 :goto_0

    :cond_9
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbmq;->zzh:Lcom/google/android/libraries/places/internal/zzbge;

    invoke-virtual {v3}, Lcom/google/android/libraries/places/internal/zzbge;->zze()I

    move-result v3

    and-int/lit16 v4, v3, 0xfe

    if-nez v4, :cond_c

    and-int/2addr v3, v2

    if-eq v2, v3, :cond_a

    move v3, v1

    goto :goto_4

    :cond_a
    move v3, v2

    :goto_4
    iput-boolean v3, p0, Lcom/google/android/libraries/places/internal/zzbmq;->zzg:Z

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbmq;->zzh:Lcom/google/android/libraries/places/internal/zzbge;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/google/android/libraries/places/internal/zzbeg;->zza(I)V

    invoke-interface {v3}, Lcom/google/android/libraries/places/internal/zzbnv;->zze()I

    move-result v4

    invoke-interface {v3}, Lcom/google/android/libraries/places/internal/zzbnv;->zze()I

    move-result v6

    invoke-interface {v3}, Lcom/google/android/libraries/places/internal/zzbnv;->zze()I

    move-result v7

    invoke-interface {v3}, Lcom/google/android/libraries/places/internal/zzbnv;->zze()I

    move-result v3

    shl-int/lit8 v4, v4, 0x18

    shl-int/lit8 v6, v6, 0x10

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v4, v6

    or-int/2addr v4, v7

    or-int/2addr v3, v4

    iput v3, p0, Lcom/google/android/libraries/places/internal/zzbmq;->zzf:I

    if-ltz v3, :cond_b

    iget v4, p0, Lcom/google/android/libraries/places/internal/zzbmq;->zzb:I

    if-gt v3, v4, :cond_b

    iget v3, p0, Lcom/google/android/libraries/places/internal/zzbmq;->zzl:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/google/android/libraries/places/internal/zzbmq;->zzl:I

    iget-object v4, p0, Lcom/google/android/libraries/places/internal/zzbmq;->zzc:Lcom/google/android/libraries/places/internal/zzbqo;

    invoke-virtual {v4, v3}, Lcom/google/android/libraries/places/internal/zzbqo;->zze(I)V

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbmq;->zzd:Lcom/google/android/libraries/places/internal/zzbqz;

    invoke-virtual {v3}, Lcom/google/android/libraries/places/internal/zzbqz;->zzc()V

    iput v0, p0, Lcom/google/android/libraries/places/internal/zzbmq;->zzp:I

    goto/16 :goto_0

    :cond_b
    sget-object v3, Lcom/google/android/libraries/places/internal/zzbdo;->zzj:Lcom/google/android/libraries/places/internal/zzbdo;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "gRPC message exceeds maximum size %d: %d"

    iget v7, p0, Lcom/google/android/libraries/places/internal/zzbmq;->zzb:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v8, p0, Lcom/google/android/libraries/places/internal/zzbmq;->zzf:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v7, v0, v1

    aput-object v8, v0, v2

    invoke-static {v4, v6, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object v0

    new-instance v2, Lcom/google/android/libraries/places/internal/zzbdq;

    invoke-direct {v2, v0, v5}, Lcom/google/android/libraries/places/internal/zzbdq;-><init>(Lcom/google/android/libraries/places/internal/zzbdo;Lcom/google/android/libraries/places/internal/zzbcf;)V

    throw v2

    :cond_c
    sget-object v0, Lcom/google/android/libraries/places/internal/zzbdo;->zzo:Lcom/google/android/libraries/places/internal/zzbdo;

    const-string v2, "gRPC frame header malformed: reserved bits not zero"

    invoke-virtual {v0, v2}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object v0

    new-instance v2, Lcom/google/android/libraries/places/internal/zzbdq;

    invoke-direct {v2, v0, v5}, Lcom/google/android/libraries/places/internal/zzbdq;-><init>(Lcom/google/android/libraries/places/internal/zzbdo;Lcom/google/android/libraries/places/internal/zzbcf;)V

    throw v2

    :cond_d
    throw v5

    :goto_5
    move v3, v1

    :goto_6
    if-lez v3, :cond_e

    iget-object v4, p0, Lcom/google/android/libraries/places/internal/zzbmq;->zza:Lcom/google/android/libraries/places/internal/zzbmm;

    invoke-interface {v4, v3}, Lcom/google/android/libraries/places/internal/zzbmm;->zzE(I)V

    iget v4, p0, Lcom/google/android/libraries/places/internal/zzbmq;->zzp:I

    if-ne v4, v0, :cond_e

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbmq;->zzc:Lcom/google/android/libraries/places/internal/zzbqo;

    int-to-long v4, v3

    invoke-virtual {v0, v4, v5}, Lcom/google/android/libraries/places/internal/zzbqo;->zzh(J)V

    iget v0, p0, Lcom/google/android/libraries/places/internal/zzbmq;->zzm:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/google/android/libraries/places/internal/zzbmq;->zzm:I

    :cond_e
    throw v2

    :cond_f
    :goto_7
    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbmq;->zzn:Z

    if-eqz v0, :cond_10

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzbmq;->zzi()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbmq;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_10
    iput-boolean v1, p0, Lcom/google/android/libraries/places/internal/zzbmq;->zzk:Z

    return-void

    :goto_8
    iput-boolean v1, p0, Lcom/google/android/libraries/places/internal/zzbmq;->zzk:Z

    throw v0
.end method

.method private final zzi()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbmq;->zzi:Lcom/google/android/libraries/places/internal/zzbge;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbge;->zzf()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final close()V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbmq;->zzg()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbmq;->zzh:Lcom/google/android/libraries/places/internal/zzbge;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbge;->zzf()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbmq;->zzi:Lcom/google/android/libraries/places/internal/zzbge;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/google/android/libraries/places/internal/zzbeg;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbmq;->zzh:Lcom/google/android/libraries/places/internal/zzbge;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/google/android/libraries/places/internal/zzbeg;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbmq;->zzi:Lcom/google/android/libraries/places/internal/zzbge;

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbmq;->zzh:Lcom/google/android/libraries/places/internal/zzbge;

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbmq;->zza:Lcom/google/android/libraries/places/internal/zzbmm;

    invoke-interface {v0, v1}, Lcom/google/android/libraries/places/internal/zzbmm;->zze(Z)V

    return-void

    :goto_1
    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbmq;->zzi:Lcom/google/android/libraries/places/internal/zzbge;

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbmq;->zzh:Lcom/google/android/libraries/places/internal/zzbge;

    throw v1
.end method

.method public final zza()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbmq;->zzg()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzbmq;->zzi()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbmq;->close()V

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbmq;->zzn:Z

    return-void
.end method

.method public final zzb(Lcom/google/android/libraries/places/internal/zzbnv;)V
    .locals 3

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbmq;->zzg()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/libraries/places/internal/zzbmq;->zzn:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbmq;->zzi:Lcom/google/android/libraries/places/internal/zzbge;

    invoke-virtual {v1, p1}, Lcom/google/android/libraries/places/internal/zzbge;->zzh(Lcom/google/android/libraries/places/internal/zzbnv;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzbmq;->zzh()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    move v2, v1

    move-object v1, v0

    move v0, v2

    goto :goto_1

    :catchall_1
    move-exception v1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-interface {p1}, Lcom/google/android/libraries/places/internal/zzbnv;->close()V

    return-void

    :goto_1
    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcom/google/android/libraries/places/internal/zzbnv;->close()V

    :cond_2
    throw v1
.end method

.method public final zzc(I)V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbmq;->zzg()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, Lcom/google/android/libraries/places/internal/zzbmq;->zzj:J

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/libraries/places/internal/zzbmq;->zzj:J

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzbmq;->zzh()V

    return-void
.end method

.method public final zzd(Lcom/google/android/libraries/places/internal/zzazo;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbmq;->zze:Lcom/google/android/libraries/places/internal/zzazo;

    return-void
.end method

.method public final zze(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzbmq;->zzb:I

    return-void
.end method

.method final zzf(Lcom/google/android/libraries/places/internal/zzbmm;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbmq;->zza:Lcom/google/android/libraries/places/internal/zzbmm;

    return-void
.end method

.method public final zzg()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbmq;->zzi:Lcom/google/android/libraries/places/internal/zzbge;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
