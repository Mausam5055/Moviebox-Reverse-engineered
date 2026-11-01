.class final Lcom/google/android/libraries/places/internal/zzbfm;
.super Lcom/google/android/libraries/places/internal/zzbgi;


# instance fields
.field final synthetic zza:Lcom/google/android/libraries/places/internal/zzbvq;

.field final synthetic zzb:Lcom/google/android/libraries/places/internal/zzbdo;

.field final synthetic zzc:Lcom/google/android/libraries/places/internal/zzbcf;

.field final synthetic zzd:Lcom/google/android/libraries/places/internal/zzbfo;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzbfo;Lcom/google/android/libraries/places/internal/zzbvq;Lcom/google/android/libraries/places/internal/zzbdo;Lcom/google/android/libraries/places/internal/zzbcf;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbfm;->zza:Lcom/google/android/libraries/places/internal/zzbvq;

    iput-object p3, p0, Lcom/google/android/libraries/places/internal/zzbfm;->zzb:Lcom/google/android/libraries/places/internal/zzbdo;

    iput-object p4, p0, Lcom/google/android/libraries/places/internal/zzbfm;->zzc:Lcom/google/android/libraries/places/internal/zzbcf;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbfm;->zzd:Lcom/google/android/libraries/places/internal/zzbfo;

    iget-object p1, p1, Lcom/google/android/libraries/places/internal/zzbfo;->zza:Lcom/google/android/libraries/places/internal/zzbfq;

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbfq;->zzh(Lcom/google/android/libraries/places/internal/zzbfq;)Lcom/google/android/libraries/places/internal/zzazj;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzbgi;-><init>(Lcom/google/android/libraries/places/internal/zzazj;)V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 4

    sget v0, Lcom/google/android/libraries/places/internal/zzbvr;->zza:I

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbfm;->zzd:Lcom/google/android/libraries/places/internal/zzbfo;

    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzbfo;->zza:Lcom/google/android/libraries/places/internal/zzbfq;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbfq;->zzl(Lcom/google/android/libraries/places/internal/zzbfq;)Lcom/google/android/libraries/places/internal/zzbfj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbfj;->zzd()V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbfm;->zzb:Lcom/google/android/libraries/places/internal/zzbdo;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbfm;->zzc:Lcom/google/android/libraries/places/internal/zzbcf;

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbfm;->zzd:Lcom/google/android/libraries/places/internal/zzbfo;

    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzbfo;->zzb(Lcom/google/android/libraries/places/internal/zzbfo;)Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzbfo;->zzb(Lcom/google/android/libraries/places/internal/zzbfo;)Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/places/internal/zzbcf;

    invoke-direct {v1}, Lcom/google/android/libraries/places/internal/zzbcf;-><init>()V

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbfm;->zzd:Lcom/google/android/libraries/places/internal/zzbfo;

    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzbfo;->zza(Lcom/google/android/libraries/places/internal/zzbfo;)Lcom/google/android/libraries/places/internal/zzayn;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/google/android/libraries/places/internal/zzayn;->zza(Lcom/google/android/libraries/places/internal/zzbdo;Lcom/google/android/libraries/places/internal/zzbcf;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbfm;->zzd:Lcom/google/android/libraries/places/internal/zzbfo;

    iget-object v1, v1, Lcom/google/android/libraries/places/internal/zzbfo;->zza:Lcom/google/android/libraries/places/internal/zzbfq;

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzbfq;->zzk(Lcom/google/android/libraries/places/internal/zzbfq;)Lcom/google/android/libraries/places/internal/zzbfg;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbdo;->zzl()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/android/libraries/places/internal/zzbfg;->zza(Z)V

    return-void

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbfm;->zzd:Lcom/google/android/libraries/places/internal/zzbfo;

    iget-object v2, v2, Lcom/google/android/libraries/places/internal/zzbfo;->zza:Lcom/google/android/libraries/places/internal/zzbfq;

    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzbfq;->zzk(Lcom/google/android/libraries/places/internal/zzbfq;)Lcom/google/android/libraries/places/internal/zzbfg;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbdo;->zzl()Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/google/android/libraries/places/internal/zzbfg;->zza(Z)V

    throw v1
.end method
