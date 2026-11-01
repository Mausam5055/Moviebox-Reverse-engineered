.class final Lcom/google/android/libraries/places/internal/zzbtz;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzbtr;


# instance fields
.field final zza:Lcom/google/android/libraries/places/internal/zzbtu;

.field private final zzb:Lcom/google/android/libraries/places/internal/zzbwd;

.field private final zzc:Lcom/google/android/libraries/places/internal/zzbtx;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzbwd;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbtz;->zzb:Lcom/google/android/libraries/places/internal/zzbwd;

    new-instance p2, Lcom/google/android/libraries/places/internal/zzbtx;

    invoke-direct {p2, p1}, Lcom/google/android/libraries/places/internal/zzbtx;-><init>(Lcom/google/android/libraries/places/internal/zzbwd;)V

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbtz;->zzc:Lcom/google/android/libraries/places/internal/zzbtx;

    new-instance p1, Lcom/google/android/libraries/places/internal/zzbtu;

    const/16 p3, 0x1000

    invoke-direct {p1, p3, p3, p2}, Lcom/google/android/libraries/places/internal/zzbtu;-><init>(IILcom/google/android/libraries/places/internal/zzbws;)V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbtz;->zza:Lcom/google/android/libraries/places/internal/zzbtu;

    return-void
.end method

