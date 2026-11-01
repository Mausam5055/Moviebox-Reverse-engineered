.class public final Lcom/mbridge/msdk/playercommon/exoplayer2/RendererConfiguration;
.super Ljava/lang/Object;


# static fields
.field public static final DEFAULT:Lcom/mbridge/msdk/playercommon/exoplayer2/RendererConfiguration;


# instance fields
.field public final tunnelingAudioSessionId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/mbridge/msdk/playercommon/exoplayer2/RendererConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/RendererConfiguration;-><init>(I)V

    sput-object v0, Lcom/mbridge/msdk/playercommon/exoplayer2/RendererConfiguration;->DEFAULT:Lcom/mbridge/msdk/playercommon/exoplayer2/RendererConfiguration;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/RendererConfiguration;->tunnelingAudioSessionId:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/mbridge/msdk/playercommon/exoplayer2/RendererConfiguration;

    if-eq v3, v2, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/mbridge/msdk/playercommon/exoplayer2/RendererConfiguration;

    iget v2, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/RendererConfiguration;->tunnelingAudioSessionId:I

    iget p1, p1, Lcom/mbridge/msdk/playercommon/exoplayer2/RendererConfiguration;->tunnelingAudioSessionId:I

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/RendererConfiguration;->tunnelingAudioSessionId:I

    return v0
.end method
