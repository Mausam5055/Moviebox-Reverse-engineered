.class public final Lcom/google/android/libraries/places/internal/zzbvn;
.super Lcom/google/android/libraries/places/internal/zzbvk;


# instance fields
.field protected zzi:Lcom/google/android/libraries/places/internal/zzbbk;

.field private final zzj:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/places/internal/zzbbd;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzbvk;-><init>(Lcom/google/android/libraries/places/internal/zzbbd;)V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbvn;->zzj:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance p1, Lcom/google/android/libraries/places/internal/zzbvl;

    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/zzbvl;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbvn;->zzi:Lcom/google/android/libraries/places/internal/zzbbk;

    return-void
.end method

.method private final zzn(Lcom/google/android/libraries/places/internal/zzaze;Lcom/google/android/libraries/places/internal/zzbbk;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbvk;->zzh:Lcom/google/android/libraries/places/internal/zzaze;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbvn;->zzi:Lcom/google/android/libraries/places/internal/zzbbk;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbvk;->zzh()Lcom/google/android/libraries/places/internal/zzbbd;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/libraries/places/internal/zzbbd;->zze(Lcom/google/android/libraries/places/internal/zzaze;Lcom/google/android/libraries/places/internal/zzbbk;)V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbvk;->zzh:Lcom/google/android/libraries/places/internal/zzaze;

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbvn;->zzi:Lcom/google/android/libraries/places/internal/zzbbk;

    return-void
.end method


# virtual methods
.method protected final zzl()V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbvk;->zzi()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/libraries/places/internal/zzbvi;

    invoke-virtual {v2}, Lcom/google/android/libraries/places/internal/zzbvi;->zzm()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/google/android/libraries/places/internal/zzbvi;->zza()Lcom/google/android/libraries/places/internal/zzaze;

    move-result-object v3

    sget-object v4, Lcom/google/android/libraries/places/internal/zzaze;->zzb:Lcom/google/android/libraries/places/internal/zzaze;

    if-ne v3, v4, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbvk;->zzi()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/places/internal/zzbvi;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzbvi;->zza()Lcom/google/android/libraries/places/internal/zzaze;

    move-result-object v1

    sget-object v2, Lcom/google/android/libraries/places/internal/zzaze;->zza:Lcom/google/android/libraries/places/internal/zzaze;

    if-eq v1, v2, :cond_3

    sget-object v3, Lcom/google/android/libraries/places/internal/zzaze;->zzd:Lcom/google/android/libraries/places/internal/zzaze;

    if-ne v1, v3, :cond_2

    :cond_3
    new-instance v0, Lcom/google/android/libraries/places/internal/zzbvl;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzbvl;-><init>()V

    invoke-direct {p0, v2, v0}, Lcom/google/android/libraries/places/internal/zzbvn;->zzn(Lcom/google/android/libraries/places/internal/zzaze;Lcom/google/android/libraries/places/internal/zzbbk;)V

    return-void

    :cond_4
    sget-object v0, Lcom/google/android/libraries/places/internal/zzaze;->zzc:Lcom/google/android/libraries/places/internal/zzaze;

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbvk;->zzi()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/libraries/places/internal/zzbvn;->zzm(Ljava/util/Collection;)Lcom/google/android/libraries/places/internal/zzbbk;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/libraries/places/internal/zzbvn;->zzn(Lcom/google/android/libraries/places/internal/zzaze;Lcom/google/android/libraries/places/internal/zzbbk;)V

    return-void

    :cond_5
    sget-object v1, Lcom/google/android/libraries/places/internal/zzaze;->zzb:Lcom/google/android/libraries/places/internal/zzaze;

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/places/internal/zzbvn;->zzm(Ljava/util/Collection;)Lcom/google/android/libraries/places/internal/zzbbk;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/google/android/libraries/places/internal/zzbvn;->zzn(Lcom/google/android/libraries/places/internal/zzaze;Lcom/google/android/libraries/places/internal/zzbbk;)V

    return-void
.end method

.method protected final zzm(Ljava/util/Collection;)Lcom/google/android/libraries/places/internal/zzbbk;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/places/internal/zzbvi;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzbvi;->zzb()Lcom/google/android/libraries/places/internal/zzbbk;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbvn;->zzj:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v1, Lcom/google/android/libraries/places/internal/zzbvm;

    invoke-direct {v1, v0, p1}, Lcom/google/android/libraries/places/internal/zzbvm;-><init>(Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;)V

    return-object v1
.end method
