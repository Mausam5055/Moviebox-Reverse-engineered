.class final Lcom/google/android/libraries/places/internal/zzbim;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzbfu;


# instance fields
.field final zza:Lcom/google/android/libraries/places/internal/zzbdo;

.field private final zzb:Lcom/google/android/libraries/places/internal/zzbfs;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzbdo;Lcom/google/android/libraries/places/internal/zzbfs;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbdo;->zzl()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "error must not be OK"

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zzmt;->zzf(ZLjava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbim;->zza:Lcom/google/android/libraries/places/internal/zzbdo;

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbim;->zzb:Lcom/google/android/libraries/places/internal/zzbfs;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/libraries/places/internal/zzbcl;Lcom/google/android/libraries/places/internal/zzbcf;Lcom/google/android/libraries/places/internal/zzayj;[Lcom/google/android/libraries/places/internal/zzayx;)Lcom/google/android/libraries/places/internal/zzbfr;
    .locals 0

    new-instance p1, Lcom/google/android/libraries/places/internal/zzbil;

    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzbim;->zza:Lcom/google/android/libraries/places/internal/zzbdo;

    iget-object p3, p0, Lcom/google/android/libraries/places/internal/zzbim;->zzb:Lcom/google/android/libraries/places/internal/zzbfs;

    invoke-direct {p1, p2, p3, p4}, Lcom/google/android/libraries/places/internal/zzbil;-><init>(Lcom/google/android/libraries/places/internal/zzbdo;Lcom/google/android/libraries/places/internal/zzbfs;[Lcom/google/android/libraries/places/internal/zzayx;)V

    return-object p1
.end method

.method public final zzc()Lcom/google/android/libraries/places/internal/zzbap;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not a real transport"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
