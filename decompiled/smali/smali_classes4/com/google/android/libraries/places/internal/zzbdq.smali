.class public final Lcom/google/android/libraries/places/internal/zzbdq;
.super Ljava/lang/RuntimeException;


# instance fields
.field private final zza:Lcom/google/android/libraries/places/internal/zzbdo;

.field private final zzb:Lcom/google/android/libraries/places/internal/zzbcf;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/places/internal/zzbdo;Lcom/google/android/libraries/places/internal/zzbcf;)V
    .locals 3

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbdo;->zzh(Lcom/google/android/libraries/places/internal/zzbdo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbdo;->zzj()Ljava/lang/Throwable;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ZZ)V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbdq;->zza:Lcom/google/android/libraries/places/internal/zzbdo;

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbdq;->zzb:Lcom/google/android/libraries/places/internal/zzbcf;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/libraries/places/internal/zzbdo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbdq;->zza:Lcom/google/android/libraries/places/internal/zzbdo;

    return-object v0
.end method
