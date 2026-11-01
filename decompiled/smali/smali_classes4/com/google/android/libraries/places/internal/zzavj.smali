.class final Lcom/google/android/libraries/places/internal/zzavj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzavt;


# instance fields
.field private final zza:Lcom/google/android/libraries/places/internal/zzavf;

.field private final zzb:Lcom/google/android/libraries/places/internal/zzawn;

.field private final zzc:Z

.field private final zzd:Lcom/google/android/libraries/places/internal/zzatg;


# direct methods
.method private constructor <init>(Lcom/google/android/libraries/places/internal/zzawn;Lcom/google/android/libraries/places/internal/zzatg;Lcom/google/android/libraries/places/internal/zzavf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzavj;->zzb:Lcom/google/android/libraries/places/internal/zzawn;

    invoke-virtual {p2, p3}, Lcom/google/android/libraries/places/internal/zzatg;->zzi(Lcom/google/android/libraries/places/internal/zzavf;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/libraries/places/internal/zzavj;->zzc:Z

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzavj;->zzd:Lcom/google/android/libraries/places/internal/zzatg;

    iput-object p3, p0, Lcom/google/android/libraries/places/internal/zzavj;->zza:Lcom/google/android/libraries/places/internal/zzavf;

    return-void
.end method

.method static zzi(Lcom/google/android/libraries/places/internal/zzawn;Lcom/google/android/libraries/places/internal/zzatg;Lcom/google/android/libraries/places/internal/zzavf;)Lcom/google/android/libraries/places/internal/zzavj;
    .locals 1

    new-instance v0, Lcom/google/android/libraries/places/internal/zzavj;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/libraries/places/internal/zzavj;-><init>(Lcom/google/android/libraries/places/internal/zzawn;Lcom/google/android/libraries/places/internal/zzatg;Lcom/google/android/libraries/places/internal/zzavf;)V

    return-object v0
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)I
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzavj;->zzb:Lcom/google/android/libraries/places/internal/zzawn;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzawn;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzawn;->zzb(Ljava/lang/Object;)I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/libraries/places/internal/zzavj;->zzc:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzavj;->zzd:Lcom/google/android/libraries/places/internal/zzatg;

    invoke-virtual {v1, p1}, Lcom/google/android/libraries/places/internal/zzatg;->zzb(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzatk;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzatk;->zzc()I

    move-result p1

    add-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public final zzb(Ljava/lang/Object;)I
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzavj;->zzb:Lcom/google/android/libraries/places/internal/zzawn;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzawn;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/libraries/places/internal/zzavj;->zzc:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzavj;->zzd:Lcom/google/android/libraries/places/internal/zzatg;

    invoke-virtual {v1, p1}, Lcom/google/android/libraries/places/internal/zzatg;->zzb(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzatk;

    move-result-object p1

    mul-int/lit8 v0, v0, 0x35

    iget-object p1, p1, Lcom/google/android/libraries/places/internal/zzatk;->zza:Lcom/google/android/libraries/places/internal/zzawg;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzawg;->hashCode()I

    move-result p1

    add-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public final zzc()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzavj;->zza:Lcom/google/android/libraries/places/internal/zzavf;

    instance-of v1, v0, Lcom/google/android/libraries/places/internal/zzatu;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzatu;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzatu;->zzat()Lcom/google/android/libraries/places/internal/zzatu;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/zzavf;->zzaI()Lcom/google/android/libraries/places/internal/zzave;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/zzave;->zzu()Lcom/google/android/libraries/places/internal/zzavf;

    move-result-object v0

    return-object v0
.end method

.method public final zzd(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzavj;->zzb:Lcom/google/android/libraries/places/internal/zzawn;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzawn;->zzm(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzavj;->zzd:Lcom/google/android/libraries/places/internal/zzatg;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzatg;->zzf(Ljava/lang/Object;)V

    return-void
.end method

.method public final zze(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzavj;->zzb:Lcom/google/android/libraries/places/internal/zzawn;

    invoke-static {v0, p1, p2}, Lcom/google/android/libraries/places/internal/zzavv;->zzr(Lcom/google/android/libraries/places/internal/zzawn;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzavj;->zzc:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzavj;->zzd:Lcom/google/android/libraries/places/internal/zzatg;

    invoke-static {v0, p1, p2}, Lcom/google/android/libraries/places/internal/zzavv;->zzq(Lcom/google/android/libraries/places/internal/zzatg;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final zzf(Ljava/lang/Object;Lcom/google/android/libraries/places/internal/zzavs;Lcom/google/android/libraries/places/internal/zzatf;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzavj;->zzb:Lcom/google/android/libraries/places/internal/zzawn;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzawn;->zzc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzavj;->zzd:Lcom/google/android/libraries/places/internal/zzatg;

    invoke-virtual {v2, p1}, Lcom/google/android/libraries/places/internal/zzatg;->zzc(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzatk;

    move-result-object v3

    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {p2}, Lcom/google/android/libraries/places/internal/zzavs;->zzc()I

    move-result v4

    const v5, 0x7fffffff

    if-ne v4, v5, :cond_1

    goto :goto_2

    :cond_1
    invoke-interface {p2}, Lcom/google/android/libraries/places/internal/zzavs;->zzd()I

    move-result v4

    const/16 v6, 0xb

    if-eq v4, v6, :cond_5

    and-int/lit8 v5, v4, 0x7

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    iget-object v5, p0, Lcom/google/android/libraries/places/internal/zzavj;->zza:Lcom/google/android/libraries/places/internal/zzavf;

    ushr-int/lit8 v4, v4, 0x3

    invoke-virtual {v2, p3, v5, v4}, Lcom/google/android/libraries/places/internal/zzatg;->zzd(Lcom/google/android/libraries/places/internal/zzatf;Lcom/google/android/libraries/places/internal/zzavf;I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v2, p2, v4, p3, v3}, Lcom/google/android/libraries/places/internal/zzatg;->zzg(Lcom/google/android/libraries/places/internal/zzavs;Ljava/lang/Object;Lcom/google/android/libraries/places/internal/zzatf;Lcom/google/android/libraries/places/internal/zzatk;)V

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_5

    :cond_2
    invoke-virtual {v0, v1, p2}, Lcom/google/android/libraries/places/internal/zzawn;->zzp(Ljava/lang/Object;Lcom/google/android/libraries/places/internal/zzavs;)Z

    move-result v4

    goto :goto_1

    :cond_3
    invoke-interface {p2}, Lcom/google/android/libraries/places/internal/zzavs;->zzO()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    if-eqz v4, :cond_4

    goto :goto_0

    :cond_4
    :goto_2
    invoke-virtual {v0, p1, v1}, Lcom/google/android/libraries/places/internal/zzawn;->zzn(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_5
    const/4 v4, 0x0

    const/4 v6, 0x0

    move v7, v6

    move-object v6, v4

    :cond_6
    :goto_3
    :try_start_1
    invoke-interface {p2}, Lcom/google/android/libraries/places/internal/zzavs;->zzc()I

    move-result v8

    if-ne v8, v5, :cond_7

    goto :goto_4

    :cond_7
    invoke-interface {p2}, Lcom/google/android/libraries/places/internal/zzavs;->zzd()I

    move-result v8

    const/16 v9, 0x10

    if-ne v8, v9, :cond_8

    invoke-interface {p2}, Lcom/google/android/libraries/places/internal/zzavs;->zzj()I

    move-result v7

    iget-object v4, p0, Lcom/google/android/libraries/places/internal/zzavj;->zza:Lcom/google/android/libraries/places/internal/zzavf;

    invoke-virtual {v2, p3, v4, v7}, Lcom/google/android/libraries/places/internal/zzatg;->zzd(Lcom/google/android/libraries/places/internal/zzatf;Lcom/google/android/libraries/places/internal/zzavf;I)Ljava/lang/Object;

    move-result-object v4

    goto :goto_3

    :cond_8
    const/16 v9, 0x1a

    if-ne v8, v9, :cond_a

    if-eqz v4, :cond_9

    invoke-virtual {v2, p2, v4, p3, v3}, Lcom/google/android/libraries/places/internal/zzatg;->zzg(Lcom/google/android/libraries/places/internal/zzavs;Ljava/lang/Object;Lcom/google/android/libraries/places/internal/zzatf;Lcom/google/android/libraries/places/internal/zzatk;)V

    goto :goto_3

    :cond_9
    invoke-interface {p2}, Lcom/google/android/libraries/places/internal/zzavs;->zzp()Lcom/google/android/libraries/places/internal/zzask;

    move-result-object v6

    goto :goto_3

    :cond_a
    invoke-interface {p2}, Lcom/google/android/libraries/places/internal/zzavs;->zzO()Z

    move-result v8

    if-nez v8, :cond_6

    :goto_4
    invoke-interface {p2}, Lcom/google/android/libraries/places/internal/zzavs;->zzd()I

    move-result v5

    const/16 v8, 0xc

    if-ne v5, v8, :cond_c

    if-eqz v6, :cond_0

    if-eqz v4, :cond_b

    invoke-virtual {v2, v6, v4, p3, v3}, Lcom/google/android/libraries/places/internal/zzatg;->zzh(Lcom/google/android/libraries/places/internal/zzask;Ljava/lang/Object;Lcom/google/android/libraries/places/internal/zzatf;Lcom/google/android/libraries/places/internal/zzatk;)V

    goto :goto_0

    :cond_b
    invoke-virtual {v0, v1, v7, v6}, Lcom/google/android/libraries/places/internal/zzawn;->zzk(Ljava/lang/Object;ILcom/google/android/libraries/places/internal/zzask;)V

    goto :goto_0

    :cond_c
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzauf;->zzb()Lcom/google/android/libraries/places/internal/zzauf;

    move-result-object p2

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_5
    invoke-virtual {v0, p1, v1}, Lcom/google/android/libraries/places/internal/zzawn;->zzn(Ljava/lang/Object;Ljava/lang/Object;)V

    throw p2
.end method

.method public final zzg(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzavj;->zzb:Lcom/google/android/libraries/places/internal/zzawn;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzawn;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p2}, Lcom/google/android/libraries/places/internal/zzawn;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzavj;->zzc:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzavj;->zzd:Lcom/google/android/libraries/places/internal/zzatg;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzatg;->zzb(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzatk;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzavj;->zzd:Lcom/google/android/libraries/places/internal/zzatg;

    invoke-virtual {v0, p2}, Lcom/google/android/libraries/places/internal/zzatg;->zzb(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzatk;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/libraries/places/internal/zzatk;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final zzh(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzavj;->zzd:Lcom/google/android/libraries/places/internal/zzatg;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzatg;->zzb(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzatk;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzatk;->zzj()Z

    move-result p1

    return p1
.end method

.method public final zzj(Ljava/lang/Object;Lcom/google/android/libraries/places/internal/zzasy;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzavj;->zzd:Lcom/google/android/libraries/places/internal/zzatg;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzatg;->zzb(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzatk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzatk;->zzf()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/libraries/places/internal/zzatj;

    invoke-interface {v2}, Lcom/google/android/libraries/places/internal/zzatj;->zze()Lcom/google/android/libraries/places/internal/zzaxe;

    move-result-object v3

    sget-object v4, Lcom/google/android/libraries/places/internal/zzaxe;->zzi:Lcom/google/android/libraries/places/internal/zzaxe;

    if-ne v3, v4, :cond_1

    invoke-interface {v2}, Lcom/google/android/libraries/places/internal/zzatj;->zzg()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v2}, Lcom/google/android/libraries/places/internal/zzatj;->zzf()Z

    move-result v3

    if-nez v3, :cond_1

    instance-of v3, v1, Lcom/google/android/libraries/places/internal/zzaui;

    if-eqz v3, :cond_0

    invoke-interface {v2}, Lcom/google/android/libraries/places/internal/zzatj;->zza()I

    move-result v2

    check-cast v1, Lcom/google/android/libraries/places/internal/zzaui;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzaui;->zza()Lcom/google/android/libraries/places/internal/zzauk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzaul;->zzb()Lcom/google/android/libraries/places/internal/zzask;

    move-result-object v1

    invoke-virtual {p2, v2, v1}, Lcom/google/android/libraries/places/internal/zzasy;->zzw(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-interface {v2}, Lcom/google/android/libraries/places/internal/zzatj;->zza()I

    move-result v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v2, v1}, Lcom/google/android/libraries/places/internal/zzasy;->zzw(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Found invalid MessageSet item."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzavj;->zzb:Lcom/google/android/libraries/places/internal/zzawn;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzawn;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/google/android/libraries/places/internal/zzawn;->zzr(Ljava/lang/Object;Lcom/google/android/libraries/places/internal/zzasy;)V

    return-void
.end method
