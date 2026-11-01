.class public abstract Lcom/google/android/libraries/places/internal/zzbef;
.super Lcom/google/android/libraries/places/internal/zzbej;

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzbfr;
.implements Lcom/google/android/libraries/places/internal/zzbmv;


# static fields
.field private static final zza:Ljava/util/logging/Logger;


# instance fields
.field private final zzb:Lcom/google/android/libraries/places/internal/zzbqz;

.field private final zzc:Lcom/google/android/libraries/places/internal/zzbis;

.field private final zzd:Z

.field private zze:Lcom/google/android/libraries/places/internal/zzbcf;

.field private volatile zzf:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/android/libraries/places/internal/zzbef;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbef;->zza:Ljava/util/logging/Logger;

    return-void
.end method

.method protected constructor <init>(Lcom/google/android/libraries/places/internal/zzbrb;Lcom/google/android/libraries/places/internal/zzbqo;Lcom/google/android/libraries/places/internal/zzbqz;Lcom/google/android/libraries/places/internal/zzbcf;Lcom/google/android/libraries/places/internal/zzayj;Z)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzbej;-><init>()V

    const-string p6, "transportTracer"

    invoke-static {p3, p6}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/libraries/places/internal/zzbef;->zzb:Lcom/google/android/libraries/places/internal/zzbqz;

    sget-object p3, Lcom/google/android/libraries/places/internal/zzbjd;->zzo:Lcom/google/android/libraries/places/internal/zzayh;

    invoke-virtual {p5, p3}, Lcom/google/android/libraries/places/internal/zzayj;->zzl(Lcom/google/android/libraries/places/internal/zzayh;)Ljava/lang/Object;

    move-result-object p3

    sget-object p5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p5, p3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p3

    xor-int/lit8 p3, p3, 0x1

    iput-boolean p3, p0, Lcom/google/android/libraries/places/internal/zzbef;->zzd:Z

    new-instance p3, Lcom/google/android/libraries/places/internal/zzbmw;

    invoke-direct {p3, p0, p1, p2}, Lcom/google/android/libraries/places/internal/zzbmw;-><init>(Lcom/google/android/libraries/places/internal/zzbmv;Lcom/google/android/libraries/places/internal/zzbrb;Lcom/google/android/libraries/places/internal/zzbqo;)V

    iput-object p3, p0, Lcom/google/android/libraries/places/internal/zzbef;->zzc:Lcom/google/android/libraries/places/internal/zzbis;

    iput-object p4, p0, Lcom/google/android/libraries/places/internal/zzbef;->zze:Lcom/google/android/libraries/places/internal/zzbcf;

    return-void
.end method

.method static bridge synthetic zzf()Ljava/util/logging/Logger;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzbef;->zza:Ljava/util/logging/Logger;

    return-object v0
.end method


# virtual methods
.method protected abstract zza()Lcom/google/android/libraries/places/internal/zzbec;
.end method

.method protected abstract zzb()Lcom/google/android/libraries/places/internal/zzbee;
.end method

.method protected bridge synthetic zzc()Lcom/google/android/libraries/places/internal/zzbei;
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method protected final zzd()Lcom/google/android/libraries/places/internal/zzbis;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbef;->zzc:Lcom/google/android/libraries/places/internal/zzbis;

    return-object v0
.end method

.method protected final zze()Lcom/google/android/libraries/places/internal/zzbqz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbef;->zzb:Lcom/google/android/libraries/places/internal/zzbqz;

    return-object v0
.end method

