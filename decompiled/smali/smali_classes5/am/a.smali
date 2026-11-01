.class public Lam/a;
.super Ljava/lang/Object;


# static fields
.field protected static a:Ljavax/net/ssl/HostnameVerifier;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    sget-object v0, Lam/a;->a:Ljavax/net/ssl/HostnameVerifier;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    sget-object v0, Lam/a;->a:Ljavax/net/ssl/HostnameVerifier;

    if-nez v0, :cond_0

    new-instance v0, Lam/a$a;

    invoke-direct {v0, p0}, Lam/a$a;-><init>(Lam/a;)V

    sput-object v0, Lam/a;->a:Ljavax/net/ssl/HostnameVerifier;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_2
    sget-object v0, Lam/a;->a:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method
