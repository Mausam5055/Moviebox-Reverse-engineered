.class public final Lcom/transsion/postdetail/ui/view/ImmVideoItemView$e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/share/share/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->T(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/transsion/postdetail/ui/view/ImmVideoItemView;


# direct methods
.method constructor <init>(Landroid/view/View;Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$e;->a:Landroid/view/View;

    iput-object p2, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$e;->b:Lcom/transsion/postdetail/ui/view/ImmVideoItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/transsion/share/bean/PostType;)V
    .locals 2

    const-string p2, "id"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/transsion/postdetail/ui/dialog/PostConfirmDialog;

    invoke-direct {p1}, Lcom/transsion/postdetail/ui/dialog/PostConfirmDialog;-><init>()V

    new-instance p2, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$e$a;

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$e;->b:Lcom/transsion/postdetail/ui/view/ImmVideoItemView;

    invoke-direct {p2, v0}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$e$a;-><init>(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)V

    invoke-virtual {p1, p2}, Lcom/transsion/postdetail/ui/dialog/PostConfirmDialog;->r0(Lcom/transsion/postdetail/ui/dialog/PostConfirmDialog$a;)V

    iget-object p2, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$e;->b:Lcom/transsion/postdetail/ui/view/ImmVideoItemView;

    invoke-static {p2}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->access$getFragment$p(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)Landroidx/fragment/app/Fragment;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    iget-object p2, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$e;->b:Lcom/transsion/postdetail/ui/view/ImmVideoItemView;

    invoke-static {p2}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->access$getFragment$p(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)Landroidx/fragment/app/Fragment;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentManager;->g0()Z

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "PostConfirmDialog"

    invoke-virtual {p2, v0}, Landroidx/fragment/app/FragmentManager;->k0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2, v0}, Lcom/transsion/baseui/dialog/BaseDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    nop

    :cond_1
    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$e;->b:Lcom/transsion/postdetail/ui/view/ImmVideoItemView;

    invoke-static {v0, p1}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->access$finishAfterReport(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;Ljava/lang/String;)V

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 96

    move-object/from16 v0, p0

    const-string v1, "url"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "fileName"

    move-object/from16 v2, p2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "fileSize"

    move-object/from16 v2, p3

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "fileImage"

    move-object/from16 v2, p4

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/transsion/baseui/util/c;->a:Lcom/transsion/baseui/util/c;

    iget-object v2, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$e;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Lcom/transsion/baseui/util/c;->a(IJ)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$e;->b:Lcom/transsion/postdetail/ui/view/ImmVideoItemView;

    invoke-static {v1}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->access$getData$p(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Media;->getVideo()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    invoke-static {v1}, Lcom/transsion/postdetail/util/u;->a(Ljava/util/List;)Lcom/transsion/moviedetailapi/bean/Video;

    move-result-object v1

    iget-object v3, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$e;->b:Lcom/transsion/postdetail/ui/view/ImmVideoItemView;

    invoke-static {v3}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->access$getData$p(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    move-object v3, v2

    :goto_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v3, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$e;->b:Lcom/transsion/postdetail/ui/view/ImmVideoItemView;

    invoke-static {v3}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->access$getData$p(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getContent()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_3
    move-object v3, v2

    :cond_4
    :goto_2
    move-object v7, v3

    const-string v3, ""

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Video;->getUrl()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_5

    goto :goto_3

    :cond_5
    move-object v5, v4

    goto :goto_4

    :cond_6
    :goto_3
    move-object v5, v3

    :goto_4
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Video;->getUrl()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_7

    goto :goto_5

    :cond_7
    move-object v6, v4

    goto :goto_6

    :cond_8
    :goto_5
    move-object v6, v3

    :goto_6
    iget-object v4, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$e;->b:Lcom/transsion/postdetail/ui/view/ImmVideoItemView;

    invoke-static {v4}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->access$getData$p(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    move-result-object v4

    if-eqz v4, :cond_a

    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    move-result-object v4

    if-eqz v4, :cond_a

    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/Media;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    move-result-object v4

    if-eqz v4, :cond_a

    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_9

    goto :goto_7

    :cond_9
    move-object v8, v4

    goto :goto_8

    :cond_a
    :goto_7
    move-object v8, v3

    :goto_8
    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Video;->getSize()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v9, v1

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object v9, v1

    goto :goto_9

    :cond_b
    move-object v9, v2

    :goto_9
    iget-object v1, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$e;->b:Lcom/transsion/postdetail/ui/view/ImmVideoItemView;

    invoke-static {v1}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->access$getData$p(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getPostId()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v35, v1

    goto :goto_a

    :cond_c
    move-object/from16 v35, v2

    :goto_a
    iget-object v1, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$e;->b:Lcom/transsion/postdetail/ui/view/ImmVideoItemView;

    invoke-static {v1}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->access$getData$p(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getPostId()Ljava/lang/String;

    move-result-object v1

    move-object v10, v1

    goto :goto_b

    :cond_d
    move-object v10, v2

    :goto_b
    new-instance v1, Lcom/transsion/baselib/db/download/DownloadBean;

    move-object v4, v1

    const v94, 0xffff

    const/16 v95, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const-wide/16 v39, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const-wide/16 v45, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const-wide/16 v49, 0x0

    const/16 v51, 0x0

    const-wide/16 v52, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v57, 0x0

    const/16 v58, 0x0

    const/16 v59, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    const/16 v62, 0x0

    const/16 v63, 0x0

    const/16 v64, 0x0

    const/16 v65, 0x0

    const/16 v66, 0x0

    const/16 v67, 0x0

    const/16 v68, 0x0

    const/16 v69, 0x0

    const/16 v70, 0x0

    const/16 v71, 0x0

    const/16 v72, 0x0

    const/16 v73, 0x0

    const/16 v74, 0x0

    const/16 v75, 0x0

    const/16 v76, 0x0

    const/16 v77, 0x0

    const/16 v78, 0x0

    const/16 v79, 0x0

    const/16 v80, 0x0

    const/16 v81, 0x0

    const/16 v82, 0x0

    const/16 v83, 0x0

    const/16 v84, 0x0

    const/16 v85, 0x0

    const/16 v86, 0x0

    const/16 v87, 0x0

    const/16 v88, 0x0

    const/16 v89, 0x0

    const/16 v90, 0x0

    const/16 v91, 0x0

    const v92, -0x8000040

    const/16 v93, -0x1

    invoke-direct/range {v4 .. v95}, Lcom/transsion/baselib/db/download/DownloadBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;JIIIJJIIIIIIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JIJLjava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZILjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v4, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$e;->b:Lcom/transsion/postdetail/ui/view/ImmVideoItemView;

    invoke-static {v4}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->access$getData$p(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    move-result-object v4

    if-eqz v4, :cond_e

    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    move-result-object v4

    if-eqz v4, :cond_e

    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/Media;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    move-result-object v4

    if-eqz v4, :cond_e

    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/Cover;->getThumbnail()Ljava/lang/String;

    move-result-object v4

    goto :goto_c

    :cond_e
    move-object v4, v2

    :goto_c
    invoke-virtual {v1, v4}, Lcom/transsion/baselib/db/download/DownloadBean;->setThumbnail(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$e;->b:Lcom/transsion/postdetail/ui/view/ImmVideoItemView;

    invoke-static {v4}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->access$getData$p(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    move-result-object v4

    if-eqz v4, :cond_f

    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getBuiltIn()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_f

    iget-object v2, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$e;->b:Lcom/transsion/postdetail/ui/view/ImmVideoItemView;

    invoke-static {v2, v1}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->access$saveBuiltInVideo(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;Lcom/transsion/baselib/db/download/DownloadBean;)V

    goto :goto_f

    :cond_f
    sget-object v4, Lcom/transsnet/downloader/DownloadManagerApi;->j:Lcom/transsnet/downloader/DownloadManagerApi$a;

    invoke-virtual {v4}, Lcom/transsnet/downloader/DownloadManagerApi$a;->a()Lcom/transsnet/downloader/DownloadManagerApi;

    move-result-object v11

    iget-object v4, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$e;->b:Lcom/transsion/postdetail/ui/view/ImmVideoItemView;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v12, v4

    check-cast v12, Landroidx/fragment/app/FragmentActivity;

    iget-object v4, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$e;->b:Lcom/transsion/postdetail/ui/view/ImmVideoItemView;

    invoke-static {v4}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->access$getData$p(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    move-result-object v4

    if-eqz v4, :cond_10

    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getOps()Ljava/lang/String;

    move-result-object v2

    :cond_10
    move-object v15, v2

    iget-object v2, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$e;->b:Lcom/transsion/postdetail/ui/view/ImmVideoItemView;

    invoke-static {v2}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->access$getData$p(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    move-result-object v2

    if-eqz v2, :cond_12

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v2

    if-eqz v2, :cond_12

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Subject;->getResourceDetector()Lcom/transsion/moviedetailapi/bean/ResourceDetectors;

    move-result-object v2

    if-eqz v2, :cond_12

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/ResourceDetectors;->getResourceLink()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_11

    goto :goto_d

    :cond_11
    move-object/from16 v16, v2

    goto :goto_e

    :cond_12
    :goto_d
    move-object/from16 v16, v3

    :goto_e
    const/16 v19, 0x60

    const/16 v20, 0x0

    const-string v14, "postdetail_video"

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v13, v1

    invoke-static/range {v11 .. v20}, Lcom/transsnet/downloader/DownloadManagerApi;->P(Lcom/transsnet/downloader/DownloadManagerApi;Landroidx/fragment/app/FragmentActivity;Lcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;ILjava/lang/Object;)V

    :goto_f
    sget-object v1, Lcom/transsion/postdetail/helper/a;->a:Lcom/transsion/postdetail/helper/a;

    iget-object v2, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$e;->b:Lcom/transsion/postdetail/ui/view/ImmVideoItemView;

    invoke-static {v2}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->access$getData$p(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    move-result-object v2

    iget-object v3, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$e;->b:Lcom/transsion/postdetail/ui/view/ImmVideoItemView;

    invoke-static {v3}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->access$getPageFrom$p(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "postdetail_video"

    invoke-virtual {v1, v2, v4, v3}, Lcom/transsion/postdetail/helper/a;->i(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/share/share/a$a;->c(Lcom/transsion/share/share/a;Ljava/lang/String;)V

    return-void
.end method
