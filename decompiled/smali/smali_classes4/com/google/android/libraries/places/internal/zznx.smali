.class public abstract Lcom/google/android/libraries/places/internal/zznx;
.super Lcom/google/android/libraries/places/internal/zznt;

# interfaces
.implements Ljava/util/List;
.implements Ljava/util/RandomAccess;


# static fields
.field private static final zza:Lcom/google/android/libraries/places/internal/zzoy;

.field public static final synthetic zzd:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/libraries/places/internal/zznv;

    sget-object v1, Lcom/google/android/libraries/places/internal/zzom;->zza:Lcom/google/android/libraries/places/internal/zznx;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zznv;-><init>(Lcom/google/android/libraries/places/internal/zznx;I)V

    sput-object v0, Lcom/google/android/libraries/places/internal/zznx;->zza:Lcom/google/android/libraries/places/internal/zzoy;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zznt;-><init>()V

    return-void
.end method

.method static zzi([Ljava/lang/Object;I)Lcom/google/android/libraries/places/internal/zznx;
    .locals 1

    if-nez p1, :cond_0

    sget-object p0, Lcom/google/android/libraries/places/internal/zzom;->zza:Lcom/google/android/libraries/places/internal/zznx;

    return-object p0

    :cond_0
    new-instance v0, Lcom/google/android/libraries/places/internal/zzom;

    invoke-direct {v0, p0, p1}, Lcom/google/android/libraries/places/internal/zzom;-><init>([Ljava/lang/Object;I)V

    return-object v0
.end method

.method public static zzj(Ljava/util/Collection;)Lcom/google/android/libraries/places/internal/zznx;
    .locals 1

    instance-of v0, p0, Lcom/google/android/libraries/places/internal/zznt;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/google/android/libraries/places/internal/zznt;

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zznt;->zzd()Lcom/google/android/libraries/places/internal/zznx;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zznt;->zzf()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zznt;->toArray()[Ljava/lang/Object;

    move-result-object p0

    array-length v0, p0

    invoke-static {p0, v0}, Lcom/google/android/libraries/places/internal/zznx;->zzi([Ljava/lang/Object;I)Lcom/google/android/libraries/places/internal/zznx;

    move-result-object p0

    :cond_0
    return-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object p0

    array-length v0, p0

    invoke-static {p0, v0}, Lcom/google/android/libraries/places/internal/zzoi;->zzb([Ljava/lang/Object;I)[Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/google/android/libraries/places/internal/zznx;->zzi([Ljava/lang/Object;I)Lcom/google/android/libraries/places/internal/zznx;

    move-result-object p0

    return-object p0
.end method

.method public static zzk([Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zznx;
    .locals 1

    array-length v0, p0

    if-nez v0, :cond_0

    sget-object p0, Lcom/google/android/libraries/places/internal/zzom;->zza:Lcom/google/android/libraries/places/internal/zznx;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    array-length v0, p0

    invoke-static {p0, v0}, Lcom/google/android/libraries/places/internal/zzoi;->zzb([Ljava/lang/Object;I)[Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/google/android/libraries/places/internal/zznx;->zzi([Ljava/lang/Object;I)Lcom/google/android/libraries/places/internal/zznx;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static zzl()Lcom/google/android/libraries/places/internal/zznx;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzom;->zza:Lcom/google/android/libraries/places/internal/zznx;

    return-object v0
.end method

.method public static zzm(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zznx;
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v1, v0}, Lcom/google/android/libraries/places/internal/zzoi;->zzb([Ljava/lang/Object;I)[Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/google/android/libraries/places/internal/zznx;->zzi([Ljava/lang/Object;I)Lcom/google/android/libraries/places/internal/zznx;

    move-result-object p0

    return-object p0
.end method

.method public static zzn(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zznx;
    .locals 3

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    invoke-static {v1, v0}, Lcom/google/android/libraries/places/internal/zzoi;->zzb([Ljava/lang/Object;I)[Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/google/android/libraries/places/internal/zznx;->zzi([Ljava/lang/Object;I)Lcom/google/android/libraries/places/internal/zznx;

    move-result-object p0

    return-object p0
.end method

.method public static varargs zzo(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zznx;
    .locals 0
    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    const/16 p0, 0x27

    new-array p1, p0, [Ljava/lang/Object;

    const-string p2, "accessibilityOptions"

    const/4 p3, 0x0

    aput-object p2, p1, p3

    const/4 p2, 0x1

    const-string p4, "addressComponents"

    aput-object p4, p1, p2

    const/4 p2, 0x2

    const-string p4, "attributions"

    aput-object p4, p1, p2

    const/4 p2, 0x3

    const-string p4, "businessStatus"

    aput-object p4, p1, p2

    const/4 p2, 0x4

    const-string p4, "curbsidePickup"

    aput-object p4, p1, p2

    const/4 p2, 0x5

    const-string p4, "currentOpeningHours"

    aput-object p4, p1, p2

    const/4 p2, 0x6

    const-string p4, "delivery"

    aput-object p4, p1, p2

    const/4 p2, 0x7

    const-string p4, "dineIn"

    aput-object p4, p1, p2

    const/16 p2, 0x8

    const-string p4, "displayName"

    aput-object p4, p1, p2

    const/16 p2, 0x9

    const-string p4, "editorialSummary"

    aput-object p4, p1, p2

    const/16 p2, 0xa

    const-string p4, "formattedAddress"

    aput-object p4, p1, p2

    const/16 p2, 0xb

    const-string p4, "iconBackgroundColor"

    aput-object p4, p1, p2

    const/16 p2, 0xc

    const/16 p4, 0x1b

    invoke-static {p12, p3, p1, p2, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p1, p0}, Lcom/google/android/libraries/places/internal/zzoi;->zzb([Ljava/lang/Object;I)[Ljava/lang/Object;

    invoke-static {p1, p0}, Lcom/google/android/libraries/places/internal/zznx;->zzi([Ljava/lang/Object;I)Lcom/google/android/libraries/places/internal/zznx;

    move-result-object p0

    return-object p0
.end method

.method public static zzp(Ljava/util/Comparator;Ljava/lang/Iterable;)Lcom/google/android/libraries/places/internal/zznx;
    .locals 1

    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object p1

    array-length v0, p1

    invoke-static {p1, v0}, Lcom/google/android/libraries/places/internal/zzoi;->zzb([Ljava/lang/Object;I)[Ljava/lang/Object;

    invoke-static {p1, p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    invoke-static {p1, v0}, Lcom/google/android/libraries/places/internal/zznx;->zzi([Ljava/lang/Object;I)Lcom/google/android/libraries/places/internal/zznx;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final add(ILjava/lang/Object;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/zznx;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    goto :goto_2

    :cond_0
    instance-of v1, p1, Ljava/util/List;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    :cond_1
    :goto_0
    move v0, v2

    goto :goto_2

    :cond_2
    check-cast p1, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-eq v1, v3, :cond_3

    goto :goto_0

    :cond_3
    instance-of v3, p1, Ljava/util/RandomAccess;

    if-eqz v3, :cond_5

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_9

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/libraries/places/internal/zzmo;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_0

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_0

    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/libraries/places/internal/zzmo;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_0

    :cond_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_1

    :cond_9
    :goto_2
    return v0
.end method

.method public final hashCode()I
    .locals 4

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    :goto_0
    if-ge v1, v0, :cond_0

    mul-int/lit8 v2, v2, 0x1f

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .locals 4

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/places/internal/zznx;->zzq(I)Lcom/google/android/libraries/places/internal/zzoy;

    move-result-object v0

    return-object v0
.end method

.method public final lastIndexOf(Ljava/lang/Object;)I
    .locals 3

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v0

    :goto_0
    if-ltz v1, :cond_2

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method public final synthetic listIterator()Ljava/util/ListIterator;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/places/internal/zznx;->zzq(I)Lcom/google/android/libraries/places/internal/zzoy;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/zznx;->zzq(I)Lcom/google/android/libraries/places/internal/zzoy;

    move-result-object p1

    return-object p1
.end method

.method public final remove(I)Ljava/lang/Object;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public bridge synthetic subList(II)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/libraries/places/internal/zznx;->zzh(II)Lcom/google/android/libraries/places/internal/zznx;

    move-result-object p1

    return-object p1
.end method

.method zza([Ljava/lang/Object;I)I
    .locals 4

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    add-int v2, p2, v1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, p1, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    add-int/2addr p2, v0

    return p2
.end method

.method public final zzd()Lcom/google/android/libraries/places/internal/zznx;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method

.method public final zze()Lcom/google/android/libraries/places/internal/zzox;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/places/internal/zznx;->zzq(I)Lcom/google/android/libraries/places/internal/zzoy;

    move-result-object v0

    return-object v0
.end method

.method public zzh(II)Lcom/google/android/libraries/places/internal/zznx;
    .locals 1

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/google/android/libraries/places/internal/zzmt;->zzn(III)V

    sub-int/2addr p2, p1

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-ne p2, v0, :cond_0

    return-object p0

    :cond_0
    if-nez p2, :cond_1

    sget-object p1, Lcom/google/android/libraries/places/internal/zzom;->zza:Lcom/google/android/libraries/places/internal/zznx;

    return-object p1

    :cond_1
    new-instance v0, Lcom/google/android/libraries/places/internal/zznw;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/libraries/places/internal/zznw;-><init>(Lcom/google/android/libraries/places/internal/zznx;II)V

    return-object v0
.end method

.method public final zzq(I)Lcom/google/android/libraries/places/internal/zzoy;
    .locals 2

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const-string v1, "index"

    invoke-static {p1, v0, v1}, Lcom/google/android/libraries/places/internal/zzmt;->zzb(IILjava/lang/String;)I

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/google/android/libraries/places/internal/zznx;->zza:Lcom/google/android/libraries/places/internal/zzoy;

    return-object p1

    :cond_0
    new-instance v0, Lcom/google/android/libraries/places/internal/zznv;

    invoke-direct {v0, p0, p1}, Lcom/google/android/libraries/places/internal/zznv;-><init>(Lcom/google/android/libraries/places/internal/zznx;I)V

    return-object v0
.end method
