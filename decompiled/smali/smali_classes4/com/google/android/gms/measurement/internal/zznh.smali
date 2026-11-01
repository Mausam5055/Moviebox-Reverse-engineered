.class final Lcom/google/android/gms/measurement/internal/zznh;
.super Ljava/lang/Object;


# instance fields
.field protected zza:J

.field final synthetic zzb:Lcom/google/android/gms/measurement/internal/zznb;

.field private zzc:J

.field private final zzd:Lcom/google/android/gms/measurement/internal/zzav;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zznb;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zznh;->zzb:Lcom/google/android/gms/measurement/internal/zznb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/measurement/internal/zznk;

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzja;->zzu:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/measurement/internal/zznk;-><init>(Lcom/google/android/gms/measurement/internal/zznh;Lcom/google/android/gms/measurement/internal/zzjc;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zznh;->zzd:Lcom/google/android/gms/measurement/internal/zzav;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzja;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zznh;->zzc:J

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zznh;->zza:J

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zznh;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznh;->zzb:Lcom/google/android/gms/measurement/internal/zznb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznh;->zzb:Lcom/google/android/gms/measurement/internal/zznb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2, v0, v1}, Lcom/google/android/gms/measurement/internal/zznh;->zza(ZZJ)Z

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznh;->zzb:Lcom/google/android/gms/measurement/internal/zznb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zze;->zzc()Lcom/google/android/gms/measurement/internal/zzb;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zznh;->zzb:Lcom/google/android/gms/measurement/internal/zznb;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzb;->zza(J)V

    return-void
.end method


# virtual methods
.method final zza(J)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zznh;->zza:J

    sub-long v0, p1, v0

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zznh;->zza:J

    return-wide v0
.end method

.method final zza()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznh;->zzd:Lcom/google/android/gms/measurement/internal/zzav;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzav;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznh;->zzb:Lcom/google/android/gms/measurement/internal/zznb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzbh;->zzdb:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznh;->zzb:Lcom/google/android/gms/measurement/internal/zznb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zznh;->zzc:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zznh;->zzc:J

    :goto_0
    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zznh;->zzc:J

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zznh;->zza:J

    return-void
.end method

.method public final zza(ZZJ)Z
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznh;->zzb:Lcom/google/android/gms/measurement/internal/zznb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznh;->zzb:Lcom/google/android/gms/measurement/internal/zznb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzh;->zzu()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznh;->zzb:Lcom/google/android/gms/measurement/internal/zznb;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzja;->zzu:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzac()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznh;->zzb:Lcom/google/android/gms/measurement/internal/zznb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzk()Lcom/google/android/gms/measurement/internal/zzha;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzha;->zzk:Lcom/google/android/gms/measurement/internal/zzhb;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zznh;->zzb:Lcom/google/android/gms/measurement/internal/zznb;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzja;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzhb;->zza(J)V

    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zznh;->zzc:J

    sub-long v0, p3, v0

    if-nez p1, :cond_1

    const-wide/16 v2, 0x3e8

    cmp-long p1, v0, v2

    if-gez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zznh;->zzb:Lcom/google/android/gms/measurement/internal/zznb;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "Screen exposed for less than 1000 ms. Event not sent. time"

    invoke-virtual {p1, p3, p2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return p1

    :cond_1
    if-nez p2, :cond_2

    invoke-virtual {p0, p3, p4}, Lcom/google/android/gms/measurement/internal/zznh;->zza(J)J

    move-result-wide v0

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zznh;->zzb:Lcom/google/android/gms/measurement/internal/zznb;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "Recording user engagement, ms"

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "_et"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznh;->zzb:Lcom/google/android/gms/measurement/internal/zznb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzag;->zzw()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zznh;->zzb:Lcom/google/android/gms/measurement/internal/zznb;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zze;->zzn()Lcom/google/android/gms/measurement/internal/zzlj;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/measurement/internal/zzlj;->zza(Z)Lcom/google/android/gms/measurement/internal/zzlk;

    move-result-object v0

    invoke-static {v0, p1, v1}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Lcom/google/android/gms/measurement/internal/zzlk;Landroid/os/Bundle;Z)V

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zznh;->zzb:Lcom/google/android/gms/measurement/internal/zznb;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zze;->zzm()Lcom/google/android/gms/measurement/internal/zzjq;

    move-result-object p2

    const-string v0, "auto"

    const-string v2, "_e"

    invoke-virtual {p2, v0, v2, p1}, Lcom/google/android/gms/measurement/internal/zzjq;->zzc(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_3
    iput-wide p3, p0, Lcom/google/android/gms/measurement/internal/zznh;->zzc:J

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zznh;->zzd:Lcom/google/android/gms/measurement/internal/zzav;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzav;->zza()V

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zznh;->zzd:Lcom/google/android/gms/measurement/internal/zzav;

    sget-object p2, Lcom/google/android/gms/measurement/internal/zzbh;->zzbc:Lcom/google/android/gms/measurement/internal/zzfz;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzav;->zza(J)V

    return v1
.end method

.method final zzb(J)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zznh;->zzd:Lcom/google/android/gms/measurement/internal/zzav;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzav;->zza()V

    return-void
.end method

.method final zzc(J)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznh;->zzb:Lcom/google/android/gms/measurement/internal/zznb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznh;->zzd:Lcom/google/android/gms/measurement/internal/zzav;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzav;->zza()V

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zznh;->zzc:J

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zznh;->zza:J

    return-void
.end method
