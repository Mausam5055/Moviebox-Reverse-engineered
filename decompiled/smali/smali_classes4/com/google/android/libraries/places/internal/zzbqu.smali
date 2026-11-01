.class public final Lcom/google/android/libraries/places/internal/zzbqu;
.super Ljava/lang/Object;


# static fields
.field private static final zza:Ljava/util/logging/Logger;

.field private static final zzb:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/google/android/libraries/places/internal/zzbqu;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbqu;->zza:Ljava/util/logging/Logger;

    const-string v0, "-bin"

    sget-object v1, Lcom/google/android/libraries/places/internal/zzmb;->zza:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbqu;->zzb:[B

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza(Lcom/google/android/libraries/places/internal/zzbcf;)[[B
    .locals 9

    invoke-static {p0}, Lcom/google/android/libraries/places/internal/zzbar;->zzd(Lcom/google/android/libraries/places/internal/zzbcf;)[[B

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_4

    aget-object v3, p0, v1

    add-int/lit8 v4, v1, 0x1

    aget-object v4, p0, v4

    sget-object v5, Lcom/google/android/libraries/places/internal/zzbqu;->zzb:[B

    invoke-static {v3, v5}, Lcom/google/android/libraries/places/internal/zzbqu;->zzc([B[B)Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v5, v2, 0x2

    add-int/lit8 v6, v2, 0x1

    aput-object v3, p0, v2

    sget-object v2, Lcom/google/android/libraries/places/internal/zzbar;->zzb:Lcom/google/android/libraries/places/internal/zzsi;

    array-length v3, v4

    invoke-virtual {v2, v4, v0, v3}, Lcom/google/android/libraries/places/internal/zzsi;->zzk([BII)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/android/libraries/places/internal/zzmb;->zza:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    aput-object v2, p0, v6

    :goto_1
    move v2, v5

    goto :goto_4

    :cond_0
    array-length v5, v4

    move v6, v0

    :goto_2
    if-ge v6, v5, :cond_3

    aget-byte v7, v4, v6

    const/16 v8, 0x20

    if-lt v7, v8, :cond_2

    const/16 v8, 0x7e

    if-le v7, v8, :cond_1

    goto :goto_3

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    new-instance v5, Ljava/lang/String;

    sget-object v6, Lcom/google/android/libraries/places/internal/zzmb;->zza:Ljava/nio/charset/Charset;

    invoke-direct {v5, v3, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    sget-object v3, Lcom/google/android/libraries/places/internal/zzbqu;->zza:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v4}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Metadata key="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", value="

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " contains invalid ASCII characters"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "io.grpc.internal.TransportFrameUtil"

    const-string v7, "toHttp2Headers"

    invoke-virtual {v3, v6, v5, v7, v4}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_3
    add-int/lit8 v5, v2, 0x2

    add-int/lit8 v6, v2, 0x1

    aput-object v3, p0, v2

    aput-object v4, p0, v6

    goto :goto_1

    :goto_4
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_4
    if-ne v2, v3, :cond_5

    return-object p0

    :cond_5
    invoke-static {p0, v0, v2}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [[B

    return-object p0
.end method

.method public static zzb([[B)[[B
    .locals 12

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_9

    aget-object v2, p0, v1

    add-int/lit8 v3, v1, 0x1

    aget-object v4, p0, v3

    sget-object v5, Lcom/google/android/libraries/places/internal/zzbqu;->zzb:[B

    invoke-static {v2, v5}, Lcom/google/android/libraries/places/internal/zzbqu;->zzc([B[B)Z

    move-result v2

    if-eqz v2, :cond_8

    move v2, v0

    :goto_1
    array-length v5, v4

    if-ge v2, v5, :cond_7

    aget-byte v5, v4, v2

    const/16 v6, 0x2c

    if-ne v5, v6, :cond_6

    array-length v2, p0

    new-instance v3, Ljava/util/ArrayList;

    add-int/lit8 v2, v2, 0xa

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    move v2, v0

    :goto_2
    if-ge v2, v1, :cond_0

    aget-object v4, p0, v2

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_0
    :goto_3
    array-length v2, p0

    if-ge v1, v2, :cond_5

    aget-object v2, p0, v1

    add-int/lit8 v4, v1, 0x1

    aget-object v4, p0, v4

    sget-object v5, Lcom/google/android/libraries/places/internal/zzbqu;->zzb:[B

    invoke-static {v2, v5}, Lcom/google/android/libraries/places/internal/zzbqu;->zzc([B[B)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_1
    move v5, v0

    move v7, v5

    :goto_4
    array-length v8, v4

    if-gt v5, v8, :cond_4

    if-eq v5, v8, :cond_2

    aget-byte v8, v4, v5

    if-ne v8, v6, :cond_3

    :cond_2
    sub-int v8, v5, v7

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzsi;->zzj()Lcom/google/android/libraries/places/internal/zzsi;

    move-result-object v9

    new-instance v10, Ljava/lang/String;

    sget-object v11, Lcom/google/android/libraries/places/internal/zzmb;->zza:Ljava/nio/charset/Charset;

    invoke-direct {v10, v4, v7, v8, v11}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v9, v10}, Lcom/google/android/libraries/places/internal/zzsi;->zzl(Ljava/lang/CharSequence;)[B

    move-result-object v7

    add-int/lit8 v8, v5, 0x1

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v7, v8

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_4
    :goto_5
    add-int/lit8 v1, v1, 0x2

    goto :goto_3

    :cond_5
    new-array p0, v0, [[B

    invoke-interface {v3, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [[B

    return-object p0

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzsi;->zzj()Lcom/google/android/libraries/places/internal/zzsi;

    move-result-object v2

    new-instance v5, Ljava/lang/String;

    sget-object v6, Lcom/google/android/libraries/places/internal/zzmb;->zza:Ljava/nio/charset/Charset;

    invoke-direct {v5, v4, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v2, v5}, Lcom/google/android/libraries/places/internal/zzsi;->zzl(Ljava/lang/CharSequence;)[B

    move-result-object v2

    aput-object v2, p0, v3

    :cond_8
    add-int/lit8 v1, v1, 0x2

    goto/16 :goto_0

    :cond_9
    return-object p0
.end method

.method private static zzc([B[B)Z
    .locals 5

    array-length v0, p0

    array-length v1, p1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    if-ltz v0, :cond_2

    move v2, v0

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    aget-byte v3, p0, v2

    sub-int v4, v2, v0

    aget-byte v4, p1, v4

    if-eq v3, v4, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method
