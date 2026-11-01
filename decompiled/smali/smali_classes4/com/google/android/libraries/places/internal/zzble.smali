.class final Lcom/google/android/libraries/places/internal/zzble;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/libraries/places/internal/zzbbk;

.field final synthetic zzb:Lcom/google/android/libraries/places/internal/zzaze;

.field final synthetic zzc:Lcom/google/android/libraries/places/internal/zzblg;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzblg;Lcom/google/android/libraries/places/internal/zzbbk;Lcom/google/android/libraries/places/internal/zzaze;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzble;->zza:Lcom/google/android/libraries/places/internal/zzbbk;

    iput-object p3, p0, Lcom/google/android/libraries/places/internal/zzble;->zzb:Lcom/google/android/libraries/places/internal/zzaze;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzble;->zzc:Lcom/google/android/libraries/places/internal/zzblg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzble;->zzc:Lcom/google/android/libraries/places/internal/zzblg;

    iget-object v2, v1, Lcom/google/android/libraries/places/internal/zzblg;->zzb:Lcom/google/android/libraries/places/internal/zzbma;

    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzbma;->zzw(Lcom/google/android/libraries/places/internal/zzbma;)Lcom/google/android/libraries/places/internal/zzblg;

    move-result-object v3

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzble;->zza:Lcom/google/android/libraries/places/internal/zzbbk;

    invoke-static {v2, v1}, Lcom/google/android/libraries/places/internal/zzbma;->zzU(Lcom/google/android/libraries/places/internal/zzbma;Lcom/google/android/libraries/places/internal/zzbbk;)V

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzble;->zzb:Lcom/google/android/libraries/places/internal/zzaze;

    sget-object v2, Lcom/google/android/libraries/places/internal/zzaze;->zze:Lcom/google/android/libraries/places/internal/zzaze;

    if-eq v1, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzble;->zzc:Lcom/google/android/libraries/places/internal/zzblg;

    iget-object v2, v2, Lcom/google/android/libraries/places/internal/zzblg;->zzb:Lcom/google/android/libraries/places/internal/zzbma;

    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzbma;->zzg(Lcom/google/android/libraries/places/internal/zzbma;)Lcom/google/android/libraries/places/internal/zzaym;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzble;->zza:Lcom/google/android/libraries/places/internal/zzbbk;

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v3, v4, v1

    const-string v1, "Entering {0} state with picker: {1}"

    invoke-virtual {v2, v0, v1, v4}, Lcom/google/android/libraries/places/internal/zzaym;->zzb(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzble;->zzc:Lcom/google/android/libraries/places/internal/zzblg;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzble;->zzb:Lcom/google/android/libraries/places/internal/zzaze;

    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzblg;->zzb:Lcom/google/android/libraries/places/internal/zzbma;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbma;->zzt(Lcom/google/android/libraries/places/internal/zzbma;)Lcom/google/android/libraries/places/internal/zzbgh;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzbgh;->zza(Lcom/google/android/libraries/places/internal/zzaze;)V

    :cond_1
    :goto_0
    return-void
.end method
