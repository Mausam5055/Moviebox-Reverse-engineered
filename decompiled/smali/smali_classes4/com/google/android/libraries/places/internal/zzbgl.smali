.class final Lcom/google/android/libraries/places/internal/zzbgl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Ljava/lang/StringBuilder;

.field final synthetic zzb:Lcom/google/android/libraries/places/internal/zzbgz;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzbgz;Ljava/lang/StringBuilder;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbgl;->zza:Ljava/lang/StringBuilder;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbgl;->zzb:Lcom/google/android/libraries/places/internal/zzbgz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbgl;->zza:Ljava/lang/StringBuilder;

    sget-object v1, Lcom/google/android/libraries/places/internal/zzbdo;->zze:Lcom/google/android/libraries/places/internal/zzbdo;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbgl;->zzb:Lcom/google/android/libraries/places/internal/zzbgz;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/google/android/libraries/places/internal/zzbgz;->zzi(Lcom/google/android/libraries/places/internal/zzbgz;Lcom/google/android/libraries/places/internal/zzbdo;Z)V

    return-void
.end method
