.class final Lcom/google/android/libraries/places/internal/zzbfn;
.super Lcom/google/android/libraries/places/internal/zzbgi;


# instance fields
.field final synthetic zza:Lcom/google/android/libraries/places/internal/zzbvq;

.field final synthetic zzb:Lcom/google/android/libraries/places/internal/zzbfo;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzbfo;Lcom/google/android/libraries/places/internal/zzbvq;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbfn;->zza:Lcom/google/android/libraries/places/internal/zzbvq;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbfn;->zzb:Lcom/google/android/libraries/places/internal/zzbfo;

    iget-object p1, p1, Lcom/google/android/libraries/places/internal/zzbfo;->zza:Lcom/google/android/libraries/places/internal/zzbfq;

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbfq;->zzh(Lcom/google/android/libraries/places/internal/zzbfq;)Lcom/google/android/libraries/places/internal/zzazj;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzbgi;-><init>(Lcom/google/android/libraries/places/internal/zzazj;)V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 3

    sget v0, Lcom/google/android/libraries/places/internal/zzbvr;->zza:I

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbfn;->zzb:Lcom/google/android/libraries/places/internal/zzbfo;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbfo;->zzb(Lcom/google/android/libraries/places/internal/zzbfo;)Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbfo;->zza(Lcom/google/android/libraries/places/internal/zzbfo;)Lcom/google/android/libraries/places/internal/zzayn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzayn;->zzd()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbfn;->zzb:Lcom/google/android/libraries/places/internal/zzbfo;

    sget-object v2, Lcom/google/android/libraries/places/internal/zzbdo;->zzb:Lcom/google/android/libraries/places/internal/zzbdo;

    invoke-virtual {v2, v0}, Lcom/google/android/libraries/places/internal/zzbdo;->zzf(Ljava/lang/Throwable;)Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object v0

    const-string v2, "Failed to call onReady."

    invoke-virtual {v0, v2}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/libraries/places/internal/zzbfo;->zzc(Lcom/google/android/libraries/places/internal/zzbfo;Lcom/google/android/libraries/places/internal/zzbdo;)V

    return-void
.end method
