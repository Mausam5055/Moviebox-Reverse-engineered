.class abstract Lcom/amazonaws/services/s3/internal/crypto/CryptoRuntime$AesGcm;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/internal/crypto/CryptoRuntime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AesGcm"
.end annotation


# direct methods
.method static synthetic a(Ljava/security/Provider;)Z
    .locals 0

    invoke-static {p0}, Lcom/amazonaws/services/s3/internal/crypto/CryptoRuntime$AesGcm;->b(Ljava/security/Provider;)Z

    move-result p0

    return p0
.end method

.method private static b(Ljava/security/Provider;)Z
    .locals 1

    :try_start_0
    sget-object v0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->b:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method
