.class Lcom/amazonaws/services/s3/internal/crypto/AesCbc;
.super Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;-><init>()V

    return-void
.end method


# virtual methods
.method a()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method b()Ljava/lang/String;
    .locals 1

    const-string v0, "AES/CBC/PKCS5Padding"

    return-object v0
.end method

.method c()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method d()Ljava/lang/String;
    .locals 1

    const-string v0, "AES"

    return-object v0
.end method

.method e()I
    .locals 1

    const/16 v0, 0x100

    return v0
.end method
