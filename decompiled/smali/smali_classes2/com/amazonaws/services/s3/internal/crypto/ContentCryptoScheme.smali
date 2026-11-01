.class abstract Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;
.super Ljava/lang/Object;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final a:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

.field static final b:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

.field static final c:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amazonaws/services/s3/internal/crypto/AesCbc;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/internal/crypto/AesCbc;-><init>()V

    sput-object v0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->a:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    new-instance v0, Lcom/amazonaws/services/s3/internal/crypto/AesGcm;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/internal/crypto/AesGcm;-><init>()V

    sput-object v0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->b:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    new-instance v0, Lcom/amazonaws/services/s3/internal/crypto/AesCtr;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/internal/crypto/AesCtr;-><init>()V

    sput-object v0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->c:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract a()I
.end method

.method abstract b()Ljava/lang/String;
.end method

.method abstract c()I
.end method

.method abstract d()Ljava/lang/String;
.end method

.method abstract e()I
.end method

.method f()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method g()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cipherAlgo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", blockSizeInBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ivLengthInBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", keyGenAlgo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", keyLengthInBits="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", specificProvider="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tagLengthInBits="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
