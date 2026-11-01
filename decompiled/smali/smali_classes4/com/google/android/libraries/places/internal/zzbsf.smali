.class final Lcom/google/android/libraries/places/internal/zzbsf;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzbgf;
.implements Lcom/google/android/libraries/places/internal/zzbrj;
.implements Lcom/google/android/libraries/places/internal/zzbsr;


# static fields
.field private static final zzc:Ljava/util/Map;

.field private static final zzd:Ljava/util/logging/Logger;


# instance fields
.field private zzA:Z

.field private zzB:Lcom/google/android/libraries/places/internal/zzbjh;

.field private zzC:Z

.field private zzD:Z

.field private final zzE:Ljavax/net/SocketFactory;

.field private zzF:Ljavax/net/ssl/SSLSocketFactory;

.field private zzG:Ljava/net/Socket;

.field private zzH:I

.field private final zzI:Ljava/util/Deque;

.field private final zzJ:Lcom/google/android/libraries/places/internal/zzbsz;

.field private zzK:Lcom/google/android/libraries/places/internal/zzbkh;

.field private final zzL:Ljava/lang/Runnable;

.field private final zzM:I

.field private final zzN:Lcom/google/android/libraries/places/internal/zzbqz;

.field private final zzO:Lcom/google/android/libraries/places/internal/zzbji;

.field private zzP:Lcom/google/android/libraries/places/internal/zzbaf;

.field final zza:Lcom/google/android/libraries/places/internal/zzbaa;

.field zzb:I

.field private final zze:Ljava/net/InetSocketAddress;

.field private final zzf:Ljava/lang/String;

.field private final zzg:Ljava/lang/String;

.field private final zzh:Ljava/util/Random;

.field private final zzi:Lcom/google/android/libraries/places/internal/zznc;

.field private final zzj:I

.field private final zzk:Lcom/google/android/libraries/places/internal/zzbuf;

.field private zzl:Lcom/google/android/libraries/places/internal/zzbmk;

.field private zzm:Lcom/google/android/libraries/places/internal/zzbrk;

.field private zzn:Lcom/google/android/libraries/places/internal/zzbsu;

.field private final zzo:Ljava/lang/Object;

.field private final zzp:Lcom/google/android/libraries/places/internal/zzbap;

.field private zzq:I

.field private final zzr:Ljava/util/Map;

.field private final zzs:Ljava/util/concurrent/Executor;

.field private final zzt:Lcom/google/android/libraries/places/internal/zzbqe;

.field private final zzu:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zzv:I

.field private zzw:I

.field private zzx:Lcom/google/android/libraries/places/internal/zzbse;

.field private zzy:Lcom/google/android/libraries/places/internal/zzaye;

