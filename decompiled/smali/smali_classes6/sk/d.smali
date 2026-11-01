.class public Lsk/d;
.super Lrk/a;


# instance fields
.field private a:Ljavax/crypto/Cipher;

.field private b:Ljavax/crypto/Cipher;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lrk/a;-><init>()V

    invoke-static {}, Lsk/e;->b()Lsk/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lsk/e;->a(Landroid/content/Context;)Z

    return-void
.end method

.method private f()V
    .locals 3

    invoke-static {}, Lsk/d;->h()Ljava/security/PrivateKey;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lsk/d;->a:Ljavax/crypto/Cipher;

    if-nez v0, :cond_0

    const-string v0, "RSA/ECB/PKCS1Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {}, Lsk/d;->h()Ljava/security/PrivateKey;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    iput-object v0, p0, Lsk/d;->a:Ljavax/crypto/Cipher;

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "key not created, please try later"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private g()V
    .locals 3

    invoke-static {}, Lsk/d;->i()Ljava/security/PublicKey;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lsk/d;->b:Ljavax/crypto/Cipher;

    if-nez v0, :cond_0

    const-string v0, "RSA/ECB/PKCS1Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {}, Lsk/d;->i()Ljava/security/PublicKey;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    iput-object v0, p0, Lsk/d;->b:Ljavax/crypto/Cipher;

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "key not created, please try later"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static h()Ljava/security/PrivateKey;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "AndroidKeyStore"

    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    const-string v2, "crypto"

    invoke-virtual {v1, v2, v0}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v1

    check-cast v1, Ljava/security/PrivateKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    return-object v0
.end method

.method private static i()Ljava/security/PublicKey;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "AndroidKeyStore"

    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    const-string v2, "crypto"

    invoke-virtual {v1, v2}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method


# virtual methods
.method public d([B)[B
    .locals 1

    invoke-direct {p0}, Lsk/d;->f()V

    iget-object v0, p0, Lsk/d;->a:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    return-object p1
.end method

.method public e([B)[B
    .locals 1

    invoke-direct {p0}, Lsk/d;->g()V

    iget-object v0, p0, Lsk/d;->b:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    return-object p1
.end method
