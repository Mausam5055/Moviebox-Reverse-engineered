.class public final Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvDownloadProvider$a;
.super Llj/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvDownloadProvider;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvDownloadProvider;


# direct methods
.method constructor <init>(Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvDownloadProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvDownloadProvider$a;->a:Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvDownloadProvider;

    invoke-direct {p0}, Llj/a;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Lcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/String;)V
    .locals 2

    const-string p2, "bean"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvDownloadProvider$a;->a:Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvDownloadProvider;

    invoke-static {p2}, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvDownloadProvider;->g(Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvDownloadProvider;)Lst/j;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoPosition()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getEp()I

    move-result p1

    :goto_0
    invoke-interface {p2, v0, p1}, Lst/j;->a(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method
