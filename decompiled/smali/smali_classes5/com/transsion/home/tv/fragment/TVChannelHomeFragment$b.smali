.class public final Lcom/transsion/home/tv/fragment/TVChannelHomeFragment$b;
.super Ljava/lang/Object;

# interfaces
.implements Lhl/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/home/tv/fragment/TVChannelHomeFragment;->initExposureHelper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/home/tv/fragment/TVChannelHomeFragment;


# direct methods
.method constructor <init>(Lcom/transsion/home/tv/fragment/TVChannelHomeFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/home/tv/fragment/TVChannelHomeFragment$b;->a:Lcom/transsion/home/tv/fragment/TVChannelHomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IJLandroid/view/View;)V
    .locals 2

    iget-object p2, p0, Lcom/transsion/home/tv/fragment/TVChannelHomeFragment$b;->a:Lcom/transsion/home/tv/fragment/TVChannelHomeFragment;

    invoke-static {p2}, Lcom/transsion/home/tv/fragment/TVChannelHomeFragment;->y0(Lcom/transsion/home/tv/fragment/TVChannelHomeFragment;)Lcom/transsion/home/tv/adapter/f;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-static {p2, p1}, Lkotlin/collections/CollectionsKt;->l0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/home/bean/OperateItem;

    if-nez p2, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p2}, Lcom/transsion/home/bean/OperateItem;->getType()Ljava/lang/String;

    move-result-object p3

    sget-object p4, Lcom/transsion/moviedetailapi/bean/PostItemType;->TV_CHANNEL_ITEM:Lcom/transsion/moviedetailapi/bean/PostItemType;

    invoke-virtual {p4}, Lcom/transsion/moviedetailapi/bean/PostItemType;->getValue()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-virtual {p2}, Lcom/transsion/home/bean/OperateItem;->getTvChannelItem()Lcom/transsion/home/tv/bean/TvChannelItem;

    move-result-object p3

    if-eqz p3, :cond_6

    invoke-virtual {p3}, Lcom/transsion/home/tv/bean/TvChannelItem;->getStreams()Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_6

    const/4 p4, 0x0

    invoke-interface {p3, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/transsion/home/tv/bean/StreamItem;

    if-eqz p3, :cond_6

    invoke-virtual {p3}, Lcom/transsion/home/tv/bean/StreamItem;->getUrl()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/transsion/home/tv/fragment/TVChannelHomeFragment$b;->a:Lcom/transsion/home/tv/fragment/TVChannelHomeFragment;

    invoke-static {v0}, Lcom/transsion/home/tv/fragment/TVChannelHomeFragment;->z0(Lcom/transsion/home/tv/fragment/TVChannelHomeFragment;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/transsion/home/tv/fragment/TVChannelHomeFragment$b;->a:Lcom/transsion/home/tv/fragment/TVChannelHomeFragment;

    invoke-static {v0}, Lcom/transsion/home/tv/fragment/TVChannelHomeFragment;->z0(Lcom/transsion/home/tv/fragment/TVChannelHomeFragment;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p2}, Lcom/transsion/home/bean/OperateItem;->getTvChannelItem()Lcom/transsion/home/tv/bean/TvChannelItem;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/transsion/home/tv/bean/TvChannelItem;->getStreams()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/transsion/home/tv/bean/StreamItem;

    if-eqz p4, :cond_3

    invoke-virtual {p4}, Lcom/transsion/home/tv/bean/StreamItem;->getUrl()Ljava/lang/String;

    move-result-object p4

    if-nez p4, :cond_4

    :cond_3
    move-object p4, v1

    :cond_4
    const-string v0, "content_id"

    invoke-interface {p3, v0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/transsion/home/bean/OperateItem;->getTitle()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_5

    goto :goto_0

    :cond_5
    move-object v1, p2

    :goto_0
    const-string p2, "opt_title"

    invoke-interface {p3, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "position"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lhj/i;->a:Lhj/i;

    sget-object p2, Lcom/transsion/home/tv/fragment/TVChannelHomeFragment;->k:Lcom/transsion/home/tv/fragment/TVChannelHomeFragment$a;

    invoke-virtual {p2}, Lcom/transsion/home/tv/fragment/TVChannelHomeFragment$a;->a()Ljava/lang/String;

    move-result-object p2

    sget-object p4, Lcom/transsion/base/report/athena/BrowseType;->CONTENT:Lcom/transsion/base/report/athena/BrowseType;

    invoke-virtual {p1, p2, p3, p4}, Lhj/i;->E(Ljava/lang/String;Ljava/util/Map;Lcom/transsion/base/report/athena/BrowseType;)V

    nop

    :cond_6
    :goto_1
    return-void
.end method
