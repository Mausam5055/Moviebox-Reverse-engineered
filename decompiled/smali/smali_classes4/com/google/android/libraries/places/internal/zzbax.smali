.class public final Lcom/google/android/libraries/places/internal/zzbax;
.super Ljava/lang/Object;


# instance fields
.field private zza:Ljava/util/List;

.field private final zzb:Lcom/google/android/libraries/places/internal/zzaye;

.field private zzc:[[Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/libraries/places/internal/zzaye;->zza:Lcom/google/android/libraries/places/internal/zzaye;

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbax;->zzb:Lcom/google/android/libraries/places/internal/zzaye;

    const/4 v0, 0x2

    new-array v1, v0, [I

    const/4 v2, 0x1

    aput v0, v1, v2

    const/4 v0, 0x0

    aput v0, v1, v0

    const-class v0, Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbax;->zzc:[[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/libraries/places/internal/zzbay;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzbax;
    .locals 8

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget-object v4, p0, Lcom/google/android/libraries/places/internal/zzbax;->zzc:[[Ljava/lang/Object;

    array-length v5, v4

    const/4 v6, -0x1

    if-ge v3, v5, :cond_1

    aget-object v4, v4, v3

    aget-object v4, v4, v2

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/2addr v3, v1

    goto :goto_0

    :cond_1
    move v3, v6

    :goto_1
    if-ne v3, v6, :cond_2

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbax;->zzc:[[Ljava/lang/Object;

    array-length v4, v3

    add-int/lit8 v5, v4, 0x1

    new-array v7, v0, [I

    aput v0, v7, v1

    aput v5, v7, v2

    const-class v5, Ljava/lang/Object;

    invoke-static {v5, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[Ljava/lang/Object;

    invoke-static {v3, v2, v5, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v5, p0, Lcom/google/android/libraries/places/internal/zzbax;->zzc:[[Ljava/lang/Object;

    array-length v3, v5

    add-int/2addr v3, v6

    :cond_2
    iget-object v4, p0, Lcom/google/android/libraries/places/internal/zzbax;->zzc:[[Ljava/lang/Object;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    aput-object p2, v0, v1

    aput-object v0, v4, v3

    return-object p0
.end method

.method public final zzb(Ljava/util/List;)Lcom/google/android/libraries/places/internal/zzbax;
    .locals 2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "addrs is empty"

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zzmt;->zzf(ZLjava/lang/Object;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbax;->zza:Ljava/util/List;

    return-object p0
.end method

.method public final zzc()Lcom/google/android/libraries/places/internal/zzbba;
    .locals 5

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbba;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbax;->zza:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbax;->zzb:Lcom/google/android/libraries/places/internal/zzaye;

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbax;->zzc:[[Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/libraries/places/internal/zzbba;-><init>(Ljava/util/List;Lcom/google/android/libraries/places/internal/zzaye;[[Ljava/lang/Object;Lcom/google/android/libraries/places/internal/zzbaz;)V

    return-object v0
.end method
