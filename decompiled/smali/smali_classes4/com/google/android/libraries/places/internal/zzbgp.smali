.class final Lcom/google/android/libraries/places/internal/zzbgp;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Ljava/lang/Object;

.field final synthetic zzb:Lcom/google/android/libraries/places/internal/zzbgz;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzbgz;Ljava/lang/Object;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbgp;->zza:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbgp;->zzb:Lcom/google/android/libraries/places/internal/zzbgz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbgp;->zzb:Lcom/google/android/libraries/places/internal/zzbgz;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbgz;->zzf(Lcom/google/android/libraries/places/internal/zzbgz;)Lcom/google/android/libraries/places/internal/zzayo;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbgp;->zza:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzayo;->zzd(Ljava/lang/Object;)V

    return-void
.end method
