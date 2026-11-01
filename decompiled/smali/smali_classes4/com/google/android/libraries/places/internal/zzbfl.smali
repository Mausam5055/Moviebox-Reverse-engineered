.class final Lcom/google/android/libraries/places/internal/zzbfl;
.super Lcom/google/android/libraries/places/internal/zzbgi;


# instance fields
.field final synthetic zza:Lcom/google/android/libraries/places/internal/zzbvq;

.field final synthetic zzb:Lcom/google/android/libraries/places/internal/zzbqq;

.field final synthetic zzc:Lcom/google/android/libraries/places/internal/zzbfo;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzbfo;Lcom/google/android/libraries/places/internal/zzbvq;Lcom/google/android/libraries/places/internal/zzbqq;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbfl;->zza:Lcom/google/android/libraries/places/internal/zzbvq;

    iput-object p3, p0, Lcom/google/android/libraries/places/internal/zzbfl;->zzb:Lcom/google/android/libraries/places/internal/zzbqq;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbfl;->zzc:Lcom/google/android/libraries/places/internal/zzbfo;

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

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbfl;->zzc:Lcom/google/android/libraries/places/internal/zzbfo;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbfo;->zzb(Lcom/google/android/libraries/places/internal/zzbfo;)Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbfl;->zzb:Lcom/google/android/libraries/places/internal/zzbqq;

    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/zzbqq;->zza()Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbfl;->zzc:Lcom/google/android/libraries/places/internal/zzbfo;

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzbfo;->zza(Lcom/google/android/libraries/places/internal/zzbfo;)Lcom/google/android/libraries/places/internal/zzayn;

    move-result-object v2

    iget-object v1, v1, Lcom/google/android/libraries/places/internal/zzbfo;->zza:Lcom/google/android/libraries/places/internal/zzbfq;

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzbfq;->zzj(Lcom/google/android/libraries/places/internal/zzbfq;)Lcom/google/android/libraries/places/internal/zzbcl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/libraries/places/internal/zzbcl;->zzd(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/android/libraries/places/internal/zzayn;->zzc(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v1

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbjd;->zzi(Ljava/io/Closeable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    return-void

    :goto_1
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbfl;->zzb:Lcom/google/android/libraries/places/internal/zzbqq;

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzbjd;->zzh(Lcom/google/android/libraries/places/internal/zzbqq;)V

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbfl;->zzc:Lcom/google/android/libraries/places/internal/zzbfo;

    sget-object v2, Lcom/google/android/libraries/places/internal/zzbdo;->zzb:Lcom/google/android/libraries/places/internal/zzbdo;

    invoke-virtual {v2, v0}, Lcom/google/android/libraries/places/internal/zzbdo;->zzf(Ljava/lang/Throwable;)Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object v0

    const-string v2, "Failed to read message."

    invoke-virtual {v0, v2}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/libraries/places/internal/zzbfo;->zzc(Lcom/google/android/libraries/places/internal/zzbfo;Lcom/google/android/libraries/places/internal/zzbdo;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbfl;->zzb:Lcom/google/android/libraries/places/internal/zzbqq;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbjd;->zzh(Lcom/google/android/libraries/places/internal/zzbqq;)V

    return-void
.end method
