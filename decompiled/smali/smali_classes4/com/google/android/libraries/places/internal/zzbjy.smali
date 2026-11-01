.class final Lcom/google/android/libraries/places/internal/zzbjy;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/libraries/places/internal/zzbkb;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzbkb;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbjy;->zza:Lcom/google/android/libraries/places/internal/zzbkb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbjy;->zza:Lcom/google/android/libraries/places/internal/zzbkb;

    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzbkb;->zzc:Lcom/google/android/libraries/places/internal/zzbkd;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zzbkd;->zzH(Lcom/google/android/libraries/places/internal/zzbkd;Lcom/google/android/libraries/places/internal/zzbik;)V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbjy;->zza:Lcom/google/android/libraries/places/internal/zzbkb;

    iget-object v2, v0, Lcom/google/android/libraries/places/internal/zzbkb;->zzc:Lcom/google/android/libraries/places/internal/zzbkd;

    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzbkd;->zze(Lcom/google/android/libraries/places/internal/zzbkd;)Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzbkd;->zzm(Lcom/google/android/libraries/places/internal/zzbkd;)Lcom/google/android/libraries/places/internal/zzbml;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Unexpected non-null activeTransport"

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zzmt;->zzp(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbjy;->zza:Lcom/google/android/libraries/places/internal/zzbkb;

    iget-object v1, v0, Lcom/google/android/libraries/places/internal/zzbkb;->zzc:Lcom/google/android/libraries/places/internal/zzbkd;

    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzbkb;->zza:Lcom/google/android/libraries/places/internal/zzbgf;

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzbkd;->zze(Lcom/google/android/libraries/places/internal/zzbkd;)Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/libraries/places/internal/zzbml;->zzd(Lcom/google/android/libraries/places/internal/zzbdo;)V

    return-void

    :cond_1
    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzbkb;->zza:Lcom/google/android/libraries/places/internal/zzbgf;

    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzbkd;->zzi(Lcom/google/android/libraries/places/internal/zzbkd;)Lcom/google/android/libraries/places/internal/zzbgf;

    move-result-object v3

    if-ne v3, v0, :cond_2

    invoke-static {v2, v0}, Lcom/google/android/libraries/places/internal/zzbkd;->zzs(Lcom/google/android/libraries/places/internal/zzbkd;Lcom/google/android/libraries/places/internal/zzbml;)V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbjy;->zza:Lcom/google/android/libraries/places/internal/zzbkb;

    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzbkb;->zzc:Lcom/google/android/libraries/places/internal/zzbkd;

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zzbkd;->zzu(Lcom/google/android/libraries/places/internal/zzbkd;Lcom/google/android/libraries/places/internal/zzbgf;)V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbjy;->zza:Lcom/google/android/libraries/places/internal/zzbkb;

    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzbkb;->zzc:Lcom/google/android/libraries/places/internal/zzbkd;

    sget-object v1, Lcom/google/android/libraries/places/internal/zzaze;->zzb:Lcom/google/android/libraries/places/internal/zzaze;

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zzbkd;->zzA(Lcom/google/android/libraries/places/internal/zzbkd;Lcom/google/android/libraries/places/internal/zzaze;)V

    :cond_2
    return-void
.end method
