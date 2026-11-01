.class final Lcom/google/android/libraries/places/internal/zzbgn;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/libraries/places/internal/zzayn;

.field final synthetic zzb:Lcom/google/android/libraries/places/internal/zzbcf;

.field final synthetic zzc:Lcom/google/android/libraries/places/internal/zzbgz;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzbgz;Lcom/google/android/libraries/places/internal/zzayn;Lcom/google/android/libraries/places/internal/zzbcf;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbgn;->zza:Lcom/google/android/libraries/places/internal/zzayn;

    iput-object p3, p0, Lcom/google/android/libraries/places/internal/zzbgn;->zzb:Lcom/google/android/libraries/places/internal/zzbcf;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbgn;->zzc:Lcom/google/android/libraries/places/internal/zzbgz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbgn;->zzc:Lcom/google/android/libraries/places/internal/zzbgz;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbgz;->zzf(Lcom/google/android/libraries/places/internal/zzbgz;)Lcom/google/android/libraries/places/internal/zzayo;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbgn;->zza:Lcom/google/android/libraries/places/internal/zzayn;

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbgn;->zzb:Lcom/google/android/libraries/places/internal/zzbcf;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzayo;->zze(Lcom/google/android/libraries/places/internal/zzayn;Lcom/google/android/libraries/places/internal/zzbcf;)V

    return-void
.end method
