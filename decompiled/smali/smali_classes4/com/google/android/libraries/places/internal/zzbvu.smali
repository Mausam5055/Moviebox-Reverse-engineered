.class public final Lcom/google/android/libraries/places/internal/zzbvu;
.super Ljava/lang/Object;


# annotations
.annotation build Lkotlin/jvm/JvmName;
.end annotation


# static fields
.field private static final zza:[B

.field private static final zzb:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzbwf;->zza:Lcom/google/android/libraries/places/internal/zzbwe;

    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbwe;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbwf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbwf;->zzn()[B

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbvu;->zza:[B

    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbwe;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbwf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbwf;->zzn()[B

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbvu;->zzb:[B

    return-void
.end method

.method public static synthetic zza([B[BILjava/lang/Object;)Ljava/lang/String;
    .locals 10

    sget-object p1, Lcom/google/android/libraries/places/internal/zzbvu;->zza:[B

    const-string p2, "<this>"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "map"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    array-length p2, p0

    add-int/lit8 p3, p2, 0x2

    rem-int/lit8 v0, p2, 0x3

    sub-int/2addr p2, v0

    div-int/lit8 p3, p3, 0x3

    mul-int/lit8 p3, p3, 0x4

    new-array p3, p3, [B

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x2

    if-ge v0, p2, :cond_0

    add-int/lit8 v3, v1, 0x1

    add-int/lit8 v4, v1, 0x2

    add-int/lit8 v5, v1, 0x3

    add-int/lit8 v6, v0, 0x1

    aget-byte v7, p0, v0

    add-int/lit8 v8, v0, 0x2

    aget-byte v6, p0, v6

    add-int/lit8 v0, v0, 0x3

    aget-byte v8, p0, v8

    and-int/lit16 v9, v7, 0xff

    shr-int/2addr v9, v2

    aget-byte v9, p1, v9

    aput-byte v9, p3, v1

    and-int/lit8 v7, v7, 0x3

    shl-int/lit8 v7, v7, 0x4

    and-int/lit16 v9, v6, 0xff

    shr-int/lit8 v9, v9, 0x4

    or-int/2addr v7, v9

    aget-byte v7, p1, v7

    aput-byte v7, p3, v3

    and-int/lit8 v3, v6, 0xf

    shl-int/lit8 v2, v3, 0x2

    and-int/lit16 v3, v8, 0xff

    shr-int/lit8 v3, v3, 0x6

    or-int/2addr v2, v3

    aget-byte v2, p1, v2

    aput-byte v2, p3, v4

    add-int/lit8 v1, v1, 0x4

    and-int/lit8 v2, v8, 0x3f

    aget-byte v2, p1, v2

    aput-byte v2, p3, v5

    goto :goto_0

    :cond_0
    array-length v3, p0

    sub-int/2addr v3, p2

    const/16 p2, 0x3d

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    if-eq v3, v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v1, 0x1

    add-int/lit8 v4, v1, 0x2

    add-int/lit8 v5, v1, 0x3

    add-int/lit8 v6, v0, 0x1

    aget-byte v0, p0, v0

    aget-byte p0, p0, v6

    and-int/lit16 v6, v0, 0xff

    shr-int/2addr v6, v2

    aget-byte v6, p1, v6

    aput-byte v6, p3, v1

    and-int/lit8 v0, v0, 0x3

    shl-int/lit8 v0, v0, 0x4

    and-int/lit16 v1, p0, 0xff

    shr-int/lit8 v1, v1, 0x4

    or-int/2addr v0, v1

    aget-byte v0, p1, v0

    aput-byte v0, p3, v3

    and-int/lit8 p0, p0, 0xf

    shl-int/2addr p0, v2

    aget-byte p0, p1, p0

    aput-byte p0, p3, v4

    aput-byte p2, p3, v5

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v1, 0x1

    add-int/lit8 v4, v1, 0x2

    add-int/lit8 v5, v1, 0x3

    aget-byte p0, p0, v0

    and-int/lit16 v0, p0, 0xff

    shr-int/2addr v0, v2

    aget-byte v0, p1, v0

    aput-byte v0, p3, v1

    and-int/lit8 p0, p0, 0x3

    shl-int/lit8 p0, p0, 0x4

    aget-byte p0, p1, p0

    aput-byte p0, p3, v3

    aput-byte p2, p3, v4

    aput-byte p2, p3, v5

    :goto_1
    invoke-static {p3}, Lcom/google/android/libraries/places/internal/zzbww;->zza([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
