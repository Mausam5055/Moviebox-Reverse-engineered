.class public final Ltv/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltv/a$a;,
        Ltv/a$b;
    }
.end annotation


# static fields
.field public static final e:Ltv/a$a;


# instance fields
.field private final a:Ltv/a$b;

.field private final b:Ltv/i;

.field private final c:Ltv/e;

.field private d:Lcom/transsion/share/share/ShareDialogFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ltv/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ltv/a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Ltv/a;->e:Ltv/a$a;

    return-void
.end method

.method public constructor <init>(Ltv/a$b;Ltv/i;Ltv/e;)V
    .locals 1

    const-string v0, "host"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reportDelegate"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloadDelegate"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltv/a;->a:Ltv/a$b;

    iput-object p2, p0, Ltv/a;->b:Ltv/i;

    iput-object p3, p0, Ltv/a;->c:Ltv/e;

    return-void
.end method

.method private final b()V
    .locals 10

    iget-object v0, p0, Ltv/a;->a:Ltv/a$b;

    invoke-interface {v0}, Ltv/a$b;->c()Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Ltv/a;->a:Ltv/a$b;

    invoke-interface {v0}, Ltv/a$b;->c()Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Ltv/a;->b:Ltv/i;

    iget-object v2, p0, Ltv/a;->a:Ltv/a$b;

    invoke-interface {v2}, Ltv/a$b;->getData()Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    move-result-object v2

    const/4 v9, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;->getUgcVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    move-result-object v2

    move-object v3, v2

    goto :goto_0

    :cond_0
    move-object v3, v9

    :goto_0
    iget-object v2, p0, Ltv/a;->a:Ltv/a$b;

    invoke-interface {v2}, Ltv/a$b;->b()Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->Y0()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object v4, v2

    goto :goto_1

    :cond_1
    move-object v4, v9

    :goto_1
    const/16 v7, 0x18

    const/4 v8, 0x0

    const-string v2, "comment"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v8}, Ltv/i;->b(Ltv/i;Ljava/lang/String;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)V

    sget-object v1, Lcom/transsion/ugcvideodetail/dialog/UGCImmVideoCommentDialog;->h:Lcom/transsion/ugcvideodetail/dialog/UGCImmVideoCommentDialog$a;

    iget-object v2, p0, Ltv/a;->a:Ltv/a$b;

    invoke-interface {v2}, Ltv/a$b;->getData()Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;->getUgcVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getUgcVideoId()Ljava/lang/String;

    move-result-object v9

    :cond_2
    iget-object v2, p0, Ltv/a;->a:Ltv/a$b;

    invoke-interface {v2}, Ltv/a$b;->getData()Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;->getUgcVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getInteractiveInfo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoInteractiveInfo;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoInteractiveInfo;->getCommentNum()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-static {v2}, Lkotlin/text/StringsKt;->v(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v1, v9, v2}, Lcom/transsion/ugcvideodetail/dialog/UGCImmVideoCommentDialog$a;->a(Ljava/lang/String;I)Lcom/transsion/ugcvideodetail/dialog/UGCImmVideoCommentDialog;

    move-result-object v1

    const-string v2, "immComment"

    invoke-virtual {v1, v0, v2}, Lcom/transsion/baseui/dialog/BaseDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method private final c()V
    .locals 13

    iget-object v0, p0, Ltv/a;->a:Ltv/a$b;

    invoke-interface {v0}, Ltv/a$b;->c()Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    instance-of v2, v0, Landroidx/fragment/app/FragmentActivity;

    if-eqz v2, :cond_1

    move-object v4, v0

    goto :goto_1

    :cond_1
    move-object v4, v1

    :goto_1
    if-nez v4, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Ltv/a;->a:Ltv/a$b;

    invoke-interface {v0}, Ltv/a$b;->getData()Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;->getUgcVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    iget-object v2, p0, Ltv/a;->a:Ltv/a$b;

    invoke-interface {v2}, Ltv/a$b;->g()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v1, p0, Ltv/a;->c:Ltv/e;

    iget-object v2, p0, Ltv/a;->b:Ltv/i;

    invoke-virtual {v1, v0, v2}, Ltv/e;->f(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ltv/i;)V

    goto :goto_2

    :cond_4
    iget-object v5, p0, Ltv/a;->b:Ltv/i;

    iget-object v2, p0, Ltv/a;->a:Ltv/a$b;

    invoke-interface {v2}, Ltv/a$b;->b()Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->Y0()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :cond_5
    move-object v8, v1

    const/16 v11, 0x18

    const/4 v12, 0x0

    const-string v6, "download"

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v7, v0

    invoke-static/range {v5 .. v12}, Ltv/i;->b(Ltv/i;Ljava/lang/String;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)V

    iget-object v3, p0, Ltv/a;->c:Ltv/e;

    iget-object v1, p0, Ltv/a;->a:Ltv/a$b;

    invoke-interface {v1}, Ltv/a$b;->d()Ljava/lang/String;

    move-result-object v6

    iget-object v1, p0, Ltv/a;->a:Ltv/a$b;

    invoke-interface {v1}, Ltv/a$b;->f()Ljava/lang/String;

    move-result-object v7

    iget-object v1, p0, Ltv/a;->a:Ltv/a$b;

    invoke-interface {v1}, Ltv/a$b;->e()Ljava/lang/String;

    move-result-object v8

    move-object v5, v0

    invoke-virtual/range {v3 .. v8}, Ltv/e;->l(Landroidx/fragment/app/FragmentActivity;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_2
    return-void
.end method

.method private final d()V
    .locals 10

    sget-object v0, Lnh/m;->a:Lnh/m;

    invoke-virtual {v0}, Lnh/m;->e()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Luh/b;->a:Luh/b$a;

    sget v1, Lcom/tn/lib/widget/R$string;->no_network_toast:I

    invoke-virtual {v0, v1}, Luh/b$a;->d(I)V

    return-void

    :cond_0
    iget-object v2, p0, Ltv/a;->b:Ltv/i;

    iget-object v0, p0, Ltv/a;->a:Ltv/a$b;

    invoke-interface {v0}, Ltv/a$b;->getData()Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;->getUgcVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    move-result-object v0

    move-object v4, v0

    goto :goto_0

    :cond_1
    move-object v4, v1

    :goto_0
    iget-object v0, p0, Ltv/a;->a:Ltv/a$b;

    invoke-interface {v0}, Ltv/a$b;->b()Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->Y0()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    move-object v5, v0

    goto :goto_1

    :cond_2
    move-object v5, v1

    :goto_1
    const/16 v8, 0x18

    const/4 v9, 0x0

    const-string v3, "favorite"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v9}, Ltv/i;->b(Ltv/i;Ljava/lang/String;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)V

    iget-object v0, p0, Ltv/a;->a:Ltv/a$b;

    invoke-interface {v0}, Ltv/a$b;->getData()Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;->getUgcVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    move-result-object v0

    if-nez v0, :cond_3

    goto/16 :goto_6

    :cond_3
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getUgcVideoId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    return-void

    :cond_4
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getInteractiveInfo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoInteractiveInfo;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoInteractiveInfo;->getHasFavorite()Ljava/lang/Boolean;

    move-result-object v2

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_2

    :cond_5
    move v2, v3

    :goto_2
    xor-int/lit8 v4, v2, 0x1

    if-nez v2, :cond_6

    sget v5, Lcom/transsion/ugcvideodetail/R$string;->ugc_video_detail_added_to_list:I

    goto :goto_3

    :cond_6
    sget v5, Lcom/transsion/ugcvideodetail/R$string;->ugc_video_detail_removed_from_list:I

    :goto_3
    invoke-static {v5}, Lcom/transsion/baseui/util/m;->c(I)V

    iget-object v5, p0, Ltv/a;->a:Ltv/a$b;

    invoke-interface {v5}, Ltv/a$b;->a()Lqv/r;

    move-result-object v5

    iget-object v5, v5, Lqv/r;->C:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v5, v4}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getInteractiveInfo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoInteractiveInfo;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoInteractiveInfo;->getFavoriteNum()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-static {v5}, Lkotlin/text/StringsKt;->v(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_4

    :cond_7
    move v5, v3

    :goto_4
    if-nez v2, :cond_8

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_8
    add-int/lit8 v5, v5, -0x1

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    :goto_5
    iget-object v2, p0, Ltv/a;->a:Ltv/a$b;

    invoke-interface {v2}, Ltv/a$b;->a()Lqv/r;

    move-result-object v2

    iget-object v2, v2, Lqv/r;->C:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getInteractiveInfo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoInteractiveInfo;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoInteractiveInfo;->setFavoriteNum(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getInteractiveInfo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoInteractiveInfo;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoInteractiveInfo;->setHasFavorite(Ljava/lang/Boolean;)V

    :cond_a
    iget-object v0, p0, Ltv/a;->a:Ltv/a$b;

    invoke-interface {v0}, Ltv/a$b;->b()Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0, v1, v4}, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;->l0(Ljava/lang/String;Z)V

    :cond_b
    :goto_6
    return-void
.end method

.method private final e()V
    .locals 10

    sget-object v0, Lnh/m;->a:Lnh/m;

    invoke-virtual {v0}, Lnh/m;->e()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Luh/b;->a:Luh/b$a;

    sget v1, Lcom/tn/lib/widget/R$string;->no_network_toast:I

    invoke-virtual {v0, v1}, Luh/b$a;->d(I)V

    return-void

    :cond_0
    iget-object v2, p0, Ltv/a;->b:Ltv/i;

    iget-object v0, p0, Ltv/a;->a:Ltv/a$b;

    invoke-interface {v0}, Ltv/a$b;->getData()Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;->getUgcVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    move-result-object v0

    move-object v4, v0

    goto :goto_0

    :cond_1
    move-object v4, v1

    :goto_0
    iget-object v0, p0, Ltv/a;->a:Ltv/a$b;

    invoke-interface {v0}, Ltv/a$b;->b()Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->Y0()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    move-object v5, v0

    goto :goto_1

    :cond_2
    move-object v5, v1

    :goto_1
    const/16 v8, 0x18

    const/4 v9, 0x0

    const-string v3, "like"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v9}, Ltv/i;->b(Ltv/i;Ljava/lang/String;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)V

    iget-object v0, p0, Ltv/a;->a:Ltv/a$b;

    invoke-interface {v0}, Ltv/a$b;->getData()Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;->getUgcVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    move-result-object v0

    if-nez v0, :cond_3

    goto/16 :goto_6

    :cond_3
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getUgcVideoId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    return-void

    :cond_4
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getInteractiveInfo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoInteractiveInfo;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoInteractiveInfo;->getHasLike()Ljava/lang/Boolean;

    move-result-object v2

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_2

    :cond_5
    move v2, v3

    :goto_2
    xor-int/lit8 v4, v2, 0x1

    if-nez v2, :cond_6

    sget v5, Lcom/transsion/ugcvideodetail/R$string;->ugc_video_detail_liked:I

    goto :goto_3

    :cond_6
    sget v5, Lcom/transsion/ugcvideodetail/R$string;->ugc_video_detail_like_removed:I

    :goto_3
    invoke-static {v5}, Lcom/transsion/baseui/util/m;->c(I)V

    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getInteractiveInfo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoInteractiveInfo;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoInteractiveInfo;->getLikeNum()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-static {v5}, Lkotlin/text/StringsKt;->v(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_4

    :cond_7
    move v5, v3

    :goto_4
    if-nez v2, :cond_8

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_8
    add-int/lit8 v5, v5, -0x1

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    :goto_5
    iget-object v2, p0, Ltv/a;->a:Ltv/a$b;

    invoke-interface {v2}, Ltv/a$b;->a()Lqv/r;

    move-result-object v2

    iget-object v2, v2, Lqv/r;->D:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Ltv/a;->a:Ltv/a$b;

    invoke-interface {v2}, Ltv/a$b;->a()Lqv/r;

    move-result-object v2

    iget-object v2, v2, Lqv/r;->D:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v2, v4}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getInteractiveInfo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoInteractiveInfo;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoInteractiveInfo;->setLikeNum(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getInteractiveInfo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoInteractiveInfo;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoInteractiveInfo;->setHasLike(Ljava/lang/Boolean;)V

    :cond_a
    iget-object v0, p0, Ltv/a;->a:Ltv/a$b;

    invoke-interface {v0}, Ltv/a$b;->b()Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0, v1, v4}, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;->m0(Ljava/lang/String;Z)V

    :cond_b
    :goto_6
    return-void
