.class public final Lcom/transsion/home/tv/TVChannelHomeViewModel$c;
.super Lsg/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/home/tv/TVChannelHomeViewModel;->u()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/transsion/home/tv/TVChannelHomeViewModel;

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/transsion/home/tv/TVChannelHomeViewModel;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/home/tv/TVChannelHomeViewModel$c;->d:Lcom/transsion/home/tv/TVChannelHomeViewModel;

    iput-object p2, p0, Lcom/transsion/home/tv/TVChannelHomeViewModel$c;->e:Ljava/lang/String;

    invoke-direct {p0}, Lsg/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/home/tv/TVChannelHomeViewModel$c;->d:Lcom/transsion/home/tv/TVChannelHomeViewModel;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/home/tv/TVChannelHomeViewModel;->i(Lcom/transsion/home/tv/TVChannelHomeViewModel;Z)V

    sget-object v0, Llg/a;->a:Llg/a$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadMore failed code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " msg="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    const-string v1, "TVChannelHomeViewModel"

    invoke-virtual {v0, v1, p1, p2}, Llg/a$a;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/transsion/home/tv/TVChannelHomeViewModel$c;->d:Lcom/transsion/home/tv/TVChannelHomeViewModel;

    invoke-virtual {p1}, Lcom/transsion/home/tv/TVChannelHomeViewModel;->o()Landroidx/lifecycle/b0;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/transsion/home/tv/bean/TvChannelListDataBean;

    invoke-virtual {p0, p1}, Lcom/transsion/home/tv/TVChannelHomeViewModel$c;->e(Lcom/transsion/home/tv/bean/TvChannelListDataBean;)V

    return-void
.end method

.method public e(Lcom/transsion/home/tv/bean/TvChannelListDataBean;)V
    .locals 7

    iget-object v0, p0, Lcom/transsion/home/tv/TVChannelHomeViewModel$c;->d:Lcom/transsion/home/tv/TVChannelHomeViewModel;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/home/tv/TVChannelHomeViewModel;->i(Lcom/transsion/home/tv/TVChannelHomeViewModel;Z)V

    iget-object v0, p0, Lcom/transsion/home/tv/TVChannelHomeViewModel$c;->d:Lcom/transsion/home/tv/TVChannelHomeViewModel;

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/home/tv/bean/TvChannelListDataBean;->getPager()Lcom/transsion/home/tv/bean/Pager;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    invoke-static {v0, v3}, Lcom/transsion/home/tv/TVChannelHomeViewModel;->j(Lcom/transsion/home/tv/TVChannelHomeViewModel;Lcom/transsion/home/tv/bean/Pager;)V

    iget-object v0, p0, Lcom/transsion/home/tv/TVChannelHomeViewModel$c;->d:Lcom/transsion/home/tv/TVChannelHomeViewModel;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/home/tv/bean/TvChannelListDataBean;->getItems()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_2

    :cond_1
    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    move-result-object p1

    :cond_2
    invoke-static {v0, p1, v1}, Lcom/transsion/home/tv/TVChannelHomeViewModel;->d(Lcom/transsion/home/tv/TVChannelHomeViewModel;Ljava/util/List;Z)Ljava/util/List;

    move-result-object p1

    sget-object v0, Llg/a;->a:Llg/a$a;

    iget-object v3, p0, Lcom/transsion/home/tv/TVChannelHomeViewModel$c;->e:Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    iget-object v5, p0, Lcom/transsion/home/tv/TVChannelHomeViewModel$c;->d:Lcom/transsion/home/tv/TVChannelHomeViewModel;

    invoke-static {v5}, Lcom/transsion/home/tv/TVChannelHomeViewModel;->e(Lcom/transsion/home/tv/TVChannelHomeViewModel;)Lcom/transsion/home/tv/bean/Pager;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/transsion/home/tv/bean/Pager;->getHasMore()Ljava/lang/Boolean;

    move-result-object v2

    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadMore success page="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " size="

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " hasMore="

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TVChannelHomeViewModel"

    invoke-virtual {v0, v3, v2, v1}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/transsion/home/tv/TVChannelHomeViewModel$c;->d:Lcom/transsion/home/tv/TVChannelHomeViewModel;

    invoke-virtual {v0}, Lcom/transsion/home/tv/TVChannelHomeViewModel;->o()Landroidx/lifecycle/b0;

    move-result-object v0

    new-instance v1, Lcom/transsion/home/tv/bean/TvChannelLoadMoreResult;

    iget-object v2, p0, Lcom/transsion/home/tv/TVChannelHomeViewModel$c;->d:Lcom/transsion/home/tv/TVChannelHomeViewModel;

    invoke-virtual {v2}, Lcom/transsion/home/tv/TVChannelHomeViewModel;->s()Z

    move-result v2

    invoke-direct {v1, p1, v2}, Lcom/transsion/home/tv/bean/TvChannelLoadMoreResult;-><init>(Ljava/util/List;Z)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    return-void
.end method
