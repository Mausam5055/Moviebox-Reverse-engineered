.class final Lcom/google/android/libraries/places/internal/zzbkb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzbmk;


# instance fields
.field final zza:Lcom/google/android/libraries/places/internal/zzbgf;

.field zzb:Z

.field final synthetic zzc:Lcom/google/android/libraries/places/internal/zzbkd;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzbkd;Lcom/google/android/libraries/places/internal/zzbgf;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbkb;->zzc:Lcom/google/android/libraries/places/internal/zzbkd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/libraries/places/internal/zzbkb;->zzb:Z

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbkb;->zza:Lcom/google/android/libraries/places/internal/zzbgf;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/libraries/places/internal/zzaye;)Lcom/google/android/libraries/places/internal/zzaye;
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbkb;->zzc:Lcom/google/android/libraries/places/internal/zzbkd;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbkd;->zzq(Lcom/google/android/libraries/places/internal/zzbkd;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-object p1

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/internal/zzayy;

    const/4 p1, 0x0

    throw p1
.end method

.method public final zzb(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbkb;->zzc:Lcom/google/android/libraries/places/internal/zzbkd;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbkb;->zza:Lcom/google/android/libraries/places/internal/zzbgf;

    invoke-static {v0, v1, p1}, Lcom/google/android/libraries/places/internal/zzbkd;->zzC(Lcom/google/android/libraries/places/internal/zzbkd;Lcom/google/android/libraries/places/internal/zzbgf;Z)V

    return-void
.end method

.method public final zzc()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbkb;->zzc:Lcom/google/android/libraries/places/internal/zzbkd;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbkd;->zza(Lcom/google/android/libraries/places/internal/zzbkd;)Lcom/google/android/libraries/places/internal/zzaym;

    move-result-object v0

    const/4 v1, 0x2

    const-string v2, "READY"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzaym;->zza(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbkb;->zzc:Lcom/google/android/libraries/places/internal/zzbkd;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbkd;->zzg(Lcom/google/android/libraries/places/internal/zzbkd;)Lcom/google/android/libraries/places/internal/zzbdw;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/places/internal/zzbjy;

    invoke-direct {v1, p0}, Lcom/google/android/libraries/places/internal/zzbjy;-><init>(Lcom/google/android/libraries/places/internal/zzbkb;)V

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzbdw;->zzc(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbdw;->zzb()V

    return-void
.end method

.method public final zzd(Lcom/google/android/libraries/places/internal/zzbdo;)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbkb;->zzc:Lcom/google/android/libraries/places/internal/zzbkd;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbkd;->zza(Lcom/google/android/libraries/places/internal/zzbkd;)Lcom/google/android/libraries/places/internal/zzaym;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbkb;->zza:Lcom/google/android/libraries/places/internal/zzbgf;

    invoke-interface {v1}, Lcom/google/android/libraries/places/internal/zzbau;->zzc()Lcom/google/android/libraries/places/internal/zzbap;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbkb;->zzc:Lcom/google/android/libraries/places/internal/zzbkd;

    invoke-static {v2, p1}, Lcom/google/android/libraries/places/internal/zzbkd;->zzo(Lcom/google/android/libraries/places/internal/zzbkd;Lcom/google/android/libraries/places/internal/zzbdo;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v2, v4, v1

    const-string v2, "{0} SHUTDOWN with {1}"

    invoke-virtual {v0, v3, v2, v4}, Lcom/google/android/libraries/places/internal/zzaym;->zzb(ILjava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v1, p0, Lcom/google/android/libraries/places/internal/zzbkb;->zzb:Z

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbkb;->zzc:Lcom/google/android/libraries/places/internal/zzbkd;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbkd;->zzg(Lcom/google/android/libraries/places/internal/zzbkd;)Lcom/google/android/libraries/places/internal/zzbdw;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/places/internal/zzbjz;

    invoke-direct {v1, p0, p1}, Lcom/google/android/libraries/places/internal/zzbjz;-><init>(Lcom/google/android/libraries/places/internal/zzbkb;Lcom/google/android/libraries/places/internal/zzbdo;)V

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzbdw;->zzc(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbdw;->zzb()V

    return-void
.end method

.method public final zze()V
    .locals 5

    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbkb;->zzb:Z

    const-string v1, "transportShutdown() must be called before transportTerminated()."

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zzmt;->zzp(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbkb;->zzc:Lcom/google/android/libraries/places/internal/zzbkd;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbkd;->zza(Lcom/google/android/libraries/places/internal/zzbkd;)Lcom/google/android/libraries/places/internal/zzaym;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbkb;->zza:Lcom/google/android/libraries/places/internal/zzbgf;

    invoke-interface {v1}, Lcom/google/android/libraries/places/internal/zzbau;->zzc()Lcom/google/android/libraries/places/internal/zzbap;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x2

    const-string v4, "{0} Terminated"

    invoke-virtual {v0, v1, v4, v2}, Lcom/google/android/libraries/places/internal/zzaym;->zzb(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbkb;->zzc:Lcom/google/android/libraries/places/internal/zzbkd;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbkd;->zzd(Lcom/google/android/libraries/places/internal/zzbkd;)Lcom/google/android/libraries/places/internal/zzbah;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbkb;->zza:Lcom/google/android/libraries/places/internal/zzbgf;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzbah;->zzf(Lcom/google/android/libraries/places/internal/zzbao;)V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbkb;->zzc:Lcom/google/android/libraries/places/internal/zzbkd;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbkb;->zza:Lcom/google/android/libraries/places/internal/zzbgf;

    invoke-static {v0, v1, v3}, Lcom/google/android/libraries/places/internal/zzbkd;->zzC(Lcom/google/android/libraries/places/internal/zzbkd;Lcom/google/android/libraries/places/internal/zzbgf;Z)V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbkb;->zzc:Lcom/google/android/libraries/places/internal/zzbkd;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbkd;->zzq(Lcom/google/android/libraries/places/internal/zzbkd;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbkb;->zzc:Lcom/google/android/libraries/places/internal/zzbkd;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbkd;->zzg(Lcom/google/android/libraries/places/internal/zzbkd;)Lcom/google/android/libraries/places/internal/zzbdw;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/places/internal/zzbka;

    invoke-direct {v1, p0}, Lcom/google/android/libraries/places/internal/zzbka;-><init>(Lcom/google/android/libraries/places/internal/zzbkb;)V

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzbdw;->zzc(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbdw;->zzb()V

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzayy;

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbkb;->zza:Lcom/google/android/libraries/places/internal/zzbgf;

    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/zzbgf;->zze()Lcom/google/android/libraries/places/internal/zzaye;

    const/4 v0, 0x0

    throw v0
.end method
