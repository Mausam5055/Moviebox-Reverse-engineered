.class final Lcom/google/android/libraries/places/internal/zzbjr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/libraries/places/internal/zzbgf;

.field final synthetic zzb:Z

.field final synthetic zzc:Lcom/google/android/libraries/places/internal/zzbkd;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzbkd;Lcom/google/android/libraries/places/internal/zzbgf;Z)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbjr;->zza:Lcom/google/android/libraries/places/internal/zzbgf;

    iput-boolean p3, p0, Lcom/google/android/libraries/places/internal/zzbjr;->zzb:Z

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbjr;->zzc:Lcom/google/android/libraries/places/internal/zzbkd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbjr;->zzc:Lcom/google/android/libraries/places/internal/zzbkd;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbkd;->zzj(Lcom/google/android/libraries/places/internal/zzbkd;)Lcom/google/android/libraries/places/internal/zzbji;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbjr;->zza:Lcom/google/android/libraries/places/internal/zzbgf;

    iget-boolean v2, p0, Lcom/google/android/libraries/places/internal/zzbjr;->zzb:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzbji;->zzc(Ljava/lang/Object;Z)V

    return-void
.end method
