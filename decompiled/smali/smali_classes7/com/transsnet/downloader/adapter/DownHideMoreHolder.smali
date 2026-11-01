.class public final Lcom/transsnet/downloader/adapter/DownHideMoreHolder;
.super Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

# interfaces
.implements Lcom/transsnet/downloader/adapter/u0;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\t\u0018\u00002\u00020\u00012\u00020\u0002B\u0019\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J!\u0010\u000e\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\t2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fR\u0017\u0010\u0004\u001a\u00020\u00038\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013R\u0016\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/transsnet/downloader/adapter/DownHideMoreHolder;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "Lcom/transsnet/downloader/adapter/u0;",
        "Landroid/view/View;",
        "view",
        "Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;",
        "wrapperNativeManager",
        "<init>",
        "(Landroid/view/View;Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;)V",
        "",
        "position",
        "Ln6/a;",
        "item",
        "",
        "c",
        "(ILn6/a;)V",
        "a",
        "Landroid/view/View;",
        "getView",
        "()Landroid/view/View;",
        "b",
        "Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;",
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
.field private final a:Landroid/view/View;

.field private final b:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/transsnet/downloader/adapter/DownHideMoreHolder;->a:Landroid/view/View;

    iput-object p2, p0, Lcom/transsnet/downloader/adapter/DownHideMoreHolder;->b:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    return-void
.end method

.method public static synthetic f(Lcom/transsnet/downloader/adapter/DownHideMoreHolder;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsnet/downloader/adapter/DownHideMoreHolder;->g(Lcom/transsnet/downloader/adapter/DownHideMoreHolder;Landroid/view/View;)V

    return-void
.end method

.method private static final g(Lcom/transsnet/downloader/adapter/DownHideMoreHolder;Landroid/view/View;)V
    .locals 6

    sget-object p1, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->m:Lcom/transsnet/downloader/viewmodel/DownloadListManager$a;

    invoke-virtual {p1}, Lcom/transsnet/downloader/viewmodel/DownloadListManager$a;->a()Lcom/transsnet/downloader/viewmodel/DownloadListManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsnet/downloader/viewmodel/DownloadListManager$a;->a()Lcom/transsnet/downloader/viewmodel/DownloadListManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->V()Z

    move-result p1

    xor-int/lit8 v1, p1, 0x1

    iget-object v3, p0, Lcom/transsnet/downloader/adapter/DownHideMoreHolder;->b:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->I(Lcom/transsnet/downloader/viewmodel/DownloadListManager;ZZLcom/transsion/ad/bidding/nativead/BiddingNativeManager;ILjava/lang/Object;)V

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
    .locals 2

    instance-of p1, p2, Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz p1, :cond_1

    sget p1, Lcom/transsnet/downloader/R$id;->tv_title:I

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    sget v0, Lcom/transsnet/downloader/R$id;->iv_hide_more:I

    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    check-cast p2, Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->isMore()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/tn/lib/widget/R$mipmap;->libui_ic_down_more:I

    invoke-static {p1, p2}, Landroidx/core/content/b;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/tn/lib/widget/R$mipmap;->libui_ic_up_hide:I

    invoke-static {p1, p2}, Landroidx/core/content/b;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/transsnet/downloader/adapter/DownHideMoreHolder;->a:Landroid/view/View;

    new-instance p2, Lcom/transsnet/downloader/adapter/b;

    invoke-direct {p2, p0}, Lcom/transsnet/downloader/adapter/b;-><init>(Lcom/transsnet/downloader/adapter/DownHideMoreHolder;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method