.field private zzz:Lcom/google/android/libraries/places/internal/zzbdo;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/google/android/libraries/places/internal/zzbtp;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v1, Lcom/google/android/libraries/places/internal/zzbtp;->zza:Lcom/google/android/libraries/places/internal/zzbtp;

    sget-object v2, Lcom/google/android/libraries/places/internal/zzbdo;->zzo:Lcom/google/android/libraries/places/internal/zzbdo;

    const-string v3, "No error: A GRPC status of OK should have been sent"

    invoke-virtual {v2, v3}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/google/android/libraries/places/internal/zzbtp;->zzb:Lcom/google/android/libraries/places/internal/zzbtp;

    const-string v3, "Protocol error"

    invoke-virtual {v2, v3}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/google/android/libraries/places/internal/zzbtp;->zzg:Lcom/google/android/libraries/places/internal/zzbtp;

    const-string v3, "Internal error"

    invoke-virtual {v2, v3}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/google/android/libraries/places/internal/zzbtp;->zzh:Lcom/google/android/libraries/places/internal/zzbtp;

    const-string v3, "Flow control error"

    invoke-virtual {v2, v3}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/google/android/libraries/places/internal/zzbtp;->zzi:Lcom/google/android/libraries/places/internal/zzbtp;

    const-string v3, "Stream closed"

    invoke-virtual {v2, v3}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/google/android/libraries/places/internal/zzbtp;->zzj:Lcom/google/android/libraries/places/internal/zzbtp;

    const-string v3, "Frame too large"

    invoke-virtual {v2, v3}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/google/android/libraries/places/internal/zzbtp;->zzk:Lcom/google/android/libraries/places/internal/zzbtp;

    sget-object v3, Lcom/google/android/libraries/places/internal/zzbdo;->zzp:Lcom/google/android/libraries/places/internal/zzbdo;

    const-string v4, "Refused stream"

    invoke-virtual {v3, v4}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/google/android/libraries/places/internal/zzbtp;->zzl:Lcom/google/android/libraries/places/internal/zzbtp;

    sget-object v3, Lcom/google/android/libraries/places/internal/zzbdo;->zzb:Lcom/google/android/libraries/places/internal/zzbdo;

    const-string v4, "Cancelled"

    invoke-virtual {v3, v4}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/google/android/libraries/places/internal/zzbtp;->zzm:Lcom/google/android/libraries/places/internal/zzbtp;

    const-string v3, "Compression error"

    invoke-virtual {v2, v3}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/google/android/libraries/places/internal/zzbtp;->zzn:Lcom/google/android/libraries/places/internal/zzbtp;

    const-string v3, "Connect error"

    invoke-virtual {v2, v3}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/google/android/libraries/places/internal/zzbtp;->zzo:Lcom/google/android/libraries/places/internal/zzbtp;

    sget-object v2, Lcom/google/android/libraries/places/internal/zzbdo;->zzj:Lcom/google/android/libraries/places/internal/zzbdo;

    const-string v3, "Enhance your calm"

    invoke-virtual {v2, v3}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/google/android/libraries/places/internal/zzbtp;->zzp:Lcom/google/android/libraries/places/internal/zzbtp;

    sget-object v2, Lcom/google/android/libraries/places/internal/zzbdo;->zzh:Lcom/google/android/libraries/places/internal/zzbdo;

    const-string v3, "Inadequate security"

    invoke-virtual {v2, v3}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbsf;->zzc:Ljava/util/Map;

    const-class v0, Lcom/google/android/libraries/places/internal/zzbsf;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbsf;->zzd:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/libraries/places/internal/zzbru;Ljava/net/InetSocketAddress;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/libraries/places/internal/zzaye;Lcom/google/android/libraries/places/internal/zzbaa;Ljava/lang/Runnable;)V
    .locals 3

    sget-object p4, Lcom/google/android/libraries/places/internal/zzbjd;->zzr:Lcom/google/android/libraries/places/internal/zznc;

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbub;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzbub;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    iput-object v1, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzh:Ljava/util/Random;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzo:Ljava/lang/Object;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzr:Ljava/util/Map;

    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzH:I

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzI:Ljava/util/Deque;

    new-instance v2, Lcom/google/android/libraries/places/internal/zzbrz;

    invoke-direct {v2, p0}, Lcom/google/android/libraries/places/internal/zzbrz;-><init>(Lcom/google/android/libraries/places/internal/zzbsf;)V

    iput-object v2, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzO:Lcom/google/android/libraries/places/internal/zzbji;

    const/16 v2, 0x7530

    iput v2, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzb:I

    const-string v2, "address"

    invoke-static {p2, v2}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zze:Ljava/net/InetSocketAddress;

    iput-object p3, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzf:Ljava/lang/String;

    const/high16 p3, 0x400000

    iput p3, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzv:I

    const p3, 0xffff

    iput p3, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzj:I

    iget-object p3, p1, Lcom/google/android/libraries/places/internal/zzbru;->zza:Ljava/util/concurrent/Executor;

    const-string v2, "executor"

    invoke-static {p3, v2}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzs:Ljava/util/concurrent/Executor;

    new-instance p3, Lcom/google/android/libraries/places/internal/zzbqe;

    iget-object v2, p1, Lcom/google/android/libraries/places/internal/zzbru;->zza:Ljava/util/concurrent/Executor;

    invoke-direct {p3, v2}, Lcom/google/android/libraries/places/internal/zzbqe;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object p3, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzt:Lcom/google/android/libraries/places/internal/zzbqe;

    iget-object p3, p1, Lcom/google/android/libraries/places/internal/zzbru;->zzb:Ljava/util/concurrent/ScheduledExecutorService;

    const-string v2, "scheduledExecutorService"

    invoke-static {p3, v2}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzu:Ljava/util/concurrent/ScheduledExecutorService;

    const/4 p3, 0x3

    iput p3, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzq:I

    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzE:Ljavax/net/SocketFactory;

    iget-object p3, p1, Lcom/google/android/libraries/places/internal/zzbru;->zzd:Ljavax/net/ssl/SSLSocketFactory;

    iput-object p3, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzF:Ljavax/net/ssl/SSLSocketFactory;

    iget-object p3, p1, Lcom/google/android/libraries/places/internal/zzbru;->zze:Lcom/google/android/libraries/places/internal/zzbsz;

    const-string v2, "connectionSpec"

    invoke-static {p3, v2}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzJ:Lcom/google/android/libraries/places/internal/zzbsz;

    const-string p3, "stopwatchFactory"

    invoke-static {p4, p3}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p4, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzi:Lcom/google/android/libraries/places/internal/zznc;

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzk:Lcom/google/android/libraries/places/internal/zzbuf;

    const-string p3, "grpc-java-okhttp/1.64.0-SNAPSHOT"

    iput-object p3, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzg:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zza:Lcom/google/android/libraries/places/internal/zzbaa;

    iput-object p7, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzL:Ljava/lang/Runnable;

    const p3, 0x7fffffff

    iput p3, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzM:I

    iget-object p1, p1, Lcom/google/android/libraries/places/internal/zzbru;->zzc:Lcom/google/android/libraries/places/internal/zzbqw;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbqw;->zza()Lcom/google/android/libraries/places/internal/zzbqz;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzN:Lcom/google/android/libraries/places/internal/zzbqz;

    const-class p3, Lcom/google/android/libraries/places/internal/zzbsf;

    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/google/android/libraries/places/internal/zzbap;->zzb(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbap;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzp:Lcom/google/android/libraries/places/internal/zzbap;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzaye;->zza()Lcom/google/android/libraries/places/internal/zzayb;

    move-result-object p2

    sget-object p3, Lcom/google/android/libraries/places/internal/zzbit;->zzb:Lcom/google/android/libraries/places/internal/zzayc;

    invoke-virtual {p2, p3, p5}, Lcom/google/android/libraries/places/internal/zzayb;->zzb(Lcom/google/android/libraries/places/internal/zzayc;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzayb;

    invoke-virtual {p2}, Lcom/google/android/libraries/places/internal/zzayb;->zzc()Lcom/google/android/libraries/places/internal/zzaye;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzy:Lcom/google/android/libraries/places/internal/zzaye;

    monitor-enter v1

    :try_start_0
    new-instance p2, Lcom/google/android/libraries/places/internal/zzbsa;

    invoke-direct {p2, p0}, Lcom/google/android/libraries/places/internal/zzbsa;-><init>(Lcom/google/android/libraries/places/internal/zzbsf;)V

    invoke-virtual {p1, p2}, Lcom/google/android/libraries/places/internal/zzbqz;->zzf(Lcom/google/android/libraries/places/internal/zzbqx;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static bridge synthetic zzA(Lcom/google/android/libraries/places/internal/zzbsf;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Ljava/lang/String;Ljava/lang/String;)Ljava/net/Socket;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-string v7, ":"

    const-string v8, "\r\n"

    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v10

    if-eqz v10, :cond_0

    iget-object v10, v0, Lcom/google/android/libraries/places/internal/zzbsf;->zzE:Ljavax/net/SocketFactory;

    invoke-virtual/range {p2 .. p2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v12

    invoke-virtual {v10, v11, v12}, Ljavax/net/SocketFactory;->createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v10

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_6

    :cond_0
    iget-object v10, v0, Lcom/google/android/libraries/places/internal/zzbsf;->zzE:Ljavax/net/SocketFactory;

    invoke-virtual/range {p2 .. p2}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v12

    invoke-virtual {v10, v11, v12}, Ljavax/net/SocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v10
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    invoke-virtual {v10, v6}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    iget v11, v0, Lcom/google/android/libraries/places/internal/zzbsf;->zzb:I

    invoke-virtual {v10, v11}, Ljava/net/Socket;->setSoTimeout(I)V

    invoke-static {v10}, Lcom/google/android/libraries/places/internal/zzbwh;->zzd(Ljava/net/Socket;)Lcom/google/android/libraries/places/internal/zzbws;

    move-result-object v11

    invoke-static {v10}, Lcom/google/android/libraries/places/internal/zzbwh;->zzc(Ljava/net/Socket;)Lcom/google/android/libraries/places/internal/zzbwq;

    move-result-object v12

    invoke-static {v12}, Lcom/google/android/libraries/places/internal/zzbwh;->zza(Lcom/google/android/libraries/places/internal/zzbwq;)Lcom/google/android/libraries/places/internal/zzbwc;

    move-result-object v12

    new-instance v13, Lcom/google/android/libraries/places/internal/zzbug;

    invoke-direct {v13}, Lcom/google/android/libraries/places/internal/zzbug;-><init>()V

    const-string v14, "https"

    invoke-virtual {v13, v14}, Lcom/google/android/libraries/places/internal/zzbug;->zzd(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbug;

    invoke-virtual/range {p1 .. p1}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/google/android/libraries/places/internal/zzbug;->zzb(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbug;

    invoke-virtual/range {p1 .. p1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v14

    invoke-virtual {v13, v14}, Lcom/google/android/libraries/places/internal/zzbug;->zzc(I)Lcom/google/android/libraries/places/internal/zzbug;

    invoke-virtual {v13}, Lcom/google/android/libraries/places/internal/zzbug;->zze()Lcom/google/android/libraries/places/internal/zzbui;

    move-result-object v13

    new-instance v14, Lcom/google/android/libraries/places/internal/zzbuj;

    invoke-direct {v14}, Lcom/google/android/libraries/places/internal/zzbuj;-><init>()V

    invoke-virtual {v14, v13}, Lcom/google/android/libraries/places/internal/zzbuj;->zzd(Lcom/google/android/libraries/places/internal/zzbui;)Lcom/google/android/libraries/places/internal/zzbuj;

    const-string v15, "Host"

    invoke-virtual {v13}, Lcom/google/android/libraries/places/internal/zzbui;->zzd()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v13}, Lcom/google/android/libraries/places/internal/zzbui;->zzc()I

    move-result v13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v15, v3}, Lcom/google/android/libraries/places/internal/zzbuj;->zzc(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbuj;

    const-string v3, "User-Agent"

    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzbsf;->zzg:Ljava/lang/String;

    invoke-virtual {v14, v3, v0}, Lcom/google/android/libraries/places/internal/zzbuj;->zzc(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbuj;

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    const-string v0, "Proxy-Authorization"
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ISO-8859-1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    sget-object v2, Lcom/google/android/libraries/places/internal/zzbwf;->zza:Lcom/google/android/libraries/places/internal/zzbwe;

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzbwe;->zzb([B)Lcom/google/android/libraries/places/internal/zzbwf;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzbwf;->zzd()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Basic "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    :try_start_3
    invoke-virtual {v14, v0, v1}, Lcom/google/android/libraries/places/internal/zzbuj;->zzc(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbuj;

    goto :goto_1

    :catch_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_1
    invoke-virtual {v14}, Lcom/google/android/libraries/places/internal/zzbuj;->zze()Lcom/google/android/libraries/places/internal/zzbul;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbul;->zzb()Lcom/google/android/libraries/places/internal/zzbui;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "CONNECT %s:%d HTTP/1.1"

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzbui;->zzd()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzbui;->zzc()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v9, v4, [Ljava/lang/Object;

    aput-object v7, v9, v5

    aput-object v1, v9, v6

    invoke-static {v2, v3, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12, v1}, Lcom/google/android/libraries/places/internal/zzbwc;->zzx(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbwc;

    invoke-interface {v12, v8}, Lcom/google/android/libraries/places/internal/zzbwc;->zzx(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbwc;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbul;->zza()Lcom/google/android/libraries/places/internal/zzbtd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzbtd;->zza()I

    move-result v1

    move v2, v5

    :goto_2
    if-ge v2, v1, :cond_2

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbul;->zza()Lcom/google/android/libraries/places/internal/zzbtd;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/libraries/places/internal/zzbtd;->zzb(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v12, v3}, Lcom/google/android/libraries/places/internal/zzbwc;->zzx(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbwc;

    const-string v3, ": "

    invoke-interface {v12, v3}, Lcom/google/android/libraries/places/internal/zzbwc;->zzx(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbwc;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbul;->zza()Lcom/google/android/libraries/places/internal/zzbtd;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/libraries/places/internal/zzbtd;->zzc(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v12, v3}, Lcom/google/android/libraries/places/internal/zzbwc;->zzx(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbwc;

    invoke-interface {v12, v8}, Lcom/google/android/libraries/places/internal/zzbwc;->zzx(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbwc;

    add-int/2addr v2, v6

    goto :goto_2

    :cond_2
    invoke-interface {v12, v8}, Lcom/google/android/libraries/places/internal/zzbwc;->zzx(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbwc;

    invoke-interface {v12}, Lcom/google/android/libraries/places/internal/zzbwc;->flush()V

    invoke-static {v11}, Lcom/google/android/libraries/places/internal/zzbsf;->zzW(Lcom/google/android/libraries/places/internal/zzbws;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "HTTP/1."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    const/4 v2, 0x4

    const/16 v3, 0x20

    const-string v7, "Unexpected status line: "

    if-eqz v1, :cond_6

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v8, 0x9

    if-lt v1, v8, :cond_5

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_5

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    if-nez v1, :cond_3

    sget-object v1, Lcom/google/android/libraries/places/internal/zzbtm;->zza:Lcom/google/android/libraries/places/internal/zzbtm;

    goto :goto_3

    :cond_3
    if-ne v1, v6, :cond_4

    sget-object v1, Lcom/google/android/libraries/places/internal/zzbtm;->zza:Lcom/google/android/libraries/places/internal/zzbtm;

    goto :goto_3

    :cond_4
    new-instance v1, Ljava/net/ProtocolException;

    invoke-virtual {v7, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    new-instance v1, Ljava/net/ProtocolException;

    invoke-virtual {v7, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    const-string v1, "ICY "

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    sget-object v1, Lcom/google/android/libraries/places/internal/zzbtm;->zza:Lcom/google/android/libraries/places/internal/zzbtm;

    move v8, v2

    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    const/4 v9, 0x3

    add-int/lit8 v12, v8, 0x3

    if-lt v1, v12, :cond_b

    :try_start_5
    invoke-virtual {v0, v8, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :try_start_6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    const-string v13, ""

    if-le v9, v12, :cond_8

    :try_start_7
    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v3, :cond_7

    add-int/2addr v8, v2

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_4

    :cond_7
    new-instance v1, Ljava/net/ProtocolException;

    invoke-virtual {v7, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    move-object v2, v13

    :cond_9
    :goto_4
    invoke-static {v11}, Lcom/google/android/libraries/places/internal/zzbsf;->zzW(Lcom/google/android/libraries/places/internal/zzbws;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0xc8

    if-lt v1, v0, :cond_a

    const/16 v0, 0x12c

    if-ge v1, v0, :cond_a

    invoke-virtual {v10, v5}, Ljava/net/Socket;->setSoTimeout(I)V

    return-object v10

    :cond_a
    new-instance v3, Lcom/google/android/libraries/places/internal/zzbwb;

    invoke-direct {v3}, Lcom/google/android/libraries/places/internal/zzbwb;-><init>()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    :try_start_8
    invoke-virtual {v10}, Ljava/net/Socket;->shutdownOutput()V

    const-wide/16 v7, 0x400

    invoke-interface {v11, v3, v7, v8}, Lcom/google/android/libraries/places/internal/zzbws;->zza(Lcom/google/android/libraries/places/internal/zzbwb;J)J
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_5

    :catch_2
    move-exception v0

    :try_start_9
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to read body: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/android/libraries/places/internal/zzbwb;->zzs(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbwb;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    :goto_5
    :try_start_a
    invoke-virtual {v10}, Ljava/net/Socket;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    :catch_3
    :try_start_b
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "Response returned from proxy was not successful (expected 2xx, got %d %s). Response body:\n%s"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3}, Lcom/google/android/libraries/places/internal/zzbwb;->zzi()Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v1, v8, v5

    aput-object v2, v8, v6

    aput-object v3, v8, v4

    invoke-static {v0, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/internal/zzbdo;->zzp:Lcom/google/android/libraries/places/internal/zzbdo;

    invoke-virtual {v1, v0}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/places/internal/zzbdp;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/android/libraries/places/internal/zzbdp;-><init>(Lcom/google/android/libraries/places/internal/zzbdo;Lcom/google/android/libraries/places/internal/zzbcf;)V

    throw v1

    :catch_4
    move-exception v0

    goto :goto_7

    :catch_5
    new-instance v1, Ljava/net/ProtocolException;

    invoke-virtual {v7, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    new-instance v1, Ljava/net/ProtocolException;

    invoke-virtual {v7, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_c
    new-instance v1, Ljava/net/ProtocolException;

    invoke-virtual {v7, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    :goto_6
    const/4 v10, 0x0

    :goto_7
    if-eqz v10, :cond_d

    invoke-static {v10}, Lcom/google/android/libraries/places/internal/zzbjd;->zzi(Ljava/io/Closeable;)V

    :cond_d
    sget-object v1, Lcom/google/android/libraries/places/internal/zzbdo;->zzp:Lcom/google/android/libraries/places/internal/zzbdo;

    const-string v2, "Failed trying to connect with proxy"

    invoke-virtual {v1, v2}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/libraries/places/internal/zzbdo;->zzf(Ljava/lang/Throwable;)Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/places/internal/zzbdp;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/android/libraries/places/internal/zzbdp;-><init>(Lcom/google/android/libraries/places/internal/zzbdo;Lcom/google/android/libraries/places/internal/zzbcf;)V

    throw v1
.end method

.method static bridge synthetic zzB(Lcom/google/android/libraries/places/internal/zzbsf;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzr:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic zzC(Lcom/google/android/libraries/places/internal/zzbsf;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzs:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static bridge synthetic zzD()Ljava/util/logging/Logger;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzbsf;->zzd:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static bridge synthetic zzE(Lcom/google/android/libraries/places/internal/zzbsf;)Ljavax/net/SocketFactory;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzE:Ljavax/net/SocketFactory;

    return-object p0
.end method

.method static bridge synthetic zzF(Lcom/google/android/libraries/places/internal/zzbsf;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzF:Ljavax/net/ssl/SSLSocketFactory;

    return-object p0
.end method

.method static bridge synthetic zzG(Lcom/google/android/libraries/places/internal/zzbsf;Lcom/google/android/libraries/places/internal/zzaye;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzy:Lcom/google/android/libraries/places/internal/zzaye;

    return-void
.end method

.method static bridge synthetic zzH(Lcom/google/android/libraries/places/internal/zzbsf;Lcom/google/android/libraries/places/internal/zzbse;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzx:Lcom/google/android/libraries/places/internal/zzbse;

    return-void
.end method

.method static bridge synthetic zzI(Lcom/google/android/libraries/places/internal/zzbsf;I)V
    .locals 0

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzw:I

    return-void
.end method

.method static bridge synthetic zzJ(Lcom/google/android/libraries/places/internal/zzbsf;I)V
    .locals 0

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzH:I

    return-void
.end method

.method static bridge synthetic zzK(Lcom/google/android/libraries/places/internal/zzbsf;Lcom/google/android/libraries/places/internal/zzbjh;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzB:Lcom/google/android/libraries/places/internal/zzbjh;

    return-void
.end method

.method static bridge synthetic zzL(Lcom/google/android/libraries/places/internal/zzbsf;Lcom/google/android/libraries/places/internal/zzbaf;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzP:Lcom/google/android/libraries/places/internal/zzbaf;

    return-void
.end method

.method static bridge synthetic zzM(Lcom/google/android/libraries/places/internal/zzbsf;Ljava/net/Socket;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzG:Ljava/net/Socket;

    return-void
.end method

.method static bridge synthetic zzN(Lcom/google/android/libraries/places/internal/zzbsf;Lcom/google/android/libraries/places/internal/zzbtp;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbsf;->zzm(Lcom/google/android/libraries/places/internal/zzbtp;)Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/libraries/places/internal/zzbdo;->zzc(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/libraries/places/internal/zzbsf;->zzaa(ILcom/google/android/libraries/places/internal/zzbtp;Lcom/google/android/libraries/places/internal/zzbdo;)V

    return-void
.end method

.method static bridge synthetic zzO(Lcom/google/android/libraries/places/internal/zzbsf;ILcom/google/android/libraries/places/internal/zzbtp;Lcom/google/android/libraries/places/internal/zzbdo;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/libraries/places/internal/zzbsf;->zzaa(ILcom/google/android/libraries/places/internal/zzbtp;Lcom/google/android/libraries/places/internal/zzbdo;)V

    return-void
.end method

.method static bridge synthetic zzS(Lcom/google/android/libraries/places/internal/zzbsf;)Z
    .locals 0

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzbsf;->zzad()Z

    move-result p0

    return p0
.end method

.method private static zzW(Lcom/google/android/libraries/places/internal/zzbws;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbwb;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzbwb;-><init>()V

    :cond_0
    const-wide/16 v1, 0x1

    invoke-interface {p0, v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzbws;->zza(Lcom/google/android/libraries/places/internal/zzbwb;J)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbwb;->zzg()J

    move-result-wide v1

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzbwb;->zzb(J)B

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    const-wide v1, 0x7fffffffffffffffL

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzbwb;->zzj(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/io/EOFException;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbwb;->zzg()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzbwb;->zzy(J)Lcom/google/android/libraries/places/internal/zzbwf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbwf;->zze()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\n not found: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final zzX()Ljava/lang/Throwable;
    .locals 4

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzo:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzz:Lcom/google/android/libraries/places/internal/zzbdo;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance v3, Lcom/google/android/libraries/places/internal/zzbdp;

    invoke-direct {v3, v1, v2}, Lcom/google/android/libraries/places/internal/zzbdp;-><init>(Lcom/google/android/libraries/places/internal/zzbdo;Lcom/google/android/libraries/places/internal/zzbcf;)V

    monitor-exit v0

    return-object v3

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/google/android/libraries/places/internal/zzbdo;->zzp:Lcom/google/android/libraries/places/internal/zzbdo;

    const-string v3, "Connection closed"

    invoke-virtual {v1, v3}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object v1

    new-instance v3, Lcom/google/android/libraries/places/internal/zzbdp;

    invoke-direct {v3, v1, v2}, Lcom/google/android/libraries/places/internal/zzbdp;-><init>(Lcom/google/android/libraries/places/internal/zzbdo;Lcom/google/android/libraries/places/internal/zzbcf;)V

    monitor-exit v0

    return-object v3

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private final zzY(Lcom/google/android/libraries/places/internal/zzbry;)V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzD:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzI:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzr:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzD:Z

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzK:Lcom/google/android/libraries/places/internal/zzbkh;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbkh;->zzc()V

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbef;->zzq()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzO:Lcom/google/android/libraries/places/internal/zzbji;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/libraries/places/internal/zzbji;->zzc(Ljava/lang/Object;Z)V

    :cond_1
    return-void
.end method

.method private final zzZ(Lcom/google/android/libraries/places/internal/zzbry;)V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzD:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzD:Z

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzK:Lcom/google/android/libraries/places/internal/zzbkh;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbkh;->zzb()V

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbef;->zzq()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzO:Lcom/google/android/libraries/places/internal/zzbji;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/libraries/places/internal/zzbji;->zzc(Ljava/lang/Object;Z)V

    :cond_1
    return-void
.end method

.method private final zzaa(ILcom/google/android/libraries/places/internal/zzbtp;Lcom/google/android/libraries/places/internal/zzbdo;)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzo:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzz:Lcom/google/android/libraries/places/internal/zzbdo;

    if-nez v1, :cond_0

    iput-object p3, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzz:Lcom/google/android/libraries/places/internal/zzbdo;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzl:Lcom/google/android/libraries/places/internal/zzbmk;

    invoke-interface {v1, p3}, Lcom/google/android/libraries/places/internal/zzbmk;->zzd(Lcom/google/android/libraries/places/internal/zzbdo;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_0
    :goto_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    iget-boolean v3, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzA:Z

    if-nez v3, :cond_1

    iput-boolean v1, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzA:Z

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzm:Lcom/google/android/libraries/places/internal/zzbrk;

    new-array v4, v2, [B

    invoke-virtual {v3, v2, p2, v4}, Lcom/google/android/libraries/places/internal/zzbrk;->zzh(ILcom/google/android/libraries/places/internal/zzbtp;[B)V

    :cond_1
    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzr:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le v4, p1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/libraries/places/internal/zzbry;

    invoke-virtual {v4}, Lcom/google/android/libraries/places/internal/zzbry;->zzD()Lcom/google/android/libraries/places/internal/zzbrx;

    move-result-object v4

    sget-object v5, Lcom/google/android/libraries/places/internal/zzbfs;->zzb:Lcom/google/android/libraries/places/internal/zzbfs;

    new-instance v6, Lcom/google/android/libraries/places/internal/zzbcf;

    invoke-direct {v6}, Lcom/google/android/libraries/places/internal/zzbcf;-><init>()V

    invoke-virtual {v4, p3, v5, v2, v6}, Lcom/google/android/libraries/places/internal/zzbee;->zzj(Lcom/google/android/libraries/places/internal/zzbdo;Lcom/google/android/libraries/places/internal/zzbfs;ZLcom/google/android/libraries/places/internal/zzbcf;)V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/libraries/places/internal/zzbry;

    invoke-direct {p0, v3}, Lcom/google/android/libraries/places/internal/zzbsf;->zzY(Lcom/google/android/libraries/places/internal/zzbry;)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzI:Ljava/util/Deque;

    invoke-interface {p1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/libraries/places/internal/zzbry;

    invoke-virtual {p2}, Lcom/google/android/libraries/places/internal/zzbry;->zzD()Lcom/google/android/libraries/places/internal/zzbrx;

    move-result-object v2

    sget-object v3, Lcom/google/android/libraries/places/internal/zzbfs;->zzd:Lcom/google/android/libraries/places/internal/zzbfs;

    new-instance v4, Lcom/google/android/libraries/places/internal/zzbcf;

    invoke-direct {v4}, Lcom/google/android/libraries/places/internal/zzbcf;-><init>()V

    invoke-virtual {v2, p3, v3, v1, v4}, Lcom/google/android/libraries/places/internal/zzbee;->zzj(Lcom/google/android/libraries/places/internal/zzbdo;Lcom/google/android/libraries/places/internal/zzbfs;ZLcom/google/android/libraries/places/internal/zzbcf;)V

    invoke-direct {p0, p2}, Lcom/google/android/libraries/places/internal/zzbsf;->zzY(Lcom/google/android/libraries/places/internal/zzbry;)V

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzI:Ljava/util/Deque;

    invoke-interface {p1}, Ljava/util/Collection;->clear()V

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzbsf;->zzac()V

    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private final zzab(Lcom/google/android/libraries/places/internal/zzbry;)V
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbry;->zzD()Lcom/google/android/libraries/places/internal/zzbrx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbrx;->zzG()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "StreamId already assigned"

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zzmt;->zzp(ZLjava/lang/Object;)V

    iget v0, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzq:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzr:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzbsf;->zzZ(Lcom/google/android/libraries/places/internal/zzbry;)V

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbry;->zzD()Lcom/google/android/libraries/places/internal/zzbrx;

    move-result-object v0

    iget v1, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzq:I

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzbrx;->zzN(I)V

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbry;->zzx()Lcom/google/android/libraries/places/internal/zzbcj;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/internal/zzbcj;->zza:Lcom/google/android/libraries/places/internal/zzbcj;

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbry;->zzx()Lcom/google/android/libraries/places/internal/zzbcj;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/internal/zzbcj;->zzc:Lcom/google/android/libraries/places/internal/zzbcj;

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzm:Lcom/google/android/libraries/places/internal/zzbrk;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbrk;->zzg()V

    goto :goto_2

    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbry;->zzI()Z

    :goto_2
    iget p1, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzq:I

    const v0, 0x7ffffffd

    if-lt p1, v0, :cond_3

    const p1, 0x7fffffff

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzq:I

    sget-object v0, Lcom/google/android/libraries/places/internal/zzbtp;->zza:Lcom/google/android/libraries/places/internal/zzbtp;

    sget-object v1, Lcom/google/android/libraries/places/internal/zzbdo;->zzp:Lcom/google/android/libraries/places/internal/zzbdo;

    const-string v2, "Stream ids exhausted"

    invoke-virtual {v1, v2}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/libraries/places/internal/zzbsf;->zzaa(ILcom/google/android/libraries/places/internal/zzbtp;Lcom/google/android/libraries/places/internal/zzbdo;)V

    return-void

    :cond_3
    add-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzq:I

    return-void
.end method

.method private final zzac()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzz:Lcom/google/android/libraries/places/internal/zzbdo;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzr:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzI:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzC:Z

    if-nez v0, :cond_4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzC:Z

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzK:Lcom/google/android/libraries/places/internal/zzbkh;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzbkh;->zzd()V

    :cond_1
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzB:Lcom/google/android/libraries/places/internal/zzbjh;

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzbsf;->zzX()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/libraries/places/internal/zzbjh;->zzb(Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzB:Lcom/google/android/libraries/places/internal/zzbjh;

    :cond_2
    iget-boolean v1, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzA:Z

    if-nez v1, :cond_3

    iput-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzA:Z

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzm:Lcom/google/android/libraries/places/internal/zzbrk;

    sget-object v1, Lcom/google/android/libraries/places/internal/zzbtp;->zza:Lcom/google/android/libraries/places/internal/zzbtp;

    const/4 v2, 0x0

    new-array v3, v2, [B

    invoke-virtual {v0, v2, v1, v3}, Lcom/google/android/libraries/places/internal/zzbrk;->zzh(ILcom/google/android/libraries/places/internal/zzbtp;[B)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzm:Lcom/google/android/libraries/places/internal/zzbrk;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbrk;->close()V

    :cond_4
    :goto_0
    return-void
.end method

.method private final zzad()Z
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzI:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzr:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    iget v2, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzH:I

    if-ge v1, v2, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzI:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzbry;

    invoke-direct {p0, v0}, Lcom/google/android/libraries/places/internal/zzbsf;->zzab(Lcom/google/android/libraries/places/internal/zzbry;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method static bridge synthetic zzf(Lcom/google/android/libraries/places/internal/zzbsf;)I
    .locals 0

    iget p0, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzw:I

    return p0
.end method

.method static bridge synthetic zzg(Lcom/google/android/libraries/places/internal/zzbsf;)I
    .locals 0

    iget p0, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzj:I

    return p0
.end method

.method static bridge synthetic zzh(Lcom/google/android/libraries/places/internal/zzbsf;)I
    .locals 0

    iget p0, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzM:I

    return p0
.end method

.method static bridge synthetic zzk(Lcom/google/android/libraries/places/internal/zzbsf;)Lcom/google/android/libraries/places/internal/zzaye;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzy:Lcom/google/android/libraries/places/internal/zzaye;

    return-object p0
.end method

.method static bridge synthetic zzl(Lcom/google/android/libraries/places/internal/zzbsf;)Lcom/google/android/libraries/places/internal/zzbdo;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzz:Lcom/google/android/libraries/places/internal/zzbdo;

    return-object p0
.end method

.method static zzm(Lcom/google/android/libraries/places/internal/zzbtp;)Lcom/google/android/libraries/places/internal/zzbdo;
    .locals 3

    sget-object v0, Lcom/google/android/libraries/places/internal/zzbsf;->zzc:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzbdo;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lcom/google/android/libraries/places/internal/zzbdo;->zzc:Lcom/google/android/libraries/places/internal/zzbdo;

    iget p0, p0, Lcom/google/android/libraries/places/internal/zzbtp;->zzs:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown http2 error code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic zzn(Lcom/google/android/libraries/places/internal/zzbsf;)Lcom/google/android/libraries/places/internal/zzbjh;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzB:Lcom/google/android/libraries/places/internal/zzbjh;

    return-object p0
.end method

.method static bridge synthetic zzo(Lcom/google/android/libraries/places/internal/zzbsf;)Lcom/google/android/libraries/places/internal/zzbkh;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzK:Lcom/google/android/libraries/places/internal/zzbkh;

    return-object p0
.end method

.method static bridge synthetic zzp(Lcom/google/android/libraries/places/internal/zzbsf;)Lcom/google/android/libraries/places/internal/zzbmk;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzl:Lcom/google/android/libraries/places/internal/zzbmk;

    return-object p0
.end method

.method static bridge synthetic zzq(Lcom/google/android/libraries/places/internal/zzbsf;)Lcom/google/android/libraries/places/internal/zzbrk;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzm:Lcom/google/android/libraries/places/internal/zzbrk;

    return-object p0
.end method

.method static bridge synthetic zzs(Lcom/google/android/libraries/places/internal/zzbsf;)Lcom/google/android/libraries/places/internal/zzbse;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzx:Lcom/google/android/libraries/places/internal/zzbse;

    return-object p0
.end method

.method static bridge synthetic zzt(Lcom/google/android/libraries/places/internal/zzbsf;)Lcom/google/android/libraries/places/internal/zzbsu;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzn:Lcom/google/android/libraries/places/internal/zzbsu;

    return-object p0
.end method

.method static bridge synthetic zzu(Lcom/google/android/libraries/places/internal/zzbsf;)Lcom/google/android/libraries/places/internal/zzbsz;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzJ:Lcom/google/android/libraries/places/internal/zzbsz;

    return-object p0
.end method

.method static bridge synthetic zzv(Lcom/google/android/libraries/places/internal/zzbsf;)Lcom/google/android/libraries/places/internal/zzbuf;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzk:Lcom/google/android/libraries/places/internal/zzbuf;

    return-object p0
.end method

.method static bridge synthetic zzw(Lcom/google/android/libraries/places/internal/zzbsf;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzo:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic zzx(Lcom/google/android/libraries/places/internal/zzbsf;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzL:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic zzz(Lcom/google/android/libraries/places/internal/zzbsf;)Ljava/net/InetSocketAddress;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zze:Ljava/net/InetSocketAddress;

    return-object p0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 5

    invoke-static {p0}, Lcom/google/android/libraries/places/internal/zzmn;->zzb(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzmm;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzp:Lcom/google/android/libraries/places/internal/zzbap;

    const-string v2, "logId"

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzbap;->zza()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/libraries/places/internal/zzmm;->zzc(Ljava/lang/String;J)Lcom/google/android/libraries/places/internal/zzmm;

    const-string v1, "address"

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zze:Ljava/net/InetSocketAddress;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzmm;->zzd(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzmm;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzmm;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final zzP(ILcom/google/android/libraries/places/internal/zzbdo;Lcom/google/android/libraries/places/internal/zzbfs;ZLcom/google/android/libraries/places/internal/zzbtp;Lcom/google/android/libraries/places/internal/zzbcf;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzo:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzr:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/places/internal/zzbry;

    if-eqz v1, :cond_4

    if-eqz p5, :cond_0

    iget-object p5, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzm:Lcom/google/android/libraries/places/internal/zzbrk;

    sget-object v2, Lcom/google/android/libraries/places/internal/zzbtp;->zzl:Lcom/google/android/libraries/places/internal/zzbtp;

    invoke-virtual {p5, p1, v2}, Lcom/google/android/libraries/places/internal/zzbrk;->zzc(ILcom/google/android/libraries/places/internal/zzbtp;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz p2, :cond_2

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzbry;->zzD()Lcom/google/android/libraries/places/internal/zzbrx;

    move-result-object p1

    if-nez p6, :cond_1

    new-instance p6, Lcom/google/android/libraries/places/internal/zzbcf;

    invoke-direct {p6}, Lcom/google/android/libraries/places/internal/zzbcf;-><init>()V

    :cond_1
    invoke-virtual {p1, p2, p3, p4, p6}, Lcom/google/android/libraries/places/internal/zzbee;->zzj(Lcom/google/android/libraries/places/internal/zzbdo;Lcom/google/android/libraries/places/internal/zzbfs;ZLcom/google/android/libraries/places/internal/zzbcf;)V

    :cond_2
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzbsf;->zzad()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzbsf;->zzac()V

    :cond_3
    invoke-direct {p0, v1}, Lcom/google/android/libraries/places/internal/zzbsf;->zzY(Lcom/google/android/libraries/places/internal/zzbry;)V

    :cond_4
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method final zzQ(Lcom/google/android/libraries/places/internal/zzbry;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzI:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzbsf;->zzY(Lcom/google/android/libraries/places/internal/zzbry;)V

    return-void
.end method

.method final zzR(Lcom/google/android/libraries/places/internal/zzbry;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzz:Lcom/google/android/libraries/places/internal/zzbdo;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbry;->zzD()Lcom/google/android/libraries/places/internal/zzbrx;

    move-result-object p1

    sget-object v1, Lcom/google/android/libraries/places/internal/zzbfs;->zzd:Lcom/google/android/libraries/places/internal/zzbfs;

    new-instance v2, Lcom/google/android/libraries/places/internal/zzbcf;

    invoke-direct {v2}, Lcom/google/android/libraries/places/internal/zzbcf;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v1, v3, v2}, Lcom/google/android/libraries/places/internal/zzbee;->zzj(Lcom/google/android/libraries/places/internal/zzbdo;Lcom/google/android/libraries/places/internal/zzbfs;ZLcom/google/android/libraries/places/internal/zzbcf;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzr:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget v1, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzH:I

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzI:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzbsf;->zzZ(Lcom/google/android/libraries/places/internal/zzbry;)V

    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzbsf;->zzab(Lcom/google/android/libraries/places/internal/zzbry;)V

    return-void
.end method

.method final zzT()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzF:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final zzU(I)Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzo:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzq:I

    const/4 v2, 0x0

    if-ge p1, v1, :cond_0

    const/4 v1, 0x1

    and-int/2addr p1, v1

    if-ne p1, v1, :cond_0

    move v2, v1

    :cond_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzV()[Lcom/google/android/libraries/places/internal/zzbsq;
    .locals 6

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzo:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzr:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Lcom/google/android/libraries/places/internal/zzbsq;

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzr:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/libraries/places/internal/zzbry;

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v4}, Lcom/google/android/libraries/places/internal/zzbry;->zzD()Lcom/google/android/libraries/places/internal/zzbrx;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/libraries/places/internal/zzbrx;->zzH()Lcom/google/android/libraries/places/internal/zzbsq;

    move-result-object v4

    aput-object v4, v1, v3

    move v3, v5

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final synthetic zza(Lcom/google/android/libraries/places/internal/zzbcl;Lcom/google/android/libraries/places/internal/zzbcf;Lcom/google/android/libraries/places/internal/zzayj;[Lcom/google/android/libraries/places/internal/zzayx;)Lcom/google/android/libraries/places/internal/zzbfr;
    .locals 18

    move-object/from16 v15, p0

    const-string v0, "method"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v15, Lcom/google/android/libraries/places/internal/zzbsf;->zzy:Lcom/google/android/libraries/places/internal/zzaye;

    move-object/from16 v3, p2

    move-object/from16 v1, p4

    invoke-static {v1, v0, v3}, Lcom/google/android/libraries/places/internal/zzbqo;->zza([Lcom/google/android/libraries/places/internal/zzayx;Lcom/google/android/libraries/places/internal/zzaye;Lcom/google/android/libraries/places/internal/zzbcf;)Lcom/google/android/libraries/places/internal/zzbqo;

    move-result-object v12

    iget-object v14, v15, Lcom/google/android/libraries/places/internal/zzbsf;->zzo:Ljava/lang/Object;

    monitor-enter v14

    :try_start_0
    new-instance v0, Lcom/google/android/libraries/places/internal/zzbry;

    iget-object v4, v15, Lcom/google/android/libraries/places/internal/zzbsf;->zzm:Lcom/google/android/libraries/places/internal/zzbrk;

    iget-object v6, v15, Lcom/google/android/libraries/places/internal/zzbsf;->zzn:Lcom/google/android/libraries/places/internal/zzbsu;

    iget-object v7, v15, Lcom/google/android/libraries/places/internal/zzbsf;->zzo:Ljava/lang/Object;

    iget v8, v15, Lcom/google/android/libraries/places/internal/zzbsf;->zzv:I

    iget v9, v15, Lcom/google/android/libraries/places/internal/zzbsf;->zzj:I

    iget-object v10, v15, Lcom/google/android/libraries/places/internal/zzbsf;->zzf:Ljava/lang/String;

    iget-object v11, v15, Lcom/google/android/libraries/places/internal/zzbsf;->zzg:Ljava/lang/String;

    iget-object v13, v15, Lcom/google/android/libraries/places/internal/zzbsf;->zzN:Lcom/google/android/libraries/places/internal/zzbqz;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v16, 0x0

    move-object v1, v0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p0

    move-object/from16 v17, v14

    move-object/from16 v14, p3

    move/from16 v15, v16

    :try_start_1
    invoke-direct/range {v1 .. v15}, Lcom/google/android/libraries/places/internal/zzbry;-><init>(Lcom/google/android/libraries/places/internal/zzbcl;Lcom/google/android/libraries/places/internal/zzbcf;Lcom/google/android/libraries/places/internal/zzbrk;Lcom/google/android/libraries/places/internal/zzbsf;Lcom/google/android/libraries/places/internal/zzbsu;Ljava/lang/Object;IILjava/lang/String;Ljava/lang/String;Lcom/google/android/libraries/places/internal/zzbqo;Lcom/google/android/libraries/places/internal/zzbqz;Lcom/google/android/libraries/places/internal/zzayj;Z)V

    monitor-exit v17

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object/from16 v17, v14

    :goto_0
    monitor-exit v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final zzb(Ljava/lang/Throwable;)V
    .locals 2

    sget-object v0, Lcom/google/android/libraries/places/internal/zzbdo;->zzp:Lcom/google/android/libraries/places/internal/zzbdo;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzbdo;->zzf(Ljava/lang/Throwable;)Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object p1

    const/4 v0, 0x0

    sget-object v1, Lcom/google/android/libraries/places/internal/zzbtp;->zzg:Lcom/google/android/libraries/places/internal/zzbtp;

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/libraries/places/internal/zzbsf;->zzaa(ILcom/google/android/libraries/places/internal/zzbtp;Lcom/google/android/libraries/places/internal/zzbdo;)V

    return-void
.end method

.method public final zzc()Lcom/google/android/libraries/places/internal/zzbap;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzp:Lcom/google/android/libraries/places/internal/zzbap;

    return-object v0
.end method

.method public final zzd(Lcom/google/android/libraries/places/internal/zzbdo;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzo:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzz:Lcom/google/android/libraries/places/internal/zzbdo;

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzz:Lcom/google/android/libraries/places/internal/zzbdo;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzl:Lcom/google/android/libraries/places/internal/zzbmk;

    invoke-interface {v1, p1}, Lcom/google/android/libraries/places/internal/zzbmk;->zzd(Lcom/google/android/libraries/places/internal/zzbdo;)V

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzbsf;->zzac()V

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zze()Lcom/google/android/libraries/places/internal/zzaye;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzy:Lcom/google/android/libraries/places/internal/zzaye;

    return-object v0
.end method

.method final zzi()I
    .locals 3

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzf:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbjd;->zzf(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getPort()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/net/URI;->getPort()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zze:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    return v0
.end method

.method public final zzj(Lcom/google/android/libraries/places/internal/zzbmk;)Ljava/lang/Runnable;
    .locals 5

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzl:Lcom/google/android/libraries/places/internal/zzbmk;

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzt:Lcom/google/android/libraries/places/internal/zzbqe;

    const/16 v0, 0x2710

    invoke-static {p1, p0, v0}, Lcom/google/android/libraries/places/internal/zzbri;->zzc(Lcom/google/android/libraries/places/internal/zzbqe;Lcom/google/android/libraries/places/internal/zzbrj;I)Lcom/google/android/libraries/places/internal/zzbri;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbwh;->zza(Lcom/google/android/libraries/places/internal/zzbwq;)Lcom/google/android/libraries/places/internal/zzbwc;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzk:Lcom/google/android/libraries/places/internal/zzbuf;

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Lcom/google/android/libraries/places/internal/zzbuf;->zzd(Lcom/google/android/libraries/places/internal/zzbwc;Z)Lcom/google/android/libraries/places/internal/zzbts;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/places/internal/zzbrf;

    invoke-direct {v1, p1, v0}, Lcom/google/android/libraries/places/internal/zzbrf;-><init>(Lcom/google/android/libraries/places/internal/zzbri;Lcom/google/android/libraries/places/internal/zzbts;)V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzo:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v3, Lcom/google/android/libraries/places/internal/zzbrk;

    invoke-direct {v3, p0, v1}, Lcom/google/android/libraries/places/internal/zzbrk;-><init>(Lcom/google/android/libraries/places/internal/zzbrj;Lcom/google/android/libraries/places/internal/zzbts;)V

    iput-object v3, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzm:Lcom/google/android/libraries/places/internal/zzbrk;

    new-instance v1, Lcom/google/android/libraries/places/internal/zzbsu;

    invoke-direct {v1, p0, v3}, Lcom/google/android/libraries/places/internal/zzbsu;-><init>(Lcom/google/android/libraries/places/internal/zzbsr;Lcom/google/android/libraries/places/internal/zzbts;)V

    iput-object v1, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzn:Lcom/google/android/libraries/places/internal/zzbsu;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzt:Lcom/google/android/libraries/places/internal/zzbqe;

    new-instance v2, Lcom/google/android/libraries/places/internal/zzbsc;

    invoke-direct {v2, p0, v0, p1}, Lcom/google/android/libraries/places/internal/zzbsc;-><init>(Lcom/google/android/libraries/places/internal/zzbsf;Ljava/util/concurrent/CountDownLatch;Lcom/google/android/libraries/places/internal/zzbri;)V

    invoke-virtual {v1, v2}, Lcom/google/android/libraries/places/internal/zzbqe;->execute(Ljava/lang/Runnable;)V

    :try_start_1
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzo:Ljava/lang/Object;

    monitor-enter p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzm:Lcom/google/android/libraries/places/internal/zzbrk;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzbrk;->zze()V

    new-instance v1, Lcom/google/android/libraries/places/internal/zzbue;

    invoke-direct {v1}, Lcom/google/android/libraries/places/internal/zzbue;-><init>()V

    iget v2, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzj:I

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2}, Lcom/google/android/libraries/places/internal/zzbue;->zze(III)Lcom/google/android/libraries/places/internal/zzbue;

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzm:Lcom/google/android/libraries/places/internal/zzbrk;

    invoke-virtual {v2, v1}, Lcom/google/android/libraries/places/internal/zzbrk;->zzi(Lcom/google/android/libraries/places/internal/zzbue;)V

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzt:Lcom/google/android/libraries/places/internal/zzbqe;

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbsd;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/places/internal/zzbsd;-><init>(Lcom/google/android/libraries/places/internal/zzbsf;)V

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/places/internal/zzbqe;->execute(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw p1

    :catchall_2
    move-exception p1

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p1
.end method

.method final zzr(I)Lcom/google/android/libraries/places/internal/zzbry;
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzo:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzr:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/internal/zzbry;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method final zzy()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzf:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbjd;->zzf(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbsf;->zzf:Ljava/lang/String;

    return-object v0
.end method