.end method

.method private final f()V
    .locals 10

    iget-object v0, p0, Ltv/a;->a:Ltv/a$b;

    invoke-interface {v0}, Ltv/a$b;->c()Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Ltv/a;->a:Ltv/a$b;

    invoke-interface {v0}, Ltv/a$b;->c()Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_3

    :try_start_0
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    iget-object v2, p0, Ltv/a;->a:Ltv/a$b;

    invoke-interface {v2}, Ltv/a$b;->b()Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->Y0()Z

    move-result v2

    if-ne v2, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :goto_0
    iget-object v2, p0, Ltv/a;->b:Ltv/i;

    const-string v3, "play_list"

    iget-object v4, p0, Ltv/a;->a:Ltv/a$b;

    invoke-interface {v4}, Ltv/a$b;->getData()Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;->getUgcVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v5

    :goto_1
    iget-object v6, p0, Ltv/a;->a:Ltv/a$b;

    invoke-interface {v6}, Ltv/a$b;->b()Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->Y0()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    :cond_2
    const/16 v8, 0x18

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v9}, Ltv/i;->b(Ltv/i;Ljava/lang/String;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)V

    sget-object v2, Lcom/transsion/ugcvideodetail/dialog/UGCImmVideoPlayListDialog;->k:Lcom/transsion/ugcvideodetail/dialog/UGCImmVideoPlayListDialog$a;

    invoke-virtual {v2, v1}, Lcom/transsion/ugcvideodetail/dialog/UGCImmVideoPlayListDialog$a;->a(Z)Lcom/transsion/ugcvideodetail/dialog/UGCImmVideoPlayListDialog;

    move-result-object v1

    const-string v2, "immPlayList"

    invoke-virtual {v1, v0, v2}, Lcom/transsion/baseui/dialog/BaseDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_3
    invoke-static {v0}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    :cond_3
    return-void
