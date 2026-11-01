.class final Lcom/google/android/libraries/places/internal/zzbhj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/libraries/places/internal/zzazc;

.field final synthetic zzb:Lcom/google/android/libraries/places/internal/zzbhy;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzbhy;Lcom/google/android/libraries/places/internal/zzazc;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbhj;->zza:Lcom/google/android/libraries/places/internal/zzazc;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbhj;->zzb:Lcom/google/android/libraries/places/internal/zzbhy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbhj;->zzb:Lcom/google/android/libraries/places/internal/zzbhy;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbhy;->zzd(Lcom/google/android/libraries/places/internal/zzbhy;)Lcom/google/android/libraries/places/internal/zzbfr;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbhj;->zza:Lcom/google/android/libraries/places/internal/zzazc;

    invoke-interface {v0, v1}, Lcom/google/android/libraries/places/internal/zzbqp;->zzv(Lcom/google/android/libraries/places/internal/zzazc;)V

    return-void
.end method
