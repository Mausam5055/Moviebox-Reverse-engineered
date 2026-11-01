.class final Lcom/google/android/libraries/places/internal/zzbhm;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:I

.field final synthetic zzb:Lcom/google/android/libraries/places/internal/zzbhy;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzbhy;I)V
    .locals 0

    iput p2, p0, Lcom/google/android/libraries/places/internal/zzbhm;->zza:I

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbhm;->zzb:Lcom/google/android/libraries/places/internal/zzbhy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbhm;->zzb:Lcom/google/android/libraries/places/internal/zzbhy;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbhy;->zzd(Lcom/google/android/libraries/places/internal/zzbhy;)Lcom/google/android/libraries/places/internal/zzbfr;

    move-result-object v0

    iget v1, p0, Lcom/google/android/libraries/places/internal/zzbhm;->zza:I

    invoke-interface {v0, v1}, Lcom/google/android/libraries/places/internal/zzbfr;->zzn(I)V

    return-void
.end method