.end method

.method private final g()V
    .locals 10

    sget-object v0, Lnh/m;->a:Lnh/m;

    invoke-virtual {v0}, Lnh/m;->e()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Luh/b;->a:Luh/b$a;

    sget v1, Lcom/tn/lib/widget/R$string;->no_network_toast:I

    invoke-virtual {v0, v1}, Luh/b$a;->d(I)V

    return-void

    :cond_0
    iget-object v2, p0, Ltv/a;->b:Ltv/i;

    iget-object v0, p0, Ltv/a;->a:Ltv/a$b;

    invoke-interface {v0}, Ltv/a$b;->getData()Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;->getUgcVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    move-result-object v0

    move-object v4, v0

    goto :goto_0

    :cond_1
    move-object v4, v1

    :goto_0
    iget-object v0, p0, Ltv/a;->a:Ltv/a$b;

    invoke-interface {v0}, Ltv/a$b;->b()Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->Y0()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    move-object v5, v0

    goto :goto_1

    :cond_2
    move-object v5, v1

    :goto_1
    const/16 v8, 0x18

    const/4 v9, 0x0

    const-string v3, "search"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v9}, Ltv/i;->b(Ltv/i;Ljava/lang/String;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)V

    iget-object v0, p0, Ltv/a;->a:Ltv/a$b;

    invoke-interface {v0}, Ltv/a$b;->getData()Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;->getUgcVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getSearchWord()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_2

    :cond_3
    move-object v0, v1

    :goto_2
    const-string v2, "/ugc_search/search_manager"

    invoke-static {v2}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object v2

    const-string v3, "keyword"

    invoke-virtual {v2, v3, v0}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object v0

    iget-object v2, p0, Ltv/a;->a:Ltv/a$b;

    invoke-interface {v2}, Ltv/a$b;->getData()Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;->getUgcVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getUgcVideoId()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_4
    move-object v2, v1

    :goto_3
    const-string v3, "form_ugc_video_id"

    invoke-virtual {v0, v3, v2}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object v0

    const-string v2, "back_exit"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/therouter/router/Navigator;->z(Ljava/lang/String;Z)Lcom/therouter/router/Navigator;

    move-result-object v0

    iget-object v2, p0, Ltv/a;->a:Ltv/a$b;

    invoke-interface {v2}, Ltv/a$b;->c()Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    goto :goto_4

    :cond_5
    move-object v2, v1

    :goto_4
    const/4 v3, 0x2

    invoke-static {v0, v2, v1, v3, v1}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lbg/c;ILjava/lang/Object;)V

    return-void
