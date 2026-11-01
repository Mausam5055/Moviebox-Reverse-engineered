.class final Lcom/google/android/libraries/places/internal/zzbpu;
.super Lcom/google/android/libraries/places/internal/zzbcr;


# instance fields
.field final synthetic zza:Lcom/google/android/libraries/places/internal/zzbpv;

.field private final zzb:Lcom/google/android/libraries/places/internal/zzbcr;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzbpv;Lcom/google/android/libraries/places/internal/zzbcr;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbpu;->zza:Lcom/google/android/libraries/places/internal/zzbpv;

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzbcr;-><init>()V

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbpu;->zzb:Lcom/google/android/libraries/places/internal/zzbcr;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/libraries/places/internal/zzbdo;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbpu;->zzb:Lcom/google/android/libraries/places/internal/zzbcr;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzbcr;->zza(Lcom/google/android/libraries/places/internal/zzbdo;)V

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbpu;->zza:Lcom/google/android/libraries/places/internal/zzbpv;

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbpv;->zze(Lcom/google/android/libraries/places/internal/zzbpv;)Lcom/google/android/libraries/places/internal/zzbdw;

    move-result-object p1

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbpt;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/places/internal/zzbpt;-><init>(Lcom/google/android/libraries/places/internal/zzbpu;)V

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/places/internal/zzbdw;->zzc(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbdw;->zzb()V

    return-void
.end method

.method public final zzb(Lcom/google/android/libraries/places/internal/zzbct;)V
    .locals 5

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbct;->zza()Lcom/google/android/libraries/places/internal/zzaye;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/internal/zzbpv;->zza:Lcom/google/android/libraries/places/internal/zzayc;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzaye;->zzc(Lcom/google/android/libraries/places/internal/zzayc;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbpu;->zzb:Lcom/google/android/libraries/places/internal/zzbcr;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbct;->zzd()Lcom/google/android/libraries/places/internal/zzbcs;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbct;->zza()Lcom/google/android/libraries/places/internal/zzaye;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzaye;->zzb()Lcom/google/android/libraries/places/internal/zzayb;

    move-result-object p1

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbpu;->zza:Lcom/google/android/libraries/places/internal/zzbpv;

    new-instance v4, Lcom/google/android/libraries/places/internal/zzbps;

    invoke-direct {v4, v3}, Lcom/google/android/libraries/places/internal/zzbps;-><init>(Lcom/google/android/libraries/places/internal/zzbpv;)V

    invoke-virtual {p1, v1, v4}, Lcom/google/android/libraries/places/internal/zzayb;->zzb(Lcom/google/android/libraries/places/internal/zzayc;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzayb;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzayb;->zzc()Lcom/google/android/libraries/places/internal/zzaye;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/google/android/libraries/places/internal/zzbcs;->zzb(Lcom/google/android/libraries/places/internal/zzaye;)Lcom/google/android/libraries/places/internal/zzbcs;

    invoke-virtual {v2}, Lcom/google/android/libraries/places/internal/zzbcs;->zzd()Lcom/google/android/libraries/places/internal/zzbct;

    move-result-object p1

    new-instance v1, Lcom/google/android/libraries/places/internal/zzbli;

    check-cast v0, Lcom/google/android/libraries/places/internal/zzblj;

    invoke-direct {v1, v0, p1}, Lcom/google/android/libraries/places/internal/zzbli;-><init>(Lcom/google/android/libraries/places/internal/zzblj;Lcom/google/android/libraries/places/internal/zzbct;)V

    iget-object p1, v0, Lcom/google/android/libraries/places/internal/zzblj;->zzc:Lcom/google/android/libraries/places/internal/zzbma;

    iget-object p1, p1, Lcom/google/android/libraries/places/internal/zzbma;->zzf:Lcom/google/android/libraries/places/internal/zzbdw;

    invoke-virtual {p1, v1}, Lcom/google/android/libraries/places/internal/zzbdw;->zzc(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbdw;->zzb()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "RetryingNameResolver can only be used once to wrap a NameResolver"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
