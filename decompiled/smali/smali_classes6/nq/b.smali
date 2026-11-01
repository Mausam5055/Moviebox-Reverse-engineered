.class public Lnq/b;
.super Ln00/a;


# instance fields
.field private a:Ljavax/crypto/Cipher;

.field private b:Ljavax/crypto/Cipher;

.field private c:Ljava/security/Key;

.field private d:Ljava/security/Key;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ln00/a;-><init>()V

    return-void
.end method

.method private g()V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lnq/b;->i()V

    iget-object v0, p0, Lnq/b;->a:Ljavax/crypto/Cipher;

    if-nez v0, :cond_0

    const-string v0, "RSA/ECB/PKCS1Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iget-object v1, p0, Lnq/b;->c:Ljava/security/Key;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    iput-object v0, p0, Lnq/b;->a:Ljavax/crypto/Cipher;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "NoClassDefFound..."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private h()V
    .locals 3

    invoke-direct {p0}, Lnq/b;->i()V

    iget-object v0, p0, Lnq/b;->b:Ljavax/crypto/Cipher;

    if-nez v0, :cond_0

    const-string v0, "RSA/ECB/PKCS1Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iget-object v1, p0, Lnq/b;->d:Ljava/security/Key;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    iput-object v0, p0, Lnq/b;->b:Ljavax/crypto/Cipher;

    :cond_0
    return-void
.end method

.method private i()V
    .locals 5

    iget-object v0, p0, Lnq/b;->c:Ljava/security/Key;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnq/b;->d:Ljava/security/Key;

    if-nez v0, :cond_2

    :cond_0
    const-string v0, "AndroidKeyStore"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    const-string v4, "crypto"

    if-lt v2, v3, :cond_1

    invoke-virtual {v0, v4, v1}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v1

    iput-object v1, p0, Lnq/b;->c:Ljava/security/Key;

    invoke-virtual {v0, v4}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    iput-object v0, p0, Lnq/b;->d:Ljava/security/Key;

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v4, v1}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v0

    check-cast v0, Ljava/security/KeyStore$PrivateKeyEntry;

    invoke-virtual {v0}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v1

    iput-object v1, p0, Lnq/b;->c:Ljava/security/Key;

    invoke-virtual {v0}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    iput-object v0, p0, Lnq/b;->d:Ljava/security/Key;

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public d([B)[B
    .locals 1

    invoke-direct {p0}, Lnq/b;->g()V

    iget-object v0, p0, Lnq/b;->a:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/lang/String;)[B
    .locals 1

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lnq/b;->f([B)[B

    move-result-object p1

    return-object p1
.end method

.method public f([B)[B
    .locals 1

    invoke-direct {p0}, Lnq/b;->h()V

    iget-object v0, p0, Lnq/b;->b:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    return-object p1
.end method
