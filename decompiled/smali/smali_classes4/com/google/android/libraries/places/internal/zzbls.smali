.class final Lcom/google/android/libraries/places/internal/zzbls;
.super Lcom/google/android/libraries/places/internal/zzayk;


# instance fields
.field final synthetic zza:Lcom/google/android/libraries/places/internal/zzbma;

.field private final zzb:Ljava/util/concurrent/atomic/AtomicReference;

.field private final zzc:Ljava/lang/String;

.field private final zzd:Lcom/google/android/libraries/places/internal/zzayk;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/libraries/places/internal/zzbma;Ljava/lang/String;Lcom/google/android/libraries/places/internal/zzblr;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbls;->zza:Lcom/google/android/libraries/places/internal/zzbma;

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzayk;-><init>()V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbma;->zzl()Lcom/google/android/libraries/places/internal/zzbam;

    move-result-object p3

    invoke-direct {p1, p3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbls;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance p1, Lcom/google/android/libraries/places/internal/zzblk;

    invoke-direct {p1, p0}, Lcom/google/android/libraries/places/internal/zzblk;-><init>(Lcom/google/android/libraries/places/internal/zzbls;)V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbls;->zzd:Lcom/google/android/libraries/places/internal/zzayk;

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbls;->zzc:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic zzc(Lcom/google/android/libraries/places/internal/zzbls;Lcom/google/android/libraries/places/internal/zzbcl;Lcom/google/android/libraries/places/internal/zzayj;)Lcom/google/android/libraries/places/internal/zzayo;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/libraries/places/internal/zzbls;->zzh(Lcom/google/android/libraries/places/internal/zzbcl;Lcom/google/android/libraries/places/internal/zzayj;)Lcom/google/android/libraries/places/internal/zzayo;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic zzd(Lcom/google/android/libraries/places/internal/zzbls;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbls;->zzc:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic zze(Lcom/google/android/libraries/places/internal/zzbls;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbls;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method private final zzh(Lcom/google/android/libraries/places/internal/zzbcl;Lcom/google/android/libraries/places/internal/zzayj;)Lcom/google/android/libraries/places/internal/zzayo;
    .locals 8

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbls;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/google/android/libraries/places/internal/zzbam;

    if-nez v2, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbls;->zzd:Lcom/google/android/libraries/places/internal/zzayk;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/libraries/places/internal/zzayk;->zza(Lcom/google/android/libraries/places/internal/zzbcl;Lcom/google/android/libraries/places/internal/zzayj;)Lcom/google/android/libraries/places/internal/zzayo;

    move-result-object p1

    return-object p1

    :cond_0
    instance-of v0, v2, Lcom/google/android/libraries/places/internal/zzbmi;

    if-eqz v0, :cond_2

    check-cast v2, Lcom/google/android/libraries/places/internal/zzbmi;

    iget-object v0, v2, Lcom/google/android/libraries/places/internal/zzbmi;->zzb:Lcom/google/android/libraries/places/internal/zzbmj;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzbmj;->zzb(Lcom/google/android/libraries/places/internal/zzbcl;)Lcom/google/android/libraries/places/internal/zzbmg;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Lcom/google/android/libraries/places/internal/zzbmg;->zza:Lcom/google/android/libraries/places/internal/zzayh;

    invoke-virtual {p2, v1, v0}, Lcom/google/android/libraries/places/internal/zzayj;->zze(Lcom/google/android/libraries/places/internal/zzayh;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzayj;

    move-result-object p2

    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbls;->zzd:Lcom/google/android/libraries/places/internal/zzayk;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/libraries/places/internal/zzayk;->zza(Lcom/google/android/libraries/places/internal/zzbcl;Lcom/google/android/libraries/places/internal/zzayj;)Lcom/google/android/libraries/places/internal/zzayo;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbls;->zzd:Lcom/google/android/libraries/places/internal/zzayk;

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbls;->zza:Lcom/google/android/libraries/places/internal/zzbma;

    new-instance v7, Lcom/google/android/libraries/places/internal/zzbkv;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbma;->zzI(Lcom/google/android/libraries/places/internal/zzbma;)Ljava/util/concurrent/Executor;

    move-result-object v4

    move-object v1, v7

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/android/libraries/places/internal/zzbkv;-><init>(Lcom/google/android/libraries/places/internal/zzbam;Lcom/google/android/libraries/places/internal/zzayk;Ljava/util/concurrent/Executor;Lcom/google/android/libraries/places/internal/zzbcl;Lcom/google/android/libraries/places/internal/zzayj;)V

    return-object v7
.end method


# virtual methods
.method public final zza(Lcom/google/android/libraries/places/internal/zzbcl;Lcom/google/android/libraries/places/internal/zzayj;)Lcom/google/android/libraries/places/internal/zzayo;
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbls;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbma;->zzl()Lcom/google/android/libraries/places/internal/zzbam;

    move-result-object v1

    if-eq v0, v1, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/google/android/libraries/places/internal/zzbls;->zzh(Lcom/google/android/libraries/places/internal/zzbcl;Lcom/google/android/libraries/places/internal/zzayj;)Lcom/google/android/libraries/places/internal/zzayo;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbls;->zza:Lcom/google/android/libraries/places/internal/zzbma;

    new-instance v1, Lcom/google/android/libraries/places/internal/zzbll;

    invoke-direct {v1, p0}, Lcom/google/android/libraries/places/internal/zzbll;-><init>(Lcom/google/android/libraries/places/internal/zzbls;)V

    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzbma;->zzf:Lcom/google/android/libraries/places/internal/zzbdw;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzbdw;->zzc(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbdw;->zzb()V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbls;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbma;->zzl()Lcom/google/android/libraries/places/internal/zzbam;

    move-result-object v1

    if-eq v0, v1, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/google/android/libraries/places/internal/zzbls;->zzh(Lcom/google/android/libraries/places/internal/zzbcl;Lcom/google/android/libraries/places/internal/zzayj;)Lcom/google/android/libraries/places/internal/zzayo;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbls;->zza:Lcom/google/android/libraries/places/internal/zzbma;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbma;->zzK(Lcom/google/android/libraries/places/internal/zzbma;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance p1, Lcom/google/android/libraries/places/internal/zzblm;

    invoke-direct {p1, p0}, Lcom/google/android/libraries/places/internal/zzblm;-><init>(Lcom/google/android/libraries/places/internal/zzbls;)V

    return-object p1

    :cond_2
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzazj;->zzb()Lcom/google/android/libraries/places/internal/zzazj;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/places/internal/zzblq;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/google/android/libraries/places/internal/zzblq;-><init>(Lcom/google/android/libraries/places/internal/zzbls;Lcom/google/android/libraries/places/internal/zzazj;Lcom/google/android/libraries/places/internal/zzbcl;Lcom/google/android/libraries/places/internal/zzayj;)V

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbls;->zza:Lcom/google/android/libraries/places/internal/zzbma;

    new-instance p2, Lcom/google/android/libraries/places/internal/zzbln;

    invoke-direct {p2, p0, v1}, Lcom/google/android/libraries/places/internal/zzbln;-><init>(Lcom/google/android/libraries/places/internal/zzbls;Lcom/google/android/libraries/places/internal/zzblq;)V

    iget-object p1, p1, Lcom/google/android/libraries/places/internal/zzbma;->zzf:Lcom/google/android/libraries/places/internal/zzbdw;

    invoke-virtual {p1, p2}, Lcom/google/android/libraries/places/internal/zzbdw;->zzc(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbdw;->zzb()V

    return-object v1
.end method

.method public final zzb()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbls;->zzc:Ljava/lang/String;

    return-object v0
.end method

.method final zzf()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbls;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbma;->zzl()Lcom/google/android/libraries/places/internal/zzbam;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/places/internal/zzbls;->zzg(Lcom/google/android/libraries/places/internal/zzbam;)V

    :cond_0
    return-void
.end method

.method final zzg(Lcom/google/android/libraries/places/internal/zzbam;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbls;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzbam;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbls;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbma;->zzl()Lcom/google/android/libraries/places/internal/zzbam;

    move-result-object p1

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbls;->zza:Lcom/google/android/libraries/places/internal/zzbma;

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbma;->zzF(Lcom/google/android/libraries/places/internal/zzbma;)Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbma;->zzF(Lcom/google/android/libraries/places/internal/zzbma;)Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzblq;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzblq;->zzl()V

    goto :goto_0

    :cond_0
    return-void
.end method
