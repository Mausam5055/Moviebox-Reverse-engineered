.class final Lcom/google/android/libraries/places/internal/zzbkt;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzbfp;


# instance fields
.field volatile zza:Lcom/google/android/libraries/places/internal/zzbpn;

.field final synthetic zzb:Lcom/google/android/libraries/places/internal/zzbma;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/libraries/places/internal/zzbma;Lcom/google/android/libraries/places/internal/zzbks;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbkt;->zzb:Lcom/google/android/libraries/places/internal/zzbma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static bridge synthetic zzb(Lcom/google/android/libraries/places/internal/zzbkt;Lcom/google/android/libraries/places/internal/zzbbf;)Lcom/google/android/libraries/places/internal/zzbfu;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzbkt;->zzc(Lcom/google/android/libraries/places/internal/zzbbf;)Lcom/google/android/libraries/places/internal/zzbfu;

    move-result-object p0

    return-object p0
.end method

.method private final zzc(Lcom/google/android/libraries/places/internal/zzbbf;)Lcom/google/android/libraries/places/internal/zzbfu;
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbkt;->zzb:Lcom/google/android/libraries/places/internal/zzbma;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbma;->zzm(Lcom/google/android/libraries/places/internal/zzbma;)Lcom/google/android/libraries/places/internal/zzbbk;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbma;->zzK(Lcom/google/android/libraries/places/internal/zzbma;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbkt;->zzb:Lcom/google/android/libraries/places/internal/zzbma;

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbkq;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/places/internal/zzbkq;-><init>(Lcom/google/android/libraries/places/internal/zzbkt;)V

    iget-object p1, p1, Lcom/google/android/libraries/places/internal/zzbma;->zzf:Lcom/google/android/libraries/places/internal/zzbdw;

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/places/internal/zzbdw;->zzc(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbdw;->zzb()V

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbkt;->zzb:Lcom/google/android/libraries/places/internal/zzbma;

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbma;->zzu(Lcom/google/android/libraries/places/internal/zzbma;)Lcom/google/android/libraries/places/internal/zzbhg;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {v1, p1}, Lcom/google/android/libraries/places/internal/zzbbk;->zza(Lcom/google/android/libraries/places/internal/zzbbf;)Lcom/google/android/libraries/places/internal/zzbbe;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbbf;->zza()Lcom/google/android/libraries/places/internal/zzayj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzayj;->zzo()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/google/android/libraries/places/internal/zzbjd;->zzc(Lcom/google/android/libraries/places/internal/zzbbe;Z)Lcom/google/android/libraries/places/internal/zzbfu;

    move-result-object p1

    if-eqz p1, :cond_2

    return-object p1

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbkt;->zzb:Lcom/google/android/libraries/places/internal/zzbma;

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbma;->zzu(Lcom/google/android/libraries/places/internal/zzbma;)Lcom/google/android/libraries/places/internal/zzbhg;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final zza(Lcom/google/android/libraries/places/internal/zzbcl;Lcom/google/android/libraries/places/internal/zzayj;Lcom/google/android/libraries/places/internal/zzbcf;Lcom/google/android/libraries/places/internal/zzazj;)Lcom/google/android/libraries/places/internal/zzbfr;
    .locals 11

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbkt;->zzb:Lcom/google/android/libraries/places/internal/zzbma;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbma;->zzY(Lcom/google/android/libraries/places/internal/zzbma;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbnr;

    invoke-direct {v0, p1, p3, p2}, Lcom/google/android/libraries/places/internal/zzbnr;-><init>(Lcom/google/android/libraries/places/internal/zzbcl;Lcom/google/android/libraries/places/internal/zzbcf;Lcom/google/android/libraries/places/internal/zzayj;)V

    invoke-direct {p0, v0}, Lcom/google/android/libraries/places/internal/zzbkt;->zzc(Lcom/google/android/libraries/places/internal/zzbbf;)Lcom/google/android/libraries/places/internal/zzbfu;

    move-result-object v0

    invoke-virtual {p4}, Lcom/google/android/libraries/places/internal/zzazj;->zza()Lcom/google/android/libraries/places/internal/zzazj;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p2, p3, v2, v2}, Lcom/google/android/libraries/places/internal/zzbjd;->zzk(Lcom/google/android/libraries/places/internal/zzayj;Lcom/google/android/libraries/places/internal/zzbcf;IZ)[Lcom/google/android/libraries/places/internal/zzayx;

    move-result-object v2

    :try_start_0
    invoke-interface {v0, p1, p3, p2, v2}, Lcom/google/android/libraries/places/internal/zzbfu;->zza(Lcom/google/android/libraries/places/internal/zzbcl;Lcom/google/android/libraries/places/internal/zzbcf;Lcom/google/android/libraries/places/internal/zzayj;[Lcom/google/android/libraries/places/internal/zzayx;)Lcom/google/android/libraries/places/internal/zzbfr;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p4, v1}, Lcom/google/android/libraries/places/internal/zzazj;->zze(Lcom/google/android/libraries/places/internal/zzazj;)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p4, v1}, Lcom/google/android/libraries/places/internal/zzazj;->zze(Lcom/google/android/libraries/places/internal/zzazj;)V

    throw p1

    :cond_0
    sget-object v0, Lcom/google/android/libraries/places/internal/zzbmg;->zza:Lcom/google/android/libraries/places/internal/zzayh;

    invoke-virtual {p2, v0}, Lcom/google/android/libraries/places/internal/zzayj;->zzl(Lcom/google/android/libraries/places/internal/zzayh;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzbmg;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    move-object v8, v1

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lcom/google/android/libraries/places/internal/zzbmg;->zzf:Lcom/google/android/libraries/places/internal/zzbpp;

    move-object v8, v2

    :goto_0
    if-nez v0, :cond_2

    :goto_1
    move-object v9, v1

    goto :goto_2

    :cond_2
    iget-object v1, v0, Lcom/google/android/libraries/places/internal/zzbmg;->zzg:Lcom/google/android/libraries/places/internal/zzbje;

    goto :goto_1

    :goto_2
    new-instance v0, Lcom/google/android/libraries/places/internal/zzbkr;

    move-object v3, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p3

    move-object v7, p2

    move-object v10, p4

    invoke-direct/range {v3 .. v10}, Lcom/google/android/libraries/places/internal/zzbkr;-><init>(Lcom/google/android/libraries/places/internal/zzbkt;Lcom/google/android/libraries/places/internal/zzbcl;Lcom/google/android/libraries/places/internal/zzbcf;Lcom/google/android/libraries/places/internal/zzayj;Lcom/google/android/libraries/places/internal/zzbpp;Lcom/google/android/libraries/places/internal/zzbje;Lcom/google/android/libraries/places/internal/zzazj;)V

    return-object v0
.end method
