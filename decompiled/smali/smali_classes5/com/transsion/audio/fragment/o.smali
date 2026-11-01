.class public final synthetic Lcom/transsion/audio/fragment/o;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/audio/fragment/SubjectListFragment;

.field public final synthetic b:Lcom/transsnet/downloader/bean/DownloadListBean;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/audio/fragment/SubjectListFragment;Lcom/transsnet/downloader/bean/DownloadListBean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/audio/fragment/o;->a:Lcom/transsion/audio/fragment/SubjectListFragment;

    iput-object p2, p0, Lcom/transsion/audio/fragment/o;->b:Lcom/transsnet/downloader/bean/DownloadListBean;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/audio/fragment/o;->a:Lcom/transsion/audio/fragment/SubjectListFragment;

    iget-object v1, p0, Lcom/transsion/audio/fragment/o;->b:Lcom/transsnet/downloader/bean/DownloadListBean;

    invoke-static {v0, v1, p1}, Lcom/transsion/audio/fragment/SubjectListFragment;->c0(Lcom/transsion/audio/fragment/SubjectListFragment;Lcom/transsnet/downloader/bean/DownloadListBean;Landroid/view/View;)V

    return-void
.end method
