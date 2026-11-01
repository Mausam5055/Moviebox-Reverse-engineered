.class final Lcom/google/android/libraries/places/internal/zzblx;
.super Lcom/google/android/libraries/places/internal/zzbek;


# instance fields
.field final zza:Lcom/google/android/libraries/places/internal/zzbba;

.field final zzb:Lcom/google/android/libraries/places/internal/zzbap;

.field final zzc:Lcom/google/android/libraries/places/internal/zzbfh;

.field final zzd:Lcom/google/android/libraries/places/internal/zzbfi;

.field zze:Ljava/util/List;

.field zzf:Lcom/google/android/libraries/places/internal/zzbkd;

.field zzg:Z

.field zzh:Z

.field zzi:Lcom/google/android/libraries/places/internal/zzbdv;

.field final synthetic zzj:Lcom/google/android/libraries/places/internal/zzbma;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzbma;Lcom/google/android/libraries/places/internal/zzbba;)V
    .locals 8

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzblx;->zzj:Lcom/google/android/libraries/places/internal/zzbma;

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzbek;-><init>()V

    invoke-virtual {p2}, Lcom/google/android/libraries/places/internal/zzbba;->zzc()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzblx;->zze:Ljava/util/List;

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzblx;->zza:Lcom/google/android/libraries/places/internal/zzbba;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbma;->zzb()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Subchannel"

    invoke-static {v1, v0}, Lcom/google/android/libraries/places/internal/zzbap;->zzc(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbap;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/libraries/places/internal/zzblx;->zzb:Lcom/google/android/libraries/places/internal/zzbap;

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbfi;

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbma;->zzD(Lcom/google/android/libraries/places/internal/zzbma;)Lcom/google/android/libraries/places/internal/zzbqt;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/libraries/places/internal/zzbqt;->zza()J

    move-result-wide v5

    invoke-virtual {p2}, Lcom/google/android/libraries/places/internal/zzbba;->zzc()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "Subchannel for "

    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v4, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/libraries/places/internal/zzbfi;-><init>(Lcom/google/android/libraries/places/internal/zzbap;IJLjava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzblx;->zzd:Lcom/google/android/libraries/places/internal/zzbfi;

    new-instance p2, Lcom/google/android/libraries/places/internal/zzbfh;

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbma;->zzD(Lcom/google/android/libraries/places/internal/zzbma;)Lcom/google/android/libraries/places/internal/zzbqt;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lcom/google/android/libraries/places/internal/zzbfh;-><init>(Lcom/google/android/libraries/places/internal/zzbfi;Lcom/google/android/libraries/places/internal/zzbqt;)V

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzblx;->zzc:Lcom/google/android/libraries/places/internal/zzbfh;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzblx;->zzb:Lcom/google/android/libraries/places/internal/zzbap;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbap;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzblx;->zzj:Lcom/google/android/libraries/places/internal/zzbma;

    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzbma;->zzf:Lcom/google/android/libraries/places/internal/zzbdw;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbdw;->zzd()V

    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzblx;->zzg:Z

    const-string v1, "not started"

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zzmt;->zzp(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzblx;->zzf:Lcom/google/android/libraries/places/internal/zzbkd;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbkd;->zzh()Lcom/google/android/libraries/places/internal/zzbfu;

    return-void
.end method

.method public final zzb()V
    .locals 8

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzblx;->zzj:Lcom/google/android/libraries/places/internal/zzbma;

    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzbma;->zzf:Lcom/google/android/libraries/places/internal/zzbdw;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbdw;->zzd()V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzblx;->zzf:Lcom/google/android/libraries/places/internal/zzbkd;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/google/android/libraries/places/internal/zzblx;->zzh:Z

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzblx;->zzh:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzblx;->zzj:Lcom/google/android/libraries/places/internal/zzbma;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbma;->zzab(Lcom/google/android/libraries/places/internal/zzbma;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzblx;->zzi:Lcom/google/android/libraries/places/internal/zzbdv;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbdv;->zza()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzblx;->zzi:Lcom/google/android/libraries/places/internal/zzbdv;

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    iput-boolean v1, p0, Lcom/google/android/libraries/places/internal/zzblx;->zzh:Z

    :goto_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzblx;->zzj:Lcom/google/android/libraries/places/internal/zzbma;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbma;->zzab(Lcom/google/android/libraries/places/internal/zzbma;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v3, Lcom/google/android/libraries/places/internal/zzbki;

    new-instance v1, Lcom/google/android/libraries/places/internal/zzblw;

    invoke-direct {v1, p0}, Lcom/google/android/libraries/places/internal/zzblw;-><init>(Lcom/google/android/libraries/places/internal/zzblx;)V

    invoke-direct {v3, v1}, Lcom/google/android/libraries/places/internal/zzbki;-><init>(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzblx;->zzj:Lcom/google/android/libraries/places/internal/zzbma;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzbma;->zzs(Lcom/google/android/libraries/places/internal/zzbma;)Lcom/google/android/libraries/places/internal/zzbfw;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/libraries/places/internal/zzbfw;->zzb()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v7

    iget-object v2, v0, Lcom/google/android/libraries/places/internal/zzbma;->zzf:Lcom/google/android/libraries/places/internal/zzbdw;

    const-wide/16 v4, 0x5

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/libraries/places/internal/zzbdw;->zza(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/libraries/places/internal/zzbdv;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzblx;->zzi:Lcom/google/android/libraries/places/internal/zzbdv;

    return-void

    :cond_3
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzblx;->zzf:Lcom/google/android/libraries/places/internal/zzbkd;

    sget-object v1, Lcom/google/android/libraries/places/internal/zzbma;->zzd:Lcom/google/android/libraries/places/internal/zzbdo;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzbkd;->zzF(Lcom/google/android/libraries/places/internal/zzbdo;)V

    return-void
.end method

.method public final zzc(Lcom/google/android/libraries/places/internal/zzbbl;)V
    .locals 21

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/libraries/places/internal/zzblx;->zzj:Lcom/google/android/libraries/places/internal/zzbma;

    iget-object v1, v1, Lcom/google/android/libraries/places/internal/zzbma;->zzf:Lcom/google/android/libraries/places/internal/zzbdw;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzbdw;->zzd()V

    iget-boolean v1, v0, Lcom/google/android/libraries/places/internal/zzblx;->zzg:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    const-string v3, "already started"

    invoke-static {v1, v3}, Lcom/google/android/libraries/places/internal/zzmt;->zzp(ZLjava/lang/Object;)V

    iget-boolean v1, v0, Lcom/google/android/libraries/places/internal/zzblx;->zzh:Z

    xor-int/2addr v1, v2

    const-string v3, "already shutdown"

    invoke-static {v1, v3}, Lcom/google/android/libraries/places/internal/zzmt;->zzp(ZLjava/lang/Object;)V

    iget-object v1, v0, Lcom/google/android/libraries/places/internal/zzblx;->zzj:Lcom/google/android/libraries/places/internal/zzbma;

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzbma;->zzab(Lcom/google/android/libraries/places/internal/zzbma;)Z

    move-result v1

    xor-int/2addr v1, v2

    const-string v3, "Channel is being terminated"

    invoke-static {v1, v3}, Lcom/google/android/libraries/places/internal/zzmt;->zzp(ZLjava/lang/Object;)V

    iput-boolean v2, v0, Lcom/google/android/libraries/places/internal/zzblx;->zzg:Z

    iget-object v1, v0, Lcom/google/android/libraries/places/internal/zzblx;->zzj:Lcom/google/android/libraries/places/internal/zzbma;

    iget-object v2, v0, Lcom/google/android/libraries/places/internal/zzblx;->zza:Lcom/google/android/libraries/places/internal/zzbba;

    new-instance v15, Lcom/google/android/libraries/places/internal/zzbkd;

    invoke-virtual {v2}, Lcom/google/android/libraries/places/internal/zzbba;->zzc()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzbma;->zzb()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzbma;->zzae(Lcom/google/android/libraries/places/internal/zzbma;)Lcom/google/android/libraries/places/internal/zzbij;

    move-result-object v7

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzbma;->zzs(Lcom/google/android/libraries/places/internal/zzbma;)Lcom/google/android/libraries/places/internal/zzbfw;

    move-result-object v8

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzbma;->zzs(Lcom/google/android/libraries/places/internal/zzbma;)Lcom/google/android/libraries/places/internal/zzbfw;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/libraries/places/internal/zzbfw;->zzb()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v9

    iget-object v1, v0, Lcom/google/android/libraries/places/internal/zzblx;->zzj:Lcom/google/android/libraries/places/internal/zzbma;

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzbma;->zzf(Lcom/google/android/libraries/places/internal/zzbma;)Lcom/google/android/libraries/places/internal/zznc;

    move-result-object v10

    new-instance v12, Lcom/google/android/libraries/places/internal/zzblv;

    move-object/from16 v1, p1

    invoke-direct {v12, v0, v1}, Lcom/google/android/libraries/places/internal/zzblv;-><init>(Lcom/google/android/libraries/places/internal/zzblx;Lcom/google/android/libraries/places/internal/zzbbl;)V

    iget-object v1, v0, Lcom/google/android/libraries/places/internal/zzblx;->zzj:Lcom/google/android/libraries/places/internal/zzbma;

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzbma;->zzk(Lcom/google/android/libraries/places/internal/zzbma;)Lcom/google/android/libraries/places/internal/zzbah;

    move-result-object v13

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzbma;->zzp(Lcom/google/android/libraries/places/internal/zzbma;)Lcom/google/android/libraries/places/internal/zzbff;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/libraries/places/internal/zzbff;->zza()Lcom/google/android/libraries/places/internal/zzbfg;

    move-result-object v14

    iget-object v1, v0, Lcom/google/android/libraries/places/internal/zzblx;->zzd:Lcom/google/android/libraries/places/internal/zzbfi;

    iget-object v2, v0, Lcom/google/android/libraries/places/internal/zzblx;->zzb:Lcom/google/android/libraries/places/internal/zzbap;

    iget-object v11, v0, Lcom/google/android/libraries/places/internal/zzblx;->zzc:Lcom/google/android/libraries/places/internal/zzbfh;

    iget-object v3, v0, Lcom/google/android/libraries/places/internal/zzblx;->zzj:Lcom/google/android/libraries/places/internal/zzbma;

    invoke-static {v3}, Lcom/google/android/libraries/places/internal/zzbma;->zzG(Lcom/google/android/libraries/places/internal/zzbma;)Ljava/util/List;

    move-result-object v18

    iget-object v6, v3, Lcom/google/android/libraries/places/internal/zzbma;->zzf:Lcom/google/android/libraries/places/internal/zzbdw;

    const/16 v16, 0x0

    move-object v3, v15

    move-object/from16 v17, v6

    move-object/from16 v6, v16

    move-object/from16 v19, v11

    move-object/from16 v11, v17

    move-object/from16 v20, v15

    move-object v15, v1

    move-object/from16 v16, v2

    move-object/from16 v17, v19

    invoke-direct/range {v3 .. v18}, Lcom/google/android/libraries/places/internal/zzbkd;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/libraries/places/internal/zzbij;Lcom/google/android/libraries/places/internal/zzbfw;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/libraries/places/internal/zznc;Lcom/google/android/libraries/places/internal/zzbdw;Lcom/google/android/libraries/places/internal/zzbjw;Lcom/google/android/libraries/places/internal/zzbah;Lcom/google/android/libraries/places/internal/zzbfg;Lcom/google/android/libraries/places/internal/zzbfi;Lcom/google/android/libraries/places/internal/zzbap;Lcom/google/android/libraries/places/internal/zzaym;Ljava/util/List;)V

    iget-object v1, v0, Lcom/google/android/libraries/places/internal/zzblx;->zzj:Lcom/google/android/libraries/places/internal/zzbma;

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzbma;->zzr(Lcom/google/android/libraries/places/internal/zzbma;)Lcom/google/android/libraries/places/internal/zzbfi;

    move-result-object v1

    new-instance v2, Lcom/google/android/libraries/places/internal/zzbab;

    invoke-direct {v2}, Lcom/google/android/libraries/places/internal/zzbab;-><init>()V

    const-string v3, "Child Subchannel started"

    invoke-virtual {v2, v3}, Lcom/google/android/libraries/places/internal/zzbab;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbab;

    sget-object v3, Lcom/google/android/libraries/places/internal/zzbac;->zzb:Lcom/google/android/libraries/places/internal/zzbac;

    invoke-virtual {v2, v3}, Lcom/google/android/libraries/places/internal/zzbab;->zzb(Lcom/google/android/libraries/places/internal/zzbac;)Lcom/google/android/libraries/places/internal/zzbab;

    iget-object v3, v0, Lcom/google/android/libraries/places/internal/zzblx;->zzj:Lcom/google/android/libraries/places/internal/zzbma;

    invoke-static {v3}, Lcom/google/android/libraries/places/internal/zzbma;->zzD(Lcom/google/android/libraries/places/internal/zzbma;)Lcom/google/android/libraries/places/internal/zzbqt;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/libraries/places/internal/zzbqt;->zza()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/android/libraries/places/internal/zzbab;->zzd(J)Lcom/google/android/libraries/places/internal/zzbab;

    move-object/from16 v3, v20

    invoke-virtual {v2, v3}, Lcom/google/android/libraries/places/internal/zzbab;->zzc(Lcom/google/android/libraries/places/internal/zzbau;)Lcom/google/android/libraries/places/internal/zzbab;

    invoke-virtual {v2}, Lcom/google/android/libraries/places/internal/zzbab;->zze()Lcom/google/android/libraries/places/internal/zzbae;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/libraries/places/internal/zzbfi;->zzc(Lcom/google/android/libraries/places/internal/zzbae;)V

    iput-object v3, v0, Lcom/google/android/libraries/places/internal/zzblx;->zzf:Lcom/google/android/libraries/places/internal/zzbkd;

    iget-object v1, v0, Lcom/google/android/libraries/places/internal/zzblx;->zzj:Lcom/google/android/libraries/places/internal/zzbma;

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzbma;->zzk(Lcom/google/android/libraries/places/internal/zzbma;)Lcom/google/android/libraries/places/internal/zzbah;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/google/android/libraries/places/internal/zzbah;->zze(Lcom/google/android/libraries/places/internal/zzbao;)V

    iget-object v1, v0, Lcom/google/android/libraries/places/internal/zzblx;->zzj:Lcom/google/android/libraries/places/internal/zzbma;

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzbma;->zzH(Lcom/google/android/libraries/places/internal/zzbma;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zzd(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzblx;->zzj:Lcom/google/android/libraries/places/internal/zzbma;

    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzbma;->zzf:Lcom/google/android/libraries/places/internal/zzbdw;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbdw;->zzd()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzblx;->zze:Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzblx;->zzf:Lcom/google/android/libraries/places/internal/zzbkd;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzbkd;->zzG(Ljava/util/List;)V

    return-void
.end method
