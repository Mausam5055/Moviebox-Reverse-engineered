.class public final Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider$b;
.super Ljava/lang/Object;

# interfaces
.implements Llj/s0;


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

    iput-object p1, p0, Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider$b;->a:Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final d(Lcom/transsion/baselib/db/download/DownloadBean;)Lts/a;
    .locals 10

    new-instance v9, Lts/a;

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getEp()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "short"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getTitleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getEp()I

    move-result v6

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSe()I

    move-result v7

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getOps()Ljava/lang/String;

    move-result-object v8

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lts/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    return-object v9
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "subtitleResId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider$b;->a:Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider;

    invoke-static {v0}, Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider;->p(Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider;)Lqs/n;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lqs/n;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b(Lcom/transsion/baselib/db/download/DownloadBean;)V
    .locals 1

    const-string v0, "bean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->isShotTV()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->isMusic()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider$b;->a:Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider;

    invoke-static {v0}, Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider;->p(Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider;)Lqs/n;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider$b;->d(Lcom/transsion/baselib/db/download/DownloadBean;)Lts/a;

    move-result-object p1

    invoke-interface {v0, p1}, Lqs/n;->c(Lts/a;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public c(Lcom/transsion/baselib/db/download/DownloadBean;Z)V
    .locals 1

    const-string v0, "bean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->isShotTV()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider$b;->a:Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider;

    invoke-static {v0}, Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider;->p(Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider;)Lqs/n;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider$b;->d(Lcom/transsion/baselib/db/download/DownloadBean;)Lts/a;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lqs/n;->b(Lts/a;Z)V

    :cond_2
    :goto_0
    return-void
.end method
