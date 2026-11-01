.class final Lcom/google/android/libraries/places/internal/zzbog;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/libraries/places/internal/zzboh;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzboh;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbog;->zza:Lcom/google/android/libraries/places/internal/zzboh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbog;->zza:Lcom/google/android/libraries/places/internal/zzboh;

    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzboh;->zzf:Lcom/google/android/libraries/places/internal/zzbpo;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zzbpo;->zzQ(Lcom/google/android/libraries/places/internal/zzbpo;Z)V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbog;->zza:Lcom/google/android/libraries/places/internal/zzboh;

    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzboh;->zzf:Lcom/google/android/libraries/places/internal/zzbpo;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbpo;->zzy(Lcom/google/android/libraries/places/internal/zzbpo;)Lcom/google/android/libraries/places/internal/zzbft;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbpo;->zzC(Lcom/google/android/libraries/places/internal/zzbpo;)Lcom/google/android/libraries/places/internal/zzbpb;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbpb;->zzb(Lcom/google/android/libraries/places/internal/zzbpb;)Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbog;->zza:Lcom/google/android/libraries/places/internal/zzboh;

    iget-object v2, v2, Lcom/google/android/libraries/places/internal/zzboh;->zzf:Lcom/google/android/libraries/places/internal/zzbpo;

    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzbpo;->zzC(Lcom/google/android/libraries/places/internal/zzbpo;)Lcom/google/android/libraries/places/internal/zzbpb;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzbpb;->zzc(Lcom/google/android/libraries/places/internal/zzbpb;)Lcom/google/android/libraries/places/internal/zzbfs;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbog;->zza:Lcom/google/android/libraries/places/internal/zzboh;

    iget-object v3, v3, Lcom/google/android/libraries/places/internal/zzboh;->zzf:Lcom/google/android/libraries/places/internal/zzbpo;

    invoke-static {v3}, Lcom/google/android/libraries/places/internal/zzbpo;->zzC(Lcom/google/android/libraries/places/internal/zzbpo;)Lcom/google/android/libraries/places/internal/zzbpb;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/libraries/places/internal/zzbpb;->zza(Lcom/google/android/libraries/places/internal/zzbpb;)Lcom/google/android/libraries/places/internal/zzbcf;

    move-result-object v3

    invoke-interface {v1, v0, v2, v3}, Lcom/google/android/libraries/places/internal/zzbft;->zzd(Lcom/google/android/libraries/places/internal/zzbdo;Lcom/google/android/libraries/places/internal/zzbfs;Lcom/google/android/libraries/places/internal/zzbcf;)V

    return-void
.end method
