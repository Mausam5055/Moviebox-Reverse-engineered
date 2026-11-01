.class Lcom/google/android/libraries/places/internal/zzbir;
.super Lcom/google/android/libraries/places/internal/zzbcv;


# instance fields
.field private final zza:Lcom/google/android/libraries/places/internal/zzbcv;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzbcv;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzbcv;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbir;->zza:Lcom/google/android/libraries/places/internal/zzbcv;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/libraries/places/internal/zzmn;->zzb(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzmm;

    move-result-object v0

    const-string v1, "delegate"

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbir;->zza:Lcom/google/android/libraries/places/internal/zzbcv;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzmm;->zzd(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzmm;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzmm;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbir;->zza:Lcom/google/android/libraries/places/internal/zzbcv;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbcv;->zza()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzb()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbir;->zza:Lcom/google/android/libraries/places/internal/zzbcv;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbcv;->zzb()V

    return-void
.end method

.method public zzc()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbir;->zza:Lcom/google/android/libraries/places/internal/zzbcv;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbcv;->zzc()V

    return-void
.end method

.method public zzd(Lcom/google/android/libraries/places/internal/zzbcr;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbir;->zza:Lcom/google/android/libraries/places/internal/zzbcv;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzbcv;->zzd(Lcom/google/android/libraries/places/internal/zzbcr;)V

    return-void
.end method