.end method

.method private final h()V
    .locals 27

    move-object/from16 v1, p0

    const-string v0, "share"

    sget-object v2, Lnh/m;->a:Lnh/m;

    invoke-virtual {v2}, Lnh/m;->e()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v0, Luh/b;->a:Luh/b$a;

    sget v2, Lcom/tn/lib/widget/R$string;->no_network_toast:I

    invoke-virtual {v0, v2}, Luh/b$a;->d(I)V

    return-void

    :cond_0
    iget-object v3, v1, Ltv/a;->b:Ltv/i;

    iget-object v2, v1, Ltv/a;->a:Ltv/a$b;

    invoke-interface {v2}, Ltv/a$b;->getData()Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    move-result-object v2

    const/4 v11, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;->getUgcVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    move-result-object v2

    move-object v5, v2

    goto :goto_0

    :cond_1
    move-object v5, v11

    :goto_0
    iget-object v2, v1, Ltv/a;->a:Ltv/a$b;

    invoke-interface {v2}, Ltv/a$b;->b()Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->Y0()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object v6, v2

    goto :goto_1

    :cond_2
    move-object v6, v11

    :goto_1
    const/16 v9, 0x18

    const/4 v10, 0x0

    const-string v4, "share"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v10}, Ltv/i;->b(Ltv/i;Ljava/lang/String;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)V

    iget-object v2, v1, Ltv/a;->d:Lcom/transsion/share/share/ShareDialogFragment;

    if-nez v2, :cond_8

    iget-object v2, v1, Ltv/a;->a:Ltv/a$b;

    invoke-interface {v2}, Ltv/a$b;->h()Lcom/transsnet/loginapi/ILoginApi;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {v2}, Lcom/transsnet/loginapi/ILoginApi;->i()Lcom/transsnet/loginapi/bean/UserInfo;

    move-result-object v2

    goto :goto_2

    :cond_3
    move-object v2, v11

    :goto_2
    sget-object v12, Lcom/transsion/share/share/ShareDialogFragment;->s:Lcom/transsion/share/share/ShareDialogFragment$a;

    sget-object v13, Lcom/transsion/share/bean/PostType;->UGC_VIDEO:Lcom/transsion/share/bean/PostType;

    iget-object v3, v1, Ltv/a;->a:Ltv/a$b;

    invoke-interface {v3}, Ltv/a$b;->getData()Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;->getUgcVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getUgcVideoId()Ljava/lang/String;

    move-result-object v3

    move-object v14, v3

    goto :goto_3

    :cond_4
    move-object v14, v11

    :goto_3
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/transsnet/loginapi/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    move-object v15, v2

    goto :goto_4

    :cond_5
    move-object v15, v11

    :goto_4
    sget-object v2, Lcom/transsion/usercenterapi/ReportType;->UFC_VIDEO:Lcom/transsion/usercenterapi/ReportType;

    invoke-virtual {v2}, Lcom/transsion/usercenterapi/ReportType;->getValue()Ljava/lang/String;

    move-result-object v16

    iget-object v2, v1, Ltv/a;->a:Ltv/a$b;

    invoke-interface {v2}, Ltv/a$b;->getData()Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;->getUgcVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getTitle()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v17, v2

    goto :goto_5

    :cond_6
    move-object/from16 v17, v11

    :goto_5
    iget-object v2, v1, Ltv/a;->a:Ltv/a$b;

    invoke-interface {v2}, Ltv/a$b;->getData()Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;->getUgcVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getOps()Ljava/lang/String;

    move-result-object v11

    :cond_7
    move-object/from16 v23, v11

    const/16 v25, 0x800

    const/16 v26, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-string v22, "UGCVideoDetail"

    const/16 v24, 0x0

    invoke-static/range {v12 .. v26}, Lcom/transsion/share/share/ShareDialogFragment$a;->b(Lcom/transsion/share/share/ShareDialogFragment$a;Lcom/transsion/share/bean/PostType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/transsion/share/share/ShareDialogFragment;

    move-result-object v2

    iput-object v2, v1, Ltv/a;->d:Lcom/transsion/share/share/ShareDialogFragment;

    if-eqz v2, :cond_8

    new-instance v3, Ltv/a$c;

    invoke-direct {v3}, Ltv/a$c;-><init>()V

    invoke-virtual {v2, v3}, Lcom/transsion/share/share/ShareDialogFragment;->G0(Lcom/transsion/share/share/a;)V

    :cond_8
    :try_start_0
    iget-object v2, v1, Ltv/a;->a:Ltv/a$b;

    invoke-interface {v2}, Ltv/a$b;->c()Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_b

    iget-object v2, v1, Ltv/a;->a:Ltv/a$b;

    invoke-interface {v2}, Ltv/a$b;->c()Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->g0()Z

    iget-object v4, v1, Ltv/a;->d:Lcom/transsion/share/share/ShareDialogFragment;

    if-eqz v4, :cond_9

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v4

    if-ne v4, v3, :cond_9

    goto :goto_6

    :catch_0
    move-exception v0

    goto :goto_7

    :cond_9
    invoke-virtual {v2, v0}, Landroidx/fragment/app/FragmentManager;->k0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_a

    :goto_6
    return-void

    :cond_a
    iget-object v3, v1, Ltv/a;->d:Lcom/transsion/share/share/ShareDialogFragment;

    if-eqz v3, :cond_b

    invoke-virtual {v3, v2, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    :goto_7
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_b
    :goto_8
    return-void
.end method

.method private final i()V
    .locals 11

    sget-object v0, Lnh/m;->a:Lnh/m;

    invoke-virtual {v0}, Lnh/m;->e()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Luh/b;->a:Luh/b$a;

    sget v1, Lcom/tn/lib/widget/R$string;->no_network_toast:I

    invoke-virtual {v0, v1}, Luh/b$a;->d(I)V

    return-void

    :cond_0
    iget-object v0, p0, Ltv/a;->a:Ltv/a$b;

    invoke-interface {v0}, Ltv/a$b;->getData()Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;->getUgcVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v3}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCreator()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCreator;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCreator;->getUid()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_3

    return-void

    :cond_3
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCreator;->getHasSubscribe()Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v10, 0x1

    xor-int/2addr v0, v10

    iget-object v1, p0, Ltv/a;->b:Ltv/i;

    iget-object v2, p0, Ltv/a;->a:Ltv/a$b;

    invoke-interface {v2}, Ltv/a$b;->b()Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->Y0()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :goto_0
    move-object v4, v2

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    :goto_1
    const/16 v7, 0x18

    const/4 v8, 0x0

    const-string v2, "subscribe"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v8}, Ltv/i;->b(Ltv/i;Ljava/lang/String;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)V

    iget-object v1, p0, Ltv/a;->a:Ltv/a$b;

    invoke-interface {v1, v10}, Ltv/a$b;->i(Z)V

    iget-object v1, p0, Ltv/a;->a:Ltv/a$b;

    invoke-interface {v1}, Ltv/a$b;->a()Lqv/r;

    move-result-object v1

    iget-object v1, v1, Lqv/r;->p:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v2, "ivUgcImmSubscribe"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ljg/c;->h(Landroid/view/View;)V

    iget-object v1, p0, Ltv/a;->a:Ltv/a$b;

    invoke-interface {v1}, Ltv/a$b;->a()Lqv/r;

    move-result-object v1

    iget-object v1, v1, Lqv/r;->u:Landroid/widget/ProgressBar;

    const-string v2, "pbUgcImmSubscribeLoading"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ljg/c;->k(Landroid/view/View;)V

    iget-object v1, p0, Ltv/a;->a:Ltv/a$b;

    invoke-interface {v1}, Ltv/a$b;->b()Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1, v9, v0}, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;->n0(Ljava/lang/String;Z)V

    :cond_5
    :goto_2
    return-void