.method public final zzg(Lcom/google/android/libraries/places/internal/zzbjj;)V
    .locals 2

    invoke-interface {p0}, Lcom/google/android/libraries/places/internal/zzbfr;->zzam()Lcom/google/android/libraries/places/internal/zzaye;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/internal/zzazw;->zza:Lcom/google/android/libraries/places/internal/zzayc;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzaye;->zzc(Lcom/google/android/libraries/places/internal/zzayc;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "remote_addr"

    invoke-virtual {p1, v1, v0}, Lcom/google/android/libraries/places/internal/zzbjj;->zzb(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzbjj;

    return-void
.end method

.method public final zzh(Lcom/google/android/libraries/places/internal/zzbdo;)V
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbdo;->zzl()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "Should not cancel with OK status"

    invoke-static {v0, v2}, Lcom/google/android/libraries/places/internal/zzmt;->zzf(ZLjava/lang/Object;)V

    iput-boolean v1, p0, Lcom/google/android/libraries/places/internal/zzbef;->zzf:Z

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbef;->zza()Lcom/google/android/libraries/places/internal/zzbec;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/libraries/places/internal/zzbec;->zza(Lcom/google/android/libraries/places/internal/zzbdo;)V

    return-void
.end method

.method public final zzi(Lcom/google/android/libraries/places/internal/zzbra;ZZI)V
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    const-string v1, "null frame before EOS"

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zzmt;->zzf(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbef;->zza()Lcom/google/android/libraries/places/internal/zzbec;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/libraries/places/internal/zzbec;->zzb(Lcom/google/android/libraries/places/internal/zzbra;ZZI)V

    return-void
.end method

.method public final zzj()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbef;->zzb()Lcom/google/android/libraries/places/internal/zzbee;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbee;->zzk()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbef;->zzb()Lcom/google/android/libraries/places/internal/zzbee;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbee;->zzd(Lcom/google/android/libraries/places/internal/zzbee;)V

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbej;->zzd()Lcom/google/android/libraries/places/internal/zzbis;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/zzbis;->zzb()V

    :cond_0
    return-void
.end method

.method public final zzk(Lcom/google/android/libraries/places/internal/zzazn;)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbef;->zze:Lcom/google/android/libraries/places/internal/zzbcf;

    sget-object v1, Lcom/google/android/libraries/places/internal/zzbjd;->zzb:Lcom/google/android/libraries/places/internal/zzbca;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzbcf;->zzd(Lcom/google/android/libraries/places/internal/zzbca;)V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/places/internal/zzazn;->zzb(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbef;->zze:Lcom/google/android/libraries/places/internal/zzbcf;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/libraries/places/internal/zzbcf;->zzf(Lcom/google/android/libraries/places/internal/zzbca;Ljava/lang/Object;)V

    return-void
.end method

.method public final zzl(Lcom/google/android/libraries/places/internal/zzazq;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbef;->zzb()Lcom/google/android/libraries/places/internal/zzbee;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/libraries/places/internal/zzbee;->zzc(Lcom/google/android/libraries/places/internal/zzbee;Lcom/google/android/libraries/places/internal/zzazq;)V

    return-void
.end method

.method public final zzm(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbef;->zzb()Lcom/google/android/libraries/places/internal/zzbee;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzbei;->zzx(I)V

    return-void
.end method

.method public final zzn(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbef;->zzc:Lcom/google/android/libraries/places/internal/zzbis;

    invoke-interface {v0, p1}, Lcom/google/android/libraries/places/internal/zzbis;->zzd(I)V

    return-void
.end method

.method public final zzo(Lcom/google/android/libraries/places/internal/zzbft;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbef;->zzb()Lcom/google/android/libraries/places/internal/zzbee;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzbee;->zzi(Lcom/google/android/libraries/places/internal/zzbft;)V

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbef;->zza()Lcom/google/android/libraries/places/internal/zzbec;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbef;->zze:Lcom/google/android/libraries/places/internal/zzbcf;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/google/android/libraries/places/internal/zzbec;->zzc(Lcom/google/android/libraries/places/internal/zzbcf;[B)V

    iput-object v1, p0, Lcom/google/android/libraries/places/internal/zzbef;->zze:Lcom/google/android/libraries/places/internal/zzbcf;

    return-void
.end method

.method public final zzp()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbej;->zzc()Lcom/google/android/libraries/places/internal/zzbei;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbei;->zzy(Lcom/google/android/libraries/places/internal/zzbei;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbef;->zzf:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzq()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbef;->zzd:Z

    return v0
.end method