.method private final zzb(ISBI)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbtz;->zzc:Lcom/google/android/libraries/places/internal/zzbtx;

    iput p1, v0, Lcom/google/android/libraries/places/internal/zzbtx;->zzd:I

    iput p1, v0, Lcom/google/android/libraries/places/internal/zzbtx;->zza:I

    iput-short p2, v0, Lcom/google/android/libraries/places/internal/zzbtx;->zze:S

    iput-byte p3, v0, Lcom/google/android/libraries/places/internal/zzbtx;->zzb:B

    iput p4, v0, Lcom/google/android/libraries/places/internal/zzbtx;->zzc:I

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbtz;->zza:Lcom/google/android/libraries/places/internal/zzbtu;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbtu;->zze()V

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbtz;->zza:Lcom/google/android/libraries/places/internal/zzbtu;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbtu;->zzb()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private final zzc(Lcom/google/android/libraries/places/internal/zzbtq;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbtz;->zzb:Lcom/google/android/libraries/places/internal/zzbwd;

    invoke-interface {p1}, Lcom/google/android/libraries/places/internal/zzbwd;->zze()I

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbtz;->zzb:Lcom/google/android/libraries/places/internal/zzbwd;

    invoke-interface {p1}, Lcom/google/android/libraries/places/internal/zzbwd;->zzc()B

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbtz;->zzb:Lcom/google/android/libraries/places/internal/zzbwd;

    invoke-interface {v0}, Ljava/nio/channels/Channel;->close()V

    return-void
.end method

.method public final zza(Lcom/google/android/libraries/places/internal/zzbtq;)Z
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v8, 0x1

    :try_start_0
    iget-object v4, v0, Lcom/google/android/libraries/places/internal/zzbtz;->zzb:Lcom/google/android/libraries/places/internal/zzbwd;

    const-wide/16 v5, 0x9

    invoke-interface {v4, v5, v6}, Lcom/google/android/libraries/places/internal/zzbwd;->zzD(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v4, v0, Lcom/google/android/libraries/places/internal/zzbtz;->zzb:Lcom/google/android/libraries/places/internal/zzbwd;

    invoke-static {v4}, Lcom/google/android/libraries/places/internal/zzbub;->zzb(Lcom/google/android/libraries/places/internal/zzbwd;)I

    move-result v6

    const/16 v4, 0x4000

    if-gt v6, v4, :cond_22

    iget-object v5, v0, Lcom/google/android/libraries/places/internal/zzbtz;->zzb:Lcom/google/android/libraries/places/internal/zzbwd;

    invoke-interface {v5}, Lcom/google/android/libraries/places/internal/zzbwd;->zzc()B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    iget-object v7, v0, Lcom/google/android/libraries/places/internal/zzbtz;->zzb:Lcom/google/android/libraries/places/internal/zzbwd;

    invoke-interface {v7}, Lcom/google/android/libraries/places/internal/zzbwd;->zzc()B

    move-result v7

    and-int/lit16 v7, v7, 0xff

    iget-object v9, v0, Lcom/google/android/libraries/places/internal/zzbtz;->zzb:Lcom/google/android/libraries/places/internal/zzbwd;

    invoke-interface {v9}, Lcom/google/android/libraries/places/internal/zzbwd;->zze()I

    move-result v9

    int-to-byte v5, v5

    int-to-byte v7, v7

    const v10, 0x7fffffff

    and-int/2addr v9, v10

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbub;->zzg()Ljava/util/logging/Logger;

    move-result-object v11

    sget-object v12, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v11, v12}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbub;->zzg()Ljava/util/logging/Logger;

    move-result-object v11

    invoke-static {v8, v9, v6, v5, v7}, Lcom/google/android/libraries/places/internal/zzbty;->zza(ZIIBB)Ljava/lang/String;

    move-result-object v13

    const-string v14, "io.grpc.okhttp.internal.framed.Http2$Reader"

    const-string v15, "nextFrame"

    invoke-virtual {v11, v12, v14, v15, v13}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v11, 0x4

    packed-switch v5, :pswitch_data_0

    iget-object v1, v0, Lcom/google/android/libraries/places/internal/zzbtz;->zzb:Lcom/google/android/libraries/places/internal/zzbwd;

    int-to-long v2, v6

    invoke-interface {v1, v2, v3}, Lcom/google/android/libraries/places/internal/zzbwd;->zzF(J)V

    goto/16 :goto_8

    :pswitch_0
    if-ne v6, v11, :cond_2

    iget-object v2, v0, Lcom/google/android/libraries/places/internal/zzbtz;->zzb:Lcom/google/android/libraries/places/internal/zzbwd;

    invoke-interface {v2}, Lcom/google/android/libraries/places/internal/zzbwd;->zze()I

    move-result v2

    int-to-long v4, v2

    const-wide/32 v6, 0x7fffffff

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-eqz v2, :cond_1

    invoke-interface {v1, v9, v4, v5}, Lcom/google/android/libraries/places/internal/zzbtq;->zzg(IJ)V

    goto/16 :goto_8

    :cond_1
    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "windowSizeIncrement was 0"

    invoke-static {v2, v1}, Lcom/google/android/libraries/places/internal/zzbub;->zze(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    :cond_2
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/Object;

    aput-object v1, v2, v3

    const-string v1, "TYPE_WINDOW_UPDATE length !=4: %s"

    invoke-static {v1, v2}, Lcom/google/android/libraries/places/internal/zzbub;->zze(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    :pswitch_1
    if-lt v6, v2, :cond_6

    if-nez v9, :cond_5

    iget-object v2, v0, Lcom/google/android/libraries/places/internal/zzbtz;->zzb:Lcom/google/android/libraries/places/internal/zzbwd;

    add-int/lit8 v6, v6, -0x8

    invoke-interface {v2}, Lcom/google/android/libraries/places/internal/zzbwd;->zze()I

    move-result v4

    invoke-interface {v2}, Lcom/google/android/libraries/places/internal/zzbwd;->zze()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzbtp;->zza(I)Lcom/google/android/libraries/places/internal/zzbtp;

    move-result-object v5

    if-eqz v5, :cond_4

    sget-object v2, Lcom/google/android/libraries/places/internal/zzbwf;->zzb:Lcom/google/android/libraries/places/internal/zzbwf;

    if-lez v6, :cond_3

    iget-object v2, v0, Lcom/google/android/libraries/places/internal/zzbtz;->zzb:Lcom/google/android/libraries/places/internal/zzbwd;

    int-to-long v6, v6

    invoke-interface {v2, v6, v7}, Lcom/google/android/libraries/places/internal/zzbwd;->zzy(J)Lcom/google/android/libraries/places/internal/zzbwf;

    move-result-object v2

    :cond_3
    invoke-interface {v1, v4, v5, v2}, Lcom/google/android/libraries/places/internal/zzbtq;->zzb(ILcom/google/android/libraries/places/internal/zzbtp;Lcom/google/android/libraries/places/internal/zzbwf;)V

    goto/16 :goto_8

    :cond_4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/Object;

    aput-object v1, v2, v3

    const-string v1, "TYPE_GOAWAY unexpected error code: %d"

    invoke-static {v1, v2}, Lcom/google/android/libraries/places/internal/zzbub;->zze(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    :cond_5
    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "TYPE_GOAWAY streamId != 0"

    invoke-static {v2, v1}, Lcom/google/android/libraries/places/internal/zzbub;->zze(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    :cond_6
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/Object;

    aput-object v1, v2, v3

    const-string v1, "TYPE_GOAWAY length < 8: %s"

    invoke-static {v1, v2}, Lcom/google/android/libraries/places/internal/zzbub;->zze(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    :pswitch_2
    if-ne v6, v2, :cond_9

    if-nez v9, :cond_8

    and-int/lit8 v2, v7, 0x1

    if-eq v8, v2, :cond_7

    goto :goto_0

    :cond_7
    move v3, v8

    :goto_0
    iget-object v2, v0, Lcom/google/android/libraries/places/internal/zzbtz;->zzb:Lcom/google/android/libraries/places/internal/zzbwd;

    invoke-interface {v2}, Lcom/google/android/libraries/places/internal/zzbwd;->zze()I

    move-result v4

    invoke-interface {v2}, Lcom/google/android/libraries/places/internal/zzbwd;->zze()I

    move-result v2

    invoke-interface {v1, v3, v4, v2}, Lcom/google/android/libraries/places/internal/zzbtq;->zzc(ZII)V

    goto/16 :goto_8

    :cond_8
    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "TYPE_PING streamId != 0"

    invoke-static {v2, v1}, Lcom/google/android/libraries/places/internal/zzbub;->zze(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    :cond_9
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/Object;

    aput-object v1, v2, v3

    const-string v1, "TYPE_PING length != 8: %s"

    invoke-static {v1, v2}, Lcom/google/android/libraries/places/internal/zzbub;->zze(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    :pswitch_3
    if-eqz v9, :cond_b

    and-int/2addr v2, v7

    if-eqz v2, :cond_a

    iget-object v2, v0, Lcom/google/android/libraries/places/internal/zzbtz;->zzb:Lcom/google/android/libraries/places/internal/zzbwd;

    invoke-interface {v2}, Lcom/google/android/libraries/places/internal/zzbwd;->zzc()B

    move-result v2

    and-int/lit16 v3, v2, 0xff

    :cond_a
    iget-object v2, v0, Lcom/google/android/libraries/places/internal/zzbtz;->zzb:Lcom/google/android/libraries/places/internal/zzbwd;

    invoke-interface {v2}, Lcom/google/android/libraries/places/internal/zzbwd;->zze()I

    move-result v2

    and-int/2addr v2, v10

    add-int/lit8 v6, v6, -0x4

    int-to-short v3, v3

    invoke-static {v6, v7, v3}, Lcom/google/android/libraries/places/internal/zzbub;->zza(IBS)I

    move-result v4

    invoke-direct {v0, v4, v3, v7, v9}, Lcom/google/android/libraries/places/internal/zzbtz;->zzb(ISBI)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v9, v2, v3}, Lcom/google/android/libraries/places/internal/zzbtq;->zzd(IILjava/util/List;)V

    goto/16 :goto_8

    :cond_b
    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0"

    invoke-static {v2, v1}, Lcom/google/android/libraries/places/internal/zzbub;->zze(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    :pswitch_4
    if-nez v9, :cond_14

    and-int/lit8 v2, v7, 0x1

    if-eqz v2, :cond_d

    if-nez v6, :cond_c

    goto/16 :goto_8

    :cond_c
    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "FRAME_SIZE_ERROR ack frame should be empty!"

    invoke-static {v2, v1}, Lcom/google/android/libraries/places/internal/zzbub;->zze(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    :cond_d
    rem-int/lit8 v2, v6, 0x6

    if-nez v2, :cond_13

    new-instance v2, Lcom/google/android/libraries/places/internal/zzbue;

    invoke-direct {v2}, Lcom/google/android/libraries/places/internal/zzbue;-><init>()V

    move v5, v3

    :goto_1
    if-ge v5, v6, :cond_12

    iget-object v7, v0, Lcom/google/android/libraries/places/internal/zzbtz;->zzb:Lcom/google/android/libraries/places/internal/zzbwd;

    move-object v9, v7

    check-cast v9, Lcom/google/android/libraries/places/internal/zzbwl;

    const-wide/16 v12, 0x2

    invoke-virtual {v9, v12, v13}, Lcom/google/android/libraries/places/internal/zzbwl;->zzD(J)V

    iget-object v9, v9, Lcom/google/android/libraries/places/internal/zzbwl;->zzb:Lcom/google/android/libraries/places/internal/zzbwb;

    invoke-virtual {v9}, Lcom/google/android/libraries/places/internal/zzbwb;->zzC()S

    move-result v9

    invoke-interface {v7}, Lcom/google/android/libraries/places/internal/zzbwd;->zze()I

    move-result v7

    packed-switch v9, :pswitch_data_1

    goto :goto_3

    :pswitch_5
    if-lt v7, v4, :cond_e

    const v10, 0xffffff

    if-gt v7, v10, :cond_e

    goto :goto_2

    :cond_e
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/Object;

    aput-object v1, v2, v3

    const-string v1, "PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: %s"

    invoke-static {v1, v2}, Lcom/google/android/libraries/places/internal/zzbub;->zze(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    :pswitch_6
    if-ltz v7, :cond_f

    const/4 v9, 0x7

    goto :goto_2

    :cond_f
    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1"

    invoke-static {v2, v1}, Lcom/google/android/libraries/places/internal/zzbub;->zze(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    :pswitch_7
    move v9, v11

    goto :goto_2

    :pswitch_8
    if-eqz v7, :cond_11

    if-ne v7, v8, :cond_10

    goto :goto_2

    :cond_10
    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1"

    invoke-static {v2, v1}, Lcom/google/android/libraries/places/internal/zzbub;->zze(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    :cond_11
    :goto_2
    :pswitch_9
    invoke-virtual {v2, v9, v3, v7}, Lcom/google/android/libraries/places/internal/zzbue;->zze(III)Lcom/google/android/libraries/places/internal/zzbue;

    :goto_3
    add-int/lit8 v5, v5, 0x6

    goto :goto_1

    :cond_12
    invoke-interface {v1, v3, v2}, Lcom/google/android/libraries/places/internal/zzbtq;->zzf(ZLcom/google/android/libraries/places/internal/zzbue;)V

    invoke-virtual {v2}, Lcom/google/android/libraries/places/internal/zzbue;->zzb()I

    move-result v1

    if-ltz v1, :cond_20

    iget-object v1, v0, Lcom/google/android/libraries/places/internal/zzbtz;->zza:Lcom/google/android/libraries/places/internal/zzbtu;

    invoke-virtual {v2}, Lcom/google/android/libraries/places/internal/zzbue;->zzb()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/libraries/places/internal/zzbtu;->zzd(I)V

    goto/16 :goto_8

    :cond_13
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/Object;

    aput-object v1, v2, v3

    const-string v1, "TYPE_SETTINGS length %% 6 != 0: %s"

    invoke-static {v1, v2}, Lcom/google/android/libraries/places/internal/zzbub;->zze(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    :cond_14
    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "TYPE_SETTINGS streamId != 0"

    invoke-static {v2, v1}, Lcom/google/android/libraries/places/internal/zzbub;->zze(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    :pswitch_a
    if-ne v6, v11, :cond_17

    if-eqz v9, :cond_16

    iget-object v2, v0, Lcom/google/android/libraries/places/internal/zzbtz;->zzb:Lcom/google/android/libraries/places/internal/zzbwd;

    invoke-interface {v2}, Lcom/google/android/libraries/places/internal/zzbwd;->zze()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzbtp;->zza(I)Lcom/google/android/libraries/places/internal/zzbtp;

    move-result-object v4

    if-eqz v4, :cond_15

    invoke-interface {v1, v9, v4}, Lcom/google/android/libraries/places/internal/zzbtq;->zze(ILcom/google/android/libraries/places/internal/zzbtp;)V

    goto/16 :goto_8

    :cond_15
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/Object;

    aput-object v1, v2, v3

    const-string v1, "TYPE_RST_STREAM unexpected error code: %d"

    invoke-static {v1, v2}, Lcom/google/android/libraries/places/internal/zzbub;->zze(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    :cond_16
    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "TYPE_RST_STREAM streamId == 0"

    invoke-static {v2, v1}, Lcom/google/android/libraries/places/internal/zzbub;->zze(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    :cond_17
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/Object;

    aput-object v1, v2, v3

    const-string v1, "TYPE_RST_STREAM length: %d != 4"

    invoke-static {v1, v2}, Lcom/google/android/libraries/places/internal/zzbub;->zze(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    :pswitch_b
    const/4 v2, 0x5

    if-ne v6, v2, :cond_19

    if-eqz v9, :cond_18

    invoke-direct {v0, v1, v9}, Lcom/google/android/libraries/places/internal/zzbtz;->zzc(Lcom/google/android/libraries/places/internal/zzbtq;I)V

    goto/16 :goto_8

    :cond_18
    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "TYPE_PRIORITY streamId == 0"

    invoke-static {v2, v1}, Lcom/google/android/libraries/places/internal/zzbub;->zze(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    :cond_19
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/Object;

    aput-object v1, v2, v3

    const-string v1, "TYPE_PRIORITY length: %d != 5"

    invoke-static {v1, v2}, Lcom/google/android/libraries/places/internal/zzbub;->zze(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    :pswitch_c
    if-eqz v9, :cond_1d

    and-int/2addr v2, v7

    and-int/lit8 v4, v7, 0x20

    and-int/lit8 v5, v7, 0x1

    if-eqz v2, :cond_1a

    iget-object v2, v0, Lcom/google/android/libraries/places/internal/zzbtz;->zzb:Lcom/google/android/libraries/places/internal/zzbwd;

    invoke-interface {v2}, Lcom/google/android/libraries/places/internal/zzbwd;->zzc()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    goto :goto_4

    :cond_1a
    move v2, v3

    :goto_4
    if-eqz v4, :cond_1b

    invoke-direct {v0, v1, v9}, Lcom/google/android/libraries/places/internal/zzbtz;->zzc(Lcom/google/android/libraries/places/internal/zzbtq;I)V

    add-int/lit8 v6, v6, -0x5

    :cond_1b
    int-to-short v2, v2

    if-eq v8, v5, :cond_1c

    goto :goto_5

    :cond_1c
    move v3, v8

    :goto_5
    invoke-static {v6, v7, v2}, Lcom/google/android/libraries/places/internal/zzbub;->zza(IBS)I

    move-result v4

    invoke-direct {v0, v4, v2, v7, v9}, Lcom/google/android/libraries/places/internal/zzbtz;->zzb(ISBI)Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x4

    const/4 v2, 0x0

    const/4 v5, -0x1

    move-object/from16 v1, p1

    move v4, v9

    invoke-interface/range {v1 .. v7}, Lcom/google/android/libraries/places/internal/zzbtq;->zzh(ZZIILjava/util/List;I)V

    goto :goto_8

    :cond_1d
    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "PROTOCOL_ERROR: TYPE_HEADERS streamId == 0"

    invoke-static {v2, v1}, Lcom/google/android/libraries/places/internal/zzbub;->zze(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    :pswitch_d
    and-int/lit8 v4, v7, 0x1

    and-int/lit8 v5, v7, 0x20

    if-nez v5, :cond_21

    and-int/2addr v2, v7

    if-eqz v2, :cond_1e

    iget-object v2, v0, Lcom/google/android/libraries/places/internal/zzbtz;->zzb:Lcom/google/android/libraries/places/internal/zzbwd;

    invoke-interface {v2}, Lcom/google/android/libraries/places/internal/zzbwd;->zzc()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    move v10, v2

    goto :goto_6

    :cond_1e
    move v10, v3

    :goto_6
    if-eq v8, v4, :cond_1f

    move v2, v3

    goto :goto_7

    :cond_1f
    move v2, v8

    :goto_7
    int-to-short v3, v10

    invoke-static {v6, v7, v3}, Lcom/google/android/libraries/places/internal/zzbub;->zza(IBS)I

    move-result v5

    iget-object v4, v0, Lcom/google/android/libraries/places/internal/zzbtz;->zzb:Lcom/google/android/libraries/places/internal/zzbwd;

    move-object/from16 v1, p1

    move v3, v9

    invoke-interface/range {v1 .. v6}, Lcom/google/android/libraries/places/internal/zzbtq;->zza(ZILcom/google/android/libraries/places/internal/zzbwd;II)V

    iget-object v1, v0, Lcom/google/android/libraries/places/internal/zzbtz;->zzb:Lcom/google/android/libraries/places/internal/zzbwd;

    int-to-long v2, v10

    invoke-interface {v1, v2, v3}, Lcom/google/android/libraries/places/internal/zzbwd;->zzF(J)V

    :cond_20
    :goto_8
    return v8

    :cond_21
    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA"

    invoke-static {v2, v1}, Lcom/google/android/libraries/places/internal/zzbub;->zze(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    :cond_22
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/Object;

    aput-object v1, v2, v3

    const-string v1, "FRAME_SIZE_ERROR: %s"

    invoke-static {v1, v2}, Lcom/google/android/libraries/places/internal/zzbub;->zze(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    :catch_0
    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_9
    .end packed-switch
.end method
