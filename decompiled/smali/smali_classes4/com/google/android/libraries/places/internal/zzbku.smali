.class final Lcom/google/android/libraries/places/internal/zzbku;
.super Lcom/google/android/libraries/places/internal/zzbgi;


# instance fields
.field final synthetic zza:Lcom/google/android/libraries/places/internal/zzayn;

.field final synthetic zzb:Lcom/google/android/libraries/places/internal/zzbdo;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzbkv;Lcom/google/android/libraries/places/internal/zzayn;Lcom/google/android/libraries/places/internal/zzbdo;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbku;->zza:Lcom/google/android/libraries/places/internal/zzayn;

    iput-object p3, p0, Lcom/google/android/libraries/places/internal/zzbku;->zzb:Lcom/google/android/libraries/places/internal/zzbdo;

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbkv;->zzg(Lcom/google/android/libraries/places/internal/zzbkv;)Lcom/google/android/libraries/places/internal/zzazj;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzbgi;-><init>(Lcom/google/android/libraries/places/internal/zzazj;)V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 3

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbcf;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzbcf;-><init>()V

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbku;->zza:Lcom/google/android/libraries/places/internal/zzayn;

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbku;->zzb:Lcom/google/android/libraries/places/internal/zzbdo;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/libraries/places/internal/zzayn;->zza(Lcom/google/android/libraries/places/internal/zzbdo;Lcom/google/android/libraries/places/internal/zzbcf;)V

    return-void
.end method
