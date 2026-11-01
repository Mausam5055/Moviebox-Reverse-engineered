.class final Lcom/google/android/libraries/places/internal/zzbpi;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/libraries/places/internal/zzbpm;

.field final synthetic zzb:Lcom/google/android/libraries/places/internal/zzbpl;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzbpl;Lcom/google/android/libraries/places/internal/zzbpm;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbpi;->zza:Lcom/google/android/libraries/places/internal/zzbpm;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbpi;->zzb:Lcom/google/android/libraries/places/internal/zzbpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbpi;->zzb:Lcom/google/android/libraries/places/internal/zzbpl;

    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzbpl;->zzb:Lcom/google/android/libraries/places/internal/zzbpo;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbpi;->zza:Lcom/google/android/libraries/places/internal/zzbpm;

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zzbpo;->zzX(Lcom/google/android/libraries/places/internal/zzbpo;Lcom/google/android/libraries/places/internal/zzbpm;)V

    return-void
.end method