.end method

.method private final j()V
    .locals 11

    iget-object v0, p0, Ltv/a;->a:Ltv/a$b;

    invoke-interface {v0}, Ltv/a$b;->c()Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iget-object v2, p0, Ltv/a;->a:Ltv/a$b;

    invoke-interface {v2}, Ltv/a$b;->getData()Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;->getUgcVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_3

    :cond_1
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_3

    :cond_2
    iget-object v3, p0, Ltv/a;->b:Ltv/i;

    iget-object v0, p0, Ltv/a;->a:Ltv/a$b;

    invoke-interface {v0}, Ltv/a$b;->b()Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->Y0()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    move-object v6, v0

    goto :goto_1

    :cond_3
    move-object v6, v1

    :goto_1
    const/16 v9, 0x18

    const/4 v10, 0x0

    const-string v4, "user"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v5, v2

    invoke-static/range {v3 .. v10}, Ltv/i;->b(Ltv/i;Ljava/lang/String;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)V

    invoke-virtual {v2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCreator()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCreator;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCreator;->getUid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v2, "/profile/user_profile"

    invoke-static {v2}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object v2

    const-string v3, "userId"

    invoke-virtual {v2, v3, v0}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object v0

    iget-object v2, p0, Ltv/a;->a:Ltv/a$b;

    invoke-interface {v2}, Ltv/a$b;->c()Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    goto :goto_2

    :cond_4
    move-object v2, v1

    :goto_2
    const/4 v3, 0x2

    invoke-static {v0, v2, v1, v3, v1}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lbg/c;ILjava/lang/Object;)V

    :cond_5
    :goto_3
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 7

    sget-object v0, Lcom/transsion/baseui/util/c;->a:Lcom/transsion/baseui/util/c;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/transsion/baseui/util/c;->a(IJ)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    sget-object v1, Llg/a;->a:Llg/a$a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onclick, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "UGCImmVideoAction"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    sget v0, Lcom/transsion/ugcvideodetail/R$id;->ivUgcImmBack:I

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_4

    iget-object p1, p0, Ltv/a;->a:Ltv/a$b;

    invoke-interface {p1}, Ltv/a$b;->c()Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;

    move-result-object p1

    if-eqz p1, :cond_18

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_18

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto/16 :goto_d

    :cond_4
    :goto_2
    sget v0, Lcom/transsion/ugcvideodetail/R$id;->tvUgcImmLike:I

    if-nez p1, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_6

    invoke-direct {p0}, Ltv/a;->e()V

    goto/16 :goto_d

    :cond_6
    :goto_3
    sget v0, Lcom/transsion/ugcvideodetail/R$id;->tvUgcImmFavorite:I

    if-nez p1, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_8

    invoke-direct {p0}, Ltv/a;->d()V

    goto/16 :goto_d

    :cond_8
    :goto_4
    sget v0, Lcom/transsion/ugcvideodetail/R$id;->tvUgcImmComment:I

    if-nez p1, :cond_9

    goto :goto_5

    :cond_9
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_a

    invoke-direct {p0}, Ltv/a;->b()V

    goto/16 :goto_d

    :cond_a
    :goto_5
    sget v0, Lcom/transsion/ugcvideodetail/R$id;->ivUgcImmShare:I

    if-nez p1, :cond_b

    goto :goto_6

    :cond_b
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_c

    invoke-direct {p0}, Ltv/a;->h()V

    goto :goto_d

    :cond_c
    :goto_6
    sget v0, Lcom/transsion/ugcvideodetail/R$id;->ivUgcImmDownload:I

    if-nez p1, :cond_d

    goto :goto_7

    :cond_d
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_e

    invoke-direct {p0}, Ltv/a;->c()V

    goto :goto_d

    :cond_e
    :goto_7
    sget v0, Lcom/transsion/ugcvideodetail/R$id;->ivUgcImmUserCover:I

    if-nez p1, :cond_f

    goto :goto_8

    :cond_f
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v0, :cond_17

    :goto_8
    sget v0, Lcom/transsion/ugcvideodetail/R$id;->tvUgcImmUserName:I

    if-nez p1, :cond_10

    goto :goto_9

    :cond_10
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_11

    goto :goto_c

    :cond_11
    :goto_9
    sget v0, Lcom/transsion/ugcvideodetail/R$id;->ivUgcImmSubscribe:I

    if-nez p1, :cond_12

    goto :goto_a

    :cond_12
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_13

    invoke-direct {p0}, Ltv/a;->i()V

    goto :goto_d

    :cond_13
    :goto_a
    sget v0, Lcom/transsion/ugcvideodetail/R$id;->layoutUgcImmTvEpisode:I

    if-nez p1, :cond_14

    goto :goto_b

    :cond_14
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_15

    invoke-direct {p0}, Ltv/a;->f()V

    goto :goto_d

    :cond_15
    :goto_b
    sget v0, Lcom/transsion/ugcvideodetail/R$id;->layoutUgcImmTvSearch:I

    if-nez p1, :cond_16

    goto :goto_d

    :cond_16
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v0, :cond_18

    invoke-direct {p0}, Ltv/a;->g()V

    goto :goto_d

    :cond_17
    :goto_c
    invoke-direct {p0}, Ltv/a;->j()V

    :cond_18
    :goto_d
    return-void
.end method
