.class public final Lcom/transsion/home/tv/TVChannelHomeViewModel$e;
.super Lsg/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/home/tv/TVChannelHomeViewModel;->A(JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/transsion/home/tv/TVChannelHomeViewModel;

.field final synthetic e:J


# direct methods
.method constructor <init>(Lcom/transsion/home/tv/TVChannelHomeViewModel;J)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/home/tv/TVChannelHomeViewModel$e;->d:Lcom/transsion/home/tv/TVChannelHomeViewModel;

    iput-wide p2, p0, Lcom/transsion/home/tv/TVChannelHomeViewModel$e;->e:J

    invoke-direct {p0}, Lsg/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Llg/a;->a:Llg/a$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestOperateData failed code="

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

    iget-object p1, p0, Lcom/transsion/home/tv/TVChannelHomeViewModel$e;->d:Lcom/transsion/home/tv/TVChannelHomeViewModel;

    iget-wide v0, p0, Lcom/transsion/home/tv/TVChannelHomeViewModel$e;->e:J

    const/4 p2, 0x0

    invoke-static {p1, v0, v1, p2}, Lcom/transsion/home/tv/TVChannelHomeViewModel;->g(Lcom/transsion/home/tv/TVChannelHomeViewModel;JLcom/transsion/home/bean/SubOperateData;)V

    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/transsion/home/bean/SubOperateData;

    invoke-virtual {p0, p1}, Lcom/transsion/home/tv/TVChannelHomeViewModel$e;->e(Lcom/transsion/home/bean/SubOperateData;)V

    return-void
.end method

.method public e(Lcom/transsion/home/bean/SubOperateData;)V
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/home/bean/SubOperateData;->getItems()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    check-cast v1, Ljava/util/Collection;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->U0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    :cond_0
    move-object v2, v0

    const/16 v6, 0xe

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lcom/transsion/home/bean/SubOperateData;->copy$default(Lcom/transsion/home/bean/SubOperateData;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/transsion/home/bean/SubOperateData;

    move-result-object v0

    :cond_1
    iget-object p1, p0, Lcom/transsion/home/tv/TVChannelHomeViewModel$e;->d:Lcom/transsion/home/tv/TVChannelHomeViewModel;

    iget-wide v1, p0, Lcom/transsion/home/tv/TVChannelHomeViewModel$e;->e:J

    invoke-static {p1, v1, v2, v0}, Lcom/transsion/home/tv/TVChannelHomeViewModel;->g(Lcom/transsion/home/tv/TVChannelHomeViewModel;JLcom/transsion/home/bean/SubOperateData;)V

    return-void
.end method
