.class public final Lcom/transsion/home/tv/fragment/TvLiveDetailFragment$b;
.super Ljava/lang/Object;

# interfaces
.implements Lhl/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/home/tv/fragment/TvLiveDetailFragment;->initExposureHelper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/home/tv/fragment/TvLiveDetailFragment;


# direct methods
.method constructor <init>(Lcom/transsion/home/tv/fragment/TvLiveDetailFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/home/tv/fragment/TvLiveDetailFragment$b;->a:Lcom/transsion/home/tv/fragment/TvLiveDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IJLandroid/view/View;)V
    .locals 0

    iget-object p2, p0, Lcom/transsion/home/tv/fragment/TvLiveDetailFragment$b;->a:Lcom/transsion/home/tv/fragment/TvLiveDetailFragment;

    invoke-static {p2}, Lcom/transsion/home/tv/fragment/TvLiveDetailFragment;->C0(Lcom/transsion/home/tv/fragment/TvLiveDetailFragment;)Lcom/transsion/home/tv/adapter/h;

    move-result-object p2

    invoke-virtual {p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p2

    invoke-static {p2, p1}, Lkotlin/collections/CollectionsKt;->l0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/home/tv/bean/TvChannelItem;

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/transsion/home/tv/bean/TvChannelItem;->getStreams()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_3

    const/4 p3, 0x0

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/home/tv/bean/StreamItem;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/transsion/home/tv/bean/StreamItem;->getUrl()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p3, p0, Lcom/transsion/home/tv/fragment/TvLiveDetailFragment$b;->a:Lcom/transsion/home/tv/fragment/TvLiveDetailFragment;

    invoke-static {p3}, Lcom/transsion/home/tv/fragment/TvLiveDetailFragment;->D0(Lcom/transsion/home/tv/fragment/TvLiveDetailFragment;)Ljava/util/HashSet;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    return-void

    :cond_2
    iget-object p3, p0, Lcom/transsion/home/tv/fragment/TvLiveDetailFragment$b;->a:Lcom/transsion/home/tv/fragment/TvLiveDetailFragment;

    invoke-static {p3}, Lcom/transsion/home/tv/fragment/TvLiveDetailFragment;->D0(Lcom/transsion/home/tv/fragment/TvLiveDetailFragment;)Ljava/util/HashSet;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    const-string p4, "content_id"

    invoke-interface {p3, p4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "position"

    invoke-interface {p3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lhj/i;->a:Lhj/i;

    const-string p2, "tv_channel_detail"

    sget-object p4, Lcom/transsion/base/report/athena/BrowseType;->CONTENT:Lcom/transsion/base/report/athena/BrowseType;

    invoke-virtual {p1, p2, p3, p4}, Lhj/i;->E(Ljava/lang/String;Ljava/util/Map;Lcom/transsion/base/report/athena/BrowseType;)V

    :cond_3
    :goto_0
    return-void
.end method
