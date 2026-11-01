.class public final Lcom/google/android/libraries/places/internal/zzbvv;
.super Ljava/lang/Object;


# annotations
.annotation build Lkotlin/jvm/JvmName;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field private static final zza:Lcom/google/android/libraries/places/internal/zzbwa;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbwa;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzbwa;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbvv;->zza:Lcom/google/android/libraries/places/internal/zzbwa;

    return-void
.end method

.method public static final zza(I)Ljava/lang/String;
    .locals 11

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbwy;->zza()[C

    move-result-object v0

    shr-int/lit8 v1, p0, 0x1c

    aget-char v0, v0, v1

    shr-int/lit8 v1, p0, 0x18

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbwy;->zza()[C

    move-result-object v2

    and-int/lit8 v1, v1, 0xf

    aget-char v1, v2, v1

    shr-int/lit8 v2, p0, 0x14

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbwy;->zza()[C

    move-result-object v3

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v3, v2

    shr-int/lit8 v3, p0, 0x10

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbwy;->zza()[C

    move-result-object v4

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v4, v3

    shr-int/lit8 v4, p0, 0xc

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbwy;->zza()[C

    move-result-object v5

    and-int/lit8 v4, v4, 0xf

    aget-char v4, v5, v4

    const/16 v5, 0x8

    shr-int/lit8 v6, p0, 0x8

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbwy;->zza()[C

    move-result-object v7

    and-int/lit8 v6, v6, 0xf

    aget-char v6, v7, v6

    const/4 v7, 0x4

    shr-int/lit8 v8, p0, 0x4

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbwy;->zza()[C

    move-result-object v9

    and-int/lit8 v8, v8, 0xf

    aget-char v8, v9, v8

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbwy;->zza()[C

    move-result-object v9

    and-int/lit8 p0, p0, 0xf

    aget-char p0, v9, p0

    new-array v9, v5, [C

    const/4 v10, 0x0

    aput-char v0, v9, v10

    const/4 v0, 0x1

    aput-char v1, v9, v0

    const/4 v1, 0x2

    aput-char v2, v9, v1

    const/4 v1, 0x3

    aput-char v3, v9, v1

    aput-char v4, v9, v7

    const/4 v1, 0x5

    aput-char v6, v9, v1

    const/4 v1, 0x6

    aput-char v8, v9, v1

    const/4 v1, 0x7

    aput-char p0, v9, v1

    :goto_0
    if-ge v10, v5, :cond_0

    aget-char p0, v9, v10

    const/16 v1, 0x30

    if-ne p0, v1, :cond_0

    add-int/2addr v10, v0

    goto :goto_0

    :cond_0
    invoke-static {v9, v10, v5}, Lkotlin/text/StringsKt;->C([CII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final zzb(JJJ)V
    .locals 4

    or-long v0, p2, p4

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    cmp-long v0, p2, p0

    if-gtz v0, :cond_0

    sub-long v0, p0, p2

    cmp-long v0, v0, p4

    if-ltz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " offset="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " byteCount="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final zzc([BI[BII)Z
    .locals 4

    const-string v0, "a"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p4, :cond_1

    add-int v2, v1, p1

    aget-byte v2, p0, v2

    add-int v3, v1, p3

    aget-byte v3, p2, v3

    if-eq v2, v3, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method
