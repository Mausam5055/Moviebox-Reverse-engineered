.class public abstract Lny/d;
.super Lny/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lny/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsion/baselib/db/download/DownloadException;)V
    .locals 0

    const-string p2, "bean"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x6

    invoke-virtual {p0, p1, p2}, Lny/d;->h(Lcom/transsion/baselib/db/download/DownloadBean;I)V

    return-void
.end method

.method public b(Lcom/transsion/baselib/db/download/DownloadBean;)V
    .locals 2

    const-string v0, "bean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/transsion/baselib/db/download/DownloadBean;->setPreStatus(I)V

    :cond_0
    invoke-virtual {p0, p1, v1}, Lny/d;->h(Lcom/transsion/baselib/db/download/DownloadBean;I)V

    return-void
.end method

.method public c(Lcom/transsion/baselib/db/download/DownloadBean;JJ)V
    .locals 0

    const-string p2, "bean"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x2

    invoke-virtual {p0, p1, p2}, Lny/d;->h(Lcom/transsion/baselib/db/download/DownloadBean;I)V

    return-void
.end method

.method public d(Lcom/transsion/baselib/db/download/DownloadBean;)V
    .locals 1

    const-string v0, "bean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lny/d;->h(Lcom/transsion/baselib/db/download/DownloadBean;I)V

    return-void
.end method

.method public e(Lcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/String;)V
    .locals 0

    const-string p2, "bean"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x5

    invoke-virtual {p0, p1, p2}, Lny/d;->h(Lcom/transsion/baselib/db/download/DownloadBean;I)V

    return-void
.end method

.method public f(Lcom/transsion/baselib/db/download/DownloadBean;)V
    .locals 1

    const-string v0, "bean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lny/d;->h(Lcom/transsion/baselib/db/download/DownloadBean;I)V

    return-void
.end method

.method public g(Lcom/transsion/baselib/db/download/DownloadBean;)V
    .locals 1

    const-string v0, "bean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lny/d;->h(Lcom/transsion/baselib/db/download/DownloadBean;I)V

    return-void
.end method

.method public abstract h(Lcom/transsion/baselib/db/download/DownloadBean;I)V
.end method
