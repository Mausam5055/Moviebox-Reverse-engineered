.class final Lcom/google/android/libraries/places/internal/zzmw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field final synthetic zza:Ljava/lang/CharSequence;

.field final synthetic zzb:Lcom/google/android/libraries/places/internal/zzmy;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzmy;Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzmw;->zza:Ljava/lang/CharSequence;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzmw;->zzb:Lcom/google/android/libraries/places/internal/zzmy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzmw;->zzb:Lcom/google/android/libraries/places/internal/zzmy;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzmw;->zza:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zzmy;->zze(Lcom/google/android/libraries/places/internal/zzmy;Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    const-string v0, ", "

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzmh;->zzc(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzmh;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzmh;->zzg(Ljava/lang/StringBuilder;Ljava/util/Iterator;)Ljava/lang/StringBuilder;

    const/16 v0, 0x5d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
