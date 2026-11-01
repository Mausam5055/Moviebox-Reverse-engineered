.class final Lcom/google/android/libraries/places/internal/zzbgq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/libraries/places/internal/zzbgz;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzbgz;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbgq;->zza:Lcom/google/android/libraries/places/internal/zzbgz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbgq;->zza:Lcom/google/android/libraries/places/internal/zzbgz;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbgz;->zzf(Lcom/google/android/libraries/places/internal/zzbgz;)Lcom/google/android/libraries/places/internal/zzayo;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzayo;->zzc(I)V

    return-void
.end method
