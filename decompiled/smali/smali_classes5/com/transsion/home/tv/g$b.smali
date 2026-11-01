.class public final Lcom/transsion/home/tv/g$b;
.super Lsg/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/home/tv/g;->d(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/transsion/home/tv/g;

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/transsion/home/tv/g;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/home/tv/g$b;->d:Lcom/transsion/home/tv/g;

    iput-object p2, p0, Lcom/transsion/home/tv/g$b;->e:Ljava/lang/String;

    invoke-direct {p0}, Lsg/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Llg/a;->a:Llg/a$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fetchChannelList failed code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " msg="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    const-string v1, "TvLiveDetailViewModel"

    invoke-virtual {v0, v1, p1, p2}, Llg/a$a;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/transsion/home/tv/g$b;->d:Lcom/transsion/home/tv/g;

    invoke-virtual {p1}, Lcom/transsion/home/tv/g;->f()Landroidx/lifecycle/b0;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/transsion/home/tv/bean/TvChannelListDataBean;

    invoke-virtual {p0, p1}, Lcom/transsion/home/tv/g$b;->e(Lcom/transsion/home/tv/bean/TvChannelListDataBean;)V

    return-void
.end method

.method public e(Lcom/transsion/home/tv/bean/TvChannelListDataBean;)V
    .locals 7

    iget-object v0, p0, Lcom/transsion/home/tv/g$b;->d:Lcom/transsion/home/tv/g;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/home/tv/bean/TvChannelListDataBean;->getPager()Lcom/transsion/home/tv/bean/Pager;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/transsion/home/tv/bean/Pager;->getHasMore()Ljava/lang/Boolean;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/transsion/home/tv/bean/TvChannelListDataBean;->getPager()Lcom/transsion/home/tv/bean/Pager;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/transsion/home/tv/bean/Pager;->getNextPage()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v3

    :goto_1
    invoke-static {v0, v2}, Lcom/transsion/home/tv/g;->c(Lcom/transsion/home/tv/g;Ljava/lang/String;)V

    sget-object v0, Llg/a;->a:Llg/a$a;

    iget-object v2, p0, Lcom/transsion/home/tv/g$b;->e:Ljava/lang/String;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/transsion/home/tv/bean/TvChannelListDataBean;->getItems()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_2

    :cond_2
    move-object v4, v3

    :goto_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/transsion/home/tv/bean/TvChannelListDataBean;->getPager()Lcom/transsion/home/tv/bean/Pager;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/transsion/home/tv/bean/Pager;->getHasMore()Ljava/lang/Boolean;

    move-result-object v3

    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fetchChannelList success page="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " size="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " hasMore="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TvLiveDetailViewModel"

    invoke-virtual {v0, v3, v2, v1}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/transsion/home/tv/g$b;->d:Lcom/transsion/home/tv/g;

    invoke-virtual {v0}, Lcom/transsion/home/tv/g;->f()Landroidx/lifecycle/b0;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    return-void
.end method
