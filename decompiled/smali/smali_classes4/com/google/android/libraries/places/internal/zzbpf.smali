.class final Lcom/google/android/libraries/places/internal/zzbpf;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/libraries/places/internal/zzbpg;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzbpg;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbpf;->zza:Lcom/google/android/libraries/places/internal/zzbpg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbpf;->zza:Lcom/google/android/libraries/places/internal/zzbpg;

    iget-object v1, v0, Lcom/google/android/libraries/places/internal/zzbpg;->zzc:Lcom/google/android/libraries/places/internal/zzbpl;

    iget-object v1, v1, Lcom/google/android/libraries/places/internal/zzbpl;->zzb:Lcom/google/android/libraries/places/internal/zzbpo;

    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzbpg;->zzb:Lcom/google/android/libraries/places/internal/zzbpm;

    invoke-static {v1, v0}, Lcom/google/android/libraries/places/internal/zzbpo;->zzX(Lcom/google/android/libraries/places/internal/zzbpo;Lcom/google/android/libraries/places/internal/zzbpm;)V

    return-void
.end method
