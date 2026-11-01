.class abstract Lcom/google/android/libraries/places/internal/zzbgi;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/android/libraries/places/internal/zzazj;


# direct methods
.method protected constructor <init>(Lcom/google/android/libraries/places/internal/zzazj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbgi;->zza:Lcom/google/android/libraries/places/internal/zzazj;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbgi;->zza:Lcom/google/android/libraries/places/internal/zzazj;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzazj;->zza()Lcom/google/android/libraries/places/internal/zzazj;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbgi;->zza()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbgi;->zza:Lcom/google/android/libraries/places/internal/zzazj;

    invoke-virtual {v1, v0}, Lcom/google/android/libraries/places/internal/zzazj;->zze(Lcom/google/android/libraries/places/internal/zzazj;)V

    return-void

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbgi;->zza:Lcom/google/android/libraries/places/internal/zzazj;

    invoke-virtual {v2, v0}, Lcom/google/android/libraries/places/internal/zzazj;->zze(Lcom/google/android/libraries/places/internal/zzazj;)V

    throw v1
.end method

.method public abstract zza()V
.end method
