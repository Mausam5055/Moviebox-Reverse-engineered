.class public final Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment$b;
.super Lny/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;


# direct methods
.method constructor <init>(Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment$b;->a:Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;

    invoke-direct {p0}, Lny/d;-><init>()V

    return-void
.end method


# virtual methods
.method public h(Lcom/transsion/baselib/db/download/DownloadBean;I)V
    .locals 5

    const-string v0, "bean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment$b;->a:Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;

    invoke-static {v0}, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;->v0(Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;)Lcom/transsion/ugcvideodetail/adapter/a;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    invoke-virtual {v3}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;->getUgcVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getUgcVideoId()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    if-ltz v1, :cond_3

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment$b;->a:Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;

    invoke-static {v0}, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;->v0(Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;)Lcom/transsion/ugcvideodetail/adapter/a;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_3
    iget-object p2, p0, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment$b;->a:Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;

    invoke-static {p2, p1}, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;->w0(Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;Lcom/transsion/baselib/db/download/DownloadBean;)V

    return-void
.end method
