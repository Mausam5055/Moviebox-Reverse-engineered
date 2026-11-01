.class public final Lcom/google/android/libraries/places/internal/zzbdp;
.super Ljava/lang/Exception;


# instance fields
.field private final zza:Lcom/google/android/libraries/places/internal/zzbdo;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/places/internal/zzbdo;Lcom/google/android/libraries/places/internal/zzbcf;)V
    .locals 2

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbdo;->zzh(Lcom/google/android/libraries/places/internal/zzbdo;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbdo;->zzj()Ljava/lang/Throwable;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ZZ)V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbdp;->zza:Lcom/google/android/libraries/places/internal/zzbdo;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/libraries/places/internal/zzbdo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbdp;->zza:Lcom/google/android/libraries/places/internal/zzbdo;

    return-object v0
.end method
