.class final Lcom/google/android/libraries/places/internal/zzbfi;
.super Ljava/lang/Object;


# static fields
.field static final zza:Ljava/util/logging/Logger;


# instance fields
.field private final zzb:Ljava/lang/Object;

.field private final zzc:Lcom/google/android/libraries/places/internal/zzbap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/android/libraries/places/internal/zzaym;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbfi;->zza:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Lcom/google/android/libraries/places/internal/zzbap;IJLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbfi;->zzb:Ljava/lang/Object;

    const-string p2, "logId"

    invoke-static {p1, p2}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbfi;->zzc:Lcom/google/android/libraries/places/internal/zzbap;

    new-instance p1, Lcom/google/android/libraries/places/internal/zzbab;

    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/zzbab;-><init>()V

    const-string p2, " created"

    invoke-virtual {p5, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/libraries/places/internal/zzbab;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbab;

    sget-object p2, Lcom/google/android/libraries/places/internal/zzbac;->zzb:Lcom/google/android/libraries/places/internal/zzbac;

    invoke-virtual {p1, p2}, Lcom/google/android/libraries/places/internal/zzbab;->zzb(Lcom/google/android/libraries/places/internal/zzbac;)Lcom/google/android/libraries/places/internal/zzbab;

    invoke-virtual {p1, p3, p4}, Lcom/google/android/libraries/places/internal/zzbab;->zzd(J)Lcom/google/android/libraries/places/internal/zzbab;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbab;->zze()Lcom/google/android/libraries/places/internal/zzbae;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/zzbfi;->zzc(Lcom/google/android/libraries/places/internal/zzbae;)V

    return-void
.end method

.method static zzb(Lcom/google/android/libraries/places/internal/zzbap;Ljava/util/logging/Level;Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/google/android/libraries/places/internal/zzbfi;->zza:Ljava/util/logging/Logger;

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/logging/LogRecord;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p1, p0}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/logging/Logger;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/logging/Logger;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    const-string p0, "log"

    invoke-virtual {v1, p0}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    :cond_0
    return-void
.end method


# virtual methods
.method final zza()Lcom/google/android/libraries/places/internal/zzbap;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbfi;->zzc:Lcom/google/android/libraries/places/internal/zzbap;

    return-object v0
.end method

.method final zzc(Lcom/google/android/libraries/places/internal/zzbae;)V
    .locals 2

    sget-object v0, Lcom/google/android/libraries/places/internal/zzbac;->zza:Lcom/google/android/libraries/places/internal/zzbac;

    iget-object v0, p1, Lcom/google/android/libraries/places/internal/zzbae;->zzb:Lcom/google/android/libraries/places/internal/zzbac;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    sget-object v0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    goto :goto_0

    :cond_1
    sget-object v0, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    :goto_0
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbfi;->zzb:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbfi;->zzc:Lcom/google/android/libraries/places/internal/zzbap;

    iget-object p1, p1, Lcom/google/android/libraries/places/internal/zzbae;->zza:Ljava/lang/String;

    invoke-static {v1, v0, p1}, Lcom/google/android/libraries/places/internal/zzbfi;->zzb(Lcom/google/android/libraries/places/internal/zzbap;Ljava/util/logging/Level;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method final zzd()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbfi;->zzb:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
