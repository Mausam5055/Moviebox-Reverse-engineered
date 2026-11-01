.class public final Lcom/transsion/home/tv/TVChannelHomeViewModel$b;
.super Lsg/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/home/tv/TVChannelHomeViewModel;->t()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/transsion/home/tv/TVChannelHomeViewModel;

.field final synthetic e:Z


# direct methods
.method constructor <init>(Lcom/transsion/home/tv/TVChannelHomeViewModel;Z)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/home/tv/TVChannelHomeViewModel$b;->d:Lcom/transsion/home/tv/TVChannelHomeViewModel;

    iput-boolean p2, p0, Lcom/transsion/home/tv/TVChannelHomeViewModel$b;->e:Z

    invoke-direct {p0}, Lsg/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Llg/a;->a:Llg/a$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadCountryList failed code="

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

    iget-boolean p1, p0, Lcom/transsion/home/tv/TVChannelHomeViewModel$b;->e:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/transsion/home/tv/TVChannelHomeViewModel$b;->d:Lcom/transsion/home/tv/TVChannelHomeViewModel;

    invoke-virtual {p1}, Lcom/transsion/home/tv/TVChannelHomeViewModel;->q()Landroidx/lifecycle/b0;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/home/tv/TVChannelHomeViewModel$b;->d:Lcom/transsion/home/tv/TVChannelHomeViewModel;

    invoke-virtual {p1}, Lcom/transsion/home/tv/TVChannelHomeViewModel;->p()Landroidx/lifecycle/b0;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/transsion/home/tv/bean/CountryDataBean;

    invoke-virtual {p0, p1}, Lcom/transsion/home/tv/TVChannelHomeViewModel$b;->e(Lcom/transsion/home/tv/bean/CountryDataBean;)V

    return-void
.end method

.method public e(Lcom/transsion/home/tv/bean/CountryDataBean;)V
    .locals 6

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/home/tv/bean/CountryDataBean;->getItems()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    move-result-object v0

    :cond_1
    iget-object v1, p0, Lcom/transsion/home/tv/TVChannelHomeViewModel$b;->d:Lcom/transsion/home/tv/TVChannelHomeViewModel;

    invoke-virtual {v1}, Lcom/transsion/home/tv/TVChannelHomeViewModel;->m()Landroidx/lifecycle/b0;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/transsion/home/tv/TVChannelHomeViewModel$b;->e:Z

    const/4 v1, 0x0

    const-string v2, "TVChannelHomeViewModel"

    if-eqz v0, :cond_2

    sget-object p1, Llg/a;->a:Llg/a$a;

    const-string v0, "loadCountryList success, country list updated, cache hit skip refresh"

    invoke-virtual {p1, v2, v0, v1}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_2
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/transsion/home/tv/bean/CountryDataBean;->getCurrentCountry()Lcom/transsion/home/tv/bean/CountryItem;

    move-result-object p1

    goto :goto_0

    :cond_3
    move-object p1, v0

    :goto_0
    iget-object v3, p0, Lcom/transsion/home/tv/TVChannelHomeViewModel$b;->d:Lcom/transsion/home/tv/TVChannelHomeViewModel;

    invoke-virtual {v3}, Lcom/transsion/home/tv/TVChannelHomeViewModel;->q()Landroidx/lifecycle/b0;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    sget-object v3, Llg/a;->a:Llg/a$a;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/transsion/home/tv/bean/CountryItem;->getCountryName()Ljava/lang/String;

    move-result-object v0

    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadCountryList success, first="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v2, v0, v1}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/transsion/home/tv/bean/CountryItem;->getCountryCode()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/transsion/home/tv/TVChannelHomeViewModel$b;->d:Lcom/transsion/home/tv/TVChannelHomeViewModel;

    invoke-static {v0, p1}, Lcom/transsion/home/tv/TVChannelHomeViewModel;->h(Lcom/transsion/home/tv/TVChannelHomeViewModel;Ljava/lang/String;)V

    :cond_5
    return-void
.end method
