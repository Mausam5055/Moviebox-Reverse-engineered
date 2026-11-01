.class public final Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$b;
.super Lny/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;


# direct methods
.method constructor <init>(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$b;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-direct {p0}, Lny/d;-><init>()V

    return-void
.end method


# virtual methods
.method public h(Lcom/transsion/baselib/db/download/DownloadBean;I)V
    .locals 8

    const-string p2, "bean"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$b;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {p2}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->U0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lcom/transsion/postdetail/layer/a;

    move-result-object p2

    sget-object v0, Lcom/transsion/postdetail/layer/listener/LayerFlag;->DOWNLOAD_CALLBACK:Lcom/transsion/postdetail/layer/listener/LayerFlag;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p2, v0, v2}, Lcom/transsion/postdetail/layer/a;->h(Lcom/transsion/postdetail/layer/listener/LayerFlag;[Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$b;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {p2}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->b1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    move-result p2

    const/4 v0, 0x6

    if-ne p2, v0, :cond_2

    iget-object p2, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$b;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {p2}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->W0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lcom/transsion/postdetail/layer/local/c0;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getException()Lcom/transsion/baselib/db/download/DownloadException;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2, v1, v0}, Lcom/transsion/postdetail/layer/local/c0;->H(ILjava/lang/String;)V

    :cond_2
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSize()Ljava/lang/Long;

    move-result-object p2

    if-eqz p2, :cond_7

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSize()Ljava/lang/Long;

    move-result-object p2

    const-wide/16 v4, 0x0

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    goto :goto_1

    :cond_3
    move-wide v6, v4

    :goto_1
    cmp-long p2, v6, v4

    if-gtz p2, :cond_4

    goto :goto_3

    :cond_4
    iget-object p2, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$b;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {p2, p1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->x1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;Lcom/transsion/baselib/db/download/DownloadBean;)V

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    move-result p2

    const/4 v0, 0x2

    const/4 v2, 0x5

    if-eq p2, v0, :cond_5

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    move-result p2

    if-ne p2, v2, :cond_7

    :cond_5
    iget-object p2, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$b;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {p2, p1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->p1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;Lcom/transsion/baselib/db/download/DownloadBean;)V

    iget-object p2, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$b;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {p2}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->U0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lcom/transsion/postdetail/layer/a;

    move-result-object p2

    sget-object v0, Lcom/transsion/postdetail/layer/listener/LayerFlag;->DOWNLOAD_SPEED:Lcom/transsion/postdetail/layer/listener/LayerFlag;

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    move-result v4

    if-ne v4, v2, :cond_6

    const-string v2, ""

    goto :goto_2

    :cond_6
    sget-object v2, Lcom/transsion/baseui/util/i;->a:Lcom/transsion/baseui/util/i;

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getProgress()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/transsion/baseui/util/i;->a(J)Ljava/lang/String;

    move-result-object v2

    :goto_2
    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v3

    invoke-virtual {p2, v0, v1}, Lcom/transsion/postdetail/layer/a;->h(Lcom/transsion/postdetail/layer/listener/LayerFlag;[Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$b;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {p2, p1, v3}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->y1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;Lcom/transsion/baselib/db/download/DownloadBean;Z)V

    :cond_7
    :goto_3
    return-void
.end method
