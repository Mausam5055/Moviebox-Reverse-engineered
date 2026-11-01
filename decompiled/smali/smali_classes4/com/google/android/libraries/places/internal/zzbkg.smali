.class public final Lcom/google/android/libraries/places/internal/zzbkg;
.super Ljava/lang/Object;


# static fields
.field private static final zza:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/libraries/places/internal/zzbkg;->zza:J

    return-void
.end method

.method public static zza(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 4

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Boolean;

    return-object v0

    :cond_1
    new-instance v1, Ljava/lang/ClassCastException;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object p1, v2, v0

    const/4 p1, 0x2

    aput-object p0, v2, p1

    const-string p0, "value \'%s\' for key \'%s\' in \'%s\' is not Boolean"

    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static zzb(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Double;
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/lang/Double;

    if-eqz v4, :cond_1

    check-cast v3, Ljava/lang/Double;

    return-object v3

    :cond_1
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_2

    :try_start_0
    move-object p0, v3

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v1

    aput-object p1, v2, v0

    const-string p1, "value \'%s\' for key \'%s\' is not a double"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v1

    aput-object p1, v5, v0

    aput-object p0, v5, v2

    const-string p0, "value \'%s\' for key \'%s\' in \'%s\' is not a number"

    invoke-static {p0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v4, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static zzc(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of v3, p0, Ljava/lang/Double;

    if-eqz v3, :cond_2

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->intValue()I

    move-result p1

    int-to-double v0, p1

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Number expected to be integer: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    instance-of v3, p0, Ljava/lang/String;

    const-string v4, "value \'%s\' for key \'%s\' is not an integer"

    if-eqz v3, :cond_3

    :try_start_0
    move-object v3, p0

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v1

    aput-object p1, v2, v0

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v1

    aput-object p1, v2, v0

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static zzd(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Long;
    .locals 20

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static/range {p0 .. p1}, Lcom/google/android/libraries/places/internal/zzbkg;->zze(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "Invalid duration string: "

    if-nez v3, :cond_16

    :try_start_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, -0x1

    add-int/2addr v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v6, 0x73

    if-ne v3, v6, :cond_16

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v6, 0x2d

    if-ne v3, v6, :cond_1

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    move v3, v1

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_8

    :cond_1
    move v3, v0

    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v5

    invoke-virtual {v2, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    const/16 v8, 0x2e

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-eq v8, v5, :cond_2

    add-int/lit8 v5, v8, 0x1

    invoke-virtual {v6, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    :cond_2
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3

    move v9, v0

    goto :goto_3

    :cond_3
    move v8, v0

    move v9, v8

    :goto_1
    const/16 v10, 0x9

    if-ge v8, v10, :cond_6

    mul-int/lit8 v9, v9, 0xa

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v8, v10, :cond_5

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x30

    if-lt v10, v11, :cond_4

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x39

    if-gt v10, v11, :cond_4

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v10

    add-int/lit8 v10, v10, -0x30

    add-int/2addr v9, v10

    goto :goto_2

    :cond_4
    new-instance v1, Ljava/text/ParseException;

    const-string v2, "Invalid nanoseconds."

    invoke-direct {v1, v2, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_5
    :goto_2
    add-int/2addr v8, v1

    goto :goto_1

    :cond_6
    :goto_3
    const-wide/16 v7, 0x0

    cmp-long v10, v5, v7

    if-ltz v10, :cond_15

    if-eqz v3, :cond_7

    neg-long v5, v5

    neg-int v9, v9

    :cond_7
    int-to-long v2, v9

    :try_start_2
    sget-wide v10, Lcom/google/android/libraries/places/internal/zzbkg;->zza:J

    neg-long v12, v10

    cmp-long v4, v2, v12

    if-lez v4, :cond_8

    cmp-long v4, v2, v10

    if-ltz v4, :cond_b

    :cond_8
    div-long v12, v2, v10

    sget v4, Lcom/google/android/libraries/places/internal/zzajm;->zza:I

    add-long v14, v5, v12

    xor-long v16, v5, v12

    xor-long v18, v5, v14

    const-string v4, "checkedAdd"

    cmp-long v9, v18, v7

    if-ltz v9, :cond_9

    move v9, v1

    goto :goto_4

    :cond_9
    move v9, v0

    :goto_4
    cmp-long v16, v16, v7

    if-gez v16, :cond_a

    move/from16 v16, v1

    goto :goto_5

    :cond_a
    move/from16 v16, v0

    :goto_5
    or-int v9, v16, v9

    if-eqz v9, :cond_14

    rem-long/2addr v2, v10

    long-to-int v9, v2

    move-wide v5, v14

    :cond_b
    cmp-long v2, v5, v7

    if-lez v2, :cond_c

    if-gez v9, :cond_c

    int-to-long v2, v9

    add-long/2addr v2, v10

    const-wide/16 v12, -0x1

    add-long/2addr v5, v12

    long-to-int v9, v2

    :cond_c
    cmp-long v2, v5, v7

    const-wide/16 v3, 0x1

    if-gez v2, :cond_d

    if-lez v9, :cond_d

    int-to-long v12, v9

    sub-long/2addr v12, v10

    add-long/2addr v5, v3

    long-to-int v9, v12

    :cond_d
    const-wide v12, -0x4979cb9e00L

    cmp-long v2, v5, v12

    if-ltz v2, :cond_13

    const-wide v12, 0x4979cb9e00L

    cmp-long v2, v5, v12

    if-gtz v2, :cond_13

    int-to-long v12, v9

    const-wide/32 v14, -0x3b9ac9ff

    cmp-long v2, v12, v14

    if-ltz v2, :cond_13

    cmp-long v2, v12, v10

    if-gez v2, :cond_13

    cmp-long v2, v5, v7

    if-ltz v2, :cond_e

    if-gez v9, :cond_f

    :cond_e
    if-gtz v2, :cond_13

    if-gtz v9, :cond_13

    :cond_f
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v5, v6}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v5
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_0

    add-long v9, v5, v12

    xor-long v11, v5, v12

    xor-long/2addr v5, v9

    cmp-long v2, v5, v7

    if-ltz v2, :cond_10

    move v2, v1

    goto :goto_6

    :cond_10
    move v2, v0

    :goto_6
    cmp-long v5, v11, v7

    if-gez v5, :cond_11

    move v0, v1

    :cond_11
    or-int/2addr v0, v2

    if-eqz v0, :cond_12

    goto :goto_7

    :cond_12
    const/16 v0, 0x3f

    ushr-long v0, v9, v0

    xor-long/2addr v0, v3

    const-wide v2, 0x7fffffffffffffffL

    add-long v9, v0, v2

    :goto_7
    :try_start_3
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_3
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_0

    return-object v0

    :cond_13
    :try_start_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Duration is not valid. See proto definition for valid values. Seconds (%s) must be in range [-315,576,000,000, +315,576,000,000]. Nanos (%s) must be in range [-999,999,999, +999,999,999]. Nanos must have the same sign as seconds"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v4, v6, v0

    aput-object v5, v6, v1

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_14
    new-instance v1, Ljava/lang/ArithmeticException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "overflow: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/text/ParseException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_1
    :try_start_5
    new-instance v1, Ljava/text/ParseException;

    const-string v2, "Duration value is out of range."

    invoke-direct {v1, v2, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_15
    new-instance v1, Ljava/text/ParseException;

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_16
    new-instance v1, Ljava/text/ParseException;

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1
    :try_end_5
    .catch Ljava/text/ParseException; {:try_start_5 .. :try_end_5} :catch_0

    :goto_8
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static zze(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_1
    new-instance v1, Ljava/lang/ClassCastException;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object p1, v2, v0

    const/4 p1, 0x2

    aput-object p0, v2, p1

    const-string p0, "value \'%s\' for key \'%s\' in \'%s\' is not String"

    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static zzf(Ljava/util/List;)Ljava/util/List;
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/util/Map;

    if-eqz v3, :cond_0

    add-int/2addr v2, v0

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/ClassCastException;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v5, v6, v1

    aput-object v2, v6, v0

    const/4 v0, 0x2

    aput-object p0, v6, v0

    const-string p0, "value %s for idx %d in %s is not object"

    invoke-static {v4, p0, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, p0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    return-object p0
.end method

.method public static zzg(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;
    .locals 4

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/util/List;

    return-object v0

    :cond_1
    new-instance v1, Ljava/lang/ClassCastException;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object p1, v2, v0

    const/4 p1, 0x2

    aput-object p0, v2, p1

    const-string p0, "value \'%s\' for key \'%s\' in \'%s\' is not List"

    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static zzh(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/libraries/places/internal/zzbkg;->zzg(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/google/android/libraries/places/internal/zzbkg;->zzf(Ljava/util/List;)Ljava/util/List;

    return-object p0
.end method

.method public static zzi(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, p1}, Lcom/google/android/libraries/places/internal/zzbkg;->zzg(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    move p1, v1

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_2

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_1

    add-int/2addr p1, v0

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/ClassCastException;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v4, v5, v1

    aput-object p1, v5, v0

    const/4 p1, 0x2

    aput-object p0, v5, p1

    const-string p0, "value \'%s\' for idx %d in \'%s\' is not string"

    invoke-static {v3, p0, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    return-object p0
.end method

.method public static zzj(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;
    .locals 4

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/util/Map;

    return-object v0

    :cond_1
    new-instance v1, Ljava/lang/ClassCastException;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object p1, v2, v0

    const/4 p1, 0x2

    aput-object p0, v2, p1

    const-string p0, "value \'%s\' for key \'%s\' in \'%s\' is not object"

    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
