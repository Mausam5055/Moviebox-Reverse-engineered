.class public Lsk/b;
.super Lrk/a;


# instance fields
.field private a:Ljavax/crypto/Cipher;

.field private b:Ljavax/crypto/Cipher;

.field private c:Ljavax/crypto/spec/SecretKeySpec;

.field private d:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lrk/a;-><init>()V

    return-void
.end method

.method private g()V
    .locals 4

    iget-object v0, p0, Lsk/b;->c:Ljavax/crypto/spec/SecretKeySpec;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lsk/b;->d:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Lsk/b;->a:Ljavax/crypto/Cipher;

    if-nez v0, :cond_0

    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    iget-object v1, p0, Lsk/b;->d:[B

    invoke-direct {v0, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const-string v1, "AES/CBC/PKCS5Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v2, 0x2

    iget-object v3, p0, Lsk/b;->c:Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v1, v2, v3, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    iput-object v1, p0, Lsk/b;->a:Ljavax/crypto/Cipher;

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "please call encrypt method first"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private h()V
    .locals 4

    iget-object v0, p0, Lsk/b;->b:Ljavax/crypto/Cipher;

    if-nez v0, :cond_0

    const-string v0, "AES"

    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v1

    const/16 v2, 0x100

    invoke-virtual {v1, v2}, Ljavax/crypto/KeyGenerator;->init(I)V

    invoke-virtual {v1}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v1

    const-string v2, "AES/CBC/PKCS5Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    invoke-interface {v1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v1

    invoke-direct {v3, v1, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v3, p0, Lsk/b;->c:Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v2}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v0

    iput-object v0, p0, Lsk/b;->d:[B

    iput-object v2, p0, Lsk/b;->b:Ljavax/crypto/Cipher;

    :cond_0
    return-void
.end method


# virtual methods
.method public d([B)[B
    .locals 1

    invoke-direct {p0}, Lsk/b;->g()V

    iget-object v0, p0, Lsk/b;->a:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/lang/String;)[B
    .locals 1

    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lsk/b;->f([B)[B

    move-result-object p1

    return-object p1
.end method

.method public f([B)[B
    .locals 1

    invoke-direct {p0}, Lsk/b;->h()V

    iget-object v0, p0, Lsk/b;->b:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    return-object p1
.end method

.method public i()[B
    .locals 6

    iget-object v0, p0, Lsk/b;->d:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Lsk/b;->c:Ljavax/crypto/spec/SecretKeySpec;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljavax/crypto/spec/SecretKeySpec;->getEncoded()[B

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lsk/b;->c:Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v0}, Ljavax/crypto/spec/SecretKeySpec;->getEncoded()[B

    move-result-object v0

    iget-object v1, p0, Lsk/b;->d:[B

    array-length v2, v0

    const/16 v3, 0x20

    if-ne v2, v3, :cond_0

    array-length v2, v1

    const/16 v4, 0x10

    if-ne v2, v4, :cond_0

    const/16 v2, 0x30

    new-array v2, v2, [B

    const/4 v5, 0x0

    invoke-static {v0, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v1, v5, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2

    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "key length is not valid"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "no valid key info"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method
