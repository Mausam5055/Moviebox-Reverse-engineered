.class public final synthetic Lcom/transsnet/downloader/adapter/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsnet/downloader/adapter/g;

.field public final synthetic b:Landroidx/appcompat/widget/AppCompatImageView;

.field public final synthetic c:Lcom/transsion/baselib/db/download/DownloadBean;


# direct methods
.method public synthetic constructor <init>(Lcom/transsnet/downloader/adapter/g;Landroidx/appcompat/widget/AppCompatImageView;Lcom/transsion/baselib/db/download/DownloadBean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsnet/downloader/adapter/f;->a:Lcom/transsnet/downloader/adapter/g;

    iput-object p2, p0, Lcom/transsnet/downloader/adapter/f;->b:Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p3, p0, Lcom/transsnet/downloader/adapter/f;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/transsnet/downloader/adapter/f;->a:Lcom/transsnet/downloader/adapter/g;

    iget-object v1, p0, Lcom/transsnet/downloader/adapter/f;->b:Landroidx/appcompat/widget/AppCompatImageView;

    iget-object v2, p0, Lcom/transsnet/downloader/adapter/f;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-static {v0, v1, v2, p1}, Lcom/transsnet/downloader/adapter/g;->B1(Lcom/transsnet/downloader/adapter/g;Landroidx/appcompat/widget/AppCompatImageView;Lcom/transsion/baselib/db/download/DownloadBean;Landroid/view/View;)V

    return-void
.end method
