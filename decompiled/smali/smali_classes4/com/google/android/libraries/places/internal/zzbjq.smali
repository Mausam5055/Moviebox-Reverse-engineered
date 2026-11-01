.class final Lcom/google/android/libraries/places/internal/zzbjq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/libraries/places/internal/zzbkd;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzbkd;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbjq;->zza:Lcom/google/android/libraries/places/internal/zzbkd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbjq;->zza:Lcom/google/android/libraries/places/internal/zzbkd;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbkd;->zza(Lcom/google/android/libraries/places/internal/zzbkd;)Lcom/google/android/libraries/places/internal/zzaym;

    move-result-object v0

    const/4 v1, 0x2

    const-string v2, "Terminated"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzaym;->zza(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbjq;->zza:Lcom/google/android/libraries/places/internal/zzbkd;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbkd;->zzk(Lcom/google/android/libraries/places/internal/zzbkd;)Lcom/google/android/libraries/places/internal/zzbjw;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/places/internal/zzblv;

    iget-object v2, v1, Lcom/google/android/libraries/places/internal/zzblv;->zzb:Lcom/google/android/libraries/places/internal/zzblx;

    iget-object v2, v2, Lcom/google/android/libraries/places/internal/zzblx;->zzj:Lcom/google/android/libraries/places/internal/zzbma;

    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzbma;->zzH(Lcom/google/android/libraries/places/internal/zzbma;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v2, v1, Lcom/google/android/libraries/places/internal/zzblv;->zzb:Lcom/google/android/libraries/places/internal/zzblx;

    iget-object v2, v2, Lcom/google/android/libraries/places/internal/zzblx;->zzj:Lcom/google/android/libraries/places/internal/zzbma;

    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzbma;->zzk(Lcom/google/android/libraries/places/internal/zzbma;)Lcom/google/android/libraries/places/internal/zzbah;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/libraries/places/internal/zzbah;->zzh(Lcom/google/android/libraries/places/internal/zzbao;)V

    iget-object v0, v1, Lcom/google/android/libraries/places/internal/zzblv;->zzb:Lcom/google/android/libraries/places/internal/zzblx;

    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzblx;->zzj:Lcom/google/android/libraries/places/internal/zzbma;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbma;->zzQ(Lcom/google/android/libraries/places/internal/zzbma;)V

    return-void
.end method
