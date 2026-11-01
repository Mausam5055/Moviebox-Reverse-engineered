.class abstract Lcom/google/android/libraries/places/internal/zzbin;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzbfr;


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

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbin;->zza()Lcom/google/android/libraries/places/internal/zzbfr;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzmm;->zzd(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzmm;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzmm;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract zza()Lcom/google/android/libraries/places/internal/zzbfr;
.end method

.method public final zzam()Lcom/google/android/libraries/places/internal/zzaye;
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public final zzg(Lcom/google/android/libraries/places/internal/zzbjj;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbin;->zza()Lcom/google/android/libraries/places/internal/zzbfr;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/libraries/places/internal/zzbfr;->zzg(Lcom/google/android/libraries/places/internal/zzbjj;)V

    return-void
.end method

.method public final zzh(Lcom/google/android/libraries/places/internal/zzbdo;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbin;->zza()Lcom/google/android/libraries/places/internal/zzbfr;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/libraries/places/internal/zzbfr;->zzh(Lcom/google/android/libraries/places/internal/zzbdo;)V

    return-void
.end method

.method public final zzj()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbin;->zza()Lcom/google/android/libraries/places/internal/zzbfr;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/zzbfr;->zzj()V

    return-void
.end method

.method public final zzk(Lcom/google/android/libraries/places/internal/zzazn;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbin;->zza()Lcom/google/android/libraries/places/internal/zzbfr;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/libraries/places/internal/zzbfr;->zzk(Lcom/google/android/libraries/places/internal/zzazn;)V

    return-void
.end method

.method public final zzl(Lcom/google/android/libraries/places/internal/zzazq;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbin;->zza()Lcom/google/android/libraries/places/internal/zzbfr;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/libraries/places/internal/zzbfr;->zzl(Lcom/google/android/libraries/places/internal/zzazq;)V

    return-void
.end method

.method public final zzm(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbin;->zza()Lcom/google/android/libraries/places/internal/zzbfr;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/libraries/places/internal/zzbfr;->zzm(I)V

    return-void
.end method

.method public final zzn(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbin;->zza()Lcom/google/android/libraries/places/internal/zzbfr;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/libraries/places/internal/zzbfr;->zzn(I)V

    return-void
.end method

.method public zzo(Lcom/google/android/libraries/places/internal/zzbft;)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public final zzp()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbin;->zza()Lcom/google/android/libraries/places/internal/zzbfr;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/zzbqp;->zzp()Z

    move-result v0

    return v0
.end method

.method public final zzr()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbin;->zza()Lcom/google/android/libraries/places/internal/zzbfr;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/zzbqp;->zzr()V

    return-void
.end method

.method public final zzt()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbin;->zza()Lcom/google/android/libraries/places/internal/zzbfr;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/zzbqp;->zzt()V

    return-void
.end method

.method public final zzu(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbin;->zza()Lcom/google/android/libraries/places/internal/zzbfr;

    move-result-object p1

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lcom/google/android/libraries/places/internal/zzbqp;->zzu(I)V

    return-void
.end method

.method public final zzv(Lcom/google/android/libraries/places/internal/zzazc;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbin;->zza()Lcom/google/android/libraries/places/internal/zzbfr;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/libraries/places/internal/zzbqp;->zzv(Lcom/google/android/libraries/places/internal/zzazc;)V

    return-void
.end method

.method public final zzw(Ljava/io/InputStream;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbin;->zza()Lcom/google/android/libraries/places/internal/zzbfr;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/libraries/places/internal/zzbqp;->zzw(Ljava/io/InputStream;)V

    return-void
.end method
