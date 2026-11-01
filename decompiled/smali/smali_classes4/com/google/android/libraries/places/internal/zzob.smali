.class public abstract Lcom/google/android/libraries/places/internal/zzob;
.super Lcom/google/android/libraries/places/internal/zznt;

# interfaces
.implements Ljava/util/Set;


# instance fields
.field private transient zza:Lcom/google/android/libraries/places/internal/zznx;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zznt;-><init>()V

    return-void
.end method

.method static zzh(I)I
    .locals 5

    const/4 v0, 0x2

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const v0, 0x2ccccccc

    if-ge p0, v0, :cond_1

    add-int/lit8 v0, p0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    :goto_0
    add-int/2addr v0, v0

    int-to-double v1, v0

    const-wide v3, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v1, v3

    int-to-double v3, p0

    cmpg-double v1, v1, v3

    if-gez v1, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    const/high16 v0, 0x40000000    # 2.0f

    if-ge p0, v0, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    const-string v1, "collection too large"

    invoke-static {p0, v1}, Lcom/google/android/libraries/places/internal/zzmt;->zzf(ZLjava/lang/Object;)V

    return v0
.end method

.method public static zzj(Ljava/util/Collection;)Lcom/google/android/libraries/places/internal/zzob;
    .locals 2

    instance-of v0, p0, Lcom/google/android/libraries/places/internal/zzob;

    if-eqz v0, :cond_0

    instance-of v0, p0, Ljava/util/SortedSet;

    if-nez v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzob;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zznt;->zzf()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object p0

    array-length v0, p0

    invoke-static {v0, p0}, Lcom/google/android/libraries/places/internal/zzob;->zzr(I[Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzob;

    move-result-object p0

    return-object p0
.end method

.method public static zzk()Lcom/google/android/libraries/places/internal/zzob;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzos;->zza:Lcom/google/android/libraries/places/internal/zzos;

    return-object v0
.end method

.method public static zzl(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzob;
    .locals 1

    new-instance v0, Lcom/google/android/libraries/places/internal/zzou;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/places/internal/zzou;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static zzm(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzob;
    .locals 3

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zzob;->zzr(I[Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzob;

    move-result-object p0

    return-object p0
.end method

.method public static zzn(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzob;
    .locals 0

    const/4 p0, 0x4

    new-array p1, p0, [Ljava/lang/Object;

    const-string p2, "http"

    const/4 p3, 0x0

    aput-object p2, p1, p3

    const-string p2, "https"

    const/4 p3, 0x1

    aput-object p2, p1, p3

    const-string p2, "mailto"

    const/4 p3, 0x2

    aput-object p2, p1, p3

    const-string p2, "ftp"

    const/4 p3, 0x3

    aput-object p2, p1, p3

    invoke-static {p0, p1}, Lcom/google/android/libraries/places/internal/zzob;->zzr(I[Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzob;

    move-result-object p0

    return-object p0
.end method

.method public static zzo(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzob;
    .locals 0

    const/4 p0, 0x5

    new-array p1, p0, [Ljava/lang/Object;

    const-string p2, "audio"

    const/4 p3, 0x0

    aput-object p2, p1, p3

    const-string p2, "img"

    const/4 p3, 0x1

    aput-object p2, p1, p3

    const-string p2, "input"

    const/4 p3, 0x2

    aput-object p2, p1, p3

    const-string p2, "source"

    const/4 p3, 0x3

    aput-object p2, p1, p3

    const-string p2, "video"

    const/4 p3, 0x4

    aput-object p2, p1, p3

    invoke-static {p0, p1}, Lcom/google/android/libraries/places/internal/zzob;->zzr(I[Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzob;

    move-result-object p0

    return-object p0
.end method

.method public static varargs zzp(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzob;
    .locals 4
    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    array-length v0, p6

    add-int/lit8 v1, v0, 0x6

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 p0, 0x1

    aput-object p1, v2, p0

    const/4 p0, 0x2

    aput-object p2, v2, p0

    const/4 p0, 0x3

    aput-object p3, v2, p0

    const/4 p0, 0x4

    aput-object p4, v2, p0

    const/4 p0, 0x5

    aput-object p5, v2, p0

    const/4 p0, 0x6

    invoke-static {p6, v3, v2, p0, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v1, v2}, Lcom/google/android/libraries/places/internal/zzob;->zzr(I[Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzob;

    move-result-object p0

    return-object p0
.end method

.method private static varargs zzr(I[Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzob;
    .locals 13

    if-eqz p0, :cond_7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_6

    invoke-static {p0}, Lcom/google/android/libraries/places/internal/zzob;->zzh(I)I

    move-result v2

    new-array v6, v2, [Ljava/lang/Object;

    add-int/lit8 v7, v2, -0x1

    move v3, v0

    move v5, v3

    move v8, v5

    :goto_0
    if-ge v3, p0, :cond_2

    aget-object v4, p1, v3

    invoke-static {v4, v3}, Lcom/google/android/libraries/places/internal/zzoi;->zza(Ljava/lang/Object;I)Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v9

    invoke-static {v9}, Lcom/google/android/libraries/places/internal/zznq;->zza(I)I

    move-result v10

    :goto_1
    and-int v11, v10, v7

    aget-object v12, v6, v11

    if-nez v12, :cond_0

    add-int/lit8 v10, v8, 0x1

    aput-object v4, p1, v8

    aput-object v4, v6, v11

    add-int/2addr v5, v9

    move v8, v10

    goto :goto_2

    :cond_0
    invoke-virtual {v12, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    invoke-static {p1, v8, p0, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    if-ne v8, v1, :cond_3

    aget-object p0, p1, v0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/google/android/libraries/places/internal/zzou;

    invoke-direct {p1, p0}, Lcom/google/android/libraries/places/internal/zzou;-><init>(Ljava/lang/Object;)V

    return-object p1

    :cond_3
    div-int/lit8 v2, v2, 0x2

    invoke-static {v8}, Lcom/google/android/libraries/places/internal/zzob;->zzh(I)I

    move-result p0

    if-ge p0, v2, :cond_4

    invoke-static {v8, p1}, Lcom/google/android/libraries/places/internal/zzob;->zzr(I[Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzob;

    move-result-object p0

    return-object p0

    :cond_4
    array-length p0, p1

    shr-int/lit8 v0, p0, 0x1

    shr-int/lit8 p0, p0, 0x2

    add-int/2addr v0, p0

    if-ge v8, v0, :cond_5

    invoke-static {p1, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    :cond_5
    move-object v4, p1

    new-instance p0, Lcom/google/android/libraries/places/internal/zzos;

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/google/android/libraries/places/internal/zzos;-><init>([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    return-object p0

    :cond_6
    aget-object p0, p1, v0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/google/android/libraries/places/internal/zzou;

    invoke-direct {p1, p0}, Lcom/google/android/libraries/places/internal/zzou;-><init>(Ljava/lang/Object;)V

    return-object p1

    :cond_7
    sget-object p0, Lcom/google/android/libraries/places/internal/zzos;->zza:Lcom/google/android/libraries/places/internal/zzos;

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/libraries/places/internal/zzob;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzob;->zzq()Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, p1

    check-cast v1, Lcom/google/android/libraries/places/internal/zzob;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzob;->zzq()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzob;->hashCode()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    if-ne v1, v3, :cond_1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    :goto_0
    if-ne p1, p0, :cond_3

    goto :goto_1

    :cond_3
    instance-of v1, p1, Ljava/util/Set;

    if-eqz v1, :cond_4

    check-cast p1, Ljava/util/Set;

    :try_start_0
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    if-ne v1, v3, :cond_4

    invoke-interface {p0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_5

    :catch_0
    :cond_4
    move v0, v2

    nop

    :cond_5
    :goto_1
    return v0
.end method

.method public hashCode()I
    .locals 1

    invoke-static {p0}, Lcom/google/android/libraries/places/internal/zzot;->zza(Ljava/util/Set;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzob;->zze()Lcom/google/android/libraries/places/internal/zzox;

    move-result-object v0

    return-object v0
.end method

.method public zzd()Lcom/google/android/libraries/places/internal/zznx;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzob;->zza:Lcom/google/android/libraries/places/internal/zznx;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzob;->zzi()Lcom/google/android/libraries/places/internal/zznx;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzob;->zza:Lcom/google/android/libraries/places/internal/zznx;

    :cond_0
    return-object v0
.end method

.method public abstract zze()Lcom/google/android/libraries/places/internal/zzox;
.end method

.method zzi()Lcom/google/android/libraries/places/internal/zznx;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zznt;->toArray()[Ljava/lang/Object;

    move-result-object v0

    sget v1, Lcom/google/android/libraries/places/internal/zznx;->zzd:I

    array-length v1, v0

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zznx;->zzi([Ljava/lang/Object;I)Lcom/google/android/libraries/places/internal/zznx;

    move-result-object v0

    return-object v0
.end method

.method zzq()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
