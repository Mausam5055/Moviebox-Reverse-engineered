.class public Lsk/a;
.super Lrk/a;


# instance fields
.field private a:Ljavax/crypto/Cipher;

.field private final b:[B

.field private final c:[B


# direct methods
.method public constructor <init>([B[B)V
    .locals 3

    invoke-direct {p0}, Lrk/a;-><init>()V

    iput-object p1, p0, Lsk/a;->c:[B

    iput-object p2, p0, Lsk/a;->b:[B

    array-length v0, p1

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    array-length v0, p1

    const/16 v2, 0x18

    if-eq v0, v2, :cond_1

    array-length p1, p1

    const/16 v0, 0x20

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1

    :cond_1
    :goto_0
    array-length p1, p2

    if-ne p1, v1, :cond_2

    return-void

    :cond_2
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1
.end method

.method private e()V
    .locals 4

    iget-object v0, p0, Lsk/a;->a:Ljavax/crypto/Cipher;

    if-nez v0, :cond_0

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v1, p0, Lsk/a;->c:[B

    const-string v2, "AES"

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    iget-object v2, p0, Lsk/a;->b:[B

    invoke-direct {v1, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const-string v2, "AES/CBC/PKCS5Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    iput-object v2, p0, Lsk/a;->a:Ljavax/crypto/Cipher;

    :cond_0
    return-void
.end method


# virtual methods
.method public d([B)[B
    .locals 1

    invoke-direct {p0}, Lsk/a;->e()V

    iget-object v0, p0, Lsk/a;->a:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    return-object p1
.end method
