.class final Lcom/google/android/libraries/places/internal/zzbri;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzbwq;


# instance fields
.field private final zza:Ljava/lang/Object;

.field private final zzb:Lcom/google/android/libraries/places/internal/zzbwb;

.field private final zzc:Lcom/google/android/libraries/places/internal/zzbqe;

.field private final zzd:Lcom/google/android/libraries/places/internal/zzbrj;

.field private zze:Z

.field private zzf:Z

.field private zzg:Z

.field private zzh:Lcom/google/android/libraries/places/internal/zzbwq;

.field private zzi:Ljava/net/Socket;

.field private zzj:Z

.field private zzk:I

.field private zzl:I


# direct methods
.method private constructor <init>(Lcom/google/android/libraries/places/internal/zzbqe;Lcom/google/android/libraries/places/internal/zzbrj;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p3, Ljava/lang/Object;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/google/android/libraries/places/internal/zzbri;->zza:Ljava/lang/Object;

    new-instance p3, Lcom/google/android/libraries/places/internal/zzbwb;

    invoke-direct {p3}, Lcom/google/android/libraries/places/internal/zzbwb;-><init>()V

    iput-object p3, p0, Lcom/google/android/libraries/places/internal/zzbri;->zzb:Lcom/google/android/libraries/places/internal/zzbwb;

    const/4 p3, 0x0

    iput-boolean p3, p0, Lcom/google/android/libraries/places/internal/zzbri;->zze:Z

    iput-boolean p3, p0, Lcom/google/android/libraries/places/internal/zzbri;->zzf:Z

    iput-boolean p3, p0, Lcom/google/android/libraries/places/internal/zzbri;->zzg:Z

    const-string p3, "executor"

    invoke-static {p1, p3}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbri;->zzc:Lcom/google/android/libraries/places/internal/zzbqe;

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbri;->zzd:Lcom/google/android/libraries/places/internal/zzbrj;

    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/libraries/places/internal/zzbri;)I
    .locals 0

    iget p0, p0, Lcom/google/android/libraries/places/internal/zzbri;->zzk:I

    return p0
.end method

.method static bridge synthetic zzb(Lcom/google/android/libraries/places/internal/zzbri;)I
    .locals 0

    iget p0, p0, Lcom/google/android/libraries/places/internal/zzbri;->zzl:I

    return p0
.end method

.method static zzc(Lcom/google/android/libraries/places/internal/zzbqe;Lcom/google/android/libraries/places/internal/zzbrj;I)Lcom/google/android/libraries/places/internal/zzbri;
    .locals 1

    new-instance p2, Lcom/google/android/libraries/places/internal/zzbri;

    const/16 v0, 0x2710

    invoke-direct {p2, p0, p1, v0}, Lcom/google/android/libraries/places/internal/zzbri;-><init>(Lcom/google/android/libraries/places/internal/zzbqe;Lcom/google/android/libraries/places/internal/zzbrj;I)V

    return-object p2
.end method

.method static bridge synthetic zzd(Lcom/google/android/libraries/places/internal/zzbri;)Lcom/google/android/libraries/places/internal/zzbrj;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbri;->zzd:Lcom/google/android/libraries/places/internal/zzbrj;

    return-object p0
.end method

