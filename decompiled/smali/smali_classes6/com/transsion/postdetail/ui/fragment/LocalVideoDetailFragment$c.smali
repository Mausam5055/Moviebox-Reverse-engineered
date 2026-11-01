.class public final Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$c;
.super Ljava/lang/Object;

# interfaces
.implements Lvo/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->B2()V
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

    iput-object p1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$c;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/postdetail/layer/local/LocalUiType;)V
    .locals 2

    const-string v0, "uiType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$c;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-virtual {v0, p1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->C3(Lcom/transsion/postdetail/layer/local/LocalUiType;)V

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$c;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {v0}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->c1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lcom/transsion/subtitle/VideoSubtitleControl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/transsion/postdetail/util/u;->c(Lcom/transsion/postdetail/layer/local/LocalUiType;)Lcom/transsion/subtitle/helper/LocalVideoUiType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/subtitle/VideoSubtitleControl;->P(Lcom/transsion/subtitle/helper/LocalVideoUiType;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$c;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {v0, p1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->Q1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;Lcom/transsion/postdetail/layer/local/LocalUiType;)V

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$c;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {v0}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->V0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lcom/transsion/postdetail/util/LocalVideoAdHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$c;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {v1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->Y0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lcom/transsion/player/orplayer/g;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/transsion/postdetail/util/LocalVideoAdHelper;->r2(Lcom/transsion/postdetail/layer/local/LocalUiType;Lcom/transsion/player/orplayer/g;)V

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$c;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {v0}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->W0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lcom/transsion/postdetail/layer/local/c0;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/transsion/postdetail/layer/local/c0;->l(Lcom/transsion/postdetail/layer/local/LocalUiType;)V

    :cond_1
    return-void
.end method

.method public b(Lcom/transsion/baselib/db/download/DownloadBean;)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$c;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {p1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->W0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lcom/transsion/postdetail/layer/local/c0;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/postdetail/layer/local/c0;->p()V

    :cond_0
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$c;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {p1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->W0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lcom/transsion/postdetail/layer/local/c0;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/postdetail/layer/local/c0;->g()V

    :cond_1
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$c;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {p1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->W0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lcom/transsion/postdetail/layer/local/c0;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/transsion/postdetail/layer/local/c0;->a()V

    :cond_2
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$c;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {p1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->W0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lcom/transsion/postdetail/layer/local/c0;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/transsion/postdetail/layer/local/c0;->o()V

    :cond_3
    return-void
.end method

.method public c(Lcom/transsion/baselib/db/download/DownloadBean;)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$c;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->D1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;Z)V

    return-void
.end method

.method public d(Lcom/transsion/baselib/db/download/DownloadBean;)V
    .locals 3

    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$c;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {p1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->P1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)V

    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$c;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {p1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->W0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lcom/transsion/postdetail/layer/local/c0;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lcom/transsion/postdetail/layer/local/c0;->c(Lcom/transsion/postdetail/layer/local/c0;ZILjava/lang/Object;)V

    :cond_0
    return-void
.end method
