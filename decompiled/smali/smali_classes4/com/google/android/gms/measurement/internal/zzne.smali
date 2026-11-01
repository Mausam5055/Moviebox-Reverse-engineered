.class final Lcom/google/android/gms/measurement/internal/zzne;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:J

.field private final synthetic zzb:Lcom/google/android/gms/measurement/internal/zznb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zznb;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-wide p2, p0, Lcom/google/android/gms/measurement/internal/zzne;->zza:J

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzne;->zzb:Lcom/google/android/gms/measurement/internal/zznb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzne;->zzb:Lcom/google/android/gms/measurement/internal/zznb;

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzne;->zza:J

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zznb;->zzb(Lcom/google/android/gms/measurement/internal/zznb;J)V

    return-void
.end method
