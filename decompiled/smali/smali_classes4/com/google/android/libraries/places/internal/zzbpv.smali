.class final Lcom/google/android/libraries/places/internal/zzbpv;
.super Lcom/google/android/libraries/places/internal/zzbir;


# static fields
.field static final zza:Lcom/google/android/libraries/places/internal/zzayc;


# instance fields
.field private final zzb:Lcom/google/android/libraries/places/internal/zzbcv;

.field private final zzc:Lcom/google/android/libraries/places/internal/zzbpq;

.field private final zzd:Lcom/google/android/libraries/places/internal/zzbdw;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "io.grpc.internal.RetryingNameResolver.RESOLUTION_RESULT_LISTENER_KEY"

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzayc;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzayc;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbpv;->zza:Lcom/google/android/libraries/places/internal/zzayc;

    return-void
.end method

.method constructor <init>(Lcom/google/android/libraries/places/internal/zzbcv;Lcom/google/android/libraries/places/internal/zzbpq;Lcom/google/android/libraries/places/internal/zzbdw;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzbir;-><init>(Lcom/google/android/libraries/places/internal/zzbcv;)V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbpv;->zzb:Lcom/google/android/libraries/places/internal/zzbcv;

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbpv;->zzc:Lcom/google/android/libraries/places/internal/zzbpq;

    iput-object p3, p0, Lcom/google/android/libraries/places/internal/zzbpv;->zzd:Lcom/google/android/libraries/places/internal/zzbdw;

    return-void
.end method

.method static bridge synthetic zze(Lcom/google/android/libraries/places/internal/zzbpv;)Lcom/google/android/libraries/places/internal/zzbdw;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbpv;->zzd:Lcom/google/android/libraries/places/internal/zzbdw;

    return-object p0
.end method

.method static bridge synthetic zzf(Lcom/google/android/libraries/places/internal/zzbpv;)Lcom/google/android/libraries/places/internal/zzbpq;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbpv;->zzc:Lcom/google/android/libraries/places/internal/zzbpq;

    return-object p0
.end method


# virtual methods
.method public final zzc()V
    .locals 1

    invoke-super {p0}, Lcom/google/android/libraries/places/internal/zzbir;->zzc()V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbpv;->zzc:Lcom/google/android/libraries/places/internal/zzbpq;

    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/zzbpq;->zzb()V

    return-void
.end method

.method public final zzd(Lcom/google/android/libraries/places/internal/zzbcr;)V
    .locals 1

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbpu;

    invoke-direct {v0, p0, p1}, Lcom/google/android/libraries/places/internal/zzbpu;-><init>(Lcom/google/android/libraries/places/internal/zzbpv;Lcom/google/android/libraries/places/internal/zzbcr;)V

    invoke-super {p0, v0}, Lcom/google/android/libraries/places/internal/zzbir;->zzd(Lcom/google/android/libraries/places/internal/zzbcr;)V

    return-void
.end method
