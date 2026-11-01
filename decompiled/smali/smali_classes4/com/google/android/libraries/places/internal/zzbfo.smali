.class final Lcom/google/android/libraries/places/internal/zzbfo;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzbft;


# instance fields
.field final synthetic zza:Lcom/google/android/libraries/places/internal/zzbfq;

.field private final zzb:Lcom/google/android/libraries/places/internal/zzayn;

.field private zzc:Lcom/google/android/libraries/places/internal/zzbdo;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/places/internal/zzbfq;Lcom/google/android/libraries/places/internal/zzayn;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbfo;->zza:Lcom/google/android/libraries/places/internal/zzbfq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbfo;->zzb:Lcom/google/android/libraries/places/internal/zzayn;

    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/libraries/places/internal/zzbfo;)Lcom/google/android/libraries/places/internal/zzayn;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbfo;->zzb:Lcom/google/android/libraries/places/internal/zzayn;

    return-object p0
.end method

.method static bridge synthetic zzb(Lcom/google/android/libraries/places/internal/zzbfo;)Lcom/google/android/libraries/places/internal/zzbdo;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbfo;->zzc:Lcom/google/android/libraries/places/internal/zzbdo;

    return-object p0
.end method

.method static bridge synthetic zzc(Lcom/google/android/libraries/places/internal/zzbfo;Lcom/google/android/libraries/places/internal/zzbdo;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbfo;->zzc:Lcom/google/android/libraries/places/internal/zzbdo;

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbfo;->zza:Lcom/google/android/libraries/places/internal/zzbfq;

    invoke-static {p0}, Lcom/google/android/libraries/places/internal/zzbfq;->zzo(Lcom/google/android/libraries/places/internal/zzbfq;)Lcom/google/android/libraries/places/internal/zzbfr;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/google/android/libraries/places/internal/zzbfr;->zzh(Lcom/google/android/libraries/places/internal/zzbdo;)V

    return-void
.end method


# virtual methods
.method public final zzd(Lcom/google/android/libraries/places/internal/zzbdo;Lcom/google/android/libraries/places/internal/zzbfs;Lcom/google/android/libraries/places/internal/zzbcf;)V
    .locals 2

    sget p2, Lcom/google/android/libraries/places/internal/zzbvr;->zza:I

    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzbfo;->zza:Lcom/google/android/libraries/places/internal/zzbfq;

    invoke-static {p2}, Lcom/google/android/libraries/places/internal/zzbfq;->zzi(Lcom/google/android/libraries/places/internal/zzbfq;)Lcom/google/android/libraries/places/internal/zzazn;

    move-result-object p2

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbdo;->zza()Lcom/google/android/libraries/places/internal/zzbdj;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/internal/zzbdj;->zzb:Lcom/google/android/libraries/places/internal/zzbdj;

    if-ne v0, v1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/google/android/libraries/places/internal/zzazn;->zze()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbfo;->zza:Lcom/google/android/libraries/places/internal/zzbfq;

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbfq;->zzl(Lcom/google/android/libraries/places/internal/zzbfq;)Lcom/google/android/libraries/places/internal/zzbfj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbfj;->zzb()Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object p1

    new-instance p3, Lcom/google/android/libraries/places/internal/zzbcf;

    invoke-direct {p3}, Lcom/google/android/libraries/places/internal/zzbcf;-><init>()V

    :cond_0
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbvr;->zza()Lcom/google/android/libraries/places/internal/zzbvq;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbfo;->zza:Lcom/google/android/libraries/places/internal/zzbfq;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbfq;->zzp(Lcom/google/android/libraries/places/internal/zzbfq;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/places/internal/zzbfm;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/google/android/libraries/places/internal/zzbfm;-><init>(Lcom/google/android/libraries/places/internal/zzbfo;Lcom/google/android/libraries/places/internal/zzbvq;Lcom/google/android/libraries/places/internal/zzbdo;Lcom/google/android/libraries/places/internal/zzbcf;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zze(Lcom/google/android/libraries/places/internal/zzbcf;)V
    .locals 3

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbvr;->zza()Lcom/google/android/libraries/places/internal/zzbvq;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbfo;->zza:Lcom/google/android/libraries/places/internal/zzbfq;

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzbfq;->zzp(Lcom/google/android/libraries/places/internal/zzbfq;)Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/google/android/libraries/places/internal/zzbfk;

    invoke-direct {v2, p0, v0, p1}, Lcom/google/android/libraries/places/internal/zzbfk;-><init>(Lcom/google/android/libraries/places/internal/zzbfo;Lcom/google/android/libraries/places/internal/zzbvq;Lcom/google/android/libraries/places/internal/zzbcf;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzf(Lcom/google/android/libraries/places/internal/zzbqq;)V
    .locals 3

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbvr;->zza()Lcom/google/android/libraries/places/internal/zzbvq;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbfo;->zza:Lcom/google/android/libraries/places/internal/zzbfq;

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzbfq;->zzp(Lcom/google/android/libraries/places/internal/zzbfq;)Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/google/android/libraries/places/internal/zzbfl;

    invoke-direct {v2, p0, v0, p1}, Lcom/google/android/libraries/places/internal/zzbfl;-><init>(Lcom/google/android/libraries/places/internal/zzbfo;Lcom/google/android/libraries/places/internal/zzbvq;Lcom/google/android/libraries/places/internal/zzbqq;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzg()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbfo;->zza:Lcom/google/android/libraries/places/internal/zzbfq;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbfq;->zzj(Lcom/google/android/libraries/places/internal/zzbfq;)Lcom/google/android/libraries/places/internal/zzbcl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbcl;->zzb()Lcom/google/android/libraries/places/internal/zzbcj;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/internal/zzbcj;->zza:Lcom/google/android/libraries/places/internal/zzbcj;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/google/android/libraries/places/internal/zzbcj;->zzc:Lcom/google/android/libraries/places/internal/zzbcj;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbvr;->zza()Lcom/google/android/libraries/places/internal/zzbvq;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbfo;->zza:Lcom/google/android/libraries/places/internal/zzbfq;

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzbfq;->zzp(Lcom/google/android/libraries/places/internal/zzbfq;)Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/google/android/libraries/places/internal/zzbfn;

    invoke-direct {v2, p0, v0}, Lcom/google/android/libraries/places/internal/zzbfn;-><init>(Lcom/google/android/libraries/places/internal/zzbfo;Lcom/google/android/libraries/places/internal/zzbvq;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method
