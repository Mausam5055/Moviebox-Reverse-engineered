.class public final synthetic Lcom/transsion/postdetail/shorttv/factory/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/shorttv/bean/DownloadItem;

.field public final synthetic b:I

.field public final synthetic c:Landroidx/fragment/app/FragmentActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/shorttv/bean/DownloadItem;ILandroidx/fragment/app/FragmentActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/postdetail/shorttv/factory/d;->a:Lcom/transsion/shorttv/bean/DownloadItem;

    iput p2, p0, Lcom/transsion/postdetail/shorttv/factory/d;->b:I

    iput-object p3, p0, Lcom/transsion/postdetail/shorttv/factory/d;->c:Landroidx/fragment/app/FragmentActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/postdetail/shorttv/factory/d;->a:Lcom/transsion/shorttv/bean/DownloadItem;

    iget v1, p0, Lcom/transsion/postdetail/shorttv/factory/d;->b:I

    iget-object v2, p0, Lcom/transsion/postdetail/shorttv/factory/d;->c:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v0, v1, v2}, Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider;->n(Lcom/transsion/shorttv/bean/DownloadItem;ILandroidx/fragment/app/FragmentActivity;)V

    return-void
.end method
