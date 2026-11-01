.class public Lcom/cicada/player/utils/media/EncryptionInfo;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/cicada/player/utils/NativeUsed;
.end annotation


# instance fields
.field public crypt_byte_block:I

.field public iv:[B

.field public key_id:[B

.field public scheme:Ljava/lang/String;

.field public skip_byte_block:I

.field public subsamples:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cicada/player/utils/media/SubsampleEncryptionInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/cicada/player/utils/media/EncryptionInfo;->crypt_byte_block:I

    iput v0, p0, Lcom/cicada/player/utils/media/EncryptionInfo;->skip_byte_block:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cicada/player/utils/media/EncryptionInfo;->key_id:[B

    iput-object v0, p0, Lcom/cicada/player/utils/media/EncryptionInfo;->iv:[B

    iput-object v0, p0, Lcom/cicada/player/utils/media/EncryptionInfo;->subsamples:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public setIv([B)V
    .locals 0

    iput-object p1, p0, Lcom/cicada/player/utils/media/EncryptionInfo;->iv:[B

    return-void
.end method

.method public setKeyId([B)V
    .locals 0

    iput-object p1, p0, Lcom/cicada/player/utils/media/EncryptionInfo;->key_id:[B

    return-void
.end method

.method public setScheme(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cicada/player/utils/media/EncryptionInfo;->scheme:Ljava/lang/String;

    return-void
.end method

.method public setSubsamples(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/cicada/player/utils/media/EncryptionInfo;->subsamples:Ljava/util/List;

    return-void
.end method
