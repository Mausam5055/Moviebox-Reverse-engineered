.class final Lcom/google/android/libraries/places/internal/zzbty;
.super Ljava/lang/Object;


# static fields
.field private static final zza:[Ljava/lang/String;

.field private static final zzb:[Ljava/lang/String;

.field private static final zzc:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const/16 v0, 0x8

    const/4 v1, 0x1

    const-string v10, "WINDOW_UPDATE"

    const-string v11, "CONTINUATION"

    const-string v2, "DATA"

    const-string v3, "HEADERS"

    const-string v4, "PRIORITY"

    const-string v5, "RST_STREAM"

    const-string v6, "SETTINGS"

    const-string v7, "PUSH_PROMISE"

    const-string v8, "PING"

    const-string v9, "GOAWAY"

    filled-new-array/range {v2 .. v11}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/google/android/libraries/places/internal/zzbty;->zza:[Ljava/lang/String;

    const/16 v2, 0x40

    new-array v3, v2, [Ljava/lang/String;

    sput-object v3, Lcom/google/android/libraries/places/internal/zzbty;->zzb:[Ljava/lang/String;

    const/16 v3, 0x100

    new-array v4, v3, [Ljava/lang/String;

    sput-object v4, Lcom/google/android/libraries/places/internal/zzbty;->zzc:[Ljava/lang/String;

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    const/16 v6, 0x20

    if-ge v5, v3, :cond_0

    invoke-static {v5}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v1, [Ljava/lang/Object;

    aput-object v7, v8, v4

    const-string v7, "%8s"

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x30

    invoke-virtual {v7, v6, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/google/android/libraries/places/internal/zzbty;->zzc:[Ljava/lang/String;

    aput-object v6, v7, v5

    add-int/2addr v5, v1

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/google/android/libraries/places/internal/zzbty;->zzb:[Ljava/lang/String;

    const-string v5, ""

    aput-object v5, v3, v4

    const-string v5, "END_STREAM"

    aput-object v5, v3, v1

    filled-new-array {v1}, [I

    move-result-object v5

    const-string v7, "PADDED"

    aput-object v7, v3, v0

    move v3, v4

    :goto_1
    const-string v7, "|PADDED"

    if-gtz v3, :cond_1

    aget v8, v5, v3

    or-int/lit8 v9, v8, 0x8

    sget-object v10, Lcom/google/android/libraries/places/internal/zzbty;->zzb:[Ljava/lang/String;

    aget-object v8, v10, v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v10, v9

    add-int/2addr v3, v1

    goto :goto_1

    :cond_1
    sget-object v3, Lcom/google/android/libraries/places/internal/zzbty;->zzb:[Ljava/lang/String;

    const/4 v8, 0x4

    const-string v9, "END_HEADERS"

    aput-object v9, v3, v8

    const-string v9, "PRIORITY"

    aput-object v9, v3, v6

    const-string v9, "END_HEADERS|PRIORITY"

    const/16 v10, 0x24

    aput-object v9, v3, v10

    filled-new-array {v8, v6, v10}, [I

    move-result-object v3

    move v6, v4

    :goto_2
    const/4 v8, 0x3

    if-ge v6, v8, :cond_3

    aget v8, v3, v6

    move v9, v4

    :goto_3
    if-gtz v9, :cond_2

    aget v10, v5, v9

    or-int v11, v10, v8

    sget-object v12, Lcom/google/android/libraries/places/internal/zzbty;->zzb:[Ljava/lang/String;

    aget-object v13, v12, v10

    aget-object v14, v12, v8

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "|"

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v11

    or-int/2addr v11, v0

    aget-object v10, v12, v10

    aget-object v14, v12, v8

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v12, v11

    add-int/2addr v9, v1

    goto :goto_3

    :cond_2
    add-int/2addr v6, v1

    goto :goto_2

    :cond_3
    :goto_4
    if-ge v4, v2, :cond_5

    sget-object v0, Lcom/google/android/libraries/places/internal/zzbty;->zzb:[Ljava/lang/String;

    aget-object v3, v0, v4

    if-nez v3, :cond_4

    sget-object v3, Lcom/google/android/libraries/places/internal/zzbty;->zzc:[Ljava/lang/String;

    aget-object v3, v3, v4

    aput-object v3, v0, v4

    :cond_4
    add-int/2addr v4, v1

    goto :goto_4

    :cond_5
    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static zza(ZIIBB)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x5

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/16 v6, 0xa

    if-ge p3, v6, :cond_0

    sget-object v6, Lcom/google/android/libraries/places/internal/zzbty;->zza:[Ljava/lang/String;

    aget-object v6, v6, p3

    goto :goto_0

    :cond_0
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    new-array v7, v5, [Ljava/lang/Object;

    aput-object v6, v7, v4

    const-string v6, "0x%02x"

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :goto_0
    if-nez p4, :cond_1

    const-string p3, ""

    goto :goto_2

    :cond_1
    if-eq p3, v3, :cond_7

    if-eq p3, v2, :cond_7

    if-eq p3, v1, :cond_5

    const/4 v7, 0x6

    if-eq p3, v7, :cond_5

    const/4 v7, 0x7

    if-eq p3, v7, :cond_7

    const/16 v7, 0x8

    if-eq p3, v7, :cond_7

    const/16 v7, 0x40

    if-ge p4, v7, :cond_2

    sget-object v7, Lcom/google/android/libraries/places/internal/zzbty;->zzb:[Ljava/lang/String;

    aget-object v7, v7, p4

    goto :goto_1

    :cond_2
    sget-object v7, Lcom/google/android/libraries/places/internal/zzbty;->zzc:[Ljava/lang/String;

    aget-object v7, v7, p4

    :goto_1
    if-ne p3, v0, :cond_3

    and-int/lit8 p3, p4, 0x4

    if-eqz p3, :cond_4

    const-string p3, "HEADERS"

    const-string p4, "PUSH_PROMISE"

    invoke-virtual {v7, p3, p4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p3

    goto :goto_2

    :cond_3
    if-nez p3, :cond_4

    and-int/lit8 p3, p4, 0x20

    if-eqz p3, :cond_4

    const-string p3, "PRIORITY"

    const-string p4, "COMPRESSED"

    invoke-virtual {v7, p3, p4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p3

    goto :goto_2

    :cond_4
    move-object p3, v7

    goto :goto_2

    :cond_5
    if-ne p4, v5, :cond_6

    const-string p3, "ACK"

    goto :goto_2

    :cond_6
    sget-object p3, Lcom/google/android/libraries/places/internal/zzbty;->zzc:[Ljava/lang/String;

    aget-object p3, p3, p4

    goto :goto_2

    :cond_7
    sget-object p3, Lcom/google/android/libraries/places/internal/zzbty;->zzc:[Ljava/lang/String;

    aget-object p3, p3, p4

    :goto_2
    sget-object p4, Ljava/util/Locale;->US:Ljava/util/Locale;

    if-eq v5, p0, :cond_8

    const-string p0, ">>"

    goto :goto_3

    :cond_8
    const-string p0, "<<"

    :goto_3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v4

    aput-object p1, v0, v5

    aput-object p2, v0, v3

    aput-object v6, v0, v2

    aput-object p3, v0, v1

    const-string p0, "%s 0x%08x %5d %-13s %s"

    invoke-static {p4, p0, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
