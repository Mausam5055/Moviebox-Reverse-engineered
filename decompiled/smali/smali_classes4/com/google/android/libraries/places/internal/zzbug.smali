.class public final Lcom/google/android/libraries/places/internal/zzbug;
.super Ljava/lang/Object;


# instance fields
.field zza:Ljava/lang/String;

.field zzb:Ljava/lang/String;

.field zzc:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/libraries/places/internal/zzbug;->zzc:I

    return-void
.end method

.method private static zzf(Ljava/lang/String;II)Ljava/net/InetAddress;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p2

    const/16 v2, 0x10

    new-array v3, v2, [B

    const/4 v4, 0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    move v7, v4

    move v9, v5

    move v10, v9

    move v8, v6

    :goto_0
    const/4 v11, 0x0

    if-ge v7, v1, :cond_11

    if-ne v8, v2, :cond_0

    return-object v11

    :cond_0
    add-int/lit8 v12, v7, 0x2

    const/16 v13, 0xff

    const/4 v14, 0x2

    if-gt v12, v1, :cond_3

    const-string v15, "::"

    invoke-virtual {v0, v7, v15, v6, v14}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v15

    if-eqz v15, :cond_3

    if-eq v9, v5, :cond_1

    return-object v11

    :cond_1
    add-int/lit8 v8, v8, 0x2

    if-ne v12, v1, :cond_2

    move v9, v8

    goto/16 :goto_9

    :cond_2
    move v9, v8

    move v10, v12

    goto/16 :goto_5

    :cond_3
    if-eqz v8, :cond_4

    const-string v12, ":"

    invoke-virtual {v0, v7, v12, v6, v4}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v12

    if-eqz v12, :cond_5

    add-int/lit8 v7, v7, 0x1

    :cond_4
    move v10, v7

    goto :goto_5

    :cond_5
    const-string v12, "."

    invoke-virtual {v0, v7, v12, v6, v4}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v4

    if-eqz v4, :cond_c

    add-int/lit8 v4, v8, -0x2

    move v7, v4

    :goto_1
    if-ge v10, v1, :cond_b

    if-ne v7, v2, :cond_6

    goto :goto_4

    :cond_6
    if-eq v7, v4, :cond_7

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v14, 0x2e

    if-ne v12, v14, :cond_c

    add-int/lit8 v10, v10, 0x1

    :cond_7
    move v14, v6

    move v12, v10

    :goto_2
    if-ge v12, v1, :cond_a

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v6, 0x30

    if-lt v15, v6, :cond_a

    const/16 v6, 0x39

    if-le v15, v6, :cond_8

    goto :goto_3

    :cond_8
    if-nez v14, :cond_9

    if-ne v10, v12, :cond_c

    const/4 v14, 0x0

    :cond_9
    mul-int/lit8 v14, v14, 0xa

    add-int/2addr v14, v15

    add-int/lit8 v14, v14, -0x30

    if-gt v14, v13, :cond_c

    add-int/lit8 v12, v12, 0x1

    const/4 v6, 0x0

    goto :goto_2

    :cond_a
    :goto_3
    sub-int v6, v12, v10

    if-eqz v6, :cond_c

    add-int/lit8 v6, v7, 0x1

    int-to-byte v10, v14

    aput-byte v10, v3, v7

    move v7, v6

    move v10, v12

    const/4 v6, 0x0

    goto :goto_1

    :cond_b
    add-int/lit8 v0, v8, 0x2

    if-ne v7, v0, :cond_c

    add-int/lit8 v8, v8, 0x2

    goto :goto_9

    :cond_c
    :goto_4
    return-object v11

    :goto_5
    move v7, v10

    const/4 v6, 0x0

    :goto_6
    if-ge v7, v1, :cond_e

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-static {v12}, Lcom/google/android/libraries/places/internal/zzbui;->zza(C)I

    move-result v12

    if-ne v12, v5, :cond_d

    goto :goto_7

    :cond_d
    shl-int/lit8 v6, v6, 0x4

    add-int/lit8 v7, v7, 0x1

    add-int/2addr v6, v12

    goto :goto_6

    :cond_e
    :goto_7
    sub-int v12, v7, v10

    if-eqz v12, :cond_10

    const/4 v15, 0x4

    if-le v12, v15, :cond_f

    goto :goto_8

    :cond_f
    add-int/lit8 v11, v8, 0x1

    ushr-int/lit8 v12, v6, 0x8

    and-int/2addr v12, v13

    int-to-byte v12, v12

    aput-byte v12, v3, v8

    add-int/2addr v8, v14

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v3, v11

    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_10
    :goto_8
    return-object v11

    :cond_11
    :goto_9
    if-eq v8, v2, :cond_13

    if-ne v9, v5, :cond_12

    return-object v11

    :cond_12
    sub-int v0, v8, v9

    rsub-int/lit8 v1, v0, 0x10

    invoke-static {v3, v9, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v2, v8

    add-int/2addr v2, v9

    const/4 v0, 0x0

    invoke-static {v3, v9, v2, v0}, Ljava/util/Arrays;->fill([BIIB)V

    :cond_13
    :try_start_0
    invoke-static {v3}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbug;->zza:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbug;->zzb:Ljava/lang/String;

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbug;->zzb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbug;->zzb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbug;->zza()I

    move-result v1

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbug;->zza:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/libraries/places/internal/zzbui;->zzb(Ljava/lang/String;)I

    move-result v3

    if-eq v1, v3, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final zza()I
    .locals 2

    iget v0, p0, Lcom/google/android/libraries/places/internal/zzbug;->zzc:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbug;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbui;->zzb(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final zzb(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbug;
    .locals 9

    if-eqz p1, :cond_16

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, -0x1

    if-ge v1, v2, :cond_4

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x25

    if-eq v4, v5, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v4, Lcom/google/android/libraries/places/internal/zzbwb;

    invoke-direct {v4}, Lcom/google/android/libraries/places/internal/zzbwb;-><init>()V

    invoke-virtual {v4, p1, v0, v1}, Lcom/google/android/libraries/places/internal/zzbwb;->zzt(Ljava/lang/String;II)Lcom/google/android/libraries/places/internal/zzbwb;

    :goto_1
    if-ge v1, v2, :cond_3

    invoke-virtual {p1, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v6

    if-ne v6, v5, :cond_2

    add-int/lit8 v6, v1, 0x2

    if-ge v6, v2, :cond_1

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lcom/google/android/libraries/places/internal/zzbui;->zza(C)I

    move-result v7

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Lcom/google/android/libraries/places/internal/zzbui;->zza(C)I

    move-result v8

    if-eq v7, v3, :cond_1

    if-eq v8, v3, :cond_1

    shl-int/lit8 v1, v7, 0x4

    add-int/2addr v1, v8

    invoke-virtual {v4, v1}, Lcom/google/android/libraries/places/internal/zzbwb;->zzm(I)Lcom/google/android/libraries/places/internal/zzbwb;

    move v1, v6

    move v6, v5

    goto :goto_2

    :cond_1
    move v6, v5

    :cond_2
    invoke-virtual {v4, v6}, Lcom/google/android/libraries/places/internal/zzbwb;->zzu(I)Lcom/google/android/libraries/places/internal/zzbwb;

    :goto_2
    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    move-result v6

    add-int/2addr v1, v6

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, Lcom/google/android/libraries/places/internal/zzbwb;->zzi()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_4
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_3
    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_f

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v3

    const/4 v5, 0x1

    invoke-static {v1, v5, v2}, Lcom/google/android/libraries/places/internal/zzbug;->zzf(Ljava/lang/String;II)Ljava/net/InetAddress;

    move-result-object v1

    if-nez v1, :cond_5

    goto/16 :goto_9

    :cond_5
    invoke-virtual {v1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    array-length v2, v1

    const/16 v4, 0x10

    if-ne v2, v4, :cond_e

    move v2, v0

    move v5, v2

    :goto_4
    array-length v6, v1

    if-ge v2, v6, :cond_9

    move v6, v2

    :goto_5
    if-ge v6, v4, :cond_6

    aget-byte v7, v1, v6

    if-nez v7, :cond_6

    add-int/lit8 v7, v6, 0x1

    aget-byte v7, v1, v7

    if-nez v7, :cond_6

    add-int/lit8 v6, v6, 0x2

    goto :goto_5

    :cond_6
    sub-int v7, v6, v2

    if-le v7, v5, :cond_7

    move v8, v7

    goto :goto_6

    :cond_7
    move v8, v5

    :goto_6
    if-le v7, v5, :cond_8

    move v3, v2

    :cond_8
    add-int/lit8 v2, v6, 0x2

    move v5, v8

    goto :goto_4

    :cond_9
    new-instance v2, Lcom/google/android/libraries/places/internal/zzbwb;

    invoke-direct {v2}, Lcom/google/android/libraries/places/internal/zzbwb;-><init>()V

    :cond_a
    :goto_7
    array-length v6, v1

    if-ge v0, v6, :cond_d

    const/16 v6, 0x3a

    if-ne v0, v3, :cond_b

    invoke-virtual {v2, v6}, Lcom/google/android/libraries/places/internal/zzbwb;->zzm(I)Lcom/google/android/libraries/places/internal/zzbwb;

    add-int/2addr v0, v5

    if-ne v0, v4, :cond_a

    invoke-virtual {v2, v6}, Lcom/google/android/libraries/places/internal/zzbwb;->zzm(I)Lcom/google/android/libraries/places/internal/zzbwb;

    goto :goto_7

    :cond_b
    if-lez v0, :cond_c

    invoke-virtual {v2, v6}, Lcom/google/android/libraries/places/internal/zzbwb;->zzm(I)Lcom/google/android/libraries/places/internal/zzbwb;

    :cond_c
    aget-byte v6, v1, v0

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v7, v0, 0x1

    aget-byte v7, v1, v7

    shl-int/lit8 v6, v6, 0x8

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v6, v7

    int-to-long v6, v6

    invoke-virtual {v2, v6, v7}, Lcom/google/android/libraries/places/internal/zzbwb;->zzo(J)Lcom/google/android/libraries/places/internal/zzbwb;

    add-int/lit8 v0, v0, 0x2

    goto :goto_7

    :cond_d
    invoke-virtual {v2}, Lcom/google/android/libraries/places/internal/zzbwb;->zzi()Ljava/lang/String;

    move-result-object v4

    goto :goto_9

    :cond_e
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_f
    :try_start_0
    invoke-static {v1}, Ljava/net/IDN;->toASCII(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_10

    goto :goto_9

    :cond_10
    :goto_8
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_13

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v5, 0x1f

    if-le v2, v5, :cond_14

    const/16 v5, 0x7f

    if-lt v2, v5, :cond_11

    goto :goto_9

    :cond_11
    const-string v5, " #%/:?@[\\]"

    invoke-virtual {v5, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v2, v3, :cond_12

    goto :goto_9

    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_13
    move-object v4, v1

    :catch_0
    :cond_14
    :goto_9
    if-eqz v4, :cond_15

    iput-object v4, p0, Lcom/google/android/libraries/places/internal/zzbug;->zzb:Ljava/lang/String;

    return-object p0

    :cond_15
    const-string v0, "unexpected host: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "host == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzc(I)Lcom/google/android/libraries/places/internal/zzbug;
    .locals 3

    if-lez p1, :cond_0

    const v0, 0xffff

    if-gt p1, v0, :cond_0

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzbug;->zzc:I

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected port: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzd(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbug;
    .locals 0

    const-string p1, "https"

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbug;->zza:Ljava/lang/String;

    return-object p0
.end method

.method public final zze()Lcom/google/android/libraries/places/internal/zzbui;
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbug;->zza:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbug;->zzb:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbui;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/libraries/places/internal/zzbui;-><init>(Lcom/google/android/libraries/places/internal/zzbug;Lcom/google/android/libraries/places/internal/zzbuh;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "host == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "scheme == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
