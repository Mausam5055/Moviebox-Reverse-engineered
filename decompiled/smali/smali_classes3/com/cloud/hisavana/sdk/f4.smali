.class public abstract Lcom/cloud/hisavana/sdk/f4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/hisavana/sdk/q4;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/hisavana/sdk/f4$a;
    }
.end annotation


# static fields
.field public static final d:Lcom/cloud/hisavana/sdk/f4$a;


# instance fields
.field private a:Z

.field private b:I

.field private c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/cloud/hisavana/sdk/f4$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cloud/hisavana/sdk/f4$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/cloud/hisavana/sdk/f4;->d:Lcom/cloud/hisavana/sdk/f4$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 0

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/f4;-><init>()V

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/f4;->c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    return-void
.end method

.method private final g()V
    .locals 10

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/f4;->c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getVideoInfo()Lcom/cloud/hisavana/sdk/common/bean/VastData;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/VastData;->getProgressData()Lcom/cloud/hisavana/sdk/common/bean/ProgressData;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-nez v2, :cond_2

    new-instance v2, Lcom/cloud/hisavana/sdk/common/bean/ProgressData;

    const/16 v8, 0xf

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/cloud/hisavana/sdk/common/bean/ProgressData;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v2}, Lcom/cloud/hisavana/sdk/common/bean/VastData;->setProgressData(Lcom/cloud/hisavana/sdk/common/bean/ProgressData;)V

    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/VastData;->getDuration()Ljava/lang/Integer;

    move-result-object v1

    :cond_3
    if-nez v1, :cond_4

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_4
    invoke-virtual {v2, v1}, Lcom/cloud/hisavana/sdk/common/bean/ProgressData;->setDuration(Ljava/lang/Integer;)V

    :cond_5
    return-void
.end method

.method private final h(I)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/cloud/hisavana/sdk/f4;->i(II)V

    return-void
.end method

