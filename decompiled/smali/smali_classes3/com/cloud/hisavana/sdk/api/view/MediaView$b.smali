.class public Lcom/cloud/hisavana/sdk/api/view/MediaView$b;
.super Lcom/cloud/hisavana/sdk/f4;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/sdk/api/view/MediaView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic e:Lcom/cloud/hisavana/sdk/api/view/MediaView;


# direct methods
.method public constructor <init>(Lcom/cloud/hisavana/sdk/api/view/MediaView;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView$b;->e:Lcom/cloud/hisavana/sdk/api/view/MediaView;

    invoke-direct {p0, p2}, Lcom/cloud/hisavana/sdk/f4;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/cloud/hisavana/sdk/p;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/cloud/hisavana/sdk/f4;->a(Lcom/cloud/hisavana/sdk/p;)V

    return-void
.end method

.method public b()V
    .locals 0

    invoke-super {p0}, Lcom/cloud/hisavana/sdk/f4;->b()V

    return-void
.end method

.method public c(JJI)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lcom/cloud/hisavana/sdk/f4;->c(JJI)V

    return-void
.end method

.method public e()V
    .locals 0

    invoke-super {p0}, Lcom/cloud/hisavana/sdk/f4;->e()V

    return-void
.end method

.method public onComplete()V
    .locals 0

    invoke-super {p0}, Lcom/cloud/hisavana/sdk/f4;->onComplete()V

    return-void
.end method

.method public onIsPlayingChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/cloud/hisavana/sdk/f4;->onIsPlayingChanged(Z)V

    return-void
.end method

.method public onVideoSizeChanged(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/cloud/hisavana/sdk/f4;->onVideoSizeChanged(II)V

    return-void
.end method

.method public onVolumeChanged(F)V
    .locals 0

    invoke-super {p0, p1}, Lcom/cloud/hisavana/sdk/f4;->onVolumeChanged(F)V

    return-void
.end method
