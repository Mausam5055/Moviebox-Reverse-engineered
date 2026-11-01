.class final Lcom/google/android/libraries/places/internal/zzbjs;
.super Lcom/google/android/libraries/places/internal/zzbio;


# instance fields
.field final synthetic zza:Lcom/google/android/libraries/places/internal/zzbft;

.field final synthetic zzb:Lcom/google/android/libraries/places/internal/zzbjt;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzbjt;Lcom/google/android/libraries/places/internal/zzbft;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbjs;->zza:Lcom/google/android/libraries/places/internal/zzbft;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbjs;->zzb:Lcom/google/android/libraries/places/internal/zzbjt;

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzbio;-><init>()V

    return-void
.end method


# virtual methods
.method protected final zza()Lcom/google/android/libraries/places/internal/zzbft;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbjs;->zza:Lcom/google/android/libraries/places/internal/zzbft;

    return-object v0
.end method

.method public final zzd(Lcom/google/android/libraries/places/internal/zzbdo;Lcom/google/android/libraries/places/internal/zzbfs;Lcom/google/android/libraries/places/internal/zzbcf;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbjs;->zzb:Lcom/google/android/libraries/places/internal/zzbjt;

    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzbjt;->zzb:Lcom/google/android/libraries/places/internal/zzbjv;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbjv;->zzf(Lcom/google/android/libraries/places/internal/zzbjv;)Lcom/google/android/libraries/places/internal/zzbfg;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbdo;->zzl()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzbfg;->zza(Z)V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbjs;->zza:Lcom/google/android/libraries/places/internal/zzbft;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/libraries/places/internal/zzbft;->zzd(Lcom/google/android/libraries/places/internal/zzbdo;Lcom/google/android/libraries/places/internal/zzbfs;Lcom/google/android/libraries/places/internal/zzbcf;)V

    return-void
.end method
