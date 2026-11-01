.class public final Lcom/google/android/libraries/places/internal/zzbvh;
.super Lcom/google/android/libraries/places/internal/zzbvc;


# instance fields
.field final synthetic zza:Lcom/google/android/libraries/places/internal/zzbvi;


# direct methods
.method protected constructor <init>(Lcom/google/android/libraries/places/internal/zzbvi;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbvh;->zza:Lcom/google/android/libraries/places/internal/zzbvi;

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzbvc;-><init>()V

    return-void
.end method


# virtual methods
.method public final zze(Lcom/google/android/libraries/places/internal/zzaze;Lcom/google/android/libraries/places/internal/zzbbk;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbvh;->zza:Lcom/google/android/libraries/places/internal/zzbvi;

    iget-object v1, v0, Lcom/google/android/libraries/places/internal/zzbvi;->zza:Lcom/google/android/libraries/places/internal/zzbvk;

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzbvk;->zzj(Lcom/google/android/libraries/places/internal/zzbvk;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbvi;->zze(Lcom/google/android/libraries/places/internal/zzbvi;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbvh;->zza:Lcom/google/android/libraries/places/internal/zzbvi;

    invoke-static {v0, p1}, Lcom/google/android/libraries/places/internal/zzbvi;->zzg(Lcom/google/android/libraries/places/internal/zzbvi;Lcom/google/android/libraries/places/internal/zzaze;)V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbvh;->zza:Lcom/google/android/libraries/places/internal/zzbvi;

    invoke-static {v0, p2}, Lcom/google/android/libraries/places/internal/zzbvi;->zzf(Lcom/google/android/libraries/places/internal/zzbvi;Lcom/google/android/libraries/places/internal/zzbbk;)V

    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzbvh;->zza:Lcom/google/android/libraries/places/internal/zzbvi;

    invoke-static {p2}, Lcom/google/android/libraries/places/internal/zzbvi;->zzl(Lcom/google/android/libraries/places/internal/zzbvi;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzbvh;->zza:Lcom/google/android/libraries/places/internal/zzbvi;

    iget-object v0, p2, Lcom/google/android/libraries/places/internal/zzbvi;->zza:Lcom/google/android/libraries/places/internal/zzbvk;

    iget-boolean v0, v0, Lcom/google/android/libraries/places/internal/zzbvk;->zzf:Z

    if-nez v0, :cond_2

    sget-object v0, Lcom/google/android/libraries/places/internal/zzaze;->zzd:Lcom/google/android/libraries/places/internal/zzaze;

    if-ne p1, v0, :cond_1

    invoke-static {p2}, Lcom/google/android/libraries/places/internal/zzbvi;->zzd(Lcom/google/android/libraries/places/internal/zzbvi;)Lcom/google/android/libraries/places/internal/zzbvg;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbvb;->zzg()Lcom/google/android/libraries/places/internal/zzbbm;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbbm;->zzd()V

    :cond_1
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbvh;->zza:Lcom/google/android/libraries/places/internal/zzbvi;

    iget-object p1, p1, Lcom/google/android/libraries/places/internal/zzbvi;->zza:Lcom/google/android/libraries/places/internal/zzbvk;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbvk;->zzl()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected final zzf()Lcom/google/android/libraries/places/internal/zzbbd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbvh;->zza:Lcom/google/android/libraries/places/internal/zzbvi;

    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzbvi;->zza:Lcom/google/android/libraries/places/internal/zzbvk;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbvk;->zzg(Lcom/google/android/libraries/places/internal/zzbvk;)Lcom/google/android/libraries/places/internal/zzbbd;

    move-result-object v0

    return-object v0
.end method