.method static bridge synthetic zze(Lcom/google/android/libraries/places/internal/zzbri;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbri;->zza:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic zzf(Lcom/google/android/libraries/places/internal/zzbri;)Ljava/net/Socket;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbri;->zzi:Ljava/net/Socket;

    return-object p0
.end method

.method static bridge synthetic zzg(Lcom/google/android/libraries/places/internal/zzbri;)Lcom/google/android/libraries/places/internal/zzbwb;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbri;->zzb:Lcom/google/android/libraries/places/internal/zzbwb;

    return-object p0
.end method

.method static bridge synthetic zzh(Lcom/google/android/libraries/places/internal/zzbri;)Lcom/google/android/libraries/places/internal/zzbwq;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbri;->zzh:Lcom/google/android/libraries/places/internal/zzbwq;

    return-object p0
.end method

.method static bridge synthetic zzi(Lcom/google/android/libraries/places/internal/zzbri;I)V
    .locals 0

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzbri;->zzk:I

    return-void
.end method

.method static bridge synthetic zzj(Lcom/google/android/libraries/places/internal/zzbri;Z)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/libraries/places/internal/zzbri;->zzf:Z

    return-void
.end method

.method static bridge synthetic zzk(Lcom/google/android/libraries/places/internal/zzbri;I)V
    .locals 0

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzbri;->zzl:I

    return-void
.end method

.method static bridge synthetic zzl(Lcom/google/android/libraries/places/internal/zzbri;Z)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/libraries/places/internal/zzbri;->zze:Z

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbri;->zzg:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbri;->zzg:Z

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbri;->zzc:Lcom/google/android/libraries/places/internal/zzbqe;

    new-instance v1, Lcom/google/android/libraries/places/internal/zzbre;

    invoke-direct {v1, p0}, Lcom/google/android/libraries/places/internal/zzbre;-><init>(Lcom/google/android/libraries/places/internal/zzbri;)V

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzbqe;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbri;->zzg:Z

    if-nez v0, :cond_1

    sget v0, Lcom/google/android/libraries/places/internal/zzbvr;->zza:I

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbri;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/libraries/places/internal/zzbri;->zzf:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/libraries/places/internal/zzbri;->zzf:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbri;->zzc:Lcom/google/android/libraries/places/internal/zzbqe;

    new-instance v1, Lcom/google/android/libraries/places/internal/zzbrd;

    invoke-direct {v1, p0}, Lcom/google/android/libraries/places/internal/zzbrd;-><init>(Lcom/google/android/libraries/places/internal/zzbri;)V

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzbqe;->execute(Ljava/lang/Runnable;)V

    return-void

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final zzm(Lcom/google/android/libraries/places/internal/zzbwq;Ljava/net/Socket;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbri;->zzh:Lcom/google/android/libraries/places/internal/zzbwq;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "AsyncSink\'s becomeConnected should only be called once."

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zzmt;->zzp(ZLjava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbri;->zzh:Lcom/google/android/libraries/places/internal/zzbwq;

    const-string p1, "socket"

    invoke-static {p2, p1}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbri;->zzi:Ljava/net/Socket;

    return-void
.end method

.method public final zzn(Lcom/google/android/libraries/places/internal/zzbwb;J)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbri;->zzg:Z

    if-nez v0, :cond_4

    sget v0, Lcom/google/android/libraries/places/internal/zzbvr;->zza:I

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbri;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbri;->zzb:Lcom/google/android/libraries/places/internal/zzbwb;

    invoke-virtual {v1, p1, p2, p3}, Lcom/google/android/libraries/places/internal/zzbwb;->zzn(Lcom/google/android/libraries/places/internal/zzbwb;J)V

    iget p1, p0, Lcom/google/android/libraries/places/internal/zzbri;->zzl:I

    iget p2, p0, Lcom/google/android/libraries/places/internal/zzbri;->zzk:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzbri;->zzl:I

    const/4 p2, 0x0

    iput p2, p0, Lcom/google/android/libraries/places/internal/zzbri;->zzk:I

    iget-boolean p3, p0, Lcom/google/android/libraries/places/internal/zzbri;->zzj:Z

    const/4 v1, 0x1

    if-nez p3, :cond_0

    const/16 p3, 0x2710

    if-le p1, p3, :cond_0

    iput-boolean v1, p0, Lcom/google/android/libraries/places/internal/zzbri;->zzj:Z

    move p2, v1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_0
    iget-boolean p1, p0, Lcom/google/android/libraries/places/internal/zzbri;->zze:Z

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lcom/google/android/libraries/places/internal/zzbri;->zzf:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbri;->zzb:Lcom/google/android/libraries/places/internal/zzbwb;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbwb;->zzf()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-gtz p1, :cond_1

    goto :goto_3

    :cond_1
    iput-boolean v1, p0, Lcom/google/android/libraries/places/internal/zzbri;->zze:Z

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_2

    :try_start_1
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbri;->zzi:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzbri;->zzd:Lcom/google/android/libraries/places/internal/zzbrj;

    invoke-interface {p2, p1}, Lcom/google/android/libraries/places/internal/zzbrj;->zzb(Ljava/lang/Throwable;)V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbri;->zzc:Lcom/google/android/libraries/places/internal/zzbqe;

    new-instance p2, Lcom/google/android/libraries/places/internal/zzbrc;

    invoke-direct {p2, p0}, Lcom/google/android/libraries/places/internal/zzbrc;-><init>(Lcom/google/android/libraries/places/internal/zzbri;)V

    invoke-virtual {p1, p2}, Lcom/google/android/libraries/places/internal/zzbqe;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_3
    :goto_3
    :try_start_2
    monitor-exit v0

    return-void

    :goto_4
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
