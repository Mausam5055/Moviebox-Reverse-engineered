.class public final Lcom/google/android/libraries/places/internal/zzbuj;
.super Ljava/lang/Object;


# instance fields
.field private zza:Lcom/google/android/libraries/places/internal/zzbui;

.field private final zzb:Lcom/google/android/libraries/places/internal/zzbtb;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbtb;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzbtb;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbuj;->zzb:Lcom/google/android/libraries/places/internal/zzbtb;

    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/libraries/places/internal/zzbuj;)Lcom/google/android/libraries/places/internal/zzbtb;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbuj;->zzb:Lcom/google/android/libraries/places/internal/zzbtb;

    return-object p0
.end method

.method static bridge synthetic zzb(Lcom/google/android/libraries/places/internal/zzbuj;)Lcom/google/android/libraries/places/internal/zzbui;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbuj;->zza:Lcom/google/android/libraries/places/internal/zzbui;

    return-object p0
.end method


# virtual methods
.method public final zzc(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbuj;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbuj;->zzb:Lcom/google/android/libraries/places/internal/zzbtb;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/libraries/places/internal/zzbtb;->zza(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbtb;

    return-object p0
.end method

.method public final zzd(Lcom/google/android/libraries/places/internal/zzbui;)Lcom/google/android/libraries/places/internal/zzbuj;
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbuj;->zza:Lcom/google/android/libraries/places/internal/zzbui;

    return-object p0
.end method

.method public final zze()Lcom/google/android/libraries/places/internal/zzbul;
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbuj;->zza:Lcom/google/android/libraries/places/internal/zzbui;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbul;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/libraries/places/internal/zzbul;-><init>(Lcom/google/android/libraries/places/internal/zzbuj;Lcom/google/android/libraries/places/internal/zzbuk;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
