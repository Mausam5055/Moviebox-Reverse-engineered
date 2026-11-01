.class final Lcom/google/android/gms/measurement/internal/zzho;
.super Landroidx/collection/z;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/collection/z;"
    }
.end annotation


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/measurement/internal/zzhl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzhl;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzho;->zza:Lcom/google/android/gms/measurement/internal/zzhl;

    const/16 p1, 0x14

    invoke-direct {p0, p1}, Landroidx/collection/z;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected final synthetic create(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzho;->zza:Lcom/google/android/gms/measurement/internal/zzhl;

    invoke-static {v0, p1}, Lcom/google/android/gms/measurement/internal/zzhl;->zza(Lcom/google/android/gms/measurement/internal/zzhl;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzb;

    move-result-object p1

    return-object p1
.end method
