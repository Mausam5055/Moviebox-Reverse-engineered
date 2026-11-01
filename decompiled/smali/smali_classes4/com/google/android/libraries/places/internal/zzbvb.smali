.class public abstract Lcom/google/android/libraries/places/internal/zzbvb;
.super Lcom/google/android/libraries/places/internal/zzbbm;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzbbm;-><init>()V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/libraries/places/internal/zzmn;->zzb(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzmm;

    move-result-object v0

    const-string v1, "delegate"

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbvb;->zzg()Lcom/google/android/libraries/places/internal/zzbbm;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzmm;->zzd(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzmm;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzmm;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzb(Lcom/google/android/libraries/places/internal/zzbdo;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbvb;->zzg()Lcom/google/android/libraries/places/internal/zzbbm;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzbbm;->zzb(Lcom/google/android/libraries/places/internal/zzbdo;)V

    return-void
.end method

.method public final zzc(Lcom/google/android/libraries/places/internal/zzbbi;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbvb;->zzg()Lcom/google/android/libraries/places/internal/zzbbm;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzbbm;->zzc(Lcom/google/android/libraries/places/internal/zzbbi;)V

    return-void
.end method

.method public final zzd()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbvb;->zzg()Lcom/google/android/libraries/places/internal/zzbbm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbbm;->zzd()V

    return-void
.end method

.method public zze()V
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public final zzf()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbvb;->zzg()Lcom/google/android/libraries/places/internal/zzbbm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbbm;->zzf()Z

    const/4 v0, 0x0

    return v0
.end method

.method protected abstract zzg()Lcom/google/android/libraries/places/internal/zzbbm;
.end method
