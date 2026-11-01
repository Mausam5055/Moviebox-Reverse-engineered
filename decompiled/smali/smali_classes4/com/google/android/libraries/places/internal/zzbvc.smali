.class public abstract Lcom/google/android/libraries/places/internal/zzbvc;
.super Lcom/google/android/libraries/places/internal/zzbbd;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzbbd;-><init>()V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/libraries/places/internal/zzmn;->zzb(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzmm;

    move-result-object v0

    const-string v1, "delegate"

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbvc;->zzf()Lcom/google/android/libraries/places/internal/zzbbd;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzmm;->zzd(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzmm;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzmm;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Lcom/google/android/libraries/places/internal/zzbba;)Lcom/google/android/libraries/places/internal/zzbbj;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbvc;->zzf()Lcom/google/android/libraries/places/internal/zzbbd;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzbbd;->zza(Lcom/google/android/libraries/places/internal/zzbba;)Lcom/google/android/libraries/places/internal/zzbbj;

    move-result-object p1

    return-object p1
.end method

.method public final zzb()Lcom/google/android/libraries/places/internal/zzbdw;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbvc;->zzf()Lcom/google/android/libraries/places/internal/zzbbd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbbd;->zzb()Lcom/google/android/libraries/places/internal/zzbdw;

    move-result-object v0

    return-object v0
.end method

.method public final zzc()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbvc;->zzf()Lcom/google/android/libraries/places/internal/zzbbd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbbd;->zzc()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public final zzd()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbvc;->zzf()Lcom/google/android/libraries/places/internal/zzbbd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbbd;->zzd()V

    return-void
.end method

.method public zze(Lcom/google/android/libraries/places/internal/zzaze;Lcom/google/android/libraries/places/internal/zzbbk;)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method protected abstract zzf()Lcom/google/android/libraries/places/internal/zzbbd;
.end method
