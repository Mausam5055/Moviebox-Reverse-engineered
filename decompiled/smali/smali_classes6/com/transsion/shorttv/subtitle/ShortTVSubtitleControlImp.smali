.class public final Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/shorttv/subtitle/a;
.implements Lvs/a;


# instance fields
.field private final b:Landroidx/fragment/app/FragmentActivity;

.field private final c:Lms/k0;

.field private final d:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

.field private final e:Ljs/e;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Lws/a;

.field private i:Lkotlin/jvm/functions/Function1;

.field private j:Lkotlin/jvm/functions/Function1;

.field private k:Z

.field private l:J

.field private m:F

.field private final n:Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp$downloadListener$1;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;Lms/k0;Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;Ljs/e;Ljava/lang/String;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewBinding"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "epItem"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->b:Landroidx/fragment/app/FragmentActivity;

    iput-object p2, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->c:Lms/k0;

    iput-object p3, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->d:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    iput-object p4, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->e:Ljs/e;

    iput-object p5, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->f:Ljava/lang/String;

    const-string p3, "ShortTVSubtitleCtr"

    iput-object p3, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->g:Ljava/lang/String;

    new-instance p3, Landroidx/lifecycle/v0;

    invoke-direct {p3, p1}, Landroidx/lifecycle/v0;-><init>(Landroidx/lifecycle/y0;)V

    const-class p4, Lws/a;

    invoke-virtual {p3, p4}, Landroidx/lifecycle/v0;->a(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    move-result-object p3

    check-cast p3, Lws/a;

    iput-object p3, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->h:Lws/a;

    const/4 p4, 0x1

    iput-boolean p4, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->k:Z

    const/high16 p4, 0x3f800000    # 1.0f

    iput p4, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->m:F

    new-instance p4, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp$downloadListener$1;

    invoke-direct {p4, p0}, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp$downloadListener$1;-><init>(Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;)V

    iput-object p4, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->n:Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp$downloadListener$1;

    invoke-virtual {p3}, Lws/a;->b()V

    invoke-virtual {p3}, Lws/a;->e()Landroidx/lifecycle/b0;

    move-result-object p3

    new-instance p5, Lcom/transsion/shorttv/subtitle/b;

    invoke-direct {p5, p0}, Lcom/transsion/shorttv/subtitle/b;-><init>(Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;)V

    new-instance v0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp$b;

    invoke-direct {v0, p5}, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p3, p1, v0}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    sget-object p1, Lcom/transsion/shorttv/subtitle/manager/b;->a:Lcom/transsion/shorttv/subtitle/manager/b$a;

    invoke-virtual {p1}, Lcom/transsion/shorttv/subtitle/manager/b$a;->b()Lcom/transsion/shorttv/subtitle/manager/b;

    move-result-object p3

    invoke-interface {p3, p4}, Lcom/transsion/shorttv/subtitle/manager/b;->b(Lcom/transsion/subtitle_download/a;)V

    invoke-virtual {p1}, Lcom/transsion/shorttv/subtitle/manager/b$a;->b()Lcom/transsion/shorttv/subtitle/manager/b;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/transsion/shorttv/subtitle/manager/b;->e(Lvs/a;)V

    iget-object p1, p2, Lms/k0;->K:Lcom/avery/subtitle/widget/SimpleSubtitleView;

    invoke-direct {p0, p1}, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->z(Lcom/avery/subtitle/widget/SimpleSubtitleView;)V

    return-void
.end method

.method private final A(Z)V
    .locals 5

    sget-object v0, Llg/a;->a:Llg/a$a;

    iget-object v1, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->g:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> onSubtitleSwitchClick() --> turnOn = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " --> \u5b57\u5e55\u5f00\u5173\u72b6\u6001\u53d8\u5316"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v4, v2, v3}, Llg/a$a;->g(Llg/a$a;Ljava/lang/String;ZILjava/lang/Object;)V

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->E()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->x()V

    :goto_0
    iget-object v0, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->h:Lws/a;

    invoke-virtual {v0}, Lws/a;->f()Landroidx/lifecycle/b0;

    move-result-object v0

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    return-void
.end method

