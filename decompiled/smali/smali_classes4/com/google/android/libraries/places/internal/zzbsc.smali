.class final Lcom/google/android/libraries/places/internal/zzbsc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Ljava/util/concurrent/CountDownLatch;

.field final synthetic zzb:Lcom/google/android/libraries/places/internal/zzbri;

.field final synthetic zzc:Lcom/google/android/libraries/places/internal/zzbsf;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzbsf;Ljava/util/concurrent/CountDownLatch;Lcom/google/android/libraries/places/internal/zzbri;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbsc;->zza:Ljava/util/concurrent/CountDownLatch;

    iput-object p3, p0, Lcom/google/android/libraries/places/internal/zzbsc;->zzb:Lcom/google/android/libraries/places/internal/zzbri;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbsc;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbsc;->zza:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :goto_0
    new-instance v0, Lcom/google/android/libraries/places/internal/zzbsb;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/places/internal/zzbsb;-><init>(Lcom/google/android/libraries/places/internal/zzbsc;)V

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbwh;->zzb(Lcom/google/android/libraries/places/internal/zzbws;)Lcom/google/android/libraries/places/internal/zzbwd;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_1
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbsc;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    iget-object v4, v3, Lcom/google/android/libraries/places/internal/zzbsf;->zza:Lcom/google/android/libraries/places/internal/zzbaa;

    const/4 v5, 0x0

    if-nez v4, :cond_0

    invoke-static {v3}, Lcom/google/android/libraries/places/internal/zzbsf;->zzE(Lcom/google/android/libraries/places/internal/zzbsf;)Ljavax/net/SocketFactory;

    move-result-object v4

    invoke-static {v3}, Lcom/google/android/libraries/places/internal/zzbsf;->zzz(Lcom/google/android/libraries/places/internal/zzbsf;)Ljava/net/InetSocketAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    iget-object v6, p0, Lcom/google/android/libraries/places/internal/zzbsc;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    invoke-static {v6}, Lcom/google/android/libraries/places/internal/zzbsf;->zzz(Lcom/google/android/libraries/places/internal/zzbsf;)Ljava/net/InetSocketAddress;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v6

    invoke-virtual {v4, v3, v6}, Ljavax/net/SocketFactory;->createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v3

    goto :goto_1

    :cond_0
    invoke-virtual {v4}, Lcom/google/android/libraries/places/internal/zzbaa;->zze()Ljava/net/SocketAddress;

    move-result-object v6

    instance-of v6, v6, Ljava/net/InetSocketAddress;

    if-eqz v6, :cond_7

    invoke-virtual {v4}, Lcom/google/android/libraries/places/internal/zzbaa;->zzd()Ljava/net/InetSocketAddress;

    move-result-object v6

    invoke-virtual {v4}, Lcom/google/android/libraries/places/internal/zzbaa;->zze()Ljava/net/SocketAddress;

    move-result-object v4

    iget-object v7, p0, Lcom/google/android/libraries/places/internal/zzbsc;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    iget-object v7, v7, Lcom/google/android/libraries/places/internal/zzbsf;->zza:Lcom/google/android/libraries/places/internal/zzbaa;

    invoke-virtual {v7}, Lcom/google/android/libraries/places/internal/zzbaa;->zzc()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/libraries/places/internal/zzbsc;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    iget-object v8, v8, Lcom/google/android/libraries/places/internal/zzbsf;->zza:Lcom/google/android/libraries/places/internal/zzbaa;

    invoke-virtual {v8}, Lcom/google/android/libraries/places/internal/zzbaa;->zzb()Ljava/lang/String;

    move-result-object v8

    check-cast v4, Ljava/net/InetSocketAddress;

    invoke-static {v3, v6, v4, v7, v8}, Lcom/google/android/libraries/places/internal/zzbsf;->zzA(Lcom/google/android/libraries/places/internal/zzbsf;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Ljava/lang/String;Ljava/lang/String;)Ljava/net/Socket;

    move-result-object v3

    :goto_1
    iget-object v4, p0, Lcom/google/android/libraries/places/internal/zzbsc;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    invoke-static {v4}, Lcom/google/android/libraries/places/internal/zzbsf;->zzF(Lcom/google/android/libraries/places/internal/zzbsf;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-static {v4}, Lcom/google/android/libraries/places/internal/zzbsf;->zzF(Lcom/google/android/libraries/places/internal/zzbsf;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v6

    invoke-virtual {v4}, Lcom/google/android/libraries/places/internal/zzbsf;->zzy()Ljava/lang/String;

    move-result-object v4

    iget-object v7, p0, Lcom/google/android/libraries/places/internal/zzbsc;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    invoke-virtual {v7}, Lcom/google/android/libraries/places/internal/zzbsf;->zzi()I

    move-result v7

    iget-object v8, p0, Lcom/google/android/libraries/places/internal/zzbsc;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    invoke-static {v8}, Lcom/google/android/libraries/places/internal/zzbsf;->zzu(Lcom/google/android/libraries/places/internal/zzbsf;)Lcom/google/android/libraries/places/internal/zzbsz;

    move-result-object v8

    const-string v9, "sslSocketFactory"

    invoke-static {v6, v9}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "socket"

    invoke-static {v3, v9}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "spec"

    invoke-static {v8, v9}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6, v3, v4, v7, v2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v3

    check-cast v3, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v8, v3, v1}, Lcom/google/android/libraries/places/internal/zzbsz;->zza(Ljavax/net/ssl/SSLSocket;Z)V

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbsk;->zzd()Lcom/google/android/libraries/places/internal/zzbsk;

    move-result-object v6

    invoke-virtual {v8}, Lcom/google/android/libraries/places/internal/zzbsz;->zzb()Z

    move-result v7

    if-eqz v7, :cond_1

    sget-object v5, Lcom/google/android/libraries/places/internal/zzbsm;->zza:Ljava/util/List;

    :cond_1
    invoke-virtual {v6, v3, v4, v5}, Lcom/google/android/libraries/places/internal/zzbsk;->zzb(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/google/android/libraries/places/internal/zzbsm;->zza:Ljava/util/List;

    invoke-static {v5}, Lcom/google/android/libraries/places/internal/zzbtm;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbtm;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Only "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " are supported, but negotiated protocol is %s"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6, v5}, Lcom/google/android/libraries/places/internal/zzmt;->zzr(ZLjava/lang/String;Ljava/lang/Object;)V

    sget-object v5, Lcom/google/android/libraries/places/internal/zzbte;->zza:Lcom/google/android/libraries/places/internal/zzbte;

    const-string v6, "["

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "]"

    invoke-virtual {v4, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_2
    move-object v6, v4

    :goto_2
    invoke-virtual {v3}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v3}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v5

    goto :goto_3

    :cond_3
    new-instance v3, Ljavax/net/ssl/SSLPeerUnverifiedException;

    const-string v5, "Cannot verify hostname: "

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_4
    :goto_3
    invoke-virtual {v3, v2}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    invoke-static {v3}, Lcom/google/android/libraries/places/internal/zzbwh;->zzd(Ljava/net/Socket;)Lcom/google/android/libraries/places/internal/zzbws;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/libraries/places/internal/zzbwh;->zzb(Lcom/google/android/libraries/places/internal/zzbws;)Lcom/google/android/libraries/places/internal/zzbwd;

    move-result-object v0

    iget-object v4, p0, Lcom/google/android/libraries/places/internal/zzbsc;->zzb:Lcom/google/android/libraries/places/internal/zzbri;

    invoke-static {v3}, Lcom/google/android/libraries/places/internal/zzbwh;->zzc(Ljava/net/Socket;)Lcom/google/android/libraries/places/internal/zzbwq;

    move-result-object v6

    invoke-virtual {v4, v6, v3}, Lcom/google/android/libraries/places/internal/zzbri;->zzm(Lcom/google/android/libraries/places/internal/zzbwq;Ljava/net/Socket;)V

    iget-object v4, p0, Lcom/google/android/libraries/places/internal/zzbsc;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    invoke-static {v4}, Lcom/google/android/libraries/places/internal/zzbsf;->zzk(Lcom/google/android/libraries/places/internal/zzbsf;)Lcom/google/android/libraries/places/internal/zzaye;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/libraries/places/internal/zzaye;->zzb()Lcom/google/android/libraries/places/internal/zzayb;

    move-result-object v6

    sget-object v7, Lcom/google/android/libraries/places/internal/zzazw;->zza:Lcom/google/android/libraries/places/internal/zzayc;

    invoke-virtual {v3}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/google/android/libraries/places/internal/zzayb;->zzb(Lcom/google/android/libraries/places/internal/zzayc;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzayb;

    sget-object v7, Lcom/google/android/libraries/places/internal/zzazw;->zzb:Lcom/google/android/libraries/places/internal/zzayc;

    invoke-virtual {v3}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/google/android/libraries/places/internal/zzayb;->zzb(Lcom/google/android/libraries/places/internal/zzayc;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzayb;

    sget-object v7, Lcom/google/android/libraries/places/internal/zzazw;->zzc:Lcom/google/android/libraries/places/internal/zzayc;

    invoke-virtual {v6, v7, v5}, Lcom/google/android/libraries/places/internal/zzayb;->zzb(Lcom/google/android/libraries/places/internal/zzayc;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzayb;

    sget-object v7, Lcom/google/android/libraries/places/internal/zzbit;->zza:Lcom/google/android/libraries/places/internal/zzayc;

    if-nez v5, :cond_5

    sget-object v8, Lcom/google/android/libraries/places/internal/zzbdf;->zza:Lcom/google/android/libraries/places/internal/zzbdf;

    goto :goto_4

    :catchall_0
    move-exception v1

    goto/16 :goto_a

    :catch_1
    move-exception v1

    goto/16 :goto_7

    :catch_2
    move-exception v3

    goto/16 :goto_8

    :cond_5
    sget-object v8, Lcom/google/android/libraries/places/internal/zzbdf;->zzc:Lcom/google/android/libraries/places/internal/zzbdf;

    :goto_4
    invoke-virtual {v6, v7, v8}, Lcom/google/android/libraries/places/internal/zzayb;->zzb(Lcom/google/android/libraries/places/internal/zzayc;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzayb;

    invoke-virtual {v6}, Lcom/google/android/libraries/places/internal/zzayb;->zzc()Lcom/google/android/libraries/places/internal/zzaye;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/google/android/libraries/places/internal/zzbsf;->zzG(Lcom/google/android/libraries/places/internal/zzbsf;Lcom/google/android/libraries/places/internal/zzaye;)V
    :try_end_1
    .catch Lcom/google/android/libraries/places/internal/zzbdp; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbsc;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    new-instance v4, Lcom/google/android/libraries/places/internal/zzbse;

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzbsf;->zzv(Lcom/google/android/libraries/places/internal/zzbsf;)Lcom/google/android/libraries/places/internal/zzbuf;

    move-result-object v6

    invoke-interface {v6, v0, v2}, Lcom/google/android/libraries/places/internal/zzbuf;->zzc(Lcom/google/android/libraries/places/internal/zzbwd;Z)Lcom/google/android/libraries/places/internal/zzbtr;

    move-result-object v0

    invoke-direct {v4, v1, v0}, Lcom/google/android/libraries/places/internal/zzbse;-><init>(Lcom/google/android/libraries/places/internal/zzbsf;Lcom/google/android/libraries/places/internal/zzbtr;)V

    invoke-static {v1, v4}, Lcom/google/android/libraries/places/internal/zzbsf;->zzH(Lcom/google/android/libraries/places/internal/zzbsf;Lcom/google/android/libraries/places/internal/zzbse;)V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbsc;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbsf;->zzw(Lcom/google/android/libraries/places/internal/zzbsf;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_2
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbsc;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    const-string v2, "socket"

    invoke-static {v3, v2}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/android/libraries/places/internal/zzbsf;->zzM(Lcom/google/android/libraries/places/internal/zzbsf;Ljava/net/Socket;)V

    if-eqz v5, :cond_6

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbsc;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    new-instance v2, Lcom/google/android/libraries/places/internal/zzbaf;

    new-instance v3, Lcom/google/android/libraries/places/internal/zzbag;

    invoke-direct {v3, v5}, Lcom/google/android/libraries/places/internal/zzbag;-><init>(Ljavax/net/ssl/SSLSession;)V

    invoke-direct {v2, v3}, Lcom/google/android/libraries/places/internal/zzbaf;-><init>(Lcom/google/android/libraries/places/internal/zzbag;)V

    invoke-static {v0, v2}, Lcom/google/android/libraries/places/internal/zzbsf;->zzL(Lcom/google/android/libraries/places/internal/zzbsf;Lcom/google/android/libraries/places/internal/zzbaf;)V

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_6

    :cond_6
    :goto_5
    monitor-exit v1

    return-void

    :goto_6
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_7
    :try_start_3
    sget-object v3, Lcom/google/android/libraries/places/internal/zzbdo;->zzo:Lcom/google/android/libraries/places/internal/zzbdo;

    iget-object v4, p0, Lcom/google/android/libraries/places/internal/zzbsc;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    iget-object v4, v4, Lcom/google/android/libraries/places/internal/zzbsf;->zza:Lcom/google/android/libraries/places/internal/zzbaa;

    invoke-virtual {v4}, Lcom/google/android/libraries/places/internal/zzbaa;->zze()Ljava/net/SocketAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unsupported SocketAddress implementation "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object v3

    new-instance v4, Lcom/google/android/libraries/places/internal/zzbdp;

    invoke-direct {v4, v3, v5}, Lcom/google/android/libraries/places/internal/zzbdp;-><init>(Lcom/google/android/libraries/places/internal/zzbdo;Lcom/google/android/libraries/places/internal/zzbcf;)V

    throw v4
    :try_end_3
    .catch Lcom/google/android/libraries/places/internal/zzbdp; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_7
    :try_start_4
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbsc;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    invoke-virtual {v3, v1}, Lcom/google/android/libraries/places/internal/zzbsf;->zzb(Ljava/lang/Throwable;)V

    goto :goto_9

    :goto_8
    iget-object v4, p0, Lcom/google/android/libraries/places/internal/zzbsc;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    sget-object v5, Lcom/google/android/libraries/places/internal/zzbtp;->zzg:Lcom/google/android/libraries/places/internal/zzbtp;

    invoke-virtual {v3}, Lcom/google/android/libraries/places/internal/zzbdp;->zza()Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object v3

    invoke-static {v4, v1, v5, v3}, Lcom/google/android/libraries/places/internal/zzbsf;->zzO(Lcom/google/android/libraries/places/internal/zzbsf;ILcom/google/android/libraries/places/internal/zzbtp;Lcom/google/android/libraries/places/internal/zzbdo;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_9
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbsc;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    new-instance v3, Lcom/google/android/libraries/places/internal/zzbse;

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzbsf;->zzv(Lcom/google/android/libraries/places/internal/zzbsf;)Lcom/google/android/libraries/places/internal/zzbuf;

    move-result-object v4

    invoke-interface {v4, v0, v2}, Lcom/google/android/libraries/places/internal/zzbuf;->zzc(Lcom/google/android/libraries/places/internal/zzbwd;Z)Lcom/google/android/libraries/places/internal/zzbtr;

    move-result-object v0

    invoke-direct {v3, v1, v0}, Lcom/google/android/libraries/places/internal/zzbse;-><init>(Lcom/google/android/libraries/places/internal/zzbsf;Lcom/google/android/libraries/places/internal/zzbtr;)V

    invoke-static {v1, v3}, Lcom/google/android/libraries/places/internal/zzbsf;->zzH(Lcom/google/android/libraries/places/internal/zzbsf;Lcom/google/android/libraries/places/internal/zzbse;)V

    return-void

    :goto_a
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbsc;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    new-instance v4, Lcom/google/android/libraries/places/internal/zzbse;

    invoke-static {v3}, Lcom/google/android/libraries/places/internal/zzbsf;->zzv(Lcom/google/android/libraries/places/internal/zzbsf;)Lcom/google/android/libraries/places/internal/zzbuf;

    move-result-object v5

    invoke-interface {v5, v0, v2}, Lcom/google/android/libraries/places/internal/zzbuf;->zzc(Lcom/google/android/libraries/places/internal/zzbwd;Z)Lcom/google/android/libraries/places/internal/zzbtr;

    move-result-object v0

    invoke-direct {v4, v3, v0}, Lcom/google/android/libraries/places/internal/zzbse;-><init>(Lcom/google/android/libraries/places/internal/zzbsf;Lcom/google/android/libraries/places/internal/zzbtr;)V

    invoke-static {v3, v4}, Lcom/google/android/libraries/places/internal/zzbsf;->zzH(Lcom/google/android/libraries/places/internal/zzbsf;Lcom/google/android/libraries/places/internal/zzbse;)V

    throw v1
.end method
