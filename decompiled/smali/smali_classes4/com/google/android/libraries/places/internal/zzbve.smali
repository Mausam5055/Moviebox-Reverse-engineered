.class final Lcom/google/android/libraries/places/internal/zzbve;
.super Lcom/google/android/libraries/places/internal/zzbvc;


# instance fields
.field zza:Lcom/google/android/libraries/places/internal/zzbbm;

.field final synthetic zzb:Lcom/google/android/libraries/places/internal/zzbvg;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzbvg;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbve;->zzb:Lcom/google/android/libraries/places/internal/zzbvg;

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzbvc;-><init>()V

    return-void
.end method


# virtual methods
.method public final zze(Lcom/google/android/libraries/places/internal/zzaze;Lcom/google/android/libraries/places/internal/zzbbk;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbve;->zzb:Lcom/google/android/libraries/places/internal/zzbvg;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbve;->zza:Lcom/google/android/libraries/places/internal/zzbbm;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbvg;->zzk(Lcom/google/android/libraries/places/internal/zzbvg;)Lcom/google/android/libraries/places/internal/zzbbm;

    move-result-object v2

    if-ne v1, v2, :cond_0

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbvg;->zzq(Lcom/google/android/libraries/places/internal/zzbvg;)Z

    move-result v0

    const-string v1, "there\'s pending lb while current lb has been out of READY"

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zzmt;->zzp(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbve;->zzb:Lcom/google/android/libraries/places/internal/zzbvg;

    invoke-static {v0, p1}, Lcom/google/android/libraries/places/internal/zzbvg;->zzn(Lcom/google/android/libraries/places/internal/zzbvg;Lcom/google/android/libraries/places/internal/zzaze;)V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbve;->zzb:Lcom/google/android/libraries/places/internal/zzbvg;

    invoke-static {v0, p2}, Lcom/google/android/libraries/places/internal/zzbvg;->zzm(Lcom/google/android/libraries/places/internal/zzbvg;Lcom/google/android/libraries/places/internal/zzbbk;)V

    sget-object p2, Lcom/google/android/libraries/places/internal/zzaze;->zzb:Lcom/google/android/libraries/places/internal/zzaze;

    if-ne p1, p2, :cond_3

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbve;->zzb:Lcom/google/android/libraries/places/internal/zzbvg;

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbvg;->zzo(Lcom/google/android/libraries/places/internal/zzbvg;)V

    return-void

    :cond_0
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbvg;->zzi(Lcom/google/android/libraries/places/internal/zzbvg;)Lcom/google/android/libraries/places/internal/zzbbm;

    move-result-object v2

    if-ne v1, v2, :cond_3

    sget-object v1, Lcom/google/android/libraries/places/internal/zzaze;->zzb:Lcom/google/android/libraries/places/internal/zzaze;

    if-ne p1, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zzbvg;->zzl(Lcom/google/android/libraries/places/internal/zzbvg;Z)V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbve;->zzb:Lcom/google/android/libraries/places/internal/zzbvg;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbvg;->zzq(Lcom/google/android/libraries/places/internal/zzbvg;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbvg;->zzk(Lcom/google/android/libraries/places/internal/zzbvg;)Lcom/google/android/libraries/places/internal/zzbbm;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbvg;->zzj(Lcom/google/android/libraries/places/internal/zzbvg;)Lcom/google/android/libraries/places/internal/zzbbm;

    move-result-object v2

    if-eq v1, v2, :cond_2

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbvg;->zzo(Lcom/google/android/libraries/places/internal/zzbvg;)V

    return-void

    :cond_2
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbvg;->zzh(Lcom/google/android/libraries/places/internal/zzbvg;)Lcom/google/android/libraries/places/internal/zzbbd;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/libraries/places/internal/zzbbd;->zze(Lcom/google/android/libraries/places/internal/zzaze;Lcom/google/android/libraries/places/internal/zzbbk;)V

    :cond_3
    return-void
.end method

.method protected final zzf()Lcom/google/android/libraries/places/internal/zzbbd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbve;->zzb:Lcom/google/android/libraries/places/internal/zzbvg;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbvg;->zzh(Lcom/google/android/libraries/places/internal/zzbvg;)Lcom/google/android/libraries/places/internal/zzbbd;

    move-result-object v0

    return-object v0
.end method
