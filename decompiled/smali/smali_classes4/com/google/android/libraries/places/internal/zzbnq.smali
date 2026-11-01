.class public final Lcom/google/android/libraries/places/internal/zzbnq;
.super Lcom/google/android/libraries/places/internal/zzbbo;


# static fields
.field static final zza:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "GRPC_EXPERIMENTAL_ENABLE_NEW_PICK_FIRST"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zzbjd;->zzj(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/libraries/places/internal/zzbnq;->zza:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzbbo;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/libraries/places/internal/zzbbd;)Lcom/google/android/libraries/places/internal/zzbbm;
    .locals 1

    sget-boolean v0, Lcom/google/android/libraries/places/internal/zzbnq;->zza:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbnj;

    invoke-direct {v0, p1}, Lcom/google/android/libraries/places/internal/zzbnj;-><init>(Lcom/google/android/libraries/places/internal/zzbbd;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/libraries/places/internal/zzbnp;

    invoke-direct {v0, p1}, Lcom/google/android/libraries/places/internal/zzbnp;-><init>(Lcom/google/android/libraries/places/internal/zzbbd;)V

    return-object v0
.end method

.method public final zzb()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public final zzc(Ljava/util/Map;)Lcom/google/android/libraries/places/internal/zzbcp;
    .locals 2

    :try_start_0
    const-string v0, "shuffleAddressList"

    invoke-static {p1, v0}, Lcom/google/android/libraries/places/internal/zzbkg;->zza(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    sget-boolean v0, Lcom/google/android/libraries/places/internal/zzbnq;->zza:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbne;

    invoke-direct {v0, p1, v1}, Lcom/google/android/libraries/places/internal/zzbne;-><init>(Ljava/lang/Boolean;Ljava/lang/Long;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/google/android/libraries/places/internal/zzbnl;

    invoke-direct {v0, p1, v1}, Lcom/google/android/libraries/places/internal/zzbnl;-><init>(Ljava/lang/Boolean;Ljava/lang/Long;)V

    :goto_0
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbcp;->zza(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzbcp;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_1
    sget-object v0, Lcom/google/android/libraries/places/internal/zzbdo;->zzp:Lcom/google/android/libraries/places/internal/zzbdo;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzbdo;->zzf(Ljava/lang/Throwable;)Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object p1

    const-string v0, "Failed parsing configuration for pick_first"

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbcp;->zzb(Lcom/google/android/libraries/places/internal/zzbdo;)Lcom/google/android/libraries/places/internal/zzbcp;

    move-result-object p1

    return-object p1
.end method

.method public final zzd()Ljava/lang/String;
    .locals 1

    const-string v0, "pick_first"

    return-object v0
.end method

.method public final zze()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
