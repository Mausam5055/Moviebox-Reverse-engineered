.class final Lcom/google/android/libraries/places/internal/zzbgw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/libraries/places/internal/zzbdo;

.field final synthetic zzb:Lcom/google/android/libraries/places/internal/zzbcf;

.field final synthetic zzc:Lcom/google/android/libraries/places/internal/zzbgy;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzbgy;Lcom/google/android/libraries/places/internal/zzbdo;Lcom/google/android/libraries/places/internal/zzbcf;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbgw;->zza:Lcom/google/android/libraries/places/internal/zzbdo;

    iput-object p3, p0, Lcom/google/android/libraries/places/internal/zzbgw;->zzb:Lcom/google/android/libraries/places/internal/zzbcf;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbgw;->zzc:Lcom/google/android/libraries/places/internal/zzbgy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbgw;->zzc:Lcom/google/android/libraries/places/internal/zzbgy;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbgy;->zze(Lcom/google/android/libraries/places/internal/zzbgy;)Lcom/google/android/libraries/places/internal/zzayn;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbgw;->zza:Lcom/google/android/libraries/places/internal/zzbdo;

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbgw;->zzb:Lcom/google/android/libraries/places/internal/zzbcf;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzayn;->zza(Lcom/google/android/libraries/places/internal/zzbdo;Lcom/google/android/libraries/places/internal/zzbcf;)V

    return-void
.end method
