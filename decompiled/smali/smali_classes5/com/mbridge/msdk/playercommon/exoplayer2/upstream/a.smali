.class public abstract synthetic Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/a;
.super Ljava/lang/Object;


# direct methods
.method public static bridge synthetic a(Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/HttpDataSource$Factory;)Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;
    .locals 0

    invoke-interface {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/HttpDataSource$Factory;->createDataSource()Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/HttpDataSource;

    move-result-object p0

    return-object p0
.end method
