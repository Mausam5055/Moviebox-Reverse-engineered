.class abstract Lcom/google/android/libraries/places/internal/zzbrh;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zzc:Lcom/google/android/libraries/places/internal/zzbri;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/libraries/places/internal/zzbri;Lcom/google/android/libraries/places/internal/zzbrg;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbrh;->zzc:Lcom/google/android/libraries/places/internal/zzbri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbrh;->zzc:Lcom/google/android/libraries/places/internal/zzbri;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbri;->zzh(Lcom/google/android/libraries/places/internal/zzbri;)Lcom/google/android/libraries/places/internal/zzbwq;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbrh;->zza()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unable to perform write due to unavailable sink."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbrh;->zzc:Lcom/google/android/libraries/places/internal/zzbri;

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzbri;->zzd(Lcom/google/android/libraries/places/internal/zzbri;)Lcom/google/android/libraries/places/internal/zzbrj;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/libraries/places/internal/zzbrj;->zzb(Ljava/lang/Throwable;)V

    return-void
.end method

.method public abstract zza()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
