.class public abstract Lcom/transsion/shorttv_pugc/a;
.super Ljava/lang/Object;


# direct methods
.method public static final a(Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;)Lao/e;
    .locals 9

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lao/e;

    invoke-virtual {p0}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getPlayUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getPlayUrl()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    :cond_0
    move-object v3, v1

    invoke-virtual {p0}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->videoUGCPosition()I

    move-result v4

    const/16 v7, 0x18

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lao/e;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/transsion/player/enum/PlayMimeType;Lcom/transsion/player/mediasession/MediaItem;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
