.class public final synthetic Lbp/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/moviedetailapi/bean/Subject;

.field public final synthetic b:Lcom/transsnet/downloader/widget/DownloadView;

.field public final synthetic c:Lbp/c;

.field public final synthetic d:Lcom/transsion/moviedetailapi/bean/Subject;

.field public final synthetic e:Ljava/lang/Integer;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/moviedetailapi/bean/Subject;Lcom/transsnet/downloader/widget/DownloadView;Lbp/c;Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbp/b;->a:Lcom/transsion/moviedetailapi/bean/Subject;

    iput-object p2, p0, Lbp/b;->b:Lcom/transsnet/downloader/widget/DownloadView;

    iput-object p3, p0, Lbp/b;->c:Lbp/c;

    iput-object p4, p0, Lbp/b;->d:Lcom/transsion/moviedetailapi/bean/Subject;

    iput-object p5, p0, Lbp/b;->e:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lbp/b;->a:Lcom/transsion/moviedetailapi/bean/Subject;

    iget-object v1, p0, Lbp/b;->b:Lcom/transsnet/downloader/widget/DownloadView;

    iget-object v2, p0, Lbp/b;->c:Lbp/c;

    iget-object v3, p0, Lbp/b;->d:Lcom/transsion/moviedetailapi/bean/Subject;

    iget-object v4, p0, Lbp/b;->e:Ljava/lang/Integer;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lbp/c;->y(Lcom/transsion/moviedetailapi/bean/Subject;Lcom/transsnet/downloader/widget/DownloadView;Lbp/c;Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/Integer;Landroid/view/View;)V

    return-void
.end method
