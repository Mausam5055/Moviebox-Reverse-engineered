.class public final Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider$a;
.super Llj/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider;


# direct methods
.method constructor <init>(Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider$a;->a:Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider;

    invoke-direct {p0}, Llj/a;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Lcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/String;)V
    .locals 1

    const-string p2, "bean"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider$a;->a:Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider;

    invoke-static {p2}, Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider;->o(Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider;)Lqs/m;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getEp()I

    move-result p1

    invoke-interface {p2, v0, p1}, Lqs/m;->a(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