.method private final i(II)V
    .locals 9

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/f4;->c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getSource()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/f4;->c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getVideoInfo()Lcom/cloud/hisavana/sdk/common/bean/VastData;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/VastData;->getProgressData()Lcom/cloud/hisavana/sdk/common/bean/ProgressData;

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    :cond_2
    move-object v2, v1

    :goto_0
    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/cloud/hisavana/sdk/common/bean/ProgressData;->setVideoPlayTimeType(Ljava/lang/Integer;)V

    :goto_1
    if-eqz v2, :cond_4

    const/16 v7, 0xf

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v2 .. v8}, Lcom/cloud/hisavana/sdk/common/bean/ProgressData;->copy$default(Lcom/cloud/hisavana/sdk/common/bean/ProgressData;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZILjava/lang/Object;)Lcom/cloud/hisavana/sdk/common/bean/ProgressData;

    move-result-object v1

    :cond_4
    if-lez p2, :cond_6

    if-nez v1, :cond_5

    goto :goto_2

    :cond_5
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/cloud/hisavana/sdk/common/bean/ProgressData;->setProgress(Ljava/lang/Integer;)V

    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/f4;->c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-static {p1, v1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->m0(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/bean/ProgressData;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/cloud/hisavana/sdk/p;)V
    .locals 4

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/f4;->c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getSource()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/p;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/f4;->c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    new-instance v2, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/p;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0xbc3

    invoke-direct {v2, v0, p1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;-><init>(ILjava/lang/String;)V

    invoke-static {v1, v2}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->l0(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/f4;->c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getSource()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/f4;->c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getVideoInfo()Lcom/cloud/hisavana/sdk/common/bean/VastData;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/VastData;->getVastTrack()Lcom/cloud/hisavana/sdk/common/bean/VastTracking;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/VastTracking;->getStartTrack()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/f4;->c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-static {v0, v1}, Lcom/cloud/hisavana/sdk/c1;->l(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/f4;->h(I)V

    return-void
.end method

.method public c(JJI)V
    .locals 0

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/f4;->c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getSource()I

    move-result p1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/f4;->c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getVideoInfo()Lcom/cloud/hisavana/sdk/common/bean/VastData;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/VastData;->getProgressData()Lcom/cloud/hisavana/sdk/common/bean/ProgressData;

    move-result-object p2

    if-nez p2, :cond_3

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/f4;->g()V

    :cond_3
    if-nez p2, :cond_4

    goto :goto_1

    :cond_4
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/cloud/hisavana/sdk/common/bean/ProgressData;->setProgress(Ljava/lang/Integer;)V

    :goto_1
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/VastData;->getVastTrack()Lcom/cloud/hisavana/sdk/common/bean/VastTracking;

    move-result-object p1

    if-nez p1, :cond_5

    return-void

    :cond_5
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "progress : "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "Rewarded"

    invoke-virtual {p2, p4, p3}, Lcom/cloud/sdk/commonutil/util/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x5

    const/16 p3, 0x19

    const/16 p4, 0x32

    if-gt p3, p5, :cond_6

    if-ge p5, p4, :cond_6

    iget p4, p0, Lcom/cloud/hisavana/sdk/f4;->b:I

    if-ge p4, p3, :cond_8

    iput p3, p0, Lcom/cloud/hisavana/sdk/f4;->b:I

    invoke-direct {p0, p2, p3}, Lcom/cloud/hisavana/sdk/f4;->i(II)V

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/VastTracking;->getQuarter()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/cloud/hisavana/sdk/f4;->c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-static {p1, p2}, Lcom/cloud/hisavana/sdk/c1;->l(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    goto :goto_2

    :cond_6
    const/16 p3, 0x4b

    if-gt p4, p5, :cond_7

    if-ge p5, p3, :cond_7

    iget p3, p0, Lcom/cloud/hisavana/sdk/f4;->b:I

    if-ge p3, p4, :cond_8

    iput p4, p0, Lcom/cloud/hisavana/sdk/f4;->b:I

    invoke-direct {p0, p2, p4}, Lcom/cloud/hisavana/sdk/f4;->i(II)V

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/VastTracking;->getMidpoint()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/cloud/hisavana/sdk/f4;->c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-static {p1, p2}, Lcom/cloud/hisavana/sdk/c1;->l(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    goto :goto_2

    :cond_7
    if-lt p5, p3, :cond_8

    iget p4, p0, Lcom/cloud/hisavana/sdk/f4;->b:I

    if-ge p4, p3, :cond_8

    iput p3, p0, Lcom/cloud/hisavana/sdk/f4;->b:I

    invoke-direct {p0, p2, p3}, Lcom/cloud/hisavana/sdk/f4;->i(II)V

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/VastTracking;->getThirdQuarter()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/cloud/hisavana/sdk/f4;->c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-static {p1, p2}, Lcom/cloud/hisavana/sdk/c1;->l(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    :cond_8
    :goto_2
    return-void
.end method

.method public d(Z)V
    .locals 3

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVideoClickToPauseOrPlay isPlay "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "AdMediaPlayerListener"

    invoke-virtual {v0, v1, p1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/f4;->c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    const/4 v0, 0x4

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getSource()I

    move-result p1

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/f4;->g()V

    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/f4;->h(I)V

    return-void
.end method

.method public e()V
    .locals 0

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/f4;->g()V

    return-void
.end method

.method public f(Z)V
    .locals 3

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    const-string v1, "AdMediaPlayerListener"

    const-string v2, "onCompanion "

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/f4;->c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getSource()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/f4;->g()V

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/f4;->h(I)V

    :cond_1
    return-void
.end method

.method public final j()V
    .locals 1

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/f4;->h(I)V

    return-void
.end method

.method public onComplete()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/f4;->c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getSource()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/f4;->h(I)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/f4;->c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getVideoInfo()Lcom/cloud/hisavana/sdk/common/bean/VastData;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/VastData;->getVastTrack()Lcom/cloud/hisavana/sdk/common/bean/VastTracking;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/VastTracking;->getComplete()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/f4;->c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-static {v0, v1}, Lcom/cloud/hisavana/sdk/c1;->l(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    return-void
.end method

.method public onIsPlayingChanged(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/f4;->a:Z

    return-void
.end method

.method public onVideoSizeChanged(II)V
    .locals 0

    return-void
.end method

.method public onVolumeChanged(F)V
    .locals 0

    return-void
.end method