.method private final B(Lts/b;)V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->e:Ljs/e;

    invoke-virtual {v1}, Ljs/e;->e()Ljava/lang/String;

    move-result-object v1

    const-string v2, "subject_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->e:Ljs/e;

    invoke-virtual {v1}, Ljs/e;->d()Lcom/transsion/shorttv/bean/ShortTVItem;

    move-result-object v1

    const-string v2, ""

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/transsion/shorttv/bean/ShortTVItem;->getId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    move-object v1, v2

    :cond_1
    const-string v3, "mini_id"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->e:Ljs/e;

    invoke-virtual {v1}, Ljs/e;->d()Lcom/transsion/shorttv/bean/ShortTVItem;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/transsion/shorttv/bean/ShortTVItem;->getSe()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "se"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->e:Ljs/e;

    invoke-virtual {v1}, Ljs/e;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "ep"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->e:Ljs/e;

    invoke-virtual {v1}, Ljs/e;->d()Lcom/transsion/shorttv/bean/ShortTVItem;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/transsion/shorttv/bean/ShortTVItem;->getVideoId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    :cond_3
    move-object v1, v2

    :cond_4
    const-string v3, "video_id"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "opt_type"

    const-string v3, "subtitle_select"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lts/b;->a()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getOps()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string v3, "ops"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    invoke-virtual {p1}, Lts/b;->a()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "name"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lts/b;->a()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLan()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    move-object v1, v2

    :cond_6
    const-string v3, "lan"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lts/b;->a()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLanName()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_7

    goto :goto_1

    :cond_7
    move-object v2, p1

    :goto_1
    const-string p1, "lan_name"

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lhj/i;->a:Lhj/i;

    const-string v1, "minitv_play"

    invoke-virtual {p1, v1, v0}, Lhj/i;->p(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private final C()V
    .locals 5

    iget-object v0, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->h:Lws/a;

    invoke-virtual {v0}, Lws/a;->d()Landroidx/lifecycle/b0;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->h:Lws/a;

    invoke-virtual {v0}, Lws/a;->e()Landroidx/lifecycle/b0;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->c:Lms/k0;

    iget-object v0, v0, Lms/k0;->K:Lcom/avery/subtitle/widget/SimpleSubtitleView;

    invoke-virtual {v0}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->reset()V

    sget-object v0, Llg/a;->a:Llg/a$a;

    iget-object v2, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->g:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " --> reset() --> \u91cd\u7f6e\u8d44\u6e90"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v0, v2, v3, v4, v1}, Llg/a$a;->g(Llg/a$a;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method private static final D(Z)V
    .locals 0

    return-void
.end method

.method private final E()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->c:Lms/k0;

    iget-object v0, v0, Lms/k0;->K:Lcom/avery/subtitle/widget/SimpleSubtitleView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->turnOff(Z)V

    iget-object v0, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->c:Lms/k0;

    iget-object v0, v0, Lms/k0;->f:Landroid/widget/FrameLayout;

    const-string v1, "flSubtitle"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lyr/b;->e(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic i(Z)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->D(Z)V

    return-void
.end method

.method public static synthetic j(Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;Lts/b;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->k(Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;Lts/b;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final k(Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;Lts/b;)Lkotlin/Unit;
    .locals 2

    if-nez p1, :cond_0

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lts/b;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lfs/b;->a:Lfs/b$a;

    sget v1, Lcom/transsion/shorttv/R$string;->short_tv_subtitle_turn_off_toast:I

    invoke-virtual {v0, v1}, Lfs/b$a;->d(I)V

    :cond_1
    invoke-virtual {p1}, Lts/b;->c()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->A(Z)V

    invoke-virtual {p1}, Lts/b;->c()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->h(Lts/b;)V

    :cond_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public static final synthetic l(Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;)Landroidx/fragment/app/FragmentActivity;
    .locals 0

    iget-object p0, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->b:Landroidx/fragment/app/FragmentActivity;

    return-object p0
.end method

.method public static final synthetic m(Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;)Lkotlin/jvm/functions/Function1;
    .locals 0

    iget-object p0, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->i:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public static final synthetic n(Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->k:Z

    return p0
.end method

.method public static final synthetic o(Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;)J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->l:J

    return-wide v0
.end method

.method public static final synthetic p(Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;)F
    .locals 0

    iget p0, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->m:F

    return p0
.end method

.method public static final synthetic q(Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;)Ljs/e;
    .locals 0

    iget-object p0, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->e:Ljs/e;

    return-object p0
.end method

.method public static final synthetic r(Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->g:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic s(Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->f:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic t(Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;)Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;
    .locals 0

    iget-object p0, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->d:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    return-object p0
.end method

.method public static final synthetic u(Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;)Lms/k0;
    .locals 0

    iget-object p0, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->c:Lms/k0;

    return-object p0
.end method

.method public static final synthetic v(Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;)Lws/a;
    .locals 0

    iget-object p0, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->h:Lws/a;

    return-object p0
.end method

.method public static final synthetic w(Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->y(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method private final x()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->c:Lms/k0;

    iget-object v0, v0, Lms/k0;->K:Lcom/avery/subtitle/widget/SimpleSubtitleView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->turnOff(Z)V

    iget-object v0, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->c:Lms/k0;

    iget-object v0, v0, Lms/k0;->f:Landroid/widget/FrameLayout;

    const-string v1, "flSubtitle"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lyr/b;->b(Landroid/view/View;)V

    return-void
.end method

.method private final y(Ljava/util/List;Ljava/lang/String;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {}, Lus/a;->a()Ljava/util/Locale;

    move-result-object v2

    sget-object v3, Llg/a;->a:Llg/a$a;

    iget-object v4, v0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->g:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " --> initDefaultSubtitle() --> cur language = "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " -- country = "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static {v3, v4, v5, v6, v7}, Llg/a$a;->g(Llg/a$a;Ljava/lang/String;ZILjava/lang/Object;)V

    sget-object v4, Lcom/transsion/shorttv/utils/h;->a:Lcom/transsion/shorttv/utils/h;

    invoke-virtual {v4}, Lcom/transsion/shorttv/utils/h;->d()Lcom/tencent/mmkv/MMKV;

    move-result-object v4

    const-string v8, "k_subtitle_language"

    const-string v9, ""

    invoke-virtual {v4, v8, v9}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v8, Lcom/transsion/subtitle_download/utils/d;->a:Lcom/transsion/subtitle_download/utils/d;

    invoke-virtual {v8}, Lcom/transsion/subtitle_download/utils/d;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v8

    const-string v10, "k_subtitle_select_lan"

    invoke-virtual {v8, v10, v9}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v8, "off"

    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    const-string v10, "OFF"

    if-eqz v8, :cond_1

    iget-object v1, v0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->i:Lkotlin/jvm/functions/Function1;

    if-eqz v1, :cond_0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v1, v0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->h:Lws/a;

    invoke-virtual {v1}, Lws/a;->f()Landroidx/lifecycle/b0;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->h:Lws/a;

    invoke-virtual {v1, v10}, Lws/a;->g(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v8, v0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->g:Ljava/lang/String;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " --> initDefaultSubtitle() --> savedDiffId = "

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " -- savedLan = "

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", subListSize:"

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8, v5, v6, v7}, Llg/a$a;->g(Llg/a$a;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v8, v7

    move-object v11, v8

    move-object v12, v11

    move-object v13, v12

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    const-string v15, "en"

    if-eqz v14, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lts/b;

    if-nez v8, :cond_3

    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v16

    if-nez v16, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v14}, Lts/b;->a()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLanName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v8, v14

    :cond_3
    :goto_1
    if-nez v11, :cond_4

    invoke-virtual {v14}, Lts/b;->a()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v5

    invoke-virtual {v5}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLanAbbr()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move-object v11, v14

    :cond_4
    invoke-virtual {v14}, Lts/b;->b()Z

    move-result v5

    if-nez v5, :cond_6

    :cond_5
    const/4 v5, 0x0

    const/4 v6, 0x2

    goto :goto_0

    :cond_6
    invoke-virtual {v14}, Lts/b;->a()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v5

    invoke-virtual {v5}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLan()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v15}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    move-object v12, v14

    :cond_7
    invoke-virtual {v14}, Lts/b;->a()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v5

    invoke-virtual {v5}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v14}, Lts/b;->a()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v5

    invoke-virtual {v5}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

    move-result-object v9

    sget-object v5, Llg/a;->a:Llg/a$a;

    iget-object v6, v0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->g:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " --> initDefaultSubtitle() --> \u4f7f\u7528\u4e4b\u524d\u9009\u62e9\u7684\u5b57\u5e55 saved flag = "

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v13, 0x0

    const/4 v15, 0x2

    invoke-static {v5, v6, v13, v15, v7}, Llg/a$a;->g(Llg/a$a;Ljava/lang/String;ZILjava/lang/Object;)V

    move v5, v13

    move-object v13, v14

    move v6, v15

    goto/16 :goto_0

    :cond_8
    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_a

    if-eqz v8, :cond_9

    invoke-virtual {v8}, Lts/b;->a()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

    move-result-object v9

    sget-object v1, Llg/a;->a:Llg/a$a;

    iget-object v2, v0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->g:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " --> initDefaultSubtitle() --> \u4f7f\u7528\u4e4b\u524d\u9009\u62e9\u7684\u8bed\u8a00 local set savedLan = "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v1, v2, v3, v4, v7}, Llg/a$a;->g(Llg/a$a;Ljava/lang/String;ZILjava/lang/Object;)V

    goto :goto_2

    :cond_9
    if-eqz v11, :cond_a

    invoke-virtual {v11}, Lts/b;->a()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

    move-result-object v9

    sget-object v1, Llg/a;->a:Llg/a$a;

    iget-object v2, v0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->g:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " --> initDefaultSubtitle() --> \u6ca1\u6709\u81ea\u5df1\u9009\u62e9\u7684\u9ed8\u8ba4\u8bed\u8a00\uff0c\u4f7f\u7528\u624b\u673a\u8bed\u8a00 -- phone set def language = "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v1, v2, v3, v4, v7}, Llg/a$a;->g(Llg/a$a;Ljava/lang/String;ZILjava/lang/Object;)V

    move-object v8, v11

    goto :goto_2

    :cond_a
    move-object v8, v13

    :goto_2
    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_e

    if-eqz v12, :cond_b

    invoke-virtual {v12}, Lts/b;->b()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {v12}, Lts/b;->a()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Llg/a;->a:Llg/a$a;

    iget-object v3, v0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->g:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " --> initDefaultSubtitle() --> \u6ca1\u6709\u8bbe\u7f6e\u9ed8\u8ba4\u8bed\u8a00 --> english set def language = "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v2, v1, v3, v4, v7}, Llg/a$a;->g(Llg/a$a;Ljava/lang/String;ZILjava/lang/Object;)V

    goto :goto_4

    :cond_b
    move-object/from16 v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_e

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lts/b;

    invoke-virtual {v2}, Lts/b;->b()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {v2}, Lts/b;->a()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

    move-result-object v9

    move-object v12, v2

    goto :goto_3

    :cond_d
    move-object v12, v8

    :goto_3
    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_f

    sget-object v1, Llg/a;->a:Llg/a$a;

    iget-object v2, v0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->g:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " --> initDefaultSubtitle() --> \u53ef\u80fd\u5916\u90e8\u53ea\u8bfb\u53d6\u5230\u4e86\u6570\u636e\u5e93\u524d\u9762\u6ca1\u4e0b\u8f7d\u7684\u5b57\u5e55 --> \u6ca1\u6709\u5bf9\u5e94\u7684\u8bed\u8a00\uff0c\u4e0d\u8bbe\u7f6e\uff0c\u9700\u8981\u7528\u6237\u624b\u52a8\u8bbe\u7f6e\u6216\u5f53\u524d\u4e0b\u8f7d\u540e\u81ea\u52a8\u8bbe\u7f6e\u4e0a"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v1, v2, v3, v4, v7}, Llg/a$a;->g(Llg/a$a;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    :cond_e
    move-object v12, v8

    :cond_f
    :goto_4
    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lts/b;

    iget-object v4, v0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->c:Lms/k0;

    iget-object v4, v4, Lms/k0;->K:Lcom/avery/subtitle/widget/SimpleSubtitleView;

    invoke-virtual {v3}, Lts/b;->a()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v5

    invoke-virtual {v5}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3}, Lus/a;->b(Lts/b;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->setSubtitlePath(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_10
    const/4 v2, 0x1

    if-eqz v12, :cond_17

    invoke-virtual {v12}, Lts/b;->b()Z

    move-result v3

    if-nez v3, :cond_17

    invoke-virtual {v12}, Lts/b;->a()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->setAutoDownload(Z)V

    invoke-virtual {v12}, Lts/b;->a()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->setSetImmediately(Z)V

    sget-object v3, Lcom/transsion/shorttv/subtitle/manager/b;->a:Lcom/transsion/shorttv/subtitle/manager/b$a;

    invoke-virtual {v3}, Lcom/transsion/shorttv/subtitle/manager/b$a;->b()Lcom/transsion/shorttv/subtitle/manager/b;

    move-result-object v3

    invoke-interface {v3, v12}, Lcom/transsion/shorttv/subtitle/manager/b;->d(Lts/b;)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lts/b;

    invoke-virtual {v5}, Lts/b;->b()Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-virtual {v5}, Lts/b;->a()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v5

    invoke-virtual {v5}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLan()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v15}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    goto :goto_6

    :cond_12
    move-object v4, v7

    :goto_6
    check-cast v4, Lts/b;

    if-nez v4, :cond_15

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lts/b;

    invoke-virtual {v4}, Lts/b;->b()Z

    move-result v4

    if-eqz v4, :cond_13

    move-object v7, v3

    :cond_14
    move-object v4, v7

    check-cast v4, Lts/b;

    :cond_15
    if-eqz v4, :cond_16

    invoke-virtual {v0, v4}, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->h(Lts/b;)V

    invoke-virtual {v4, v2}, Lts/b;->f(Z)V

    iget-object v1, v0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->h:Lws/a;

    invoke-virtual {v1}, Lws/a;->f()Landroidx/lifecycle/b0;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    invoke-virtual {v4}, Lts/b;->a()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_16

    iget-object v1, v0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->h:Lws/a;

    invoke-virtual {v4}, Lts/b;->a()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lws/a;->g(Ljava/lang/String;)V

    :cond_16
    return-void

    :cond_17
    invoke-virtual {v0, v12}, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->h(Lts/b;)V

    if-eqz v12, :cond_18

    invoke-virtual {v12, v2}, Lts/b;->f(Z)V

    :cond_18
    iget-object v1, v0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->h:Lws/a;

    invoke-virtual {v1}, Lws/a;->f()Landroidx/lifecycle/b0;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    if-eqz v12, :cond_19

    iget-object v1, v0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->h:Lws/a;

    invoke-virtual {v12}, Lts/b;->a()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lws/a;->g(Ljava/lang/String;)V

    goto :goto_7

    :cond_19
    iget-object v1, v0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->h:Lws/a;

    invoke-virtual {v1, v10}, Lws/a;->g(Ljava/lang/String;)V

    :goto_7
    return-void
.end method

.method private final z(Lcom/avery/subtitle/widget/SimpleSubtitleView;)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/shorttv/R$color;->short_tv_black_80:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->setBgColor(I)V

    :cond_0
    if-eqz p1, :cond_1

    const/16 v0, 0x8

    invoke-static {v0}, Lyr/a;->a(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->setBgdRadius(I)V

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    new-instance v1, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp$a;

    invoke-direct {v1, p0}, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp$a;-><init>(Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;)V

    invoke-virtual {p1, v1, v0}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->initSubtitle(Li5/a;Z)V

    goto :goto_0

    :cond_2
    sget-object p1, Llg/a;->a:Llg/a$a;

    iget-object v1, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->g:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> vdSubtitle --> initSubtitle() --> null"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v1, v0, v2, v3}, Llg/a$a;->g(Llg/a$a;Ljava/lang/String;ZILjava/lang/Object;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->i:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public b(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->j:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->k:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->c:Lms/k0;

    iget-object p1, p1, Lms/k0;->K:Lcom/avery/subtitle/widget/SimpleSubtitleView;

    invoke-virtual {p1}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->resume()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->c:Lms/k0;

    iget-object p1, p1, Lms/k0;->K:Lcom/avery/subtitle/widget/SimpleSubtitleView;

    invoke-virtual {p1}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->pause()V

    :goto_0
    return-void
.end method

.method public d(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->l:J

    return-void
.end method

.method public e()V
    .locals 7

    iget-object v0, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->b:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v1

    new-instance v4, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp$checkSubtitle$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp$checkSubtitle$1;-><init>(Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public f()V
    .locals 3

    invoke-direct {p0}, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->x()V

    iget-object v0, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->h:Lws/a;

    invoke-virtual {v0}, Lws/a;->d()Landroidx/lifecycle/b0;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lts/b;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lts/b;->f(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->h:Lws/a;

    invoke-virtual {v0}, Lws/a;->f()Landroidx/lifecycle/b0;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    sget-object v0, Lcom/transsion/shorttv/utils/h;->a:Lcom/transsion/shorttv/utils/h;

    invoke-virtual {v0}, Lcom/transsion/shorttv/utils/h;->d()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "k_subtitle_language"

    const-string v2, "off"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lcom/transsion/subtitle_download/utils/d;->a:Lcom/transsion/subtitle_download/utils/d;

    invoke-virtual {v0}, Lcom/transsion/subtitle_download/utils/d;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "k_subtitle_select_lan"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Llr/a;->a:Llr/a;

    invoke-virtual {v0}, Llr/a;->c()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lfs/b;->a:Lfs/b$a;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    sget v2, Lcom/transsion/shorttv/R$string;->short_tv_subtitles_off:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfs/b$a;->e(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public g(Z)V
    .locals 5

    sget-object v0, Llg/a;->a:Llg/a$a;

    iget-object v1, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->g:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> checkResult --> "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v4, v2, v3}, Llg/a$a;->g(Llg/a$a;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->i:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public h(Lts/b;)V
    .locals 9

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->h:Lws/a;

    invoke-virtual {v1}, Lws/a;->d()Landroidx/lifecycle/b0;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lts/b;

    invoke-virtual {v3}, Lts/b;->a()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v4

    invoke-virtual {v4}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

    move-result-object v4

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lts/b;->a()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_0
    move-object v5, v2

    :goto_1
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v3, v4}, Lts/b;->f(Z)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->j:Lkotlin/jvm/functions/Function1;

    if-eqz v1, :cond_2

    invoke-interface {v1, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lts/b;->a()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->E()V

    iget-object v3, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->c:Lms/k0;

    iget-object v3, v3, Lms/k0;->K:Lcom/avery/subtitle/widget/SimpleSubtitleView;

    invoke-static {p1}, Lus/a;->b(Lts/b;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/transsion/shorttv/subtitle/c;

    invoke-direct {v5}, Lcom/transsion/shorttv/subtitle/c;-><init>()V

    invoke-virtual {v3, v1, v4, v5}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->selectSubtitle(Ljava/lang/String;Ljava/lang/String;Li5/b;)V

    :cond_3
    sget-object v1, Llg/a;->a:Llg/a$a;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lts/b;->a()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getDelay()Ljava/lang/Long;

    move-result-object v3

    goto :goto_2

    :cond_4
    move-object v3, v2

    :goto_2
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lts/b;->a()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLanName()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_5
    move-object v4, v2

    :goto_3
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lts/b;->a()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->isAutoDownload()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_4

    :cond_6
    move-object v5, v2

    :goto_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "selectSubtitle delayDuration:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", name:"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", isAutoDownload:"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "short_tv_subtitle"

    invoke-virtual {v1, v4, v3, v0}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lts/b;->a()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getDelay()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    iget-object v1, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->c:Lms/k0;

    iget-object v1, v1, Lms/k0;->K:Lcom/avery/subtitle/widget/SimpleSubtitleView;

    invoke-virtual {v1, v3, v4}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->subtitleDelay(J)V

    :cond_7
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lts/b;->a()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->isAutoDownload()Z

    move-result v3

    if-nez v3, :cond_8

    sget-object v3, Lcom/transsion/shorttv/utils/h;->a:Lcom/transsion/shorttv/utils/h;

    invoke-virtual {v3}, Lcom/transsion/shorttv/utils/h;->d()Lcom/tencent/mmkv/MMKV;

    move-result-object v3

    const-string v4, "k_subtitle_language"

    invoke-virtual {v1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLanName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    sget-object v3, Lcom/transsion/subtitle_download/utils/d;->a:Lcom/transsion/subtitle_download/utils/d;

    invoke-virtual {v3}, Lcom/transsion/subtitle_download/utils/d;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v3

    const-string v4, "k_subtitle_select_lan"

    invoke-virtual {v1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLan()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_8
    sget-object v3, Llr/a;->a:Llr/a;

    invoke-virtual {v3}, Llr/a;->c()Z

    move-result v3

    if-nez v3, :cond_9

    sget-object v3, Lfs/b;->a:Lfs/b$a;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v4

    sget v5, Lcom/transsion/shorttv/R$string;->short_tv_subtitle_enable_toast:I

    invoke-virtual {v1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getName()Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v0, v6

    invoke-virtual {v4, v5, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lfs/b$a;->e(Ljava/lang/CharSequence;)V

    :cond_9
    if-eqz p1, :cond_a

    invoke-direct {p0, p1}, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->B(Lts/b;)V

    :cond_a
    iget-object v0, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->b:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v3

    new-instance v6, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp$selectSubtitle$6;

    invoke-direct {v6, p1, p0, v2}, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp$selectSubtitle$6;-><init>(Lts/b;Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;Lkotlin/coroutines/Continuation;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public onDestroy()V
    .locals 5

    invoke-direct {p0}, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->C()V

    iget-object v0, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->c:Lms/k0;

    iget-object v0, v0, Lms/k0;->f:Landroid/widget/FrameLayout;

    const-string v1, "flSubtitle"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lyr/b;->b(Landroid/view/View;)V

    iget-object v0, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->c:Lms/k0;

    iget-object v0, v0, Lms/k0;->K:Lcom/avery/subtitle/widget/SimpleSubtitleView;

    invoke-virtual {v0}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->stop()V

    iget-object v0, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->c:Lms/k0;

    iget-object v0, v0, Lms/k0;->K:Lcom/avery/subtitle/widget/SimpleSubtitleView;

    invoke-virtual {v0}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->destroy()V

    sget-object v0, Lcom/transsion/shorttv/subtitle/manager/b;->a:Lcom/transsion/shorttv/subtitle/manager/b$a;

    invoke-virtual {v0}, Lcom/transsion/shorttv/subtitle/manager/b$a;->b()Lcom/transsion/shorttv/subtitle/manager/b;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/transsion/shorttv/subtitle/manager/b;->f(Lvs/a;)V

    invoke-virtual {v0}, Lcom/transsion/shorttv/subtitle/manager/b$a;->b()Lcom/transsion/shorttv/subtitle/manager/b;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->n:Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp$downloadListener$1;

    invoke-interface {v0, v1}, Lcom/transsion/shorttv/subtitle/manager/b;->c(Lcom/transsion/subtitle_download/a;)V

    sget-object v0, Llg/a;->a:Llg/a$a;

    iget-object v1, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->g:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> onDestroy()"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v4, v2, v3}, Llg/a$a;->g(Llg/a$a;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method
