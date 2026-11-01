.class final Lcom/google/android/libraries/places/internal/zzays;
.super Lcom/google/android/libraries/places/internal/zzayk;


# instance fields
.field private final zza:Lcom/google/android/libraries/places/internal/zzayk;

.field private final zzb:Lcom/google/android/libraries/places/internal/zzayp;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/libraries/places/internal/zzayk;Lcom/google/android/libraries/places/internal/zzayp;Lcom/google/android/libraries/places/internal/zzayr;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzayk;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzays;->zza:Lcom/google/android/libraries/places/internal/zzayk;

    const-string p1, "interceptor"

    invoke-static {p2, p1}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzays;->zzb:Lcom/google/android/libraries/places/internal/zzayp;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/libraries/places/internal/zzbcl;Lcom/google/android/libraries/places/internal/zzayj;)Lcom/google/android/libraries/places/internal/zzayo;
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzays;->zza:Lcom/google/android/libraries/places/internal/zzayk;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzays;->zzb:Lcom/google/android/libraries/places/internal/zzayp;

    invoke-interface {v1, p1, p2, v0}, Lcom/google/android/libraries/places/internal/zzayp;->zza(Lcom/google/android/libraries/places/internal/zzbcl;Lcom/google/android/libraries/places/internal/zzayj;Lcom/google/android/libraries/places/internal/zzayk;)Lcom/google/android/libraries/places/internal/zzayo;

    move-result-object p1

    return-object p1
.end method

.method public final zzb()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzays;->zza:Lcom/google/android/libraries/places/internal/zzayk;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzayk;->zzb()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
