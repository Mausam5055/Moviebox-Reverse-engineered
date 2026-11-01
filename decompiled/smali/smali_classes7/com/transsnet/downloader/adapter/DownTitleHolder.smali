.class public final Lcom/transsnet/downloader/adapter/DownTitleHolder;
.super Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

# interfaces
.implements Lcom/transsnet/downloader/adapter/u0;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\t\u0018\u00002\u00020\u00012\u00020\u0002B\u0017\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J!\u0010\u000e\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\t2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fR\"\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/transsnet/downloader/adapter/DownTitleHolder;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "Lcom/transsnet/downloader/adapter/u0;",
        "Landroid/view/View;",
        "view",
        "Lcom/transsnet/downloader/fragment/DownloadPanelFragment;",
        "fragment",
        "<init>",
        "(Landroid/view/View;Lcom/transsnet/downloader/fragment/DownloadPanelFragment;)V",
        "",
        "position",
        "Ln6/a;",
        "item",
        "",
        "c",
        "(ILn6/a;)V",
        "a",
        "Lcom/transsnet/downloader/fragment/DownloadPanelFragment;",
        "getFragment",
        "()Lcom/transsnet/downloader/fragment/DownloadPanelFragment;",
        "setFragment",
        "(Lcom/transsnet/downloader/fragment/DownloadPanelFragment;)V",
        "Downloader_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private a:Lcom/transsnet/downloader/fragment/DownloadPanelFragment;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/transsnet/downloader/fragment/DownloadPanelFragment;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragment"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/transsnet/downloader/adapter/DownTitleHolder;->a:Lcom/transsnet/downloader/fragment/DownloadPanelFragment;

    return-void
.end method

.method public static synthetic f(Lcom/transsnet/downloader/adapter/DownTitleHolder;ILn6/a;)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsnet/downloader/adapter/DownTitleHolder;->h(Lcom/transsnet/downloader/adapter/DownTitleHolder;ILn6/a;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(ZZLandroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsnet/downloader/adapter/DownTitleHolder;->i(ZZLandroid/view/View;)V

    return-void
.end method

.method private static final h(Lcom/transsnet/downloader/adapter/DownTitleHolder;ILn6/a;)Ljava/lang/CharSequence;
    .locals 3

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/transsnet/downloader/R$string;->str_count:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "getString(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getCount()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "format(...)"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final i(ZZLandroid/view/View;)V
    .locals 0

    new-instance p2, Lcom/transsnet/downloader/dialog/DownloadTaskControlManagerDialog;

    invoke-direct {p2, p0, p1}, Lcom/transsnet/downloader/dialog/DownloadTaskControlManagerDialog;-><init>(ZZ)V

    invoke-static {}, Lcom/blankj/utilcode/util/a;->b()Landroid/app/Activity;

    move-result-object p0

    const-string p1, "DownloadTaskControlManagerDialog"

    invoke-virtual {p2, p0, p1}, Lcom/transsion/baseui/dialog/BaseDialog;->k0(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-class p1, Lcom/transsion/commercializationapi/IInterceptReportApi;

    invoke-static {p1, p0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/commercializationapi/IInterceptReportApi;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/commercializationapi/IInterceptReportApi;->b()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/transsnet/downloader/adapter/u0$b;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsnet/downloader/adapter/u0$a;->b(Lcom/transsnet/downloader/adapter/u0;Lcom/transsnet/downloader/adapter/u0$b;)V

    return-void
.end method

.method public b(ILn6/a;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsnet/downloader/adapter/u0$a;->a(Lcom/transsnet/downloader/adapter/u0;ILn6/a;)V

    return-void
.end method

.method public c(ILn6/a;)V
    .locals 7

    instance-of v0, p2, Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v0, :cond_7

    sget v0, Lcom/transsnet/downloader/R$id;->tvTitle:I

    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tn/lib/widget/TnTextView;

    sget v1, Lcom/transsnet/downloader/R$id;->vTopSpace:I

    invoke-virtual {p0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    move-object v2, p2

    check-cast v2, Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->isMore()Z

    move-result v3

    const/high16 v4, 0x41400000    # 12.0f

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    invoke-static {v4}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v3

    sget v4, Lcom/transsnet/downloader/R$string;->str_downloading_title:I

    goto :goto_1

    :cond_0
    sget-object v3, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->m:Lcom/transsnet/downloader/viewmodel/DownloadListManager$a;

    invoke-virtual {v3}, Lcom/transsnet/downloader/viewmodel/DownloadListManager$a;->a()Lcom/transsnet/downloader/viewmodel/DownloadListManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->G()Landroidx/lifecycle/b0;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_0

    :cond_1
    move v3, v5

    :goto_0
    if-lez v3, :cond_2

    const/high16 v4, 0x41000000    # 8.0f

    :cond_2
    invoke-static {v4}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v3

    sget v4, Lcom/transsnet/downloader/R$string;->str_downloaded_title:I

    :goto_1
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iput v3, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v1, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getCount()I

    move-result v1

    if-lez v1, :cond_3

    new-instance v1, Lcom/transsnet/downloader/adapter/c;

    invoke-direct {v1, p0, v4, p2}, Lcom/transsnet/downloader/adapter/c;-><init>(Lcom/transsnet/downloader/adapter/DownTitleHolder;ILn6/a;)V

    invoke-virtual {v0, v1}, Lcom/tn/lib/widget/TnTextView;->setTextAction(Lkotlin/jvm/functions/Function0;)V

    :cond_3
    sget p2, Lcom/transsnet/downloader/R$id;->tvManager:I

    invoke-virtual {p0, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    sget-object v0, Lcom/transsnet/downloader/util/d;->a:Lcom/transsnet/downloader/util/d;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/transsnet/downloader/util/d;->j(Landroid/content/Context;)Z

    move-result v0

    const-class v1, Lcom/transsion/memberapi/IMemberApi;

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/memberapi/IMemberApi;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Lcom/transsion/memberapi/IMemberApi;->B()Z

    move-result v1

    goto :goto_2

    :cond_4
    move v1, v5

    :goto_2
    const/16 v2, 0x8

    if-nez v1, :cond_5

    if-eqz v0, :cond_5

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_5
    if-nez p1, :cond_6

    invoke-virtual {p2, v5}, Landroid/view/View;->setVisibility(I)V

    new-instance p1, Lcom/transsnet/downloader/adapter/d;

    invoke-direct {p1, v0, v1}, Lcom/transsnet/downloader/adapter/d;-><init>(ZZ)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    :cond_6
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    :goto_3
    return-void
.end method
