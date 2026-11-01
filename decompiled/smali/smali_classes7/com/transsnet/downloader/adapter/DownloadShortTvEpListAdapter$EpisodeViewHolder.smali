.class public final Lcom/transsnet/downloader/adapter/DownloadShortTvEpListAdapter$EpisodeViewHolder;
.super Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsnet/downloader/adapter/DownloadShortTvEpListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EpisodeViewHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0006\u0010\u0007\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/transsnet/downloader/adapter/DownloadShortTvEpListAdapter$EpisodeViewHolder;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "Lcom/transsnet/downloader/widget/DownloadShortTvEpItemView;",
        "view",
        "<init>",
        "(Lcom/transsnet/downloader/widget/DownloadShortTvEpItemView;)V",
        "a",
        "Lcom/transsnet/downloader/widget/DownloadShortTvEpItemView;",
        "f",
        "()Lcom/transsnet/downloader/widget/DownloadShortTvEpItemView;",
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
.field private final a:Lcom/transsnet/downloader/widget/DownloadShortTvEpItemView;


# direct methods
.method public constructor <init>(Lcom/transsnet/downloader/widget/DownloadShortTvEpItemView;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/transsnet/downloader/adapter/DownloadShortTvEpListAdapter$EpisodeViewHolder;->a:Lcom/transsnet/downloader/widget/DownloadShortTvEpItemView;

    return-void
.end method


# virtual methods
.method public final f()Lcom/transsnet/downloader/widget/DownloadShortTvEpItemView;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/adapter/DownloadShortTvEpListAdapter$EpisodeViewHolder;->a:Lcom/transsnet/downloader/widget/DownloadShortTvEpItemView;

    return-object v0
.end method
