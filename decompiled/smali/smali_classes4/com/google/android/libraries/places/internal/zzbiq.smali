.class Lcom/google/android/libraries/places/internal/zzbiq;
.super Lcom/google/android/libraries/places/internal/zzbbr;


# instance fields
.field private final zza:Lcom/google/android/libraries/places/internal/zzbbr;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzbbr;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzbbr;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbiq;->zza:Lcom/google/android/libraries/places/internal/zzbbr;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/libraries/places/internal/zzmn;->zzb(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzmm;

    move-result-object v0

    const-string v1, "delegate"

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbiq;->zza:Lcom/google/android/libraries/places/internal/zzbbr;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzmm;->zzd(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzmm;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzmm;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Lcom/google/android/libraries/places/internal/zzbcl;Lcom/google/android/libraries/places/internal/zzayj;)Lcom/google/android/libraries/places/internal/zzayo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbiq;->zza:Lcom/google/android/libraries/places/internal/zzbbr;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/libraries/places/internal/zzayk;->zza(Lcom/google/android/libraries/places/internal/zzbcl;Lcom/google/android/libraries/places/internal/zzayj;)Lcom/google/android/libraries/places/internal/zzayo;

    move-result-object p1

    return-object p1
.end method

.method public final zzb()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbiq;->zza:Lcom/google/android/libraries/places/internal/zzbbr;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzayk;->zzb()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
