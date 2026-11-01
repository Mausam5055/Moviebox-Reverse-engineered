.class final Lcom/google/android/gms/internal/measurement/zzit;
.super Ljava/lang/Object;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/measurement/zzjc;

.field private final zzb:[B


# direct methods
.method private constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzit;->zzb:[B

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzjc;->zzb([B)Lcom/google/android/gms/internal/measurement/zzjc;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzit;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    return-void
.end method

.method synthetic constructor <init>(ILcom/google/android/gms/internal/measurement/zzix;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzit;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/measurement/zzik;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzit;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzjc;->zzb()V

    new-instance v0, Lcom/google/android/gms/internal/measurement/zziv;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzit;->zzb:[B

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zziv;-><init>([B)V

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/measurement/zzjc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzit;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    return-object v0
.end method
