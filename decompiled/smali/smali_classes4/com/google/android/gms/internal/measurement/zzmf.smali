.class final Lcom/google/android/gms/internal/measurement/zzmf;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzmi;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/measurement/zzik;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzik;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzmf;->zza:Lcom/google/android/gms/internal/measurement/zzik;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(I)B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzmf;->zza:Lcom/google/android/gms/internal/measurement/zzik;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzik;->zza(I)B

    move-result p1

    return p1
.end method

.method public final zza()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzmf;->zza:Lcom/google/android/gms/internal/measurement/zzik;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzik;->zzb()I

    move-result v0

    return v0
.end method
