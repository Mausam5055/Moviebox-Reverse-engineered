.class final Lcom/google/android/libraries/places/internal/zzbgv;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Ljava/lang/Object;

.field final synthetic zzb:Lcom/google/android/libraries/places/internal/zzbgy;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzbgy;Ljava/lang/Object;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbgv;->zza:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbgv;->zzb:Lcom/google/android/libraries/places/internal/zzbgy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbgv;->zzb:Lcom/google/android/libraries/places/internal/zzbgy;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbgy;->zze(Lcom/google/android/libraries/places/internal/zzbgy;)Lcom/google/android/libraries/places/internal/zzayn;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbgv;->zza:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzayn;->zzc(Ljava/lang/Object;)V

    return-void
.end method
