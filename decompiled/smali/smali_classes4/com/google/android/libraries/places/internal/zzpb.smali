.class public abstract Lcom/google/android/libraries/places/internal/zzpb;
.super Lcom/google/android/libraries/places/internal/zzpd;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzpd;-><init>()V

    return-void
.end method

.method private static zzd([CII)[C
    .locals 1

    if-ltz p2, :cond_1

    new-array p2, p2, [C

    if-lez p1, :cond_0

    const/4 v0, 0x0

    invoke-static {p0, v0, p2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-object p2

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "Cannot increase internal buffer any further"

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method


# virtual methods
.method public zza(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method protected abstract zzb(C)[C
.end method

.method protected final zzc(Ljava/lang/String;I)Ljava/lang/String;
    .locals 12

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzpk;->zza()[C

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge p2, v5, :cond_4

    add-int/lit8 v6, p2, 0x1

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {p0, v7}, Lcom/google/android/libraries/places/internal/zzpb;->zzb(C)[C

    move-result-object v7

    if-eqz v7, :cond_3

    sub-int v8, p2, v3

    add-int v9, v4, v8

    array-length v10, v7

    add-int v11, v9, v10

    if-ge v1, v11, :cond_0

    sub-int/2addr v5, p2

    add-int/2addr v5, v5

    add-int v1, v11, v5

    invoke-static {v0, v4, v1}, Lcom/google/android/libraries/places/internal/zzpb;->zzd([CII)[C

    move-result-object v0

    :cond_0
    if-lez v8, :cond_1

    invoke-virtual {p1, v3, p2, v0, v4}, Ljava/lang/String;->getChars(II[CI)V

    move v4, v9

    :cond_1
    if-lez v10, :cond_2

    invoke-static {v7, v2, v0, v4, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v4, v10

    :cond_2
    move v3, v6

    :cond_3
    move p2, v6

    goto :goto_0

    :cond_4
    sub-int p2, v5, v3

    if-lez p2, :cond_6

    add-int/2addr p2, v4

    if-ge v1, p2, :cond_5

    invoke-static {v0, v4, p2}, Lcom/google/android/libraries/places/internal/zzpb;->zzd([CII)[C

    move-result-object v0

    :cond_5
    invoke-virtual {p1, v3, v5, v0, v4}, Ljava/lang/String;->getChars(II[CI)V

    move v4, p2

    :cond_6
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0, v2, v4}, Ljava/lang/String;-><init>([CII)V

    return-object p1
.end method
