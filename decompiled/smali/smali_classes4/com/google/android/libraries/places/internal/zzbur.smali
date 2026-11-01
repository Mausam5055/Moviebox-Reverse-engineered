.class public abstract Lcom/google/android/libraries/places/internal/zzbur;
.super Ljava/lang/Object;


# instance fields
.field private final zza:Lcom/google/android/libraries/places/internal/zzayk;

.field private final zzb:Lcom/google/android/libraries/places/internal/zzayj;


# direct methods
.method protected constructor <init>(Lcom/google/android/libraries/places/internal/zzayk;Lcom/google/android/libraries/places/internal/zzayj;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "channel"

    invoke-static {p1, v0}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbur;->zza:Lcom/google/android/libraries/places/internal/zzayk;

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbur;->zzb:Lcom/google/android/libraries/places/internal/zzayj;

    return-void
.end method


# virtual methods
.method protected abstract zza(Lcom/google/android/libraries/places/internal/zzayk;Lcom/google/android/libraries/places/internal/zzayj;)Lcom/google/android/libraries/places/internal/zzbur;
.end method

.method public final zzc()Lcom/google/android/libraries/places/internal/zzayj;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbur;->zzb:Lcom/google/android/libraries/places/internal/zzayj;

    return-object v0
.end method

.method public final zzd()Lcom/google/android/libraries/places/internal/zzayk;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbur;->zza:Lcom/google/android/libraries/places/internal/zzayk;

    return-object v0
.end method

.method public final varargs zze([Lcom/google/android/libraries/places/internal/zzayp;)Lcom/google/android/libraries/places/internal/zzbur;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbur;->zza:Lcom/google/android/libraries/places/internal/zzayk;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/android/libraries/places/internal/zzayt;->zza(Lcom/google/android/libraries/places/internal/zzayk;Ljava/util/List;)Lcom/google/android/libraries/places/internal/zzayk;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbur;->zzb:Lcom/google/android/libraries/places/internal/zzayj;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/libraries/places/internal/zzbur;->zza(Lcom/google/android/libraries/places/internal/zzayk;Lcom/google/android/libraries/places/internal/zzayj;)Lcom/google/android/libraries/places/internal/zzbur;

    move-result-object p1

    return-object p1
.end method
