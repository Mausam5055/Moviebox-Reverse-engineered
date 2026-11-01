.class final Lcom/google/android/libraries/places/internal/zzbre;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/libraries/places/internal/zzbri;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzbri;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbre;->zza:Lcom/google/android/libraries/places/internal/zzbri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbre;->zza:Lcom/google/android/libraries/places/internal/zzbri;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbri;->zzh(Lcom/google/android/libraries/places/internal/zzbri;)Lcom/google/android/libraries/places/internal/zzbwq;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbri;->zzg(Lcom/google/android/libraries/places/internal/zzbri;)Lcom/google/android/libraries/places/internal/zzbwb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzbwb;->zzg()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbri;->zzh(Lcom/google/android/libraries/places/internal/zzbri;)Lcom/google/android/libraries/places/internal/zzbwq;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbri;->zzg(Lcom/google/android/libraries/places/internal/zzbri;)Lcom/google/android/libraries/places/internal/zzbwb;

    move-result-object v2

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbri;->zzg(Lcom/google/android/libraries/places/internal/zzbri;)Lcom/google/android/libraries/places/internal/zzbwb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbwb;->zzg()J

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4}, Lcom/google/android/libraries/places/internal/zzbwq;->zzn(Lcom/google/android/libraries/places/internal/zzbwb;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbre;->zza:Lcom/google/android/libraries/places/internal/zzbri;

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzbri;->zzd(Lcom/google/android/libraries/places/internal/zzbri;)Lcom/google/android/libraries/places/internal/zzbrj;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/libraries/places/internal/zzbrj;->zzb(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbre;->zza:Lcom/google/android/libraries/places/internal/zzbri;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbri;->zzh(Lcom/google/android/libraries/places/internal/zzbri;)Lcom/google/android/libraries/places/internal/zzbwq;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbri;->zzh(Lcom/google/android/libraries/places/internal/zzbri;)Lcom/google/android/libraries/places/internal/zzbwq;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/zzbwq;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbre;->zza:Lcom/google/android/libraries/places/internal/zzbri;

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzbri;->zzd(Lcom/google/android/libraries/places/internal/zzbri;)Lcom/google/android/libraries/places/internal/zzbrj;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/libraries/places/internal/zzbrj;->zzb(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbre;->zza:Lcom/google/android/libraries/places/internal/zzbri;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbri;->zzf(Lcom/google/android/libraries/places/internal/zzbri;)Ljava/net/Socket;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbri;->zzf(Lcom/google/android/libraries/places/internal/zzbri;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    :catch_2
    move-exception v0

    goto :goto_2

    :cond_2
    return-void

    :goto_2
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbre;->zza:Lcom/google/android/libraries/places/internal/zzbri;

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzbri;->zzd(Lcom/google/android/libraries/places/internal/zzbri;)Lcom/google/android/libraries/places/internal/zzbrj;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/libraries/places/internal/zzbrj;->zzb(Ljava/lang/Throwable;)V

    return-void
.end method
