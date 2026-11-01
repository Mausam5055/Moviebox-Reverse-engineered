.class public final Lcom/transsion/postdetail/ui/view/ImmVideoItemView$b;
.super Ljava/lang/Object;

# interfaces
.implements Llj/m0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/ui/view/ImmVideoItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/postdetail/ui/view/ImmVideoItemView;


# direct methods
.method constructor <init>(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$b;->a:Lcom/transsion/postdetail/ui/view/ImmVideoItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic h(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$b;->j(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)V

    return-void
.end method

.method private final i(Lcom/transsion/baselib/db/download/DownloadBean;)V
    .locals 3

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getPostId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$b;->a:Lcom/transsion/postdetail/ui/view/ImmVideoItemView;

    invoke-static {v1}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->access$getData$p(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getPostId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$b;->a:Lcom/transsion/postdetail/ui/view/ImmVideoItemView;

    invoke-static {v0}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->access$getData$p(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getPostId()Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$b;->a:Lcom/transsion/postdetail/ui/view/ImmVideoItemView;

    new-instance v0, Lcom/transsion/postdetail/ui/view/r;

    invoke-direct {v0, p1}, Lcom/transsion/postdetail/ui/view/r;-><init>(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method

.method private static final j(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->access$updateSaveIconStatus(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsion/baselib/db/download/DownloadException;)V
    .locals 0

    const-string p2, "bean"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$b;->i(Lcom/transsion/baselib/db/download/DownloadBean;)V

    return-void
.end method

.method public b(Lcom/transsion/baselib/db/download/DownloadBean;)V
    .locals 1

    const-string v0, "bean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$b;->i(Lcom/transsion/baselib/db/download/DownloadBean;)V

    return-void
.end method

.method public c(Lcom/transsion/baselib/db/download/DownloadBean;JJ)V
    .locals 0

    const-string p2, "bean"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$b;->i(Lcom/transsion/baselib/db/download/DownloadBean;)V

    return-void
.end method

.method public d(Lcom/transsion/baselib/db/download/DownloadBean;)V
    .locals 1

    const-string v0, "bean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$b;->i(Lcom/transsion/baselib/db/download/DownloadBean;)V

    return-void
.end method

.method public e(Lcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/String;)V
    .locals 0

    const-string p2, "bean"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$b;->i(Lcom/transsion/baselib/db/download/DownloadBean;)V

    return-void
.end method

.method public f(Lcom/transsion/baselib/db/download/DownloadBean;)V
    .locals 1

    const-string v0, "bean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$b;->i(Lcom/transsion/baselib/db/download/DownloadBean;)V

    return-void
.end method

.method public g(Lcom/transsion/baselib/db/download/DownloadBean;)V
    .locals 1

    const-string v0, "bean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$b;->i(Lcom/transsion/baselib/db/download/DownloadBean;)V

    return-void
.end method
