.class public final Lcom/google/android/libraries/places/internal/zzbil;
.super Lcom/google/android/libraries/places/internal/zzbmy;


# instance fields
.field private zzb:Z

.field private final zzc:Lcom/google/android/libraries/places/internal/zzbdo;

.field private final zzd:Lcom/google/android/libraries/places/internal/zzbfs;

.field private final zze:[Lcom/google/android/libraries/places/internal/zzayx;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/places/internal/zzbdo;Lcom/google/android/libraries/places/internal/zzbfs;[Lcom/google/android/libraries/places/internal/zzayx;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzbmy;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbdo;->zzl()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "error must not be OK"

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zzmt;->zzf(ZLjava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbil;->zzc:Lcom/google/android/libraries/places/internal/zzbdo;

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbil;->zzd:Lcom/google/android/libraries/places/internal/zzbfs;

    iput-object p3, p0, Lcom/google/android/libraries/places/internal/zzbil;->zze:[Lcom/google/android/libraries/places/internal/zzayx;

    return-void
.end method


# virtual methods
.method public final zzg(Lcom/google/android/libraries/places/internal/zzbjj;)V
    .locals 2

    const-string v0, "error"

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbil;->zzc:Lcom/google/android/libraries/places/internal/zzbdo;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/libraries/places/internal/zzbjj;->zzb(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzbjj;

    const-string v0, "progress"

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbil;->zzd:Lcom/google/android/libraries/places/internal/zzbfs;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/libraries/places/internal/zzbjj;->zzb(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzbjj;

    return-void
.end method

.method public final zzo(Lcom/google/android/libraries/places/internal/zzbft;)V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbil;->zzb:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "already started"

    invoke-static {v0, v2}, Lcom/google/android/libraries/places/internal/zzmt;->zzp(ZLjava/lang/Object;)V

    iput-boolean v1, p0, Lcom/google/android/libraries/places/internal/zzbil;->zzb:Z

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbil;->zze:[Lcom/google/android/libraries/places/internal/zzayx;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v1, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbil;->zzc:Lcom/google/android/libraries/places/internal/zzbdo;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbil;->zzd:Lcom/google/android/libraries/places/internal/zzbfs;

    new-instance v2, Lcom/google/android/libraries/places/internal/zzbcf;

    invoke-direct {v2}, Lcom/google/android/libraries/places/internal/zzbcf;-><init>()V

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzbft;->zzd(Lcom/google/android/libraries/places/internal/zzbdo;Lcom/google/android/libraries/places/internal/zzbfs;Lcom/google/android/libraries/places/internal/zzbcf;)V

    return-void
.end method
