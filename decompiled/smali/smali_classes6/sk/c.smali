.class public Lsk/c;
.super Lrk/a;


# instance fields
.field private a:Ljavax/crypto/Cipher;

.field private final b:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lrk/a;-><init>()V

    invoke-virtual {p0, p1}, Lrk/a;->b(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lsk/c;->b:[B

    return-void
.end method

.method private e()V
    .locals 3

    iget-object v0, p0, Lsk/c;->a:Ljavax/crypto/Cipher;

    if-nez v0, :cond_0

    new-instance v0, Ljava/security/spec/X509EncodedKeySpec;

    iget-object v1, p0, Lsk/c;->b:[B

    invoke-direct {v0, v1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    const-string v1, "RSA"

    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    const-string v1, "RSA/ECB/PKCS1Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    iput-object v1, p0, Lsk/c;->a:Ljavax/crypto/Cipher;

    :cond_0
    return-void
.end method

.method private f([B[B)Z
    .locals 2

    new-instance v0, Ljava/security/spec/X509EncodedKeySpec;

    iget-object v1, p0, Lsk/c;->b:[B

    invoke-direct {v0, v1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    const-string v1, "RSA"

    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    const-string v1, "MD5withRSA"

    invoke-static {v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    invoke-virtual {v1, p1}, Ljava/security/Signature;->update([B)V

    invoke-virtual {v1, p2}, Ljava/security/Signature;->verify([B)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public d([B)[B
    .locals 1

    invoke-direct {p0}, Lsk/c;->e()V

    iget-object v0, p0, Lsk/c;->a:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    return-object p1
.end method

.method public g([B[B)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lsk/c;->f([B[B)Z

    move-result p1

    return p1
.end method
