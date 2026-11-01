.class final Lcom/google/android/libraries/places/internal/zzbrm;
.super Ljava/lang/Object;


# static fields
.field public static final zza:Lcom/google/android/libraries/places/internal/zzbtt;

.field public static final zzb:Lcom/google/android/libraries/places/internal/zzbtt;

.field public static final zzc:Lcom/google/android/libraries/places/internal/zzbtt;

.field public static final zzd:Lcom/google/android/libraries/places/internal/zzbtt;

.field public static final zze:Lcom/google/android/libraries/places/internal/zzbtt;

.field public static final zzf:Lcom/google/android/libraries/places/internal/zzbtt;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbtt;

    sget-object v1, Lcom/google/android/libraries/places/internal/zzbtt;->zzd:Lcom/google/android/libraries/places/internal/zzbwf;

    sget-object v2, Lcom/google/android/libraries/places/internal/zzbwf;->zza:Lcom/google/android/libraries/places/internal/zzbwe;

    const-string v2, "https"

    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzbwe;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbwf;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Lcom/google/android/libraries/places/internal/zzbwf;Lcom/google/android/libraries/places/internal/zzbwf;)V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbrm;->zza:Lcom/google/android/libraries/places/internal/zzbtt;

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbtt;

    const-string v2, "http"

    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzbwe;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbwf;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Lcom/google/android/libraries/places/internal/zzbwf;Lcom/google/android/libraries/places/internal/zzbwf;)V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbrm;->zzb:Lcom/google/android/libraries/places/internal/zzbtt;

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbtt;

    sget-object v1, Lcom/google/android/libraries/places/internal/zzbtt;->zzb:Lcom/google/android/libraries/places/internal/zzbwf;

    const-string v2, "POST"

    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzbwe;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbwf;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Lcom/google/android/libraries/places/internal/zzbwf;Lcom/google/android/libraries/places/internal/zzbwf;)V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbrm;->zzc:Lcom/google/android/libraries/places/internal/zzbtt;

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbtt;

    const-string v2, "GET"

    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzbwe;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbwf;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Lcom/google/android/libraries/places/internal/zzbwf;Lcom/google/android/libraries/places/internal/zzbwf;)V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbrm;->zzd:Lcom/google/android/libraries/places/internal/zzbtt;

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbtt;

    sget-object v1, Lcom/google/android/libraries/places/internal/zzbjd;->zzh:Lcom/google/android/libraries/places/internal/zzbca;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzbca;->zzd()Ljava/lang/String;

    move-result-object v1

    const-string v2, "application/grpc"

    invoke-direct {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbrm;->zze:Lcom/google/android/libraries/places/internal/zzbtt;

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbtt;

    const-string v1, "te"

    const-string v2, "trailers"

    invoke-direct {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbrm;->zzf:Lcom/google/android/libraries/places/internal/zzbtt;

    return-void
.end method
