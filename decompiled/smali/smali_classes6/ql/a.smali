.class public interface abstract Lql/a;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J\u001b\u0010\u0005\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00040\u00030\u0002H\'\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J9\u0010\r\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u00030\u00022\u0008\u0008\u0001\u0010\u0008\u001a\u00020\u00072\u0008\u0008\u0001\u0010\n\u001a\u00020\t2\u0008\u0008\u0001\u0010\u000b\u001a\u00020\u0007H\'\u00a2\u0006\u0004\u0008\r\u0010\u000eJ%\u0010\u0011\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00100\u00030\u00022\u0008\u0008\u0001\u0010\u000f\u001a\u00020\u0007H\'\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\'\u0010\u0015\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00140\u00030\u00022\n\u0008\u0001\u0010\u0013\u001a\u0004\u0018\u00010\u0007H\'\u00a2\u0006\u0004\u0008\u0015\u0010\u0012\u00a8\u0006\u0016"
    }
    d2 = {
        "Lql/a;",
        "",
        "Lio/reactivex/rxjava3/core/j;",
        "Lcom/tn/lib/net/bean/BaseDto;",
        "Lcom/transsion/home/tv/bean/CountryDataBean;",
        "a",
        "()Lio/reactivex/rxjava3/core/j;",
        "",
        "page",
        "",
        "count",
        "countryCode",
        "Lcom/transsion/home/tv/bean/TvChannelListDataBean;",
        "d",
        "(Ljava/lang/String;ILjava/lang/String;)Lio/reactivex/rxjava3/core/j;",
        "channelId",
        "Lcom/transsion/home/tv/bean/TvChannelItem;",
        "b",
        "(Ljava/lang/String;)Lio/reactivex/rxjava3/core/j;",
        "countryIsoCode",
        "Lcom/transsion/home/bean/SubOperateData;",
        "c",
        "Home_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract a()Lio/reactivex/rxjava3/core/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/j<",
            "Lcom/tn/lib/net/bean/BaseDto<",
            "Lcom/transsion/home/tv/bean/CountryDataBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/wefeed-mobile-bff/live/tv-country-list"
    .end annotation
.end method

.method public abstract b(Ljava/lang/String;)Lio/reactivex/rxjava3/core/j;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "channelId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/rxjava3/core/j<",
            "Lcom/tn/lib/net/bean/BaseDto<",
            "Lcom/transsion/home/tv/bean/TvChannelItem;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/wefeed-mobile-bff/live/tv-channel"
    .end annotation
.end method

.method public abstract c(Ljava/lang/String;)Lio/reactivex/rxjava3/core/j;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "countryIsoCode"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/rxjava3/core/j<",
            "Lcom/tn/lib/net/bean/BaseDto<",
            "Lcom/transsion/home/bean/SubOperateData;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/wefeed-mobile-bff/tv-channel-operating"
    .end annotation
.end method

.method public abstract d(Ljava/lang/String;ILjava/lang/String;)Lio/reactivex/rxjava3/core/j;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "page"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "perPage"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "countryCode"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/rxjava3/core/j<",
            "Lcom/tn/lib/net/bean/BaseDto<",
            "Lcom/transsion/home/tv/bean/TvChannelListDataBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/wefeed-mobile-bff/live/tv-channel-list-by-country"
    .end annotation
.end method
