.class final Lcom/google/android/libraries/places/internal/zzbjt;
.super Lcom/google/android/libraries/places/internal/zzbin;


# instance fields
.field final synthetic zza:Lcom/google/android/libraries/places/internal/zzbfr;

.field final synthetic zzb:Lcom/google/android/libraries/places/internal/zzbjv;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzbjv;Lcom/google/android/libraries/places/internal/zzbfr;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbjt;->zza:Lcom/google/android/libraries/places/internal/zzbfr;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbjt;->zzb:Lcom/google/android/libraries/places/internal/zzbjv;

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzbin;-><init>()V

    return-void
.end method


# virtual methods
.method protected final zza()Lcom/google/android/libraries/places/internal/zzbfr;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbjt;->zza:Lcom/google/android/libraries/places/internal/zzbfr;

    return-object v0
.end method

.method public final zzo(Lcom/google/android/libraries/places/internal/zzbft;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbjt;->zzb:Lcom/google/android/libraries/places/internal/zzbjv;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbjv;->zzf(Lcom/google/android/libraries/places/internal/zzbjv;)Lcom/google/android/libraries/places/internal/zzbfg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbfg;->zzb()V

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbjs;

    invoke-direct {v0, p0, p1}, Lcom/google/android/libraries/places/internal/zzbjs;-><init>(Lcom/google/android/libraries/places/internal/zzbjt;Lcom/google/android/libraries/places/internal/zzbft;)V

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbjt;->zza:Lcom/google/android/libraries/places/internal/zzbfr;

    invoke-interface {p1, v0}, Lcom/google/android/libraries/places/internal/zzbfr;->zzo(Lcom/google/android/libraries/places/internal/zzbft;)V

    return-void
.end method
