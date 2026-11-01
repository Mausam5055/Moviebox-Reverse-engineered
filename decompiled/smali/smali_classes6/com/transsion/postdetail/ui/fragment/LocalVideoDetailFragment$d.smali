.class public final Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$d;
.super Ljava/lang/Object;

# interfaces
.implements Lvo/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->J2()V
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

    iput-object p1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$d;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic c(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$d;->d(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)V

    return-void
.end method

.method private static final d(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)V
    .locals 7

    invoke-static {p0}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->m1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v1, Llg/a;->a:Llg/a$a;

    invoke-static {p0}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->e1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v3, "2------ playNextVideo, postDelayed start video"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-static {p0}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->N0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/baselib/db/download/DownloadBean;Z)V
    .locals 8

    const-string v0, "bean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Llg/a;->a:Llg/a$a;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "LocalVideoMiddle"

    const-string v3, "onNext"

    const/4 v4, 0x0

    move-object v1, v0

    invoke-static/range {v1 .. v6}, Llg/a$a;->v(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$d;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {v1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->Q0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$d;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {v3}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->Z0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4, p2}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->u1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;Lcom/transsion/baselib/db/download/DownloadBean;JZ)V

    iget-object p2, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$d;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {p2}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->R0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lcom/transsnet/downloader/manager/g;

    move-result-object p2

    invoke-interface {p2}, Lcom/transsnet/downloader/manager/g;->H()V

    iget-object p2, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$d;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {p2}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->R0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lcom/transsnet/downloader/manager/g;

    move-result-object p2

    invoke-interface {p2}, Lcom/transsnet/downloader/manager/g;->o()V

    iget-object p2, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$d;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {p2}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->P1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)V

    iget-object p2, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$d;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {p2}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->W0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lcom/transsion/postdetail/layer/local/c0;

    move-result-object p2

    const/4 v1, 0x1

    const/4 v7, 0x0

    if-eqz p2, :cond_0

    const/4 v2, 0x0

    invoke-static {p2, v7, v1, v2}, Lcom/transsion/postdetail/layer/local/c0;->c(Lcom/transsion/postdetail/layer/local/c0;ZILjava/lang/Object;)V

    :cond_0
    iget-object p2, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$d;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {p2}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->W0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lcom/transsion/postdetail/layer/local/c0;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/transsion/postdetail/layer/local/c0;->g()V

    :cond_1
    iget-object p2, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$d;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {p2}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->W0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lcom/transsion/postdetail/layer/local/c0;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/transsion/postdetail/layer/local/c0;->a()V

    :cond_2
    iget-object p2, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$d;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {p2, v7}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->M1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;Z)V

    iget-object p2, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$d;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {p2, v7}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->G1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;Z)V

    iget-object p2, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$d;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    if-nez v2, :cond_3

    move-object v2, v3

    :cond_3
    invoke-static {p2, v2}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->F1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$d;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getPostId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    move-object v2, v3

    :cond_4
    invoke-static {p2, v2}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->J1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$d;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    move-object v2, v3

    :cond_5
    invoke-static {p2, v2}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->O1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$d;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    move-result v2

    const/4 v4, 0x5

    if-ne v2, v4, :cond_6

    move v2, v1

    goto :goto_0

    :cond_6
    move v2, v7

    :goto_0
    invoke-static {p2, v2}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->w1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;Z)V

    iget-object p2, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$d;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {p2}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->P0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Z

    move-result v2

    xor-int/2addr v1, v2

    invoke-static {p2, v1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->z1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;Z)V

    iget-object p2, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$d;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    move-object v1, v3

    :cond_7
    invoke-static {p2, v1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->N1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$d;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->S1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$d;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getPath()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    goto :goto_1

    :cond_8
    move-object v3, v1

    :goto_1
    invoke-static {p2, v3}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->E1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$d;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {p2}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->l1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Z

    move-result p2

    if-eqz p2, :cond_9

    iget-object p2, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$d;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {p2}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->R0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lcom/transsnet/downloader/manager/g;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/transsnet/downloader/manager/g;->k(Lcom/transsion/baselib/db/download/DownloadBean;)V

    iget-object p2, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$d;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {p2}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->R0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lcom/transsnet/downloader/manager/g;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/transsnet/downloader/manager/g;->h(Lcom/transsion/baselib/db/download/DownloadBean;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->L1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;Ljava/lang/String;)V

    :cond_9
    iget-object p2, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$d;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {p2, p1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->x1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;Lcom/transsion/baselib/db/download/DownloadBean;)V

    iget-object p2, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$d;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {p2}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->j1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)V

    iget-object p2, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$d;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {p2}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->d1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->clear()V

    iget-object p2, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$d;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {p2}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->c1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lcom/transsion/subtitle/VideoSubtitleControl;

    move-result-object p2

    if-eqz p2, :cond_a

    invoke-virtual {p2}, Lcom/transsion/subtitle/VideoSubtitleControl;->Z()V

    :cond_a
    iget-object p2, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$d;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {p2, v7}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->i1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;Z)V

    iget-object p2, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$d;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {p2}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->e1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getEpse()I

    move-result p1

    iget-object p2, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$d;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {p2}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->l1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Z

    move-result p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playNextVideo, episode = :"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\uff0c isDownloadingPlay = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, v0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$d;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    const-wide/16 v0, 0x0

    invoke-static {p1, v0, v1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->H1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;J)V

    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$d;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {p1, v7}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->K1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;Z)V

    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$d;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->R1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;F)V

    return-void
.end method

.method public b(Lcom/transsion/baselib/db/download/DownloadBean;)V
    .locals 4

    const-string v0, "bean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$d;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->A1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;Z)V

    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$d;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {p1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->a1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$d;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    new-instance v1, Lcom/transsion/postdetail/ui/fragment/r0;

    invoke-direct {v1, v0}, Lcom/transsion/postdetail/ui/fragment/r0;-><init>(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
