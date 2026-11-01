.class public Lcom/mbridge/msdk/playercommon/exoplayer2/drm/DecryptionException;
.super Ljava/lang/Exception;


# instance fields
.field public final errorCode:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/drm/DecryptionException;->errorCode:I

    return-void
.end method
