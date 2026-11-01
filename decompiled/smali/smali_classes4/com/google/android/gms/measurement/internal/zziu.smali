.class final Lcom/google/android/gms/measurement/internal/zziu;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/measurement/internal/zzbf;

.field private final synthetic zzb:Lcom/google/android/gms/measurement/internal/zzo;

.field private final synthetic zzc:Lcom/google/android/gms/measurement/internal/zzic;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzic;Lcom/google/android/gms/measurement/internal/zzbf;Lcom/google/android/gms/measurement/internal/zzo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zziu;->zza:Lcom/google/android/gms/measurement/internal/zzbf;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zziu;->zzb:Lcom/google/android/gms/measurement/internal/zzo;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zziu;->zzc:Lcom/google/android/gms/measurement/internal/zzic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zziu;->zzc:Lcom/google/android/gms/measurement/internal/zzic;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zziu;->zza:Lcom/google/android/gms/measurement/internal/zzbf;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zziu;->zzb:Lcom/google/android/gms/measurement/internal/zzo;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzic;->zzb(Lcom/google/android/gms/measurement/internal/zzbf;Lcom/google/android/gms/measurement/internal/zzo;)Lcom/google/android/gms/measurement/internal/zzbf;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zziu;->zzc:Lcom/google/android/gms/measurement/internal/zzic;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zziu;->zzb:Lcom/google/android/gms/measurement/internal/zzo;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/zzic;->zzc(Lcom/google/android/gms/measurement/internal/zzbf;Lcom/google/android/gms/measurement/internal/zzo;)V

    return-void
.end method
