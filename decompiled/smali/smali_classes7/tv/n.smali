.class public final Ltv/n;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/subtitle_download/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltv/n$a;
    }
.end annotation


# instance fields
.field private final a:Ltv/n$a;

.field private b:Lcom/transsion/ugcvideodetail/hepler/subtitle/b;

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Leu/a;

.field private f:Z


# direct methods
.method public constructor <init>(Ltv/n$a;)V
    .locals 1

    const-string v0, "host"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltv/n;->a:Ltv/n$a;

    return-void
.end method

.method public static synthetic a(Ltv/n;Leu/a;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Ltv/n;->k(Ltv/n;Leu/a;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ltv/n;Z)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Ltv/n;->j(Ltv/n;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Ltv/n;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V
    .locals 0

    invoke-static {p0, p1}, Ltv/n;->l(Ltv/n;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V

    return-void
.end method

.method public static synthetic d(Ltv/n;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V
    .locals 0

    invoke-static {p0, p1}, Ltv/n;->m(Ltv/n;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V

    return-void
.end method

.method private final h(Leu/a;)V
    .locals 9

    iget-boolean v0, p0, Ltv/n;->f:Z

    if-eqz v0, :cond_0

    sget-object p1, Luh/b;->a:Luh/b$a;

    sget v0, Lcom/transsion/subtitle/R$string;->subtitle_is_downloading:I

    invoke-virtual {p1, v0}, Luh/b$a;->d(I)V

    return-void

    :cond_0
    sget-object v0, Lnh/m;->a:Lnh/m;

    invoke-virtual {v0}, Lnh/m;->e()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Luh/b;->a:Luh/b$a;

    sget v0, Lcom/tn/lib/widget/R$string;->no_network_toast:I

    invoke-virtual {p1, v0}, Luh/b$a;->d(I)V

    return-void

    :cond_1
    sget-object v0, Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/b;->a:Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/b$a;

    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/b$a;->b()Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/b;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/b;->b(Lcom/transsion/subtitle_download/a;)V

    invoke-virtual {p1}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->setStatus(I)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Ltv/n;->f:Z

    sget-object v2, Llg/a;->a:Llg/a$a;

    iget-object v1, p0, Ltv/n;->a:Ltv/n$a;

    invoke-interface {v1}, Ltv/n$a;->getLogTag()Ljava/lang/String;

    move-result-object v3

    const-class v1, Ltv/n;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v4

    invoke-virtual {v4}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v5

    invoke-virtual {v5}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getType()I

    move-result v5

    invoke-virtual {p1}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v6

    invoke-virtual {v6}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getSubtitleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v7

    invoke-virtual {v7}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getResourceId()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> downloadSubtitle() --> \u5185\u7f6e\u5b57\u5e55\u5217\u8868\uff0c\u4e0b\u8f7d\u5b57\u5e55\uff0cname = "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", subtype = "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",download subtitleName = "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", subResourceId = "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "~"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-virtual {p1}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->setAutoDownload(Z)V

    iput-object p1, p0, Ltv/n;->e:Leu/a;

    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/b$a;->b()Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/b;->h(Leu/a;)V

    return-void
.end method

.method private static final j(Ltv/n;Z)Lkotlin/Unit;
    .locals 0

    iput-boolean p1, p0, Ltv/n;->c:Z

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final k(Ltv/n;Leu/a;)Lkotlin/Unit;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLanName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    move v1, v2

    :goto_2
    xor-int/2addr v1, v2

    iput-boolean v1, p0, Ltv/n;->c:Z

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLanName()Ljava/lang/String;

    move-result-object v0

    :cond_3
    iput-object v0, p0, Ltv/n;->d:Ljava/lang/String;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final l(Ltv/n;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V
    .locals 8

    iget-object v0, p0, Ltv/n;->e:Leu/a;

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLan()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLan()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v1, Llg/a;->a:Llg/a$a;

    iget-object v0, p0, Ltv/n;->a:Ltv/n$a;

    invoke-interface {v0}, Ltv/n$a;->getLogTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getResourceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLan()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getStatus()I

    move-result p1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u5185\u7f6e\u5b57\u5e55\u70b9\u51fb\u4e0b\u8f7d\u6210\u529f\uff0cname = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", videoResourceId = "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", download subtitleName = "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", lan = "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\uff0c status:"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "~"

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object p1, p0, Ltv/n;->e:Leu/a;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Ltv/n;->o(Leu/a;)V

    :cond_1
    return-void
.end method

.method private static final m(Ltv/n;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V
    .locals 7

    iget-object v0, p0, Ltv/n;->e:Leu/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Leu/a;->h(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V

    :cond_0
    sget-object v1, Llg/a;->a:Llg/a$a;

    iget-object p0, p0, Ltv/n;->a:Ltv/n$a;

    invoke-interface {p0}, Ltv/n$a;->getLogTag()Ljava/lang/String;

    move-result-object v2

    const-class p0, Ltv/n;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getResourceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLan()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getStatus()I

    move-result p1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " --> onFail() --> \u5185\u7f6e\u5b57\u5e55\u70b9\u51fb\u4e0b\u8f7d\u5931\u8d25TnT\uff0cname = "

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", videoResourceId = "

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", download subtitleName = "

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", lan = "

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\uff0c status:"

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "~"

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final e()V
    .locals 1

    sget-object v0, Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/b;->a:Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/b$a;

    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/b$a;->b()Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/b;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/b;->b(Lcom/transsion/subtitle_download/a;)V

    return-void
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, Ltv/n;->b:Lcom/transsion/ugcvideodetail/hepler/subtitle/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/ugcvideodetail/hepler/subtitle/b;->e()V

    :cond_0
    return-void
.end method

.method public final g()V
    .locals 1

    sget-object v0, Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/b;->a:Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/b$a;

    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/b$a;->b()Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/b;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/b;->c(Lcom/transsion/subtitle_download/a;)V

    return-void
.end method

.method public final i(Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayStream;)V
    .locals 9

    sget-object v0, Llg/a;->a:Llg/a$a;

    iget-object v1, p0, Ltv/n;->a:Ltv/n$a;

    invoke-interface {v1}, Ltv/n$a;->getLogTag()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v2, ">>>>>>>--------------------initLanguage subtitle, position:"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v0, p0, Ltv/n;->a:Ltv/n$a;

    invoke-interface {v0}, Ltv/n$a;->c()Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ltv/n;->a:Ltv/n$a;

    invoke-interface {v0}, Ltv/n$a;->getData()Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Lcom/transsion/ugcvideodetail/hepler/subtitle/b;->g1:Lcom/transsion/ugcvideodetail/hepler/subtitle/b$a;

    iget-object v0, p0, Ltv/n;->a:Ltv/n$a;

    invoke-interface {v0}, Ltv/n$a;->a()Lqv/r;

    move-result-object v0

    iget-object v4, v0, Lqv/r;->g:Landroid/widget/FrameLayout;

    const-string v0, "flUgcImmSubtitle"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ltv/n;->a:Ltv/n$a;

    invoke-interface {v0}, Ltv/n$a;->a()Lqv/r;

    move-result-object v0

    iget-object v5, v0, Lqv/r;->M:Lcom/avery/subtitle/widget/SimpleSubtitleView;

    const-string v0, "vUgcImmSubtitle"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ltv/n;->a:Ltv/n$a;

    invoke-interface {v0}, Ltv/n$a;->b()Lcom/transsion/ugcvideodetail/hepler/subtitle/a;

    move-result-object v6

    iget-object v0, p0, Ltv/n;->a:Ltv/n$a;

    invoke-interface {v0}, Ltv/n$a;->getData()Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    move-result-object v7

    const-string v3, "/ugc_video/immersive_detail"

    move-object v8, p1

    invoke-virtual/range {v1 .. v8}, Lcom/transsion/ugcvideodetail/hepler/subtitle/b$a;->a(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Landroid/view/ViewGroup;Lcom/avery/subtitle/widget/SimpleSubtitleView;Lcom/transsion/ugcvideodetail/hepler/subtitle/a;Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayStream;)Lcom/transsion/ugcvideodetail/hepler/subtitle/b;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/ugcvideodetail/hepler/subtitle/b;->e()V

    new-instance v0, Ltv/j;

    invoke-direct {v0, p0}, Ltv/j;-><init>(Ltv/n;)V

    invoke-interface {p1, v0}, Lcom/transsion/ugcvideodetail/hepler/subtitle/b;->a(Lkotlin/jvm/functions/Function1;)V

    new-instance v0, Ltv/k;

    invoke-direct {v0, p0}, Ltv/k;-><init>(Ltv/n;)V

    invoke-interface {p1, v0}, Lcom/transsion/ugcvideodetail/hepler/subtitle/b;->b(Lkotlin/jvm/functions/Function1;)V

    iput-object p1, p0, Ltv/n;->b:Lcom/transsion/ugcvideodetail/hepler/subtitle/b;

    :cond_1
    :goto_0
    return-void
.end method

.method public final n()V
    .locals 1

    iget-object v0, p0, Ltv/n;->b:Lcom/transsion/ugcvideodetail/hepler/subtitle/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/ugcvideodetail/hepler/subtitle/b;->onDestroy()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Ltv/n;->b:Lcom/transsion/ugcvideodetail/hepler/subtitle/b;

    return-void
.end method

.method public final o(Leu/a;)V
    .locals 7

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Llg/a;->a:Llg/a$a;

    iget-object v0, p0, Ltv/n;->a:Ltv/n$a;

    invoke-interface {v0}, Ltv/n$a;->getLogTag()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v3, "onSubtitleSelect"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-virtual {p1}, Leu/a;->d()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Ltv/n;->h(Leu/a;)V

    return-void

    :cond_0
    iget-object v0, p0, Ltv/n;->b:Lcom/transsion/ugcvideodetail/hepler/subtitle/b;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/transsion/ugcvideodetail/hepler/subtitle/b;->f(Leu/a;)V

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Ltv/n;->e:Leu/a;

    return-void
.end method

.method public onComplete(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V
    .locals 1

    const-string v0, "stDownloadTable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ltv/n;->f:Z

    new-instance v0, Ltv/l;

    invoke-direct {v0, p0, p1}, Ltv/l;-><init>(Ltv/n;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->k(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDownloading(ILcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V
    .locals 0

    const-string p1, "stDownloadTable"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onFail(Ljava/lang/Exception;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "dbBean"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Ltv/n;->f:Z

    new-instance p1, Ltv/m;

    invoke-direct {p1, p0, p2}, Ltv/m;-><init>(Ltv/n;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V

    invoke-static {p1}, Lcom/blankj/utilcode/util/ThreadUtils;->k(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSaveDownload(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/subtitle_download/a$a;->a(Lcom/transsion/subtitle_download/a;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V

    return-void
.end method

.method public onUnGzZip(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/subtitle_download/a$a;->b(Lcom/transsion/subtitle_download/a;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V

    return-void
.end method

.method public final p(Z)V
    .locals 1

    iget-object v0, p0, Ltv/n;->b:Lcom/transsion/ugcvideodetail/hepler/subtitle/b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/transsion/ugcvideodetail/hepler/subtitle/b;->c(Z)V

    :cond_0
    return-void
.end method

.method public final q(J)V
    .locals 1

    iget-object v0, p0, Ltv/n;->b:Lcom/transsion/ugcvideodetail/hepler/subtitle/b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/transsion/ugcvideodetail/hepler/subtitle/b;->d(J)V

    :cond_0
    return-void
.end method
