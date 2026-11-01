.class public final Lcom/transsion/postdetail/shorttv/bean/ShortTvInfoEpisodeList;
.super Ljava/lang/Object;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Deprecated;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008\u0007\u0018\u00002\u00020\u0001B+\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0004\u0008\t\u0010\nR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\"\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/transsion/postdetail/shorttv/bean/ShortTvInfoEpisodeList;",
        "",
        "pager",
        "Lcom/transsion/postdetail/bean/Pager;",
        "items",
        "",
        "Lcom/transsion/moviedetailapi/bean/ShortTVItem;",
        "info",
        "Lcom/transsion/moviedetailapi/bean/Subject;",
        "<init>",
        "(Lcom/transsion/postdetail/bean/Pager;Ljava/util/List;Lcom/transsion/moviedetailapi/bean/Subject;)V",
        "getPager",
        "()Lcom/transsion/postdetail/bean/Pager;",
        "getItems",
        "()Ljava/util/List;",
        "setItems",
        "(Ljava/util/List;)V",
        "getInfo",
        "()Lcom/transsion/moviedetailapi/bean/Subject;",
        "PostDetail_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final info:Lcom/transsion/moviedetailapi/bean/Subject;

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/moviedetailapi/bean/ShortTVItem;",
            ">;"
        }
    .end annotation
.end field

.field private final pager:Lcom/transsion/postdetail/bean/Pager;


# direct methods
.method public constructor <init>(Lcom/transsion/postdetail/bean/Pager;Ljava/util/List;Lcom/transsion/moviedetailapi/bean/Subject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/postdetail/bean/Pager;",
            "Ljava/util/List<",
            "Lcom/transsion/moviedetailapi/bean/ShortTVItem;",
            ">;",
            "Lcom/transsion/moviedetailapi/bean/Subject;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/postdetail/shorttv/bean/ShortTvInfoEpisodeList;->pager:Lcom/transsion/postdetail/bean/Pager;

    iput-object p2, p0, Lcom/transsion/postdetail/shorttv/bean/ShortTvInfoEpisodeList;->items:Ljava/util/List;

    iput-object p3, p0, Lcom/transsion/postdetail/shorttv/bean/ShortTvInfoEpisodeList;->info:Lcom/transsion/moviedetailapi/bean/Subject;

    return-void
.end method


# virtual methods
.method public final getInfo()Lcom/transsion/moviedetailapi/bean/Subject;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/shorttv/bean/ShortTvInfoEpisodeList;->info:Lcom/transsion/moviedetailapi/bean/Subject;

    return-object v0
.end method

.method public final getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/moviedetailapi/bean/ShortTVItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/postdetail/shorttv/bean/ShortTvInfoEpisodeList;->items:Ljava/util/List;

    return-object v0
.end method

.method public final getPager()Lcom/transsion/postdetail/bean/Pager;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/shorttv/bean/ShortTvInfoEpisodeList;->pager:Lcom/transsion/postdetail/bean/Pager;

    return-object v0
.end method

.method public final setItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/moviedetailapi/bean/ShortTVItem;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/postdetail/shorttv/bean/ShortTvInfoEpisodeList;->items:Ljava/util/List;

    return-void
.end method
