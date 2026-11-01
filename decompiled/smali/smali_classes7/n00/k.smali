.class public abstract Ln00/k;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln00/k$b;
    }
.end annotation


# static fields
.field public static a:Ln00/k$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ln00/k$b;

    invoke-direct {v0}, Ln00/k$b;-><init>()V

    sput-object v0, Ln00/k;->a:Ln00/k$b;

    return-void
.end method

.method public static a()Ljavax/net/ssl/SSLContext;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "TLS"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v2, Ln00/k$a;

    invoke-direct {v2}, Ln00/k$a;-><init>()V

    const/4 v3, 0x1

    new-array v3, v3, [Ljavax/net/ssl/TrustManager;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v0, v3, v2}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-object v0, v1

    :catch_1
    move-object v1, v0

    :goto_0
    return-object v1
.end method
