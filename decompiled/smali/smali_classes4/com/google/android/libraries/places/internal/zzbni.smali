.class final Lcom/google/android/libraries/places/internal/zzbni;
.super Ljava/lang/Object;


# instance fields
.field private final zza:Lcom/google/android/libraries/places/internal/zzbbj;

.field private zzb:Lcom/google/android/libraries/places/internal/zzaze;

.field private final zzc:Lcom/google/android/libraries/places/internal/zzbnc;

.field private zzd:Z


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/places/internal/zzbbj;Lcom/google/android/libraries/places/internal/zzaze;Lcom/google/android/libraries/places/internal/zzbnc;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbni;->zzd:Z

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbni;->zza:Lcom/google/android/libraries/places/internal/zzbbj;

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbni;->zzb:Lcom/google/android/libraries/places/internal/zzaze;

    iput-object p3, p0, Lcom/google/android/libraries/places/internal/zzbni;->zzc:Lcom/google/android/libraries/places/internal/zzbnc;

    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/libraries/places/internal/zzbni;)Lcom/google/android/libraries/places/internal/zzaze;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbni;->zzb:Lcom/google/android/libraries/places/internal/zzaze;

    return-object p0
.end method

.method static bridge synthetic zzb(Lcom/google/android/libraries/places/internal/zzbni;)Lcom/google/android/libraries/places/internal/zzaze;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbni;->zzc:Lcom/google/android/libraries/places/internal/zzbnc;

    invoke-static {p0}, Lcom/google/android/libraries/places/internal/zzbnc;->zzb(Lcom/google/android/libraries/places/internal/zzbnc;)Lcom/google/android/libraries/places/internal/zzazf;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzazf;->zza()Lcom/google/android/libraries/places/internal/zzaze;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic zzd(Lcom/google/android/libraries/places/internal/zzbni;)Lcom/google/android/libraries/places/internal/zzbbj;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbni;->zza:Lcom/google/android/libraries/places/internal/zzbbj;

    return-object p0
.end method

.method static bridge synthetic zzf(Lcom/google/android/libraries/places/internal/zzbni;)Lcom/google/android/libraries/places/internal/zzbnc;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbni;->zzc:Lcom/google/android/libraries/places/internal/zzbnc;

    return-object p0
.end method

.method static bridge synthetic zzg(Lcom/google/android/libraries/places/internal/zzbni;Lcom/google/android/libraries/places/internal/zzaze;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbni;->zzb:Lcom/google/android/libraries/places/internal/zzaze;

    sget-object v0, Lcom/google/android/libraries/places/internal/zzaze;->zzb:Lcom/google/android/libraries/places/internal/zzaze;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/google/android/libraries/places/internal/zzaze;->zzc:Lcom/google/android/libraries/places/internal/zzaze;

    if-ne p1, v0, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/google/android/libraries/places/internal/zzaze;->zzd:Lcom/google/android/libraries/places/internal/zzaze;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/google/android/libraries/places/internal/zzbni;->zzd:Z

    :cond_1
    return-void

    :cond_2
    :goto_1
    const/4 p1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final zzc()Lcom/google/android/libraries/places/internal/zzaze;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbni;->zzb:Lcom/google/android/libraries/places/internal/zzaze;

    return-object v0
.end method

.method public final zze()Lcom/google/android/libraries/places/internal/zzbbj;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbni;->zza:Lcom/google/android/libraries/places/internal/zzbbj;

    return-object v0
.end method

.method public final zzh()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbni;->zzd:Z

    return v0
.end method
