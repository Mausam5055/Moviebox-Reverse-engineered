.class public Lcom/cicada/player/utils/media/SubsampleEncryptionInfo;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/cicada/player/utils/NativeUsed;
.end annotation


# instance fields
.field public bytes_of_clear_data:I

.field public bytes_of_protected_data:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/cicada/player/utils/media/SubsampleEncryptionInfo;->bytes_of_clear_data:I

    iput v0, p0, Lcom/cicada/player/utils/media/SubsampleEncryptionInfo;->bytes_of_protected_data:I

    return-void
.end method
