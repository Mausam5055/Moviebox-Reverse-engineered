.class final Lcom/google/android/libraries/places/internal/zzbhw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/libraries/places/internal/zzbdo;

.field final synthetic zzb:Lcom/google/android/libraries/places/internal/zzbfs;

.field final synthetic zzc:Lcom/google/android/libraries/places/internal/zzbcf;

.field final synthetic zzd:Lcom/google/android/libraries/places/internal/zzbhx;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzbhx;Lcom/google/android/libraries/places/internal/zzbdo;Lcom/google/android/libraries/places/internal/zzbfs;Lcom/google/android/libraries/places/internal/zzbcf;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbhw;->zza:Lcom/google/android/libraries/places/internal/zzbdo;

    iput-object p3, p0, Lcom/google/android/libraries/places/internal/zzbhw;->zzb:Lcom/google/android/libraries/places/internal/zzbfs;

    iput-object p4, p0, Lcom/google/android/libraries/places/internal/zzbhw;->zzc:Lcom/google/android/libraries/places/internal/zzbcf;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbhw;->zzd:Lcom/google/android/libraries/places/internal/zzbhx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbhw;->zzd:Lcom/google/android/libraries/places/internal/zzbhx;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbhx;->zza(Lcom/google/android/libraries/places/internal/zzbhx;)Lcom/google/android/libraries/places/internal/zzbft;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbhw;->zza:Lcom/google/android/libraries/places/internal/zzbdo;

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbhw;->zzb:Lcom/google/android/libraries/places/internal/zzbfs;

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbhw;->zzc:Lcom/google/android/libraries/places/internal/zzbcf;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/libraries/places/internal/zzbft;->zzd(Lcom/google/android/libraries/places/internal/zzbdo;Lcom/google/android/libraries/places/internal/zzbfs;Lcom/google/android/libraries/places/internal/zzbcf;)V

    return-void
.end method
