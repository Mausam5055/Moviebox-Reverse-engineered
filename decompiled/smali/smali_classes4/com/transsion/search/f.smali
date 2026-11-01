.class public abstract Lcom/transsion/search/f;
.super Ljava/lang/Object;


# direct methods
.method public static final a(Landroid/content/Context;I)Landroid/text/style/ImageSpan;
    .locals 2

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/text/style/ImageSpan;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, v1}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;II)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/text/style/ImageSpan;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;II)V

    :goto_0
    return-object v0
.end method

.method public static final b(Landroid/content/Context;)Landroid/text/style/ImageSpan;
    .locals 3

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/transsion/search/R$drawable;->ic_search_result_split:I

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_0

    new-instance v1, Landroid/text/style/ImageSpan;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v0, v2}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;II)V

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/text/style/ImageSpan;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v0, v2}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;II)V

    :goto_0
    return-object v1
.end method

.method public static final c(Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;)V
    .locals 4

    const-string v0, "playModule"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/moviedetailapi/bean/Subject;->isJumpBrowser()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/moviedetailapi/bean/Subject;->getPlayUrl()Lcom/transsion/moviedetailapi/bean/PlayUrl;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/transsion/moviedetailapi/bean/PlayUrl;->getPlayUrl()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-static {p0}, Lak/k;->i(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/moviedetailapi/bean/Subject;->isJumpWebview()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/transsion/moviedetailapi/bean/Subject;->getPlayUrl()Lcom/transsion/moviedetailapi/bean/PlayUrl;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/transsion/moviedetailapi/bean/PlayUrl;->getPlayUrl()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    const/4 p1, 0x0

    invoke-static {p0, p1, v1, p1}, Lak/k;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_1

    :cond_2
    const-string v0, "/movie/detail"

    invoke-static {v0}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/transsion/moviedetailapi/SubjectType;->MOVIE:Lcom/transsion/moviedetailapi/SubjectType;

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    move-result v2

    :goto_0
    const-string v3, "subject_type"

    invoke-virtual {v0, v3, v2}, Lcom/therouter/router/Navigator;->F(Ljava/lang/String;I)Lcom/therouter/router/Navigator;

    move-result-object v0

    const-string v2, "id"

    invoke-virtual {p0}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object v0

    const-string v2, "module_name"

    invoke-virtual {v0, v2, p1}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p1

    const-string v0, "season"

    invoke-virtual {p0}, Lcom/transsion/moviedetailapi/bean/Subject;->getSeason()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/therouter/router/Navigator;->F(Ljava/lang/String;I)Lcom/therouter/router/Navigator;

    move-result-object p1

    const-string v0, "autoPlay"

    invoke-virtual {p1, v0, v1}, Lcom/therouter/router/Navigator;->z(Ljava/lang/String;Z)Lcom/therouter/router/Navigator;

    move-result-object p1

    const-string v0, "ops"

    invoke-virtual {p0}, Lcom/transsion/moviedetailapi/bean/Subject;->getOps()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p0

    invoke-static {p0}, Lak/k;->p(Lcom/therouter/router/Navigator;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public static final d(Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 21

    move-object/from16 v7, p0

    move-object/from16 v2, p2

    move-object/from16 v0, p3

    const-string v1, "pageName"

    move-object/from16 v3, p1

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "context"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "playModule"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "download_subject"

    if-eqz v7, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    move-result-object v1

    sget-object v4, Lcom/transsion/moviedetailapi/SubjectType;->SHORT_TV:Lcom/transsion/moviedetailapi/SubjectType;

    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    move-result v4

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v4, :cond_1

    sget-object v0, Lcom/transsnet/downloader/DownloadManagerApi;->j:Lcom/transsnet/downloader/DownloadManagerApi$a;

    invoke-virtual {v0}, Lcom/transsnet/downloader/DownloadManagerApi$a;->a()Lcom/transsnet/downloader/DownloadManagerApi;

    move-result-object v0

    move-object v1, v2

    check-cast v1, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/moviedetailapi/bean/Subject;->getOps()Ljava/lang/String;

    move-result-object v4

    const/16 v10, 0x180

    const/4 v11, 0x0

    const-string v5, ""

    const-string v6, "download_subject"

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v12, 0x0

    move-object/from16 v2, p1

    move-object v3, v5

    move-object v5, v6

    move v6, v8

    move-object/from16 v7, p0

    move-object v8, v9

    move-object v9, v12

    invoke-static/range {v0 .. v11}, Lcom/transsnet/downloader/DownloadManagerApi;->e0(Lcom/transsnet/downloader/DownloadManagerApi;Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;Ljava/lang/Boolean;ILjava/lang/Object;)V

    goto/16 :goto_8

    :cond_1
    :goto_0
    sget-object v1, Lak/t;->a:Lak/t;

    invoke-virtual {v1}, Lak/t;->b()Z

    move-result v1

    const-string v8, "play_subject"

    if-eqz v1, :cond_3

    invoke-static {v7, v0}, Lcom/transsion/search/f;->c(Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;)V

    :cond_2
    :goto_1
    move-object v13, v8

    goto/16 :goto_8

    :cond_3
    sget-object v0, Lcom/transsnet/downloader/DownloadManagerApi;->j:Lcom/transsnet/downloader/DownloadManagerApi$a;

    invoke-virtual {v0}, Lcom/transsnet/downloader/DownloadManagerApi$a;->a()Lcom/transsnet/downloader/DownloadManagerApi;

    move-result-object v14

    const/4 v1, 0x0

    if-eqz v7, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    move-result-object v4

    move-object v15, v4

    goto :goto_2

    :cond_4
    move-object v15, v1

    :goto_2
    if-eqz v7, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/moviedetailapi/bean/Subject;->getResourceDetector()Lcom/transsion/moviedetailapi/bean/ResourceDetectors;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/ResourceDetectors;->getResourceId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v16, v4

    goto :goto_3

    :cond_5
    move-object/from16 v16, v1

    :goto_3
    const/4 v4, 0x0

    if-eqz v7, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/moviedetailapi/bean/Subject;->isSeries()Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_6

    move/from16 v17, v6

    goto :goto_4

    :cond_6
    move/from16 v17, v4

    :goto_4
    const/16 v19, 0x8

    const/16 v20, 0x0

    const/16 v18, 0x0

    invoke-static/range {v14 .. v20}, Lcom/transsnet/downloader/DownloadManagerApi;->x0(Lcom/transsnet/downloader/DownloadManagerApi;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    if-eqz v7, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/transsnet/downloader/DownloadManagerApi$a;->a()Lcom/transsnet/downloader/DownloadManagerApi;

    move-result-object v0

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    invoke-static/range {v0 .. v6}, Lcom/transsnet/downloader/DownloadManagerApi;->z0(Lcom/transsnet/downloader/DownloadManagerApi;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_1

    :cond_7
    invoke-virtual {v0}, Lcom/transsnet/downloader/DownloadManagerApi$a;->a()Lcom/transsnet/downloader/DownloadManagerApi;

    move-result-object v0

    check-cast v2, Landroidx/fragment/app/FragmentActivity;

    if-eqz v7, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/moviedetailapi/bean/Subject;->getOps()Ljava/lang/String;

    move-result-object v1

    :cond_8
    move-object v5, v1

    if-eqz v7, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/moviedetailapi/bean/Subject;->getResourceDetector()Lcom/transsion/moviedetailapi/bean/ResourceDetectors;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/ResourceDetectors;->getResourceLink()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_9

    goto :goto_6

    :cond_9
    :goto_5
    move-object v6, v1

    goto :goto_7

    :cond_a
    :goto_6
    const-string v1, ""

    goto :goto_5

    :goto_7
    const/16 v11, 0x3c0

    const/4 v12, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v14, 0x0

    move-object v1, v2

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move v10, v14

    invoke-static/range {v0 .. v12}, Lcom/transsnet/downloader/DownloadManagerApi;->M(Lcom/transsnet/downloader/DownloadManagerApi;Landroidx/fragment/app/FragmentActivity;Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    :goto_8
    return-object v13
.end method

.method public static final e(Landroid/content/res/Resources;)Z
    .locals 1

    const-string v0, "resources"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 p0, p0, 0xf

    const/4 v0, 0x3

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
