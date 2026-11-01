.class abstract Lcom/google/android/libraries/places/internal/zzbip;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzbgf;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/libraries/places/internal/zzmn;->zzb(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzmm;

    move-result-object v0

    const-string v1, "delegate"

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbip;->zzb()Lcom/google/android/libraries/places/internal/zzbgf;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzmm;->zzd(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzmm;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzmm;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zza(Lcom/google/android/libraries/places/internal/zzbcl;Lcom/google/android/libraries/places/internal/zzbcf;Lcom/google/android/libraries/places/internal/zzayj;[Lcom/google/android/libraries/places/internal/zzayx;)Lcom/google/android/libraries/places/internal/zzbfr;
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method protected abstract zzb()Lcom/google/android/libraries/places/internal/zzbgf;
.end method

.method public final zzc()Lcom/google/android/libraries/places/internal/zzbap;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbip;->zzb()Lcom/google/android/libraries/places/internal/zzbgf;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/zzbau;->zzc()Lcom/google/android/libraries/places/internal/zzbap;

    move-result-object v0

    return-object v0
.end method

.method public zzd(Lcom/google/android/libraries/places/internal/zzbdo;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbip;->zzb()Lcom/google/android/libraries/places/internal/zzbgf;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/libraries/places/internal/zzbml;->zzd(Lcom/google/android/libraries/places/internal/zzbdo;)V

    return-void
.end method

.method public final zze()Lcom/google/android/libraries/places/internal/zzaye;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbip;->zzb()Lcom/google/android/libraries/places/internal/zzbgf;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/zzbgf;->zze()Lcom/google/android/libraries/places/internal/zzaye;

    move-result-object v0

    return-object v0
.end method

.method public final zzj(Lcom/google/android/libraries/places/internal/zzbmk;)Ljava/lang/Runnable;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbip;->zzb()Lcom/google/android/libraries/places/internal/zzbgf;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/libraries/places/internal/zzbml;->zzj(Lcom/google/android/libraries/places/internal/zzbmk;)Ljava/lang/Runnable;

    const/4 p1, 0x0

    return-object p1
.end method
