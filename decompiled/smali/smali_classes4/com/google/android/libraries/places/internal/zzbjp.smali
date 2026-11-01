.class final Lcom/google/android/libraries/places/internal/zzbjp;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/libraries/places/internal/zzbdo;

.field final synthetic zzb:Lcom/google/android/libraries/places/internal/zzbkd;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzbkd;Lcom/google/android/libraries/places/internal/zzbdo;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbjp;->zza:Lcom/google/android/libraries/places/internal/zzbdo;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbjp;->zzb:Lcom/google/android/libraries/places/internal/zzbkd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbjp;->zzb:Lcom/google/android/libraries/places/internal/zzbkd;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbkd;->zzb(Lcom/google/android/libraries/places/internal/zzbkd;)Lcom/google/android/libraries/places/internal/zzazf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzazf;->zza()Lcom/google/android/libraries/places/internal/zzaze;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/internal/zzaze;->zze:Lcom/google/android/libraries/places/internal/zzaze;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbjp;->zzb:Lcom/google/android/libraries/places/internal/zzbkd;

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbjp;->zza:Lcom/google/android/libraries/places/internal/zzbdo;

    invoke-static {v0, v2}, Lcom/google/android/libraries/places/internal/zzbkd;->zzy(Lcom/google/android/libraries/places/internal/zzbkd;Lcom/google/android/libraries/places/internal/zzbdo;)V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbjp;->zzb:Lcom/google/android/libraries/places/internal/zzbkd;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbkd;->zzm(Lcom/google/android/libraries/places/internal/zzbkd;)Lcom/google/android/libraries/places/internal/zzbml;

    move-result-object v2

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbkd;->zzi(Lcom/google/android/libraries/places/internal/zzbkd;)Lcom/google/android/libraries/places/internal/zzbgf;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v0, v4}, Lcom/google/android/libraries/places/internal/zzbkd;->zzs(Lcom/google/android/libraries/places/internal/zzbkd;Lcom/google/android/libraries/places/internal/zzbml;)V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbjp;->zzb:Lcom/google/android/libraries/places/internal/zzbkd;

    invoke-static {v0, v4}, Lcom/google/android/libraries/places/internal/zzbkd;->zzu(Lcom/google/android/libraries/places/internal/zzbkd;Lcom/google/android/libraries/places/internal/zzbgf;)V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbjp;->zzb:Lcom/google/android/libraries/places/internal/zzbkd;

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zzbkd;->zzA(Lcom/google/android/libraries/places/internal/zzbkd;Lcom/google/android/libraries/places/internal/zzaze;)V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbjp;->zzb:Lcom/google/android/libraries/places/internal/zzbkd;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbkd;->zzl(Lcom/google/android/libraries/places/internal/zzbkd;)Lcom/google/android/libraries/places/internal/zzbjx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbjx;->zzd()V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbjp;->zzb:Lcom/google/android/libraries/places/internal/zzbkd;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbkd;->zzp(Lcom/google/android/libraries/places/internal/zzbkd;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbjp;->zzb:Lcom/google/android/libraries/places/internal/zzbkd;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbkd;->zzB(Lcom/google/android/libraries/places/internal/zzbkd;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbjp;->zzb:Lcom/google/android/libraries/places/internal/zzbkd;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbkd;->zzz(Lcom/google/android/libraries/places/internal/zzbkd;)V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbjp;->zzb:Lcom/google/android/libraries/places/internal/zzbkd;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbkd;->zzf(Lcom/google/android/libraries/places/internal/zzbkd;)Lcom/google/android/libraries/places/internal/zzbdv;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbkd;->zzf(Lcom/google/android/libraries/places/internal/zzbkd;)Lcom/google/android/libraries/places/internal/zzbdv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbdv;->zza()V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbjp;->zzb:Lcom/google/android/libraries/places/internal/zzbkd;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbjp;->zza:Lcom/google/android/libraries/places/internal/zzbdo;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbkd;->zzn(Lcom/google/android/libraries/places/internal/zzbkd;)Lcom/google/android/libraries/places/internal/zzbml;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/google/android/libraries/places/internal/zzbml;->zzd(Lcom/google/android/libraries/places/internal/zzbdo;)V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbjp;->zzb:Lcom/google/android/libraries/places/internal/zzbkd;

    invoke-static {v0, v4}, Lcom/google/android/libraries/places/internal/zzbkd;->zzw(Lcom/google/android/libraries/places/internal/zzbkd;Lcom/google/android/libraries/places/internal/zzbdv;)V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbjp;->zzb:Lcom/google/android/libraries/places/internal/zzbkd;

    invoke-static {v0, v4}, Lcom/google/android/libraries/places/internal/zzbkd;->zzx(Lcom/google/android/libraries/places/internal/zzbkd;Lcom/google/android/libraries/places/internal/zzbml;)V

    :cond_2
    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbjp;->zza:Lcom/google/android/libraries/places/internal/zzbdo;

    invoke-interface {v2, v0}, Lcom/google/android/libraries/places/internal/zzbml;->zzd(Lcom/google/android/libraries/places/internal/zzbdo;)V

    :cond_3
    if-eqz v3, :cond_4

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbjp;->zza:Lcom/google/android/libraries/places/internal/zzbdo;

    invoke-interface {v3, v0}, Lcom/google/android/libraries/places/internal/zzbml;->zzd(Lcom/google/android/libraries/places/internal/zzbdo;)V

    :cond_4
    :goto_0
    return-void
.end method
