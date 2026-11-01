.class public final Lcom/transsion/shorttv/bean/ShortTvInfoEpisodeList;
.super Ljava/lang/Object;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0014\u0008\u0007\u0018\u00002\u00020\u0001B?\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000c\u0010\rR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\"\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR\u001a\u0010\u000b\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u0019\"\u0004\u0008\u001d\u0010\u001b\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/transsion/shorttv/bean/ShortTvInfoEpisodeList;",
        "",
        "pager",
        "Lcom/transsion/shorttv/bean/Pager;",
        "items",
        "",
        "Lcom/transsion/shorttv/bean/ShortTVItem;",
        "info",
        "Lcom/transsion/shorttv/bean/Subject;",
        "startPosition",
        "",
        "endPosition",
        "<init>",
        "(Lcom/transsion/shorttv/bean/Pager;Ljava/util/List;Lcom/transsion/shorttv/bean/Subject;II)V",
        "getPager",
        "()Lcom/transsion/shorttv/bean/Pager;",
        "getItems",
        "()Ljava/util/List;",
        "setItems",
        "(Ljava/util/List;)V",
        "getInfo",
        "()Lcom/transsion/shorttv/bean/Subject;",
        "setInfo",
        "(Lcom/transsion/shorttv/bean/Subject;)V",
        "getStartPosition",
        "()I",
        "setStartPosition",
        "(I)V",
        "getEndPosition",
        "setEndPosition",
        "shortTvLib_release"
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
.field private transient endPosition:I

.field private info:Lcom/transsion/shorttv/bean/Subject;

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/shorttv/bean/ShortTVItem;",
            ">;"
        }
    .end annotation
.end field

.field private final pager:Lcom/transsion/shorttv/bean/Pager;

.field private transient startPosition:I


# direct methods
.method public constructor <init>(Lcom/transsion/shorttv/bean/Pager;Ljava/util/List;Lcom/transsion/shorttv/bean/Subject;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/shorttv/bean/Pager;",
            "Ljava/util/List<",
            "Lcom/transsion/shorttv/bean/ShortTVItem;",
            ">;",
            "Lcom/transsion/shorttv/bean/Subject;",
            "II)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/shorttv/bean/ShortTvInfoEpisodeList;->pager:Lcom/transsion/shorttv/bean/Pager;

    iput-object p2, p0, Lcom/transsion/shorttv/bean/ShortTvInfoEpisodeList;->items:Ljava/util/List;

    iput-object p3, p0, Lcom/transsion/shorttv/bean/ShortTvInfoEpisodeList;->info:Lcom/transsion/shorttv/bean/Subject;

    iput p4, p0, Lcom/transsion/shorttv/bean/ShortTvInfoEpisodeList;->startPosition:I

    iput p5, p0, Lcom/transsion/shorttv/bean/ShortTvInfoEpisodeList;->endPosition:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/transsion/shorttv/bean/Pager;Ljava/util/List;Lcom/transsion/shorttv/bean/Subject;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p7, p6, 0x8

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move v5, v0

    goto :goto_0

    :cond_0
    move v5, p4

    :goto_0
    and-int/lit8 p4, p6, 0x10

    if-eqz p4, :cond_1

    move v6, v0

    goto :goto_1

    :cond_1
    move v6, p5

    :goto_1
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/transsion/shorttv/bean/ShortTvInfoEpisodeList;-><init>(Lcom/transsion/shorttv/bean/Pager;Ljava/util/List;Lcom/transsion/shorttv/bean/Subject;II)V

    return-void
.end method


# virtual methods
.method public final getEndPosition()I
    .locals 1

    iget v0, p0, Lcom/transsion/shorttv/bean/ShortTvInfoEpisodeList;->endPosition:I

    return v0
.end method

.method public final getInfo()Lcom/transsion/shorttv/bean/Subject;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/bean/ShortTvInfoEpisodeList;->info:Lcom/transsion/shorttv/bean/Subject;

    return-object v0
.end method

.method public final getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/shorttv/bean/ShortTVItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/shorttv/bean/ShortTvInfoEpisodeList;->items:Ljava/util/List;

    return-object v0
.end method

.method public final getPager()Lcom/transsion/shorttv/bean/Pager;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/bean/ShortTvInfoEpisodeList;->pager:Lcom/transsion/shorttv/bean/Pager;

    return-object v0
.end method

.method public final getStartPosition()I
    .locals 1

    iget v0, p0, Lcom/transsion/shorttv/bean/ShortTvInfoEpisodeList;->startPosition:I

    return v0
.end method

.method public final setEndPosition(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/shorttv/bean/ShortTvInfoEpisodeList;->endPosition:I

    return-void
.end method

.method public final setInfo(Lcom/transsion/shorttv/bean/Subject;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/shorttv/bean/ShortTvInfoEpisodeList;->info:Lcom/transsion/shorttv/bean/Subject;

    return-void
.end method

.method public final setItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/shorttv/bean/ShortTVItem;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/shorttv/bean/ShortTvInfoEpisodeList;->items:Ljava/util/List;

    return-void
.end method

.method public final setStartPosition(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/shorttv/bean/ShortTvInfoEpisodeList;->startPosition:I

    return-void
.end method
