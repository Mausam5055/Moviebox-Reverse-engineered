.class public final Lcom/transsion/ugcvideodetail/hepler/e$d;
.super Landroidx/viewpager2/adapter/FragmentStateAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ugcvideodetail/hepler/e;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/ugcvideodetail/hepler/e;


# direct methods
.method constructor <init>(Lcom/transsion/ugcvideodetail/hepler/e;Landroidx/fragment/app/Fragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/ugcvideodetail/hepler/e$d;->a:Lcom/transsion/ugcvideodetail/hepler/e;

    invoke-direct {p0, p2}, Landroidx/viewpager2/adapter/FragmentStateAdapter;-><init>(Landroidx/fragment/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public createFragment(I)Landroidx/fragment/app/Fragment;
    .locals 14

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-instance v11, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDetailParams;

    iget-object v5, p0, Lcom/transsion/ugcvideodetail/hepler/e$d;->a:Lcom/transsion/ugcvideodetail/hepler/e;

    invoke-static {v5}, Lcom/transsion/ugcvideodetail/hepler/e;->h(Lcom/transsion/ugcvideodetail/hepler/e;)Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    move-result-object v5

    const/4 v12, 0x0

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getOps()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    move-object v6, v5

    goto :goto_2

    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/transsion/ugcvideodetail/hepler/e$d;->a:Lcom/transsion/ugcvideodetail/hepler/e;

    invoke-static {v5}, Lcom/transsion/ugcvideodetail/hepler/e;->b(Lcom/transsion/ugcvideodetail/hepler/e;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getOps()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_2
    move-object v6, v12

    :goto_2
    iget-object v5, p0, Lcom/transsion/ugcvideodetail/hepler/e$d;->a:Lcom/transsion/ugcvideodetail/hepler/e;

    invoke-static {v5}, Lcom/transsion/ugcvideodetail/hepler/e;->h(Lcom/transsion/ugcvideodetail/hepler/e;)Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getUgcVideoId()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    goto :goto_4

    :cond_3
    :goto_3
    move-object v7, v5

    goto :goto_5

    :cond_4
    :goto_4
    iget-object v5, p0, Lcom/transsion/ugcvideodetail/hepler/e$d;->a:Lcom/transsion/ugcvideodetail/hepler/e;

    invoke-static {v5}, Lcom/transsion/ugcvideodetail/hepler/e;->b(Lcom/transsion/ugcvideodetail/hepler/e;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoId()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_5
    move-object v7, v12

    :goto_5
    iget-object v5, p0, Lcom/transsion/ugcvideodetail/hepler/e$d;->a:Lcom/transsion/ugcvideodetail/hepler/e;

    invoke-static {v5}, Lcom/transsion/ugcvideodetail/hepler/e;->h(Lcom/transsion/ugcvideodetail/hepler/e;)Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getBelongToCollection()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;->getCollectionId()Ljava/lang/String;

    move-result-object v5

    move-object v8, v5

    goto :goto_6

    :cond_6
    move-object v8, v12

    :goto_6
    iget-object v5, p0, Lcom/transsion/ugcvideodetail/hepler/e$d;->a:Lcom/transsion/ugcvideodetail/hepler/e;

    invoke-static {v5}, Lcom/transsion/ugcvideodetail/hepler/e;->h(Lcom/transsion/ugcvideodetail/hepler/e;)Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-virtual {v5}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getSubjectId()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_7

    goto :goto_8

    :cond_7
    :goto_7
    move-object v9, v5

    goto :goto_9

    :cond_8
    :goto_8
    iget-object v5, p0, Lcom/transsion/ugcvideodetail/hepler/e$d;->a:Lcom/transsion/ugcvideodetail/hepler/e;

    invoke-static {v5}, Lcom/transsion/ugcvideodetail/hepler/e;->b(Lcom/transsion/ugcvideodetail/hepler/e;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v5

    if-eqz v5, :cond_9

    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    move-result-object v5

    goto :goto_7

    :cond_9
    move-object v9, v12

    :goto_9
    iget-object v5, p0, Lcom/transsion/ugcvideodetail/hepler/e$d;->a:Lcom/transsion/ugcvideodetail/hepler/e;

    invoke-static {v5}, Lcom/transsion/ugcvideodetail/hepler/e;->h(Lcom/transsion/ugcvideodetail/hepler/e;)Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    move-result-object v5

    if-eqz v5, :cond_b

    invoke-virtual {v5}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCategory()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_a

    goto :goto_b

    :cond_a
    :goto_a
    move-object v10, v5

    goto :goto_c

    :cond_b
    :goto_b
    iget-object v5, p0, Lcom/transsion/ugcvideodetail/hepler/e$d;->a:Lcom/transsion/ugcvideodetail/hepler/e;

    invoke-static {v5}, Lcom/transsion/ugcvideodetail/hepler/e;->b(Lcom/transsion/ugcvideodetail/hepler/e;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v5

    if-eqz v5, :cond_c

    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoType()Ljava/lang/String;

    move-result-object v5

    goto :goto_a

    :cond_c
    move-object v10, v12

    :goto_c
    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDetailParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/transsion/ugcvideodetail/hepler/e$d;->a:Lcom/transsion/ugcvideodetail/hepler/e;

    invoke-static {v5}, Lcom/transsion/ugcvideodetail/hepler/e;->f(Lcom/transsion/ugcvideodetail/hepler/e;)Lcom/transsion/ugcvideodetail/hepler/UGCVideoPlayFrom;

    move-result-object v5

    sget-object v6, Lcom/transsion/ugcvideodetail/hepler/UGCVideoPlayFrom;->ON_LINE_VIDEO:Lcom/transsion/ugcvideodetail/hepler/UGCVideoPlayFrom;

    const-string v7, "TYPE_LOCAL_OUT"

    if-ne v5, v6, :cond_d

    const-string v5, "TYPE_ONLINE"

    goto :goto_d

    :cond_d
    iget-object v5, p0, Lcom/transsion/ugcvideodetail/hepler/e$d;->a:Lcom/transsion/ugcvideodetail/hepler/e;

    invoke-static {v5}, Lcom/transsion/ugcvideodetail/hepler/e;->b(Lcom/transsion/ugcvideodetail/hepler/e;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v5

    if-eqz v5, :cond_e

    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->isInnerRes()Z

    move-result v5

    if-ne v5, v4, :cond_e

    const-string v5, "TYPE_LOCAL_INNER"

    goto :goto_d

    :cond_e
    move-object v5, v7

    :goto_d
    const-string v6, "from_opt_id"

    const-string v8, "video_params"

    const-string v9, "page_name"

    if-nez p1, :cond_10

    sget-object p1, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailForYouFragment;->j:Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailForYouFragment$a;

    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailForYouFragment$a;->a()Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailForYouFragment;

    move-result-object p1

    iget-object v10, p0, Lcom/transsion/ugcvideodetail/hepler/e$d;->a:Lcom/transsion/ugcvideodetail/hepler/e;

    invoke-static {v10}, Lcom/transsion/ugcvideodetail/hepler/e;->e(Lcom/transsion/ugcvideodetail/hepler/e;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v9, v13}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    invoke-static {v8, v11}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    const-string v11, "type"

    invoke-static {v11, v5}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v11

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-static {v10}, Lcom/transsion/ugcvideodetail/hepler/e;->b(Lcom/transsion/ugcvideodetail/hepler/e;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v5

    if-eqz v5, :cond_f

    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getName()Ljava/lang/String;

    move-result-object v12

    :cond_f
    const-string v5, "content_name"

    invoke-static {v5, v12}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    invoke-static {v10}, Lcom/transsion/ugcvideodetail/hepler/e;->c(Lcom/transsion/ugcvideodetail/hepler/e;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    const/4 v7, 0x5

    new-array v7, v7, [Lkotlin/Pair;

    aput-object v9, v7, v3

    aput-object v8, v7, v4

    aput-object v11, v7, v2

    aput-object v5, v7, v1

    aput-object v6, v7, v0

    invoke-static {v7}, Landroidx/core/os/d;->b([Lkotlin/Pair;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    goto :goto_e

    :cond_10
    sget-object p1, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailCommentFragment;->h:Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailCommentFragment$a;

    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailCommentFragment$a;->a()Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailCommentFragment;

    move-result-object p1

    iget-object v5, p0, Lcom/transsion/ugcvideodetail/hepler/e$d;->a:Lcom/transsion/ugcvideodetail/hepler/e;

    invoke-static {v5}, Lcom/transsion/ugcvideodetail/hepler/e;->e(Lcom/transsion/ugcvideodetail/hepler/e;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    invoke-static {v8, v11}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    const-string v9, "page_from"

    invoke-static {v5}, Lcom/transsion/ugcvideodetail/hepler/e;->e(Lcom/transsion/ugcvideodetail/hepler/e;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    invoke-static {v5}, Lcom/transsion/ugcvideodetail/hepler/e;->c(Lcom/transsion/ugcvideodetail/hepler/e;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    new-array v0, v0, [Lkotlin/Pair;

    aput-object v7, v0, v3

    aput-object v8, v0, v4

    aput-object v9, v0, v2

    aput-object v5, v0, v1

    invoke-static {v0}, Landroidx/core/os/d;->b([Lkotlin/Pair;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    :goto_e
    return-object p1
.end method

.method public getItemCount()I
    .locals 2

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/hepler/e$d;->a:Lcom/transsion/ugcvideodetail/hepler/e;

    invoke-static {v0}, Lcom/transsion/ugcvideodetail/hepler/e;->f(Lcom/transsion/ugcvideodetail/hepler/e;)Lcom/transsion/ugcvideodetail/hepler/UGCVideoPlayFrom;

    move-result-object v0

    sget-object v1, Lcom/transsion/ugcvideodetail/hepler/UGCVideoPlayFrom;->LOCAL_VIDEO:Lcom/transsion/ugcvideodetail/hepler/UGCVideoPlayFrom;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/hepler/e$d;->a:Lcom/transsion/ugcvideodetail/hepler/e;

    invoke-static {v0}, Lcom/transsion/ugcvideodetail/hepler/e;->g(Lcom/transsion/ugcvideodetail/hepler/e;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/hepler/e$d;->a:Lcom/transsion/ugcvideodetail/hepler/e;

    invoke-static {v0}, Lcom/transsion/ugcvideodetail/hepler/e;->g(Lcom/transsion/ugcvideodetail/hepler/e;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method
