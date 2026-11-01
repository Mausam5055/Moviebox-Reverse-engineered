.class final Lcom/google/android/libraries/places/internal/zzbfq;
.super Lcom/google/android/libraries/places/internal/zzayo;


# static fields
.field private static final zza:Ljava/util/logging/Logger;

.field private static final zzb:[B

.field private static final zzc:D


# instance fields
.field private final zzd:Lcom/google/android/libraries/places/internal/zzbcl;

.field private final zze:Lcom/google/android/libraries/places/internal/zzbvs;

.field private final zzf:Ljava/util/concurrent/Executor;

.field private final zzg:Z

.field private final zzh:Lcom/google/android/libraries/places/internal/zzbfg;

.field private final zzi:Lcom/google/android/libraries/places/internal/zzazj;

.field private zzj:Lcom/google/android/libraries/places/internal/zzbfj;

.field private final zzk:Z

.field private zzl:Lcom/google/android/libraries/places/internal/zzayj;

.field private zzm:Lcom/google/android/libraries/places/internal/zzbfr;

.field private zzn:Z

.field private zzo:Z

.field private final zzp:Lcom/google/android/libraries/places/internal/zzbfp;

.field private final zzq:Ljava/util/concurrent/ScheduledExecutorService;

.field private zzr:Lcom/google/android/libraries/places/internal/zzazq;

.field private zzs:Lcom/google/android/libraries/places/internal/zzazd;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lcom/google/android/libraries/places/internal/zzbfq;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbfq;->zza:Ljava/util/logging/Logger;

    const-string v0, "gzip"

    const-string v1, "US-ASCII"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbfq;->zzb:[B

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    long-to-double v0, v0

    sput-wide v0, Lcom/google/android/libraries/places/internal/zzbfq;->zzc:D

    return-void
.end method

.method constructor <init>(Lcom/google/android/libraries/places/internal/zzbcl;Ljava/util/concurrent/Executor;Lcom/google/android/libraries/places/internal/zzayj;Lcom/google/android/libraries/places/internal/zzbfp;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/libraries/places/internal/zzbfg;Lcom/google/android/libraries/places/internal/zzbam;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzayo;-><init>()V

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzazq;->zzb()Lcom/google/android/libraries/places/internal/zzazq;

    move-result-object p7

    iput-object p7, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzr:Lcom/google/android/libraries/places/internal/zzazq;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzazd;->zza()Lcom/google/android/libraries/places/internal/zzazd;

    move-result-object p7

    iput-object p7, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzs:Lcom/google/android/libraries/places/internal/zzazd;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzd:Lcom/google/android/libraries/places/internal/zzbcl;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbcl;->zzf()Ljava/lang/String;

    move-result-object p7

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    int-to-long v0, v0

    invoke-static {p7, v0, v1}, Lcom/google/android/libraries/places/internal/zzbvr;->zzc(Ljava/lang/String;J)Lcom/google/android/libraries/places/internal/zzbvs;

    move-result-object p7

    iput-object p7, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zze:Lcom/google/android/libraries/places/internal/zzbvs;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzakb;->zza()Ljava/util/concurrent/Executor;

    move-result-object p7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, p7, :cond_0

    new-instance p2, Lcom/google/android/libraries/places/internal/zzbpx;

    invoke-direct {p2}, Lcom/google/android/libraries/places/internal/zzbpx;-><init>()V

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzf:Ljava/util/concurrent/Executor;

    iput-boolean v1, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzg:Z

    goto :goto_0

    :cond_0
    new-instance p7, Lcom/google/android/libraries/places/internal/zzbqe;

    invoke-direct {p7, p2}, Lcom/google/android/libraries/places/internal/zzbqe;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object p7, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzf:Ljava/util/concurrent/Executor;

    iput-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzg:Z

    :goto_0
    iput-object p6, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzh:Lcom/google/android/libraries/places/internal/zzbfg;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzazj;->zzb()Lcom/google/android/libraries/places/internal/zzazj;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzi:Lcom/google/android/libraries/places/internal/zzazj;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbcl;->zzb()Lcom/google/android/libraries/places/internal/zzbcj;

    move-result-object p2

    sget-object p6, Lcom/google/android/libraries/places/internal/zzbcj;->zza:Lcom/google/android/libraries/places/internal/zzbcj;

    if-eq p2, p6, :cond_1

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbcl;->zzb()Lcom/google/android/libraries/places/internal/zzbcj;

    move-result-object p1

    sget-object p2, Lcom/google/android/libraries/places/internal/zzbcj;->zzc:Lcom/google/android/libraries/places/internal/zzbcj;

    if-ne p1, p2, :cond_2

    :cond_1
    move v0, v1

    :cond_2
    iput-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzk:Z

    iput-object p3, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzl:Lcom/google/android/libraries/places/internal/zzayj;

    iput-object p4, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzp:Lcom/google/android/libraries/places/internal/zzbfp;

    iput-object p5, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzq:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method static bridge synthetic zzf()D
    .locals 2

    sget-wide v0, Lcom/google/android/libraries/places/internal/zzbfq;->zzc:D

    return-wide v0
.end method

.method static bridge synthetic zzg(Lcom/google/android/libraries/places/internal/zzbfq;)Lcom/google/android/libraries/places/internal/zzayj;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzl:Lcom/google/android/libraries/places/internal/zzayj;

    return-object p0
.end method

.method static bridge synthetic zzh(Lcom/google/android/libraries/places/internal/zzbfq;)Lcom/google/android/libraries/places/internal/zzazj;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzi:Lcom/google/android/libraries/places/internal/zzazj;

    return-object p0
.end method

.method static bridge synthetic zzi(Lcom/google/android/libraries/places/internal/zzbfq;)Lcom/google/android/libraries/places/internal/zzazn;
    .locals 0

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzbfq;->zzr()Lcom/google/android/libraries/places/internal/zzazn;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic zzj(Lcom/google/android/libraries/places/internal/zzbfq;)Lcom/google/android/libraries/places/internal/zzbcl;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzd:Lcom/google/android/libraries/places/internal/zzbcl;

    return-object p0
.end method

.method static bridge synthetic zzk(Lcom/google/android/libraries/places/internal/zzbfq;)Lcom/google/android/libraries/places/internal/zzbfg;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzh:Lcom/google/android/libraries/places/internal/zzbfg;

    return-object p0
.end method

.method static bridge synthetic zzl(Lcom/google/android/libraries/places/internal/zzbfq;)Lcom/google/android/libraries/places/internal/zzbfj;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzj:Lcom/google/android/libraries/places/internal/zzbfj;

    return-object p0
.end method

.method static bridge synthetic zzo(Lcom/google/android/libraries/places/internal/zzbfq;)Lcom/google/android/libraries/places/internal/zzbfr;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzm:Lcom/google/android/libraries/places/internal/zzbfr;

    return-object p0
.end method

.method static bridge synthetic zzp(Lcom/google/android/libraries/places/internal/zzbfq;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzf:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static bridge synthetic zzq(Lcom/google/android/libraries/places/internal/zzbfq;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzq:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method private final zzr()Lcom/google/android/libraries/places/internal/zzazn;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzl:Lcom/google/android/libraries/places/internal/zzayj;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzayj;->zzi()Lcom/google/android/libraries/places/internal/zzazn;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method private final zzs(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzm:Lcom/google/android/libraries/places/internal/zzbfr;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "Not started"

    invoke-static {v0, v2}, Lcom/google/android/libraries/places/internal/zzmt;->zzp(ZLjava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzn:Z

    xor-int/2addr v0, v1

    const-string v2, "call was cancelled"

    invoke-static {v0, v2}, Lcom/google/android/libraries/places/internal/zzmt;->zzp(ZLjava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzo:Z

    xor-int/2addr v0, v1

    const-string v1, "call was half-closed"

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zzmt;->zzp(ZLjava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzm:Lcom/google/android/libraries/places/internal/zzbfr;

    instance-of v1, v0, Lcom/google/android/libraries/places/internal/zzbpo;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/libraries/places/internal/zzbpo;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzbpo;->zzab(Ljava/lang/Object;)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_3

    :cond_1
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzd:Lcom/google/android/libraries/places/internal/zzbcl;

    invoke-virtual {v1, p1}, Lcom/google/android/libraries/places/internal/zzbcl;->zzc(Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/libraries/places/internal/zzbqp;->zzw(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-boolean p1, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzk:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzm:Lcom/google/android/libraries/places/internal/zzbfr;

    invoke-interface {p1}, Lcom/google/android/libraries/places/internal/zzbqp;->zzr()V

    :cond_2
    return-void

    :goto_2
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzm:Lcom/google/android/libraries/places/internal/zzbfr;

    sget-object v1, Lcom/google/android/libraries/places/internal/zzbdo;->zzb:Lcom/google/android/libraries/places/internal/zzbdo;

    const-string v2, "Client sendMessage() failed with Error"

    invoke-virtual {v1, v2}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/libraries/places/internal/zzbfr;->zzh(Lcom/google/android/libraries/places/internal/zzbdo;)V

    throw p1

    :goto_3
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzm:Lcom/google/android/libraries/places/internal/zzbfr;

    sget-object v1, Lcom/google/android/libraries/places/internal/zzbdo;->zzb:Lcom/google/android/libraries/places/internal/zzbdo;

    invoke-virtual {v1, p1}, Lcom/google/android/libraries/places/internal/zzbdo;->zzf(Ljava/lang/Throwable;)Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object p1

    const-string v1, "Failed to stream message"

    invoke-virtual {p1, v1}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/libraries/places/internal/zzbfr;->zzh(Lcom/google/android/libraries/places/internal/zzbdo;)V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/libraries/places/internal/zzmn;->zzb(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzmm;

    move-result-object v0

    const-string v1, "method"

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzd:Lcom/google/android/libraries/places/internal/zzbcl;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzmm;->zzd(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzmm;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzmm;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 7

    sget v0, Lcom/google/android/libraries/places/internal/zzbvr;->zza:I

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    new-instance p2, Ljava/util/concurrent/CancellationException;

    const-string v0, "Cancelled without a message or cause"

    invoke-direct {p2, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/google/android/libraries/places/internal/zzbfq;->zza:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "io.grpc.internal.ClientCallImpl"

    const-string v4, "cancelInternal"

    const-string v5, "Cancelling without a message or cause is suboptimal"

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzn:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzn:Z

    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzm:Lcom/google/android/libraries/places/internal/zzbfr;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/google/android/libraries/places/internal/zzbdo;->zzb:Lcom/google/android/libraries/places/internal/zzbdo;

    if-eqz p1, :cond_2

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    const-string p1, "Call cancelled without message"

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object p1

    :goto_0
    if-eqz p2, :cond_3

    invoke-virtual {p1, p2}, Lcom/google/android/libraries/places/internal/zzbdo;->zzf(Ljava/lang/Throwable;)Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object p1

    :cond_3
    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzm:Lcom/google/android/libraries/places/internal/zzbfr;

    invoke-interface {p2, p1}, Lcom/google/android/libraries/places/internal/zzbfr;->zzh(Lcom/google/android/libraries/places/internal/zzbdo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzj:Lcom/google/android/libraries/places/internal/zzbfj;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbfj;->zzd()V

    :cond_5
    :goto_1
    return-void

    :goto_2
    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzj:Lcom/google/android/libraries/places/internal/zzbfj;

    if-nez p2, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {p2}, Lcom/google/android/libraries/places/internal/zzbfj;->zzd()V

    :goto_3
    throw p1
.end method

.method public final zzb()V
    .locals 3

    sget v0, Lcom/google/android/libraries/places/internal/zzbvr;->zza:I

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzm:Lcom/google/android/libraries/places/internal/zzbfr;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "Not started"

    invoke-static {v0, v2}, Lcom/google/android/libraries/places/internal/zzmt;->zzp(ZLjava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzn:Z

    xor-int/2addr v0, v1

    const-string v2, "call was cancelled"

    invoke-static {v0, v2}, Lcom/google/android/libraries/places/internal/zzmt;->zzp(ZLjava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzo:Z

    xor-int/2addr v0, v1

    const-string v2, "call already half-closed"

    invoke-static {v0, v2}, Lcom/google/android/libraries/places/internal/zzmt;->zzp(ZLjava/lang/Object;)V

    iput-boolean v1, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzo:Z

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzm:Lcom/google/android/libraries/places/internal/zzbfr;

    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/zzbfr;->zzj()V

    return-void
.end method

.method public final zzc(I)V
    .locals 1

    sget p1, Lcom/google/android/libraries/places/internal/zzbvr;->zza:I

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzm:Lcom/google/android/libraries/places/internal/zzbfr;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v0, "Not started"

    invoke-static {p1, v0}, Lcom/google/android/libraries/places/internal/zzmt;->zzp(ZLjava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzm:Lcom/google/android/libraries/places/internal/zzbfr;

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lcom/google/android/libraries/places/internal/zzbqp;->zzu(I)V

    return-void
.end method

.method public final zzd(Ljava/lang/Object;)V
    .locals 1

    sget v0, Lcom/google/android/libraries/places/internal/zzbvr;->zza:I

    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzbfq;->zzs(Ljava/lang/Object;)V

    return-void
.end method

.method public final zze(Lcom/google/android/libraries/places/internal/zzayn;Lcom/google/android/libraries/places/internal/zzbcf;)V
    .locals 13

    const/4 v0, 0x0

    const/4 v1, 0x1

    sget v2, Lcom/google/android/libraries/places/internal/zzbvr;->zza:I

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzm:Lcom/google/android/libraries/places/internal/zzbfr;

    if-nez v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    const-string v3, "Already started"

    invoke-static {v2, v3}, Lcom/google/android/libraries/places/internal/zzmt;->zzp(ZLjava/lang/Object;)V

    iget-boolean v2, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzn:Z

    xor-int/2addr v2, v1

    const-string v3, "call was cancelled"

    invoke-static {v2, v3}, Lcom/google/android/libraries/places/internal/zzmt;->zzp(ZLjava/lang/Object;)V

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzl:Lcom/google/android/libraries/places/internal/zzayj;

    sget-object v3, Lcom/google/android/libraries/places/internal/zzbmg;->zza:Lcom/google/android/libraries/places/internal/zzayh;

    invoke-virtual {v2, v3}, Lcom/google/android/libraries/places/internal/zzayj;->zzl(Lcom/google/android/libraries/places/internal/zzayh;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/libraries/places/internal/zzbmg;

    if-nez v2, :cond_1

    goto/16 :goto_3

    :cond_1
    iget-object v3, v2, Lcom/google/android/libraries/places/internal/zzbmg;->zzb:Ljava/lang/Long;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v3, v4, v5}, Lcom/google/android/libraries/places/internal/zzazn;->zzd(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/libraries/places/internal/zzazn;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzl:Lcom/google/android/libraries/places/internal/zzayj;

    invoke-virtual {v4}, Lcom/google/android/libraries/places/internal/zzayj;->zzi()Lcom/google/android/libraries/places/internal/zzazn;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v3, v4}, Lcom/google/android/libraries/places/internal/zzazn;->zza(Lcom/google/android/libraries/places/internal/zzazn;)I

    move-result v4

    if-gez v4, :cond_3

    :cond_2
    iget-object v4, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzl:Lcom/google/android/libraries/places/internal/zzayj;

    invoke-virtual {v4, v3}, Lcom/google/android/libraries/places/internal/zzayj;->zza(Lcom/google/android/libraries/places/internal/zzazn;)Lcom/google/android/libraries/places/internal/zzayj;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzl:Lcom/google/android/libraries/places/internal/zzayj;

    :cond_3
    iget-object v3, v2, Lcom/google/android/libraries/places/internal/zzbmg;->zzc:Ljava/lang/Boolean;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzl:Lcom/google/android/libraries/places/internal/zzayj;

    invoke-virtual {v3}, Lcom/google/android/libraries/places/internal/zzayj;->zzg()Lcom/google/android/libraries/places/internal/zzayj;

    move-result-object v3

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzl:Lcom/google/android/libraries/places/internal/zzayj;

    invoke-virtual {v3}, Lcom/google/android/libraries/places/internal/zzayj;->zzh()Lcom/google/android/libraries/places/internal/zzayj;

    move-result-object v3

    :goto_1
    iput-object v3, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzl:Lcom/google/android/libraries/places/internal/zzayj;

    :cond_5
    iget-object v3, v2, Lcom/google/android/libraries/places/internal/zzbmg;->zzd:Ljava/lang/Integer;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzl:Lcom/google/android/libraries/places/internal/zzayj;

    invoke-virtual {v3}, Lcom/google/android/libraries/places/internal/zzayj;->zzj()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_6

    iget-object v4, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzl:Lcom/google/android/libraries/places/internal/zzayj;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v5, v2, Lcom/google/android/libraries/places/internal/zzbmg;->zzd:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/google/android/libraries/places/internal/zzayj;->zzc(I)Lcom/google/android/libraries/places/internal/zzayj;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzl:Lcom/google/android/libraries/places/internal/zzayj;

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzl:Lcom/google/android/libraries/places/internal/zzayj;

    iget-object v4, v2, Lcom/google/android/libraries/places/internal/zzbmg;->zzd:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/libraries/places/internal/zzayj;->zzc(I)Lcom/google/android/libraries/places/internal/zzayj;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzl:Lcom/google/android/libraries/places/internal/zzayj;

    :cond_7
    :goto_2
    iget-object v3, v2, Lcom/google/android/libraries/places/internal/zzbmg;->zze:Ljava/lang/Integer;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzl:Lcom/google/android/libraries/places/internal/zzayj;

    invoke-virtual {v3}, Lcom/google/android/libraries/places/internal/zzayj;->zzk()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_8

    iget-object v4, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzl:Lcom/google/android/libraries/places/internal/zzayj;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v2, v2, Lcom/google/android/libraries/places/internal/zzbmg;->zze:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v4, v2}, Lcom/google/android/libraries/places/internal/zzayj;->zzd(I)Lcom/google/android/libraries/places/internal/zzayj;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzl:Lcom/google/android/libraries/places/internal/zzayj;

    goto :goto_3

    :cond_8
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzl:Lcom/google/android/libraries/places/internal/zzayj;

    iget-object v2, v2, Lcom/google/android/libraries/places/internal/zzbmg;->zze:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/google/android/libraries/places/internal/zzayj;->zzd(I)Lcom/google/android/libraries/places/internal/zzayj;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzl:Lcom/google/android/libraries/places/internal/zzayj;

    :cond_9
    :goto_3
    sget-object v2, Lcom/google/android/libraries/places/internal/zzaza;->zza:Lcom/google/android/libraries/places/internal/zzazb;

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzr:Lcom/google/android/libraries/places/internal/zzazq;

    sget-object v4, Lcom/google/android/libraries/places/internal/zzbjd;->zzg:Lcom/google/android/libraries/places/internal/zzbca;

    invoke-virtual {p2, v4}, Lcom/google/android/libraries/places/internal/zzbcf;->zzd(Lcom/google/android/libraries/places/internal/zzbca;)V

    sget-object v4, Lcom/google/android/libraries/places/internal/zzbjd;->zzc:Lcom/google/android/libraries/places/internal/zzbca;

    invoke-virtual {p2, v4}, Lcom/google/android/libraries/places/internal/zzbcf;->zzd(Lcom/google/android/libraries/places/internal/zzbca;)V

    sget-object v4, Lcom/google/android/libraries/places/internal/zzbjd;->zzd:Lcom/google/android/libraries/places/internal/zzbca;

    invoke-virtual {p2, v4}, Lcom/google/android/libraries/places/internal/zzbcf;->zzd(Lcom/google/android/libraries/places/internal/zzbca;)V

    invoke-static {v3}, Lcom/google/android/libraries/places/internal/zzban;->zza(Lcom/google/android/libraries/places/internal/zzazq;)[B

    move-result-object v3

    array-length v5, v3

    if-eqz v5, :cond_a

    invoke-virtual {p2, v4, v3}, Lcom/google/android/libraries/places/internal/zzbcf;->zzf(Lcom/google/android/libraries/places/internal/zzbca;Ljava/lang/Object;)V

    :cond_a
    sget-object v3, Lcom/google/android/libraries/places/internal/zzbjd;->zze:Lcom/google/android/libraries/places/internal/zzbca;

    invoke-virtual {p2, v3}, Lcom/google/android/libraries/places/internal/zzbcf;->zzd(Lcom/google/android/libraries/places/internal/zzbca;)V

    sget-object v3, Lcom/google/android/libraries/places/internal/zzbjd;->zzf:Lcom/google/android/libraries/places/internal/zzbca;

    invoke-virtual {p2, v3}, Lcom/google/android/libraries/places/internal/zzbcf;->zzd(Lcom/google/android/libraries/places/internal/zzbca;)V

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzbfq;->zzr()Lcom/google/android/libraries/places/internal/zzazn;

    move-result-object v3

    if-eqz v3, :cond_b

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/google/android/libraries/places/internal/zzazn;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    move v4, v1

    goto :goto_4

    :cond_b
    move v4, v0

    :goto_4
    new-instance v5, Lcom/google/android/libraries/places/internal/zzbfj;

    invoke-direct {v5, p0, v3, v4}, Lcom/google/android/libraries/places/internal/zzbfj;-><init>(Lcom/google/android/libraries/places/internal/zzbfq;Lcom/google/android/libraries/places/internal/zzazn;Z)V

    iput-object v5, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzj:Lcom/google/android/libraries/places/internal/zzbfj;

    if-eqz v3, :cond_e

    invoke-static {v5}, Lcom/google/android/libraries/places/internal/zzbfj;->zza(Lcom/google/android/libraries/places/internal/zzbfj;)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-gtz v5, :cond_e

    iget-object v5, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzl:Lcom/google/android/libraries/places/internal/zzayj;

    invoke-static {v5, p2, v0, v0}, Lcom/google/android/libraries/places/internal/zzbjd;->zzk(Lcom/google/android/libraries/places/internal/zzayj;Lcom/google/android/libraries/places/internal/zzbcf;IZ)[Lcom/google/android/libraries/places/internal/zzayx;

    move-result-object p2

    const-string v5, "Context"

    const-string v6, "CallOptions"

    if-eq v1, v4, :cond_c

    move-object v5, v6

    :cond_c
    iget-object v4, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzl:Lcom/google/android/libraries/places/internal/zzayj;

    sget-object v6, Lcom/google/android/libraries/places/internal/zzayx;->zza:Lcom/google/android/libraries/places/internal/zzayh;

    invoke-virtual {v4, v6}, Lcom/google/android/libraries/places/internal/zzayj;->zzl(Lcom/google/android/libraries/places/internal/zzayh;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    const-string v6, "ClientCall started after %s deadline was exceeded %.9f seconds ago. Name resolution delay %.9f seconds."

    iget-object v7, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzj:Lcom/google/android/libraries/places/internal/zzbfj;

    invoke-static {v7}, Lcom/google/android/libraries/places/internal/zzbfj;->zza(Lcom/google/android/libraries/places/internal/zzbfj;)J

    move-result-wide v7

    long-to-double v7, v7

    sget-wide v9, Lcom/google/android/libraries/places/internal/zzbfq;->zzc:D

    div-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    if-nez v4, :cond_d

    const-wide/16 v8, 0x0

    goto :goto_5

    :cond_d
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    long-to-double v11, v11

    div-double v8, v11, v9

    :goto_5
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v5, v8, v0

    aput-object v7, v8, v1

    const/4 v0, 0x2

    aput-object v4, v8, v0

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/places/internal/zzbil;

    sget-object v4, Lcom/google/android/libraries/places/internal/zzbdo;->zze:Lcom/google/android/libraries/places/internal/zzbdo;

    invoke-virtual {v4, v0}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object v0

    sget-object v4, Lcom/google/android/libraries/places/internal/zzbfs;->zza:Lcom/google/android/libraries/places/internal/zzbfs;

    invoke-direct {v1, v0, v4, p2}, Lcom/google/android/libraries/places/internal/zzbil;-><init>(Lcom/google/android/libraries/places/internal/zzbdo;Lcom/google/android/libraries/places/internal/zzbfs;[Lcom/google/android/libraries/places/internal/zzayx;)V

    iput-object v1, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzm:Lcom/google/android/libraries/places/internal/zzbfr;

    goto :goto_6

    :cond_e
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzp:Lcom/google/android/libraries/places/internal/zzbfp;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzd:Lcom/google/android/libraries/places/internal/zzbcl;

    iget-object v4, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzl:Lcom/google/android/libraries/places/internal/zzayj;

    iget-object v5, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzi:Lcom/google/android/libraries/places/internal/zzazj;

    invoke-interface {v0, v1, v4, p2, v5}, Lcom/google/android/libraries/places/internal/zzbfp;->zza(Lcom/google/android/libraries/places/internal/zzbcl;Lcom/google/android/libraries/places/internal/zzayj;Lcom/google/android/libraries/places/internal/zzbcf;Lcom/google/android/libraries/places/internal/zzazj;)Lcom/google/android/libraries/places/internal/zzbfr;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzm:Lcom/google/android/libraries/places/internal/zzbfr;

    :goto_6
    iget-boolean p2, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzg:Z

    if-eqz p2, :cond_f

    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzm:Lcom/google/android/libraries/places/internal/zzbfr;

    invoke-interface {p2}, Lcom/google/android/libraries/places/internal/zzbqp;->zzt()V

    :cond_f
    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzl:Lcom/google/android/libraries/places/internal/zzayj;

    invoke-virtual {p2}, Lcom/google/android/libraries/places/internal/zzayj;->zzj()Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_10

    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzm:Lcom/google/android/libraries/places/internal/zzbfr;

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzl:Lcom/google/android/libraries/places/internal/zzayj;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzayj;->zzj()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p2, v0}, Lcom/google/android/libraries/places/internal/zzbfr;->zzm(I)V

    :cond_10
    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzl:Lcom/google/android/libraries/places/internal/zzayj;

    invoke-virtual {p2}, Lcom/google/android/libraries/places/internal/zzayj;->zzk()Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_11

    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzm:Lcom/google/android/libraries/places/internal/zzbfr;

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzl:Lcom/google/android/libraries/places/internal/zzayj;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzayj;->zzk()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p2, v0}, Lcom/google/android/libraries/places/internal/zzbfr;->zzn(I)V

    :cond_11
    if-eqz v3, :cond_12

    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzm:Lcom/google/android/libraries/places/internal/zzbfr;

    invoke-interface {p2, v3}, Lcom/google/android/libraries/places/internal/zzbfr;->zzk(Lcom/google/android/libraries/places/internal/zzazn;)V

    :cond_12
    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzm:Lcom/google/android/libraries/places/internal/zzbfr;

    invoke-interface {p2, v2}, Lcom/google/android/libraries/places/internal/zzbqp;->zzv(Lcom/google/android/libraries/places/internal/zzazc;)V

    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzm:Lcom/google/android/libraries/places/internal/zzbfr;

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzr:Lcom/google/android/libraries/places/internal/zzazq;

    invoke-interface {p2, v0}, Lcom/google/android/libraries/places/internal/zzbfr;->zzl(Lcom/google/android/libraries/places/internal/zzazq;)V

    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzh:Lcom/google/android/libraries/places/internal/zzbfg;

    invoke-virtual {p2}, Lcom/google/android/libraries/places/internal/zzbfg;->zzb()V

    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzm:Lcom/google/android/libraries/places/internal/zzbfr;

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbfo;

    invoke-direct {v0, p0, p1}, Lcom/google/android/libraries/places/internal/zzbfo;-><init>(Lcom/google/android/libraries/places/internal/zzbfq;Lcom/google/android/libraries/places/internal/zzayn;)V

    invoke-interface {p2, v0}, Lcom/google/android/libraries/places/internal/zzbfr;->zzo(Lcom/google/android/libraries/places/internal/zzbft;)V

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzj:Lcom/google/android/libraries/places/internal/zzbfj;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbfj;->zzc()V

    return-void
.end method

.method final zzm(Lcom/google/android/libraries/places/internal/zzazd;)Lcom/google/android/libraries/places/internal/zzbfq;
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzs:Lcom/google/android/libraries/places/internal/zzazd;

    return-object p0
.end method

.method final zzn(Lcom/google/android/libraries/places/internal/zzazq;)Lcom/google/android/libraries/places/internal/zzbfq;
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzr:Lcom/google/android/libraries/places/internal/zzazq;

    return-object p0
.end method
