.class public abstract Lov/c;
.super Ljava/lang/Object;


# direct methods
.method public static synthetic a(Ljava/lang/String;Ljava/lang/Integer;Lcom/therouter/router/Navigator;)Lcom/therouter/router/Navigator;
    .locals 0

    invoke-static {p0, p1, p2}, Lov/c;->d(Ljava/lang/String;Ljava/lang/Integer;Lcom/therouter/router/Navigator;)Lcom/therouter/router/Navigator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ljava/lang/String;Ljava/lang/Integer;Lcom/therouter/router/Navigator;)Lcom/therouter/router/Navigator;
    .locals 0

    invoke-static {p0, p1, p2}, Lov/c;->j(Ljava/lang/String;Ljava/lang/Integer;Lcom/therouter/router/Navigator;)Lcom/therouter/router/Navigator;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;->getVideos()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    if-eqz p0, :cond_0

    new-instance v0, Lov/a;

    invoke-direct {v0, p2, p1}, Lov/a;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {p0, v0}, Lpv/b;->a(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Lkotlin/jvm/functions/Function1;)V

    :cond_0
    return-void
.end method

.method private static final d(Ljava/lang/String;Ljava/lang/Integer;Lcom/therouter/router/Navigator;)Lcom/therouter/router/Navigator;
    .locals 1

    const-string v0, "navigator"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "from_opt_id"

    invoke-virtual {p2, v0, p0}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string p2, "tab_id"

    invoke-virtual {p0, p2, p1}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p0

    return-object p0
.end method

.method public static final e(Lcom/transsion/ugcvideodetail/api/bean/UGCContent;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 3

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/ugcvideodetail/api/bean/UGCContent;->getTopicType()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x7697b173

    if-eq v1, v2, :cond_5

    const v2, 0x1e76f7ac

    if-eq v1, v2, :cond_3

    const p1, 0x7938df55    # 5.999452E34f

    if-eq v1, p1, :cond_1

    goto :goto_1

    :cond_1
    const-string p1, "VERTICAL_RANK"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/ugcvideodetail/api/bean/UGCContent;->getVerticalRank()Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;

    move-result-object p0

    if-eqz p0, :cond_7

    invoke-static {p0}, Lov/c;->g(Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;)V

    goto :goto_1

    :cond_3
    const-string v1, "UGC_COLLECTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/transsion/ugcvideodetail/api/bean/UGCContent;->getCollection()Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;

    move-result-object p0

    if-eqz p0, :cond_7

    invoke-static {p0, p1, p2}, Lov/c;->c(Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;Ljava/lang/Integer;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string v1, "UGC_VIDEO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/transsion/ugcvideodetail/api/bean/UGCContent;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    move-result-object p0

    if-eqz p0, :cond_7

    invoke-static {p0, p1, p2}, Lov/c;->h(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/lang/Integer;Ljava/lang/String;)V

    :cond_7
    :goto_1
    return-void
.end method

.method public static synthetic f(Lcom/transsion/ugcvideodetail/api/bean/UGCContent;Ljava/lang/Integer;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move-object p2, v0

    :cond_1
    invoke-static {p0, p1, p2}, Lov/c;->e(Lcom/transsion/ugcvideodetail/api/bean/UGCContent;Ljava/lang/Integer;Ljava/lang/String;)V

    return-void
.end method

.method public static final g(Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;->getDeeplink()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;->getDeeplink()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lak/k;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_2
    return-void

    :cond_3
    :goto_1
    const-string v1, "/home/ugc_ranking"

    invoke-static {v1}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object v1

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;->getVideos()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCategory()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_4
    move-object v2, v0

    :goto_2
    const-string v3, "category"

    invoke-virtual {v1, v3, v2}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object v1

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;->getId()Ljava/lang/String;

    move-result-object v0

    :cond_5
    const-string p0, "tabId"

    invoke-virtual {v1, p0, v0}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p0

    invoke-static {p0}, Lak/k;->p(Lcom/therouter/router/Navigator;)V

    return-void
.end method

.method public static final h(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    new-instance v0, Lov/b;

    invoke-direct {v0, p2, p1}, Lov/b;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {p0, v0}, Lpv/b;->a(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Lkotlin/jvm/functions/Function1;)V

    :cond_0
    return-void
.end method

.method public static synthetic i(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/lang/Integer;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move-object p2, v0

    :cond_1
    invoke-static {p0, p1, p2}, Lov/c;->h(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/lang/Integer;Ljava/lang/String;)V

    return-void
.end method

.method private static final j(Ljava/lang/String;Ljava/lang/Integer;Lcom/therouter/router/Navigator;)Lcom/therouter/router/Navigator;
    .locals 1

    const-string v0, "navigator"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "from_opt_id"

    invoke-virtual {p2, v0, p0}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string p2, "tab_id"

    invoke-virtual {p0, p2, p1}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p0

    return-object p0
.end method
