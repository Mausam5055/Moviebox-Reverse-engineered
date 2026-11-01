.class final Lcom/google/android/libraries/places/internal/zzbgo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/libraries/places/internal/zzbdo;

.field final synthetic zzb:Lcom/google/android/libraries/places/internal/zzbgz;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzbgz;Lcom/google/android/libraries/places/internal/zzbdo;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbgo;->zza:Lcom/google/android/libraries/places/internal/zzbdo;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbgo;->zzb:Lcom/google/android/libraries/places/internal/zzbgz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbgo;->zza:Lcom/google/android/libraries/places/internal/zzbdo;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbgo;->zzb:Lcom/google/android/libraries/places/internal/zzbgz;

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzbgz;->zzf(Lcom/google/android/libraries/places/internal/zzbgz;)Lcom/google/android/libraries/places/internal/zzayo;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbdo;->zzi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbdo;->zzj()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/google/android/libraries/places/internal/zzayo;->zza(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
