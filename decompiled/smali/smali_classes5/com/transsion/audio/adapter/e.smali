.class public final synthetic Lcom/transsion/audio/adapter/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/moviedetailapi/DownloadItem;

.field public final synthetic b:Landroid/widget/ImageView;

.field public final synthetic c:Lcom/transsion/audio/adapter/SubjectListAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/moviedetailapi/DownloadItem;Landroid/widget/ImageView;Lcom/transsion/audio/adapter/SubjectListAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/audio/adapter/e;->a:Lcom/transsion/moviedetailapi/DownloadItem;

    iput-object p2, p0, Lcom/transsion/audio/adapter/e;->b:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/transsion/audio/adapter/e;->c:Lcom/transsion/audio/adapter/SubjectListAdapter;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/audio/adapter/e;->a:Lcom/transsion/moviedetailapi/DownloadItem;

    iget-object v1, p0, Lcom/transsion/audio/adapter/e;->b:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/transsion/audio/adapter/e;->c:Lcom/transsion/audio/adapter/SubjectListAdapter;

    invoke-static {v0, v1, v2, p1}, Lcom/transsion/audio/adapter/SubjectListAdapter$refresh$1;->a(Lcom/transsion/moviedetailapi/DownloadItem;Landroid/widget/ImageView;Lcom/transsion/audio/adapter/SubjectListAdapter;Landroid/view/View;)V

    return-void
.end method
