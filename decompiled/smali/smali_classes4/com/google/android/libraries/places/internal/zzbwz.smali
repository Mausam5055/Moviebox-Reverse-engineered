.class public final Lcom/google/android/libraries/places/internal/zzbwz;
.super Ljava/lang/Object;


# annotations
.annotation build Lkotlin/jvm/JvmName;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# direct methods
.method public static final zza(Lcom/google/android/libraries/places/internal/zzbwp;I)I
    .locals 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbwp;->zzq()[I

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbwp;->zzr()[[B

    move-result-object p0

    array-length p0, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 p0, p0, -0x1

    const/4 v0, 0x0

    :goto_0
    if-gt v0, p0, :cond_1

    add-int/lit8 v2, p1, 0x1

    add-int v3, v0, p0

    ushr-int/lit8 v3, v3, 0x1

    aget v4, v1, v3

    if-ge v4, v2, :cond_0

    add-int/lit8 v0, v3, 0x1

    goto :goto_0

    :cond_0
    if-le v4, v2, :cond_2

    add-int/lit8 p0, v3, -0x1

    goto :goto_0

    :cond_1
    neg-int p0, v0

    add-int/lit8 v3, p0, -0x1

    :cond_2
    if-ltz v3, :cond_3

    return v3

    :cond_3
    not-int p0, v3

    return p0
.end method
