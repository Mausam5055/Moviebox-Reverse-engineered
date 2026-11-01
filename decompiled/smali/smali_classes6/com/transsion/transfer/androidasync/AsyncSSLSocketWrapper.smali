.class public Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/transfer/androidasync/j;
.implements Lcom/transsion/transfer/androidasync/p;
.implements Lcom/transsion/transfer/androidasync/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper$g;
    }
.end annotation


# static fields
.field static v:Ljavax/net/ssl/SSLContext;

.field static w:Ljavax/net/ssl/SSLContext;

.field static x:[Ljavax/net/ssl/TrustManager;

.field static y:Ljavax/net/ssl/HostnameVerifier;


# instance fields
.field a:Lcom/transsion/transfer/androidasync/j;

.field b:Lcom/transsion/transfer/androidasync/n;

.field c:Z

.field d:Ljavax/net/ssl/SSLEngine;

.field e:Z

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Z

.field i:Ljavax/net/ssl/HostnameVerifier;

.field j:Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper$g;

.field k:[Ljava/security/cert/X509Certificate;

.field l:Lbv/j;

.field m:Lbv/d;

.field n:[Ljavax/net/ssl/TrustManager;

.field o:Z

.field p:Z

.field q:Ljava/lang/Exception;

.field final r:Lcom/transsion/transfer/androidasync/ByteBufferList;

.field final s:Lbv/d;

.field t:Lcom/transsion/transfer/androidasync/ByteBufferList;

.field u:Lbv/a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "TLS"

    const/4 v3, 0x0

    :try_start_0
    const-string v4, "Default"

    invoke-static {v4}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v4

    sput-object v4, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->v:Ljavax/net/ssl/SSLContext;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    :try_start_1
    invoke-static {v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v5

    sput-object v5, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->v:Ljavax/net/ssl/SSLContext;

    new-instance v5, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper$a;

    invoke-direct {v5}, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper$a;-><init>()V

    new-array v6, v1, [Ljavax/net/ssl/TrustManager;

    aput-object v5, v6, v0

    sget-object v5, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->v:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v5, v3, v6, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v5

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    :try_start_2
    invoke-static {v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v2

    sput-object v2, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->w:Ljavax/net/ssl/SSLContext;

    new-instance v2, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper$b;

    invoke-direct {v2}, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper$b;-><init>()V

    new-array v1, v1, [Ljavax/net/ssl/TrustManager;

    aput-object v2, v1, v0

    sput-object v1, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->x:[Ljavax/net/ssl/TrustManager;

    sget-object v0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->w:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0, v3, v1, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    new-instance v0, Lcom/transsion/transfer/androidasync/b;

    invoke-direct {v0}, Lcom/transsion/transfer/androidasync/b;-><init>()V

    sput-object v0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->y:Ljavax/net/ssl/HostnameVerifier;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private constructor <init>(Lcom/transsion/transfer/androidasync/j;Ljava/lang/String;ILjavax/net/ssl/SSLEngine;[Ljavax/net/ssl/TrustManager;Ljavax/net/ssl/HostnameVerifier;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/transsion/transfer/androidasync/ByteBufferList;

    invoke-direct {v0}, Lcom/transsion/transfer/androidasync/ByteBufferList;-><init>()V

    iput-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->r:Lcom/transsion/transfer/androidasync/ByteBufferList;

    new-instance v0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper$f;

    invoke-direct {v0, p0}, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper$f;-><init>(Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;)V

    iput-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->s:Lbv/d;

    new-instance v1, Lcom/transsion/transfer/androidasync/ByteBufferList;

    invoke-direct {v1}, Lcom/transsion/transfer/androidasync/ByteBufferList;-><init>()V

    iput-object v1, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->t:Lcom/transsion/transfer/androidasync/ByteBufferList;

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->a:Lcom/transsion/transfer/androidasync/j;

    iput-object p6, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->i:Ljavax/net/ssl/HostnameVerifier;

    iput-boolean p7, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->o:Z

    iput-object p5, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->n:[Ljavax/net/ssl/TrustManager;

    iput-object p4, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->d:Ljavax/net/ssl/SSLEngine;

    iput-object p2, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->g:Ljava/lang/String;

    iput p3, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->f:I

    invoke-virtual {p4, p7}, Ljavax/net/ssl/SSLEngine;->setUseClientMode(Z)V

    new-instance p2, Lcom/transsion/transfer/androidasync/n;

    invoke-direct {p2, p1}, Lcom/transsion/transfer/androidasync/n;-><init>(Lcom/transsion/transfer/androidasync/s;)V

    iput-object p2, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->b:Lcom/transsion/transfer/androidasync/n;

    new-instance p1, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper$d;

    invoke-direct {p1, p0}, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper$d;-><init>(Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;)V

    invoke-virtual {p2, p1}, Lcom/transsion/transfer/androidasync/n;->o(Lbv/j;)V

    iget-object p1, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->a:Lcom/transsion/transfer/androidasync/j;

    new-instance p2, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper$e;

    invoke-direct {p2, p0}, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper$e;-><init>(Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;)V

    invoke-interface {p1, p2}, Lcom/transsion/transfer/androidasync/p;->s(Lbv/a;)V

    iget-object p1, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->a:Lcom/transsion/transfer/androidasync/j;

    invoke-interface {p1, v0}, Lcom/transsion/transfer/androidasync/p;->t(Lbv/d;)V

    return-void
.end method

.method private F(Ljava/lang/Exception;)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->j:Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper$g;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->j:Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper$g;

    iget-object v2, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->a:Lcom/transsion/transfer/androidasync/j;

    new-instance v3, Lbv/d$a;

    invoke-direct {v3}, Lbv/d$a;-><init>()V

    invoke-interface {v2, v3}, Lcom/transsion/transfer/androidasync/p;->t(Lbv/d;)V

    iget-object v2, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->a:Lcom/transsion/transfer/androidasync/j;

    invoke-interface {v2}, Lcom/transsion/transfer/androidasync/s;->d()V

    iget-object v2, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->a:Lcom/transsion/transfer/androidasync/j;

    invoke-interface {v2, v1}, Lcom/transsion/transfer/androidasync/s;->p(Lbv/a;)V

    iget-object v2, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->a:Lcom/transsion/transfer/androidasync/j;

    invoke-interface {v2}, Lcom/transsion/transfer/androidasync/p;->close()V

    invoke-interface {v0, p1, v1}, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper$g;->a(Ljava/lang/Exception;Lcom/transsion/transfer/androidasync/a;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->r()Lbv/a;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lbv/a;->g(Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method

.method public static synthetic f(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->y(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic g(Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->u(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)V

    return-void
.end method

.method static bridge synthetic j(Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->F(Ljava/lang/Exception;)V

    return-void
.end method

.method public static q()Ljavax/net/ssl/SSLContext;
    .locals 1

    sget-object v0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->v:Ljavax/net/ssl/SSLContext;

    return-object v0
.end method

.method private u(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)V
    .locals 6

    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_TASK:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->d:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getDelegatedTask()Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->t:Lcom/transsion/transfer/androidasync/ByteBufferList;

    invoke-virtual {p0, v0}, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->l(Lcom/transsion/transfer/androidasync/ByteBufferList;)V

    :cond_1
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->s:Lbv/d;

    new-instance v0, Lcom/transsion/transfer/androidasync/ByteBufferList;

    invoke-direct {v0}, Lcom/transsion/transfer/androidasync/ByteBufferList;-><init>()V

    invoke-interface {p1, p0, v0}, Lbv/d;->F(Lcom/transsion/transfer/androidasync/p;Lcom/transsion/transfer/androidasync/ByteBufferList;)V

    :cond_2
    :try_start_0
    iget-boolean p1, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->e:Z

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->d:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object p1

    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-eq p1, v0, :cond_3

    iget-object p1, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->d:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object p1

    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne p1, v0, :cond_a

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_4

    :cond_3
    :goto_0
    iget-boolean p1, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->o:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_8

    const/4 p1, 0x0

    :try_start_1
    iget-object v2, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->d:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v2

    invoke-interface {v2}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v2

    check-cast v2, [Ljava/security/cert/X509Certificate;

    iput-object v2, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->k:[Ljava/security/cert/X509Certificate;

    iget-object v2, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->g:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v3, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->i:Ljavax/net/ssl/HostnameVerifier;

    if-nez v3, :cond_4

    new-instance v2, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;

    invoke-direct {v2}, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;-><init>()V

    iget-object v3, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->g:Ljava/lang/String;

    iget-object v4, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->k:[Ljava/security/cert/X509Certificate;

    aget-object v4, v4, p1

    invoke-static {v4}, Lorg/apache/http/conn/ssl/AbstractVerifier;->getCNs(Ljava/security/cert/X509Certificate;)[Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->k:[Ljava/security/cert/X509Certificate;

    aget-object v5, v5, p1

    invoke-static {v5}, Lorg/apache/http/conn/ssl/AbstractVerifier;->getDNSSubjectAlts(Ljava/security/cert/X509Certificate;)[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;->verify(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v2

    goto :goto_2

    :cond_4
    iget-object v4, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->d:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_1

    :cond_5
    new-instance v2, Ljavax/net/ssl/SSLException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hostname <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->g:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "> has been denied"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_6
    :goto_1
    move p1, v0

    move-object v2, v1

    :goto_2
    :try_start_2
    iput-boolean v0, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->e:Z

    if-nez p1, :cond_9

    new-instance p1, Lcom/transsion/transfer/androidasync/AsyncSSLException;

    invoke-direct {p1, v2}, Lcom/transsion/transfer/androidasync/AsyncSSLException;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {p0, p1}, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->F(Ljava/lang/Exception;)V

    invoke-virtual {p1}, Lcom/transsion/transfer/androidasync/AsyncSSLException;->getIgnore()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_3

    :cond_7
    throw p1

    :cond_8
    iput-boolean v0, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->e:Z

    :cond_9
    :goto_3
    iget-object p1, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->j:Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper$g;

    invoke-interface {p1, v1, p0}, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper$g;->a(Ljava/lang/Exception;Lcom/transsion/transfer/androidasync/a;)V

    iput-object v1, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->j:Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper$g;

    iget-object p1, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->a:Lcom/transsion/transfer/androidasync/j;

    invoke-interface {p1, v1}, Lcom/transsion/transfer/androidasync/s;->p(Lbv/a;)V

    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->a()Lcom/transsion/transfer/androidasync/AsyncServer;

    move-result-object p1

    new-instance v0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper$7;

    invoke-direct {v0, p0}, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper$7;-><init>(Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;)V

    invoke-virtual {p1, v0}, Lcom/transsion/transfer/androidasync/AsyncServer;->D(Ljava/lang/Runnable;)Lcom/transsion/transfer/androidasync/future/a;

    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->C()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    :goto_4
    invoke-direct {p0, p1}, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->F(Ljava/lang/Exception;)V

    :cond_a
    :goto_5
    return-void
.end method

.method public static w(Lcom/transsion/transfer/androidasync/j;Ljava/lang/String;ILjavax/net/ssl/SSLEngine;[Ljavax/net/ssl/TrustManager;Ljavax/net/ssl/HostnameVerifier;ZLcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper$g;)V
    .locals 10

    move-object/from16 v0, p7

    new-instance v9, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;-><init>(Lcom/transsion/transfer/androidasync/j;Ljava/lang/String;ILjavax/net/ssl/SSLEngine;[Ljavax/net/ssl/TrustManager;Ljavax/net/ssl/HostnameVerifier;Z)V

    iput-object v0, v9, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->j:Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper$g;

    new-instance v1, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper$c;

    invoke-direct {v1, v0}, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper$c;-><init>(Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper$g;)V

    move-object v0, p0

    invoke-interface {p0, v1}, Lcom/transsion/transfer/androidasync/s;->p(Lbv/a;)V

    :try_start_0
    iget-object v0, v9, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->d:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->beginHandshake()V

    iget-object v0, v9, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->d:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    invoke-direct {v9, v0}, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->u(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)V
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {v9, v0}, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->F(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method private static synthetic y(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public C()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->r:Lcom/transsion/transfer/androidasync/ByteBufferList;

    invoke-static {p0, v0}, Lcom/transsion/transfer/androidasync/a0;->a(Lcom/transsion/transfer/androidasync/p;Lcom/transsion/transfer/androidasync/ByteBufferList;)V

    iget-boolean v0, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->p:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->r:Lcom/transsion/transfer/androidasync/ByteBufferList;

    invoke-virtual {v0}, Lcom/transsion/transfer/androidasync/ByteBufferList;->r()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->u:Lbv/a;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->q:Ljava/lang/Exception;

    invoke-interface {v0, v1}, Lbv/a;->g(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public I()Lbv/d;
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->m:Lbv/d;

    return-object v0
.end method

.method public a()Lcom/transsion/transfer/androidasync/AsyncServer;
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->a:Lcom/transsion/transfer/androidasync/j;

    invoke-interface {v0}, Lcom/transsion/transfer/androidasync/j;->a()Lcom/transsion/transfer/androidasync/AsyncServer;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->a:Lcom/transsion/transfer/androidasync/j;

    invoke-interface {v0}, Lcom/transsion/transfer/androidasync/p;->close()V

    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->a:Lcom/transsion/transfer/androidasync/j;

    invoke-interface {v0}, Lcom/transsion/transfer/androidasync/s;->d()V

    return-void
.end method

.method public i()Lbv/j;
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->l:Lbv/j;

    return-object v0
.end method

.method public isOpen()Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->a:Lcom/transsion/transfer/androidasync/j;

    invoke-interface {v0}, Lcom/transsion/transfer/androidasync/s;->isOpen()Z

    move-result v0

    return v0
.end method

.method public isPaused()Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->a:Lcom/transsion/transfer/androidasync/j;

    invoke-interface {v0}, Lcom/transsion/transfer/androidasync/p;->isPaused()Z

    move-result v0

    return v0
.end method

.method k(Lcom/transsion/transfer/androidasync/ByteBufferList;Ljava/nio/ByteBuffer;)V
    .locals 1

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {p2}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Lcom/transsion/transfer/androidasync/ByteBufferList;->a(Ljava/nio/ByteBuffer;)Lcom/transsion/transfer/androidasync/ByteBufferList;

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lcom/transsion/transfer/androidasync/ByteBufferList;->A(Ljava/nio/ByteBuffer;)V

    :goto_0
    return-void
.end method

.method public l(Lcom/transsion/transfer/androidasync/ByteBufferList;)V
    .locals 6

    iget-boolean v0, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->h:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->b:Lcom/transsion/transfer/androidasync/n;

    invoke-virtual {v0}, Lcom/transsion/transfer/androidasync/n;->k()I

    move-result v0

    if-lez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->h:Z

    invoke-virtual {p1}, Lcom/transsion/transfer/androidasync/ByteBufferList;->C()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->m(I)I

    move-result v0

    invoke-static {v0}, Lcom/transsion/transfer/androidasync/ByteBufferList;->t(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    :cond_2
    iget-boolean v3, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->e:Z

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Lcom/transsion/transfer/androidasync/ByteBufferList;->C()I

    move-result v3

    if-nez v3, :cond_3

    goto/16 :goto_3

    :cond_3
    invoke-virtual {p1}, Lcom/transsion/transfer/androidasync/ByteBufferList;->C()I

    move-result v3

    :try_start_0
    invoke-virtual {p1}, Lcom/transsion/transfer/androidasync/ByteBufferList;->k()[Ljava/nio/ByteBuffer;

    move-result-object v4

    iget-object v5, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->d:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v5, v4, v0}, Ljavax/net/ssl/SSLEngine;->wrap([Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v2

    invoke-virtual {p1, v4}, Lcom/transsion/transfer/androidasync/ByteBufferList;->b([Ljava/nio/ByteBuffer;)Lcom/transsion/transfer/androidasync/ByteBufferList;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object v4, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->t:Lcom/transsion/transfer/androidasync/ByteBufferList;

    invoke-virtual {v4, v0}, Lcom/transsion/transfer/androidasync/ByteBufferList;->a(Ljava/nio/ByteBuffer;)Lcom/transsion/transfer/androidasync/ByteBufferList;

    iget-object v4, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->t:Lcom/transsion/transfer/androidasync/ByteBufferList;

    invoke-virtual {v4}, Lcom/transsion/transfer/androidasync/ByteBufferList;->C()I

    move-result v4

    if-lez v4, :cond_4

    iget-object v4, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->b:Lcom/transsion/transfer/androidasync/n;

    iget-object v5, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->t:Lcom/transsion/transfer/androidasync/ByteBufferList;

    invoke-virtual {v4, v5}, Lcom/transsion/transfer/androidasync/n;->l(Lcom/transsion/transfer/androidasync/ByteBufferList;)V

    goto :goto_0

    :catch_0
    move-exception v4

    goto :goto_1

    :cond_4
    :goto_0
    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v0
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v4

    sget-object v5, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v4, v5, :cond_5

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lcom/transsion/transfer/androidasync/ByteBufferList;->t(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v3, -0x1

    goto :goto_2

    :catch_1
    move-exception v4

    move-object v0, v1

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Lcom/transsion/transfer/androidasync/ByteBufferList;->C()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->m(I)I

    move-result v0

    invoke-static {v0}, Lcom/transsion/transfer/androidasync/ByteBufferList;->t(I)Ljava/nio/ByteBuffer;

    move-result-object v0
    :try_end_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->u(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)V
    :try_end_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :goto_1
    invoke-direct {p0, v4}, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->F(Ljava/lang/Exception;)V

    :goto_2
    invoke-virtual {p1}, Lcom/transsion/transfer/androidasync/ByteBufferList;->C()I

    move-result v4

    if-ne v3, v4, :cond_6

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v3

    sget-object v4, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v3, v4, :cond_7

    :cond_6
    iget-object v3, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->b:Lcom/transsion/transfer/androidasync/n;

    invoke-virtual {v3}, Lcom/transsion/transfer/androidasync/n;->k()I

    move-result v3

    if-eqz v3, :cond_2

    :cond_7
    :goto_3
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->h:Z

    invoke-static {v0}, Lcom/transsion/transfer/androidasync/ByteBufferList;->A(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method m(I)I
    .locals 0

    mul-int/lit8 p1, p1, 0x3

    div-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_0

    const/16 p1, 0x2000

    :cond_0
    return p1
.end method

.method public o(Lbv/j;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->l:Lbv/j;

    return-void
.end method

.method public p(Lbv/a;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->a:Lcom/transsion/transfer/androidasync/j;

    invoke-interface {v0, p1}, Lcom/transsion/transfer/androidasync/s;->p(Lbv/a;)V

    return-void
.end method

.method public pause()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->a:Lcom/transsion/transfer/androidasync/j;

    invoke-interface {v0}, Lcom/transsion/transfer/androidasync/p;->pause()V

    return-void
.end method

.method public r()Lbv/a;
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->u:Lbv/a;

    return-object v0
.end method

.method public resume()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->a:Lcom/transsion/transfer/androidasync/j;

    invoke-interface {v0}, Lcom/transsion/transfer/androidasync/p;->resume()V

    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->C()V

    return-void
.end method

.method public s(Lbv/a;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->u:Lbv/a;

    return-void
.end method

.method public t(Lbv/d;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->m:Lbv/d;

    return-void
.end method

.method public v()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
