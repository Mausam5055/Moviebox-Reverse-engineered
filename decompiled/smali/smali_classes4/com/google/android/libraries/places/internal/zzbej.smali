.class public abstract Lcom/google/android/libraries/places/internal/zzbej;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzbqp;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract zzc()Lcom/google/android/libraries/places/internal/zzbei;
.end method

.method protected abstract zzd()Lcom/google/android/libraries/places/internal/zzbis;
.end method

.method public zzp()Z
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public final zzr()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbej;->zzd()Lcom/google/android/libraries/places/internal/zzbis;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/zzbis;->zzf()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbej;->zzd()Lcom/google/android/libraries/places/internal/zzbis;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/zzbis;->zzc()V

    :cond_0
    return-void
.end method

.method protected final zzs(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbej;->zzc()Lcom/google/android/libraries/places/internal/zzbei;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/libraries/places/internal/zzbei;->zzn(Lcom/google/android/libraries/places/internal/zzbei;I)V

    return-void
.end method

.method public final zzt()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbej;->zzc()Lcom/google/android/libraries/places/internal/zzbei;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbei;->zzv()V

    return-void
.end method

.method public final zzu(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbej;->zzc()Lcom/google/android/libraries/places/internal/zzbei;

    move-result-object p1

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/google/android/libraries/places/internal/zzbei;->zzo(Lcom/google/android/libraries/places/internal/zzbei;I)V

    return-void
.end method

.method public final zzv(Lcom/google/android/libraries/places/internal/zzazc;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbej;->zzd()Lcom/google/android/libraries/places/internal/zzbis;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/libraries/places/internal/zzbis;->zza(Lcom/google/android/libraries/places/internal/zzazc;)Lcom/google/android/libraries/places/internal/zzbis;

    return-void
.end method

.method public final zzw(Ljava/io/InputStream;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbej;->zzd()Lcom/google/android/libraries/places/internal/zzbis;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/zzbis;->zzf()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbej;->zzd()Lcom/google/android/libraries/places/internal/zzbis;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/libraries/places/internal/zzbis;->zze(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbjd;->zzi(Ljava/io/Closeable;)V

    return-void

    :goto_1
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbjd;->zzi(Ljava/io/Closeable;)V

    throw v0
.end method
