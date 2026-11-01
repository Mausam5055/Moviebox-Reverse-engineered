.class public abstract Lcom/google/android/libraries/places/internal/zzazt;
.super Lcom/google/android/libraries/places/internal/zzbbs;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzbbs;-><init>()V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/libraries/places/internal/zzmn;->zzb(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzmm;

    move-result-object v0

    const-string v1, "delegate"

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzazt;->zzb()Lcom/google/android/libraries/places/internal/zzbbs;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzmm;->zzd(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzmm;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzmm;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()Lcom/google/android/libraries/places/internal/zzbbr;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzazt;->zzb()Lcom/google/android/libraries/places/internal/zzbbs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbbs;->zza()Lcom/google/android/libraries/places/internal/zzbbr;

    move-result-object v0

    return-object v0
.end method

.method protected abstract zzb()Lcom/google/android/libraries/places/internal/zzbbs;
.end method
