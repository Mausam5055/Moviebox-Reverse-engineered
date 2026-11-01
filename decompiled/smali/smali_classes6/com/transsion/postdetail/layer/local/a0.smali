.class public abstract Lcom/transsion/postdetail/layer/local/a0;
.super Lcom/transsion/postdetail/layer/BaseLayer;

# interfaces
.implements Lvo/d;
.implements Lcom/transsion/player/orplayer/f;
.implements Lcom/transsion/baselib/report/l$a;
.implements Lcom/transsion/ad/strategy/b$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/postdetail/layer/local/a0$a;
    }
.end annotation


# instance fields
.field private A:Z

.field private B:Landroid/view/View;

.field private C:Landroid/view/View;

.field private D:F

.field private E:J

.field private final F:Lkotlin/Lazy;

.field private final G:Lkotlin/Lazy;

.field private H:Lcom/transsion/baselib/db/download/DownloadBean;

.field private I:Ljava/lang/String;

.field private J:Ljava/lang/String;

.field private K:Ljava/lang/String;

.field private L:Z

.field private M:Lvo/c;

.field private N:Z

.field private O:Z

.field private P:Z

.field private Q:I

.field private R:I

.field private S:I

.field private T:I

.field private final U:Lkotlin/Lazy;

.field private final V:Ljava/lang/Runnable;

.field private W:[Ljava/lang/String;

.field private X:I

.field private final Y:Ljava/lang/Runnable;

.field private final Z:Ljava/lang/Runnable;

.field private a0:J

.field private final j:Ljava/lang/String;

.field private final k:Landroidx/fragment/app/Fragment;

.field private l:J

.field private final m:Lkotlin/Lazy;

.field private final n:Lkotlin/Lazy;

.field private final o:Lkotlin/Lazy;

.field private p:I

.field private q:I

.field private r:Z

.field private s:Lcom/transsion/postdetail/layer/SystemTimeManager;

.field private t:Lvo/b;

.field private u:Lcom/transsion/subtitle/VideoSubtitleControl;

.field private v:Leo/n;

.field private w:Lcom/transsion/postdetail/layer/local/j1;

.field private x:Ljava/lang/String;

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 2

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/transsion/postdetail/layer/BaseLayer;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/postdetail/layer/local/a0;->j:Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/postdetail/layer/local/a0;->k:Landroidx/fragment/app/Fragment;

    new-instance v0, Lcom/transsion/postdetail/layer/local/y;

    invoke-direct {v0}, Lcom/transsion/postdetail/layer/local/y;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/postdetail/layer/local/a0;->m:Lkotlin/Lazy;

    new-instance v0, Lcom/transsion/postdetail/layer/local/z;

    invoke-direct {v0}, Lcom/transsion/postdetail/layer/local/z;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/postdetail/layer/local/a0;->n:Lkotlin/Lazy;

    new-instance v0, Lcom/transsion/postdetail/layer/local/b;

    invoke-direct {v0}, Lcom/transsion/postdetail/layer/local/b;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/postdetail/layer/local/a0;->o:Lkotlin/Lazy;

    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/postdetail/layer/local/a0;->x:Ljava/lang/String;

    new-instance v1, Lcom/transsion/postdetail/layer/local/c;

    invoke-direct {v1, p1}, Lcom/transsion/postdetail/layer/local/c;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-static {v1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/postdetail/layer/local/a0;->F:Lkotlin/Lazy;

    new-instance v1, Lcom/transsion/postdetail/layer/local/d;

    invoke-direct {v1}, Lcom/transsion/postdetail/layer/local/d;-><init>()V

    invoke-static {v1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/postdetail/layer/local/a0;->G:Lkotlin/Lazy;

    iput-object v0, p0, Lcom/transsion/postdetail/layer/local/a0;->I:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/postdetail/layer/local/a0;->J:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/postdetail/layer/local/a0;->K:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/transsion/postdetail/layer/local/a0;->Q:I

    const/16 v1, 0x8

    iput v1, p0, Lcom/transsion/postdetail/layer/local/a0;->R:I

    iput v0, p0, Lcom/transsion/postdetail/layer/local/a0;->S:I

    iput v0, p0, Lcom/transsion/postdetail/layer/local/a0;->T:I

    new-instance v0, Lcom/transsion/postdetail/layer/local/e;

    invoke-direct {v0, p1, p0}, Lcom/transsion/postdetail/layer/local/e;-><init>(Landroidx/fragment/app/Fragment;Lcom/transsion/postdetail/layer/local/a0;)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/postdetail/layer/local/a0;->U:Lkotlin/Lazy;

    new-instance p1, Lcom/transsion/postdetail/layer/local/f;

    invoke-direct {p1, p0}, Lcom/transsion/postdetail/layer/local/f;-><init>(Lcom/transsion/postdetail/layer/local/a0;)V

    iput-object p1, p0, Lcom/transsion/postdetail/layer/local/a0;->V:Ljava/lang/Runnable;

    const-string p1, ".."

    const-string v0, "..."

    const-string v1, "."

    filled-new-array {v1, p1, v0}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/postdetail/layer/local/a0;->W:[Ljava/lang/String;

    new-instance p1, Lcom/transsion/postdetail/layer/local/g;

    invoke-direct {p1, p0}, Lcom/transsion/postdetail/layer/local/g;-><init>(Lcom/transsion/postdetail/layer/local/a0;)V

    iput-object p1, p0, Lcom/transsion/postdetail/layer/local/a0;->Y:Ljava/lang/Runnable;

    new-instance p1, Lcom/transsion/postdetail/layer/local/h;

    invoke-direct {p1, p0}, Lcom/transsion/postdetail/layer/local/h;-><init>(Lcom/transsion/postdetail/layer/local/a0;)V

    iput-object p1, p0, Lcom/transsion/postdetail/layer/local/a0;->Z:Ljava/lang/Runnable;

    return-void
.end method

.method private final A1()V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->A0()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/transsion/postdetail/layer/local/a;

    invoke-direct {v1, p0}, Lcom/transsion/postdetail/layer/local/a;-><init>(Lcom/transsion/postdetail/layer/local/a0;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->f2()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/transsion/postdetail/layer/local/l;

    invoke-direct {v1, p0}, Lcom/transsion/postdetail/layer/local/l;-><init>(Lcom/transsion/postdetail/layer/local/a0;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->p2()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Lcom/transsion/postdetail/layer/local/s;

    invoke-direct {v1, p0}, Lcom/transsion/postdetail/layer/local/s;-><init>(Lcom/transsion/postdetail/layer/local/a0;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->O0()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v1, Lcom/transsion/postdetail/layer/local/t;

    invoke-direct {v1, p0}, Lcom/transsion/postdetail/layer/local/t;-><init>(Lcom/transsion/postdetail/layer/local/a0;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->i2()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v1, Lcom/transsion/postdetail/layer/local/u;

    invoke-direct {v1, p0}, Lcom/transsion/postdetail/layer/local/u;-><init>(Lcom/transsion/postdetail/layer/local/a0;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->P1()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    new-instance v1, Lcom/transsion/postdetail/layer/local/v;

    invoke-direct {v1, p0}, Lcom/transsion/postdetail/layer/local/v;-><init>(Lcom/transsion/postdetail/layer/local/a0;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->j1()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    new-instance v1, Lcom/transsion/postdetail/layer/local/w;

    invoke-direct {v1, p0}, Lcom/transsion/postdetail/layer/local/w;-><init>(Lcom/transsion/postdetail/layer/local/a0;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    return-void
.end method

.method private static final B1(Lcom/transsion/postdetail/layer/local/a0;Landroid/view/View;)V
    .locals 4

    const-string p1, "/profile/user_center_labels_feedback"

    invoke-static {p1}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p1

    const-string v0, "feedback_from_page"

    const-string v1, "SUBJECT_PLAY"

    invoke-virtual {p1, v0, v1}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/a0;->K:Ljava/lang/String;

    const-string v1, "subject_id"

    invoke-virtual {p1, v1, v0}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/a0;->H:Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getType()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    new-instance v1, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbTvData;

    iget-object v2, p0, Lcom/transsion/postdetail/layer/local/a0;->K:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getSe()I

    move-result v3

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getEp()I

    move-result v0

    invoke-direct {v1, v2, v3, v0}, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbTvData;-><init>(Ljava/lang/String;II)V

    const-string v0, "TV_DATA"

    invoke-virtual {p1, v0, v1}, Lcom/therouter/router/Navigator;->I(Ljava/lang/String;Landroid/os/Parcelable;)Lcom/therouter/router/Navigator;

    :cond_0
    iget-object p0, p0, Lcom/transsion/postdetail/layer/local/a0;->k:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p1, p0, v1, v0, v1}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lbg/c;ILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic B2(Lcom/transsion/postdetail/layer/local/a0;ZILjava/lang/Object;)V
    .locals 0

    if-nez p3, :cond_1

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    move p1, p3

    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/postdetail/layer/local/a0;->A2(Z)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: showBottomController"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final C1(Lcom/transsion/postdetail/layer/local/a0;Landroid/view/View;)V
    .locals 2

    sget-object p1, Lhj/i;->a:Lhj/i;

    invoke-direct {p0}, Lcom/transsion/postdetail/layer/local/a0;->h1()Ljava/util/Map;

    move-result-object v0

    const-string v1, "local_video_detail"

    invoke-virtual {p1, v1, v0}, Lhj/i;->p(Ljava/lang/String;Ljava/util/Map;)V

    invoke-direct {p0}, Lcom/transsion/postdetail/layer/local/a0;->j2()Z

    return-void
.end method

.method private final C2(I)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/a0;->B:Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->m3()Landroid/view/ViewStub;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/transsion/postdetail/layer/local/a0;->B:Landroid/view/View;

    :cond_1
    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/a0;->C:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-static {v0}, Ljg/c;->g(Landroid/view/View;)V

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->a3()Lcom/transsion/postdetail/layer/local/LocalUiType;

    move-result-object v0

    sget-object v1, Lcom/transsion/postdetail/layer/local/LocalUiType;->MIDDLE:Lcom/transsion/postdetail/layer/local/LocalUiType;

    if-ne v0, v1, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/postdetail/layer/local/a0;->u2(Z)V

    :cond_3
    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/BaseLayer;->H()Lcom/transsion/player/orplayer/g;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->pause()V

    :cond_4
    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/a0;->B:Landroid/view/View;

    if-eqz v0, :cond_5

    invoke-static {v0}, Ljg/c;->k(Landroid/view/View;)V

    :cond_5
    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/a0;->B:Landroid/view/View;

    if-eqz v0, :cond_6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_6
    iget-object p1, p0, Lcom/transsion/postdetail/layer/local/a0;->B:Landroid/view/View;

    if-eqz p1, :cond_7

    sget v0, Lcom/transsion/postdetail/R$id;->tv_fail_left_btn:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/transsion/postdetail/layer/local/j;

    invoke-direct {v1, p0}, Lcom/transsion/postdetail/layer/local/j;-><init>(Lcom/transsion/postdetail/layer/local/a0;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/transsion/postdetail/R$id;->tv_fail_right_btn:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    new-instance v0, Lcom/transsion/postdetail/layer/local/k;

    invoke-direct {v0, p0}, Lcom/transsion/postdetail/layer/local/k;-><init>(Lcom/transsion/postdetail/layer/local/a0;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    return-void
.end method

.method private static final D1(Lcom/transsion/postdetail/layer/local/a0;Landroid/view/View;)V
    .locals 0

    sget-object p1, Lcom/transsion/videofloat/bean/FloatActionType;->ICON:Lcom/transsion/videofloat/bean/FloatActionType;

    invoke-virtual {p0, p1}, Lcom/transsion/postdetail/layer/local/a0;->e(Lcom/transsion/videofloat/bean/FloatActionType;)Z

    return-void
.end method

.method private static final D2(Lcom/transsion/postdetail/layer/local/a0;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/postdetail/layer/local/a0;->c2()V

    return-void
.end method

.method private static final E1(Lcom/transsion/postdetail/layer/local/a0;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->Y1()V

    return-void
.end method

.method private static final E2(Lcom/transsion/postdetail/layer/local/a0;Landroid/view/View;)V
    .locals 3

    sget-object p1, Llg/a;->a:Llg/a$a;

    const-string v0, "long_video_play"

    const-string v1, "video error\uff0creload~~ from errorLayout click"

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Llg/a$a;->x(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/transsion/postdetail/layer/local/a0;->k:Landroidx/fragment/app/Fragment;

    instance-of p1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    if-eqz p1, :cond_0

    check-cast p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0, v2}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->r3(Z)V

    :cond_1
    return-void
.end method

.method private static final F1(Lcom/transsion/postdetail/layer/local/a0;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->V1()V

    return-void
.end method

.method private static final F2(Lcom/transsion/postdetail/layer/local/a0;)V
    .locals 3

    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/postdetail/layer/local/a0;->x:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/transsion/postdetail/layer/local/a0;->C2(I)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/transsion/postdetail/layer/local/a0;->y:Z

    invoke-virtual {p0, v1}, Lcom/transsion/postdetail/layer/local/a0;->v1(Z)V

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->Z2()Landroidx/constraintlayout/widget/Group;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    invoke-direct {p0, v1}, Lcom/transsion/postdetail/layer/local/a0;->w1(Z)V

    return-void
.end method

.method private static final G1(Lcom/transsion/postdetail/layer/local/a0;Landroid/view/View;)V
    .locals 5

    iget-object p1, p0, Lcom/transsion/postdetail/layer/local/a0;->k:Landroidx/fragment/app/Fragment;

    const-string v0, "null cannot be cast to non-null type com.transsion.postdetail.ui.fragment.LocalVideoDetailFragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    sget-object v0, Lbo/c;->a:Lbo/c;

    invoke-virtual {p1}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getLogViewConfig()Lhj/b;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lhj/b;->f()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    iget-object v2, p0, Lcom/transsion/postdetail/layer/local/a0;->K:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/postdetail/layer/local/a0;->H:Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getOps()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v1

    :goto_1
    const/4 v4, 0x0

    invoke-virtual {v0, p1, v2, v3, v4}, Lbo/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 p1, 0x3

    invoke-static {p0, v1, v4, p1, v1}, Lcom/transsion/postdetail/layer/local/a0;->e2(Lcom/transsion/postdetail/layer/local/a0;Landroid/view/MotionEvent;ZILjava/lang/Object;)V

    return-void
.end method

.method private static final G2(Lcom/transsion/postdetail/layer/local/a0;Z)Lkotlin/Unit;
    .locals 1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/postdetail/layer/local/a0;->t:Lvo/b;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/a0;->H:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-interface {p1, v0}, Lvo/b;->c(Lcom/transsion/baselib/db/download/DownloadBean;)V

    :cond_0
    iget-object p0, p0, Lcom/transsion/postdetail/layer/local/a0;->k:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final H1(Lcom/transsion/postdetail/layer/local/a0;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->Y1()V

    return-void
.end method

.method private final H2()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/a0;->B:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->a3()Lcom/transsion/postdetail/layer/local/LocalUiType;

    move-result-object v0

    sget-object v1, Lcom/transsion/postdetail/layer/local/LocalUiType;->MIDDLE:Lcom/transsion/postdetail/layer/local/LocalUiType;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/postdetail/layer/local/a0;->v1(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2}, Lcom/transsion/postdetail/layer/local/a0;->A2(Z)V

    :goto_0
    invoke-virtual {p0, v2}, Lcom/transsion/postdetail/layer/local/a0;->u2(Z)V

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/a0;->w:Lcom/transsion/postdetail/layer/local/j1;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsion/postdetail/layer/local/j1;->d()V

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/a0;->t:Lvo/b;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/transsion/postdetail/layer/local/a0;->H:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-interface {v0, v1}, Lvo/b;->d(Lcom/transsion/baselib/db/download/DownloadBean;)V

    :cond_3
    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/a0;->C:Landroid/view/View;

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->n3()Landroid/view/ViewStub;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    iput-object v0, p0, Lcom/transsion/postdetail/layer/local/a0;->C:Landroid/view/View;

    :cond_5
    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/a0;->C:Landroid/view/View;

    if-eqz v0, :cond_6

    invoke-static {v0}, Ljg/c;->k(Landroid/view/View;)V

    :cond_6
    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/a0;->C:Landroid/view/View;

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->Z1()V

    sget v1, Lcom/transsion/postdetail/R$id;->tv_replay:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/transsion/postdetail/layer/local/r;

    invoke-direct {v1, p0}, Lcom/transsion/postdetail/layer/local/r;-><init>(Lcom/transsion/postdetail/layer/local/a0;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    return-void
.end method

.method private final I1()V
    .locals 3

    new-instance v0, Lcom/transsion/postdetail/layer/local/j1;

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->X2()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->Y2()Landroid/widget/TextView;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/transsion/postdetail/layer/local/j1;-><init>(Landroid/widget/TextView;Landroid/widget/TextView;)V

    iput-object v0, p0, Lcom/transsion/postdetail/layer/local/a0;->w:Lcom/transsion/postdetail/layer/local/j1;

    return-void
.end method

.method private static final I2(Lcom/transsion/postdetail/layer/local/a0;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->i3()V

    return-void
.end method

.method private final J0()V
    .locals 4

    invoke-direct {p0}, Lcom/transsion/postdetail/layer/local/a0;->u1()Z

    move-result v0

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->i2()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->D0()Landroid/view/ViewGroup;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lhj/i;->a:Lhj/i;

    const-string v2, "local_video_detail"

    invoke-direct {p0}, Lcom/transsion/postdetail/layer/local/a0;->h1()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lhj/i;->D(Ljava/lang/String;Ljava/util/Map;)V

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vis = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    return-void
.end method

.method private final J1()V
    .locals 5

    new-instance v0, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    new-instance v1, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->q2()Lcom/tn/lib/view/SecondariesSeekBar;

    move-result-object v2

    if-eqz v2, :cond_0

    const-wide/16 v3, 0x2710

    invoke-virtual {v2, v3, v4}, Lcom/tn/lib/view/SecondariesSeekBar;->setMax(J)V

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->q2()Lcom/tn/lib/view/SecondariesSeekBar;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v3, Lcom/transsion/postdetail/layer/local/a0$c;

    invoke-direct {v3, p0, v0, v1}, Lcom/transsion/postdetail/layer/local/a0$c;-><init>(Lcom/transsion/postdetail/layer/local/a0;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$FloatRef;)V

    invoke-virtual {v2, v3}, Lcom/tn/lib/view/SecondariesSeekBar;->setOnSeekBarChangeListener(Lcom/tn/lib/view/v;)V

    :cond_1
    return-void
.end method

.method private static final K1(Lcom/transsion/postdetail/layer/local/a0;Ljava/util/List;)Lkotlin/Unit;
    .locals 7

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Llg/a;->a:Llg/a$a;

    iget-object v2, p0, Lcom/transsion/postdetail/layer/local/a0;->j:Ljava/lang/String;

    const-string v0, "TAG"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->a3()Lcom/transsion/postdetail/layer/local/LocalUiType;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "2--fragment, on get series from local, size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", uiType = "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/transsion/postdetail/layer/local/a0;->J0()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private final K2()V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/postdetail/layer/local/a0;->M2()V

    invoke-direct {p0}, Lcom/transsion/postdetail/layer/local/a0;->a1()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/postdetail/layer/local/a0;->Y:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static final L0()Lcom/transsnet/downloader/manager/g;
    .locals 2

    sget-object v0, Lcom/transsnet/downloader/manager/p;->a:Lcom/transsnet/downloader/manager/p$a;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsnet/downloader/manager/p$a;->a(Landroid/content/Context;)Lcom/transsnet/downloader/manager/g;

    move-result-object v0

    return-object v0
.end method

.method private final L1()V
    .locals 2

    new-instance v0, Lcom/transsion/postdetail/layer/SystemTimeManager;

    new-instance v1, Lcom/transsion/postdetail/layer/local/a0$d;

    invoke-direct {v1, p0}, Lcom/transsion/postdetail/layer/local/a0$d;-><init>(Lcom/transsion/postdetail/layer/local/a0;)V

    invoke-direct {v0, v1}, Lcom/transsion/postdetail/layer/SystemTimeManager;-><init>(Lcom/transsion/postdetail/layer/SystemTimeManager$a;)V

    iput-object v0, p0, Lcom/transsion/postdetail/layer/local/a0;->s:Lcom/transsion/postdetail/layer/SystemTimeManager;

    return-void
.end method

.method private final M2()V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/postdetail/layer/local/a0;->a1()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/postdetail/layer/local/a0;->Y:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final N0()Landroid/os/Handler;
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object v0
.end method

.method private final N1()Z
    .locals 2

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/a0;->k:Landroidx/fragment/app/Fragment;

    const-string v1, "null cannot be cast to non-null type com.transsion.postdetail.ui.fragment.LocalVideoDetailFragment"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-virtual {v0}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->W2()Z

    move-result v0

    return v0
.end method

.method private static final P0(Landroidx/fragment/app/Fragment;Lcom/transsion/postdetail/layer/local/a0;)Lcom/transsion/baseui/widget/f;
    .locals 1

    new-instance v0, Lcom/transsion/baseui/widget/f;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1}, Lcom/transsion/postdetail/layer/local/a0;->Q0()Landroid/view/View;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/transsion/baseui/widget/f;-><init>(Landroid/content/Context;Landroid/view/View;)V

    return-object v0
.end method

.method public static synthetic Q(Landroidx/fragment/app/Fragment;Lcom/transsion/postdetail/layer/local/a0;)Lcom/transsion/baseui/widget/f;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/postdetail/layer/local/a0;->P0(Landroidx/fragment/app/Fragment;Lcom/transsion/postdetail/layer/local/a0;)Lcom/transsion/baseui/widget/f;

    move-result-object p0

    return-object p0
.end method

.method private final Q1()V
    .locals 4

    invoke-direct {p0}, Lcom/transsion/postdetail/layer/local/a0;->a1()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/postdetail/layer/local/a0;->Y:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static synthetic R()Landroid/os/Handler;
    .locals 1

    invoke-static {}, Lcom/transsion/postdetail/layer/local/a0;->R1()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method private final R0()Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "path"

    const-string v2, "/video/detail"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "id"

    iget-object v2, p0, Lcom/transsion/postdetail/layer/local/a0;->K:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private static final R1()Landroid/os/Handler;
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object v0
.end method

.method public static synthetic S(Lcom/transsion/postdetail/layer/local/a0;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/postdetail/layer/local/a0;->I2(Lcom/transsion/postdetail/layer/local/a0;Landroid/view/View;)V

    return-void
.end method

.method private static final S1(Lcom/transsion/postdetail/layer/local/a0;)V
    .locals 5

    iget v0, p0, Lcom/transsion/postdetail/layer/local/a0;->X:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    iput v2, p0, Lcom/transsion/postdetail/layer/local/a0;->X:I

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/transsion/postdetail/layer/local/a0;->X:I

    :goto_0
    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->H0()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    sget v3, Lcom/transsion/postdetail/R$string;->play_loading:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/transsion/postdetail/layer/local/a0;->W:[Ljava/lang/String;

    iget v4, p0, Lcom/transsion/postdetail/layer/local/a0;->X:I

    aget-object v3, v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/a0;->H:Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->T0()Lcom/transsnet/downloader/manager/g;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/postdetail/layer/local/a0;->H:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lcom/transsnet/downloader/manager/g;->A(Lcom/transsion/baselib/db/download/DownloadBean;)Z

    move-result v2

    :cond_2
    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/a0;->x:Ljava/lang/String;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const-string v1, ""

    if-lez v0, :cond_3

    if-nez v2, :cond_3

    iput-object v1, p0, Lcom/transsion/postdetail/layer/local/a0;->x:Ljava/lang/String;

    :cond_3
    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->G0()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/transsion/postdetail/layer/local/a0;->x:Ljava/lang/String;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_4

    goto :goto_1

    :cond_4
    move-object v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    invoke-direct {p0}, Lcom/transsion/postdetail/layer/local/a0;->Q1()V

    return-void
.end method

.method public static synthetic T(Lcom/transsion/postdetail/layer/local/a0;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/postdetail/layer/local/a0;->E1(Lcom/transsion/postdetail/layer/local/a0;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic U(Lcom/transsion/postdetail/layer/local/a0;Landroid/view/View;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/postdetail/layer/local/a0;->y2(Lcom/transsion/postdetail/layer/local/a0;Landroid/view/View;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private final U0()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/a0;->o:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    return-object v0
.end method

.method private static final U1(Lcom/transsion/postdetail/layer/local/a0;)V
    .locals 8

    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/BaseLayer;->H()Lcom/transsion/player/orplayer/g;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->isPlaying()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v2, Llg/a;->a:Llg/a$a;

    const-string v3, "VideoFloat-pip"

    const-string v4, "onAdClick resume auto pip"

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/transsion/postdetail/layer/local/a0;->b3(Z)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    return-void
.end method

.method public static synthetic V(Lcom/transsion/postdetail/layer/local/a0;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/postdetail/layer/local/a0;->S1(Lcom/transsion/postdetail/layer/local/a0;)V

    return-void
.end method

.method private final V0()Lpx/a;
    .locals 13

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/a0;->H:Lcom/transsion/baselib/db/download/DownloadBean;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/BaseLayer;->I()Lcom/transsion/player/ui/ORPlayerView;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/BaseLayer;->H()Lcom/transsion/player/orplayer/g;

    move-result-object v2

    if-nez v2, :cond_1

    goto/16 :goto_4

    :cond_1
    sget-object v1, Llg/a;->a:Llg/a$a;

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getTotalTitleName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "local--showFloat, name:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VideoFloat"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v2, v4}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->isSeries()Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "local--showFloat, \u7535\u5f71"

    invoke-virtual {v1, v3, v5, v4}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->o1()Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel;->i()Landroidx/lifecycle/b0;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v8}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    goto :goto_1

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_5
    const/4 v7, -0x1

    :goto_1
    sget-object v5, Llg/a;->a:Llg/a$a;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "local--showFloat, \u7535\u89c6\u5267:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v3, v8, v4}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    if-ltz v7, :cond_6

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    :cond_6
    move-object v3, v1

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v4

    move v5, v6

    :goto_2
    if-ge v6, v4, :cond_7

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v7}, Lcom/transsion/baselib/db/download/DownloadBean;->getEp()I

    move-result v7

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getEp()I

    move-result v8

    if-ge v7, v8, :cond_7

    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_2

    :cond_7
    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, v5, :cond_8

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    invoke-interface {v2, v5, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :goto_3
    sget-object v1, Lcom/transsion/postdetail/util/LocalFloatManager;->b:Lcom/transsion/postdetail/util/LocalFloatManager;

    invoke-virtual {v1, v2}, Lcom/transsion/postdetail/util/LocalFloatManager;->p(Ljava/util/List;)V

    new-instance v1, Lpx/a;

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/BaseLayer;->I()Lcom/transsion/player/ui/ORPlayerView;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/BaseLayer;->H()Lcom/transsion/player/orplayer/g;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->U2()Landroid/view/ViewGroup;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    sget-object v7, Lcom/transsion/videofloat/bean/FloatPlayType;->LOCAL:Lcom/transsion/videofloat/bean/FloatPlayType;

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_9

    const-string v2, ""

    :cond_9
    move-object v8, v2

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getSe()I

    move-result v9

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getEp()I

    move-result v10

    const-string v11, ""

    const-string v12, "local_video_detail"

    move-object v3, v1

    invoke-direct/range {v3 .. v12}, Lpx/a;-><init>(Lcom/transsion/player/ui/ORPlayerView;Lcom/transsion/player/orplayer/g;Landroid/view/ViewGroup;Lcom/transsion/videofloat/bean/FloatPlayType;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lpx/a;->G(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lpx/a;->J(Ljava/lang/Integer;)V

    invoke-virtual {v1}, Lpx/a;->b()Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v2

    invoke-static {v2}, Lcom/transsion/postdetail/util/u;->b(Lcom/transsion/baselib/db/download/DownloadBean;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lpx/a;->C(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getOps()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lpx/a;->A(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getPostId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lpx/a;->E(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getPageFrom()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lpx/a;->B(Ljava/lang/String;)V

    :cond_a
    :goto_4
    return-object v1
.end method

.method public static synthetic W(Lcom/transsion/postdetail/layer/local/a0;Landroid/view/View;Z)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/postdetail/layer/local/a0;->x2(Lcom/transsion/postdetail/layer/local/a0;Landroid/view/View;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic X(Lcom/transsion/postdetail/layer/local/a0;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/postdetail/layer/local/a0;->F2(Lcom/transsion/postdetail/layer/local/a0;)V

    return-void
.end method

.method private final X0()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/a0;->m:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    return-object v0
.end method

.method private final X1(J)V
    .locals 6

    iget-wide v0, p0, Lcom/transsion/postdetail/layer/local/a0;->l:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_6

    sub-long/2addr v0, p1

    const-wide/16 p1, 0x1388

    cmp-long p1, v0, p1

    if-ltz p1, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->o1()Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel;->i()Landroidx/lifecycle/b0;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iget-boolean p2, p0, Lcom/transsion/postdetail/layer/local/a0;->L:Z

    if-eqz p2, :cond_6

    move-object p2, p1

    check-cast p2, Ljava/util/Collection;

    if-eqz p2, :cond_6

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_3

    :cond_1
    iget-boolean v0, p0, Lcom/transsion/postdetail/layer/local/a0;->N:Z

    if-eqz v0, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/postdetail/layer/local/a0;->N:Z

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, p2, :cond_6

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/transsion/postdetail/layer/local/a0;->H:Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    :goto_1
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v2, v0

    goto :goto_2

    :cond_4
    if-eqz v2, :cond_5

    invoke-direct {p0, v3}, Lcom/transsion/postdetail/layer/local/a0;->l2(Lcom/transsion/baselib/db/download/DownloadBean;)V

    goto :goto_3

    :cond_5
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    :goto_3
    return-void
.end method

.method public static synthetic Y(Landroidx/fragment/app/Fragment;)Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel;
    .locals 0

    invoke-static {p0}, Lcom/transsion/postdetail/layer/local/a0;->l3(Landroidx/fragment/app/Fragment;)Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic Z()Landroid/os/Handler;
    .locals 1

    invoke-static {}, Lcom/transsion/postdetail/layer/local/a0;->N0()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method private final Z0()Landroid/content/Intent;
    .locals 7

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-class v2, Lcom/transsion/push/api/IPushProvider;

    invoke-static {v2, v1}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/push/api/IPushProvider;

    iget-object v2, p0, Lcom/transsion/postdetail/layer/local/a0;->H:Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->isCompleted()Z

    move-result v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "oneroom://com.community.oneroom?type="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/video/detail"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "extra_resource_id"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/transsion/postdetail/layer/local/a0;->H:Lcom/transsion/baselib/db/download/DownloadBean;

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_1
    move-object v5, v6

    :goto_0
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "extra_local_path"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/transsion/postdetail/layer/local/a0;->H:Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getPath()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_2
    move-object v5, v6

    :goto_1
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "extra_url"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/transsion/postdetail/layer/local/a0;->H:Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_3
    move-object v5, v6

    :goto_2
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "extra_page_from"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "media_notification"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "&channel=media_notification"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "extra_completed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    const-string v3, "getApp(...)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Lcom/transsion/push/api/IPushProvider;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_4

    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-object v6, v0

    :cond_4
    return-object v6
.end method

.method public static synthetic a0(Lcom/transsion/postdetail/layer/local/a0;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/postdetail/layer/local/a0;->U1(Lcom/transsion/postdetail/layer/local/a0;)V

    return-void
.end method

.method private final a1()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/a0;->n:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    return-object v0
.end method

.method public static synthetic b0()Landroid/os/Handler;
    .locals 1

    invoke-static {}, Lcom/transsion/postdetail/layer/local/a0;->t1()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c0(Lcom/transsion/postdetail/layer/local/a0;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/postdetail/layer/local/a0;->G1(Lcom/transsion/postdetail/layer/local/a0;Landroid/view/View;)V

    return-void
.end method

.method private final c1()Lcom/transsion/player/mediasession/MediaItem;
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/transsion/postdetail/layer/local/a0;->H:Lcom/transsion/baselib/db/download/DownloadBean;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getTotalTitleName()Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    goto :goto_0

    :cond_0
    move-object v4, v2

    :goto_0
    iget-object v1, v0, Lcom/transsion/postdetail/layer/local/a0;->H:Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    move-result-object v1

    move-object v12, v1

    goto :goto_1

    :cond_1
    move-object v12, v2

    :goto_1
    iget-object v1, v0, Lcom/transsion/postdetail/layer/local/a0;->H:Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getCover()Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    goto :goto_2

    :cond_2
    move-object v6, v2

    :goto_2
    iget-object v1, v0, Lcom/transsion/postdetail/layer/local/a0;->H:Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v2

    :cond_3
    move-object v13, v2

    invoke-direct/range {p0 .. p0}, Lcom/transsion/postdetail/layer/local/a0;->d1()Landroid/app/PendingIntent;

    move-result-object v10

    invoke-direct/range {p0 .. p0}, Lcom/transsion/postdetail/layer/local/a0;->R0()Landroid/content/Intent;

    move-result-object v11

    iget-object v1, v0, Lcom/transsion/postdetail/layer/local/a0;->H:Lcom/transsion/baselib/db/download/DownloadBean;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getType()I

    move-result v1

    const/4 v3, 0x6

    if-ne v1, v3, :cond_4

    const/4 v2, 0x1

    :cond_4
    new-instance v1, Lcom/transsion/player/mediasession/MediaItem;

    move-object v3, v1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    const/16 v18, 0x3838

    const/16 v19, 0x0

    const-string v5, ""

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v3 .. v19}, Lcom/transsion/player/mediasession/MediaItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method

.method private final c2()V
    .locals 3

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.WIFI_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private final c3(ZJ)V
    .locals 7

    const/4 v0, 0x0

    iput-boolean p1, p0, Lcom/transsion/postdetail/layer/local/a0;->A:Z

    iget-object v1, p0, Lcom/transsion/postdetail/layer/local/a0;->B:Landroid/view/View;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x8

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->I0()Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->I0()Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object v2, p0, Lcom/transsion/postdetail/layer/local/a0;->k:Landroidx/fragment/app/Fragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_2

    sget v3, Lcom/transsion/postdetail/R$string;->post_progress_tx_style:I

    invoke-static {p2, p3}, Lcom/transsion/postdetail/util/n;->d(J)Ljava/lang/String;

    move-result-object v4

    iget-wide v5, p0, Lcom/transsion/postdetail/layer/local/a0;->l:J

    invoke-static {v5, v6}, Lcom/transsion/postdetail/util/n;->d(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v4, v6, v0

    const/4 v0, 0x1

    aput-object v5, v6, v0

    invoke-virtual {v2, v3, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object p1, p0, Lcom/transsion/postdetail/layer/local/a0;->u:Lcom/transsion/subtitle/VideoSubtitleControl;

    if-eqz p1, :cond_4

    invoke-virtual {p1, p2, p3}, Lcom/transsion/subtitle/VideoSubtitleControl;->s0(J)V

    :cond_4
    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->F0()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lcom/transsion/postdetail/layer/local/a0;->u:Lcom/transsion/subtitle/VideoSubtitleControl;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/transsion/subtitle/VideoSubtitleControl;->U()V

    :cond_6
    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->I0()Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->F0()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_9

    iget-boolean p2, p0, Lcom/transsion/postdetail/layer/local/a0;->z:Z

    if-eqz p2, :cond_8

    goto :goto_1

    :cond_8
    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    :goto_2
    return-void
.end method

.method public static synthetic d0()Lcom/transsnet/downloader/manager/g;
    .locals 1

    invoke-static {}, Lcom/transsion/postdetail/layer/local/a0;->L0()Lcom/transsnet/downloader/manager/g;

    move-result-object v0

    return-object v0
.end method

.method private final d1()Landroid/app/PendingIntent;
    .locals 4

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    invoke-direct {p0}, Lcom/transsion/postdetail/layer/local/a0;->Z0()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0}, Lcom/transsion/postdetail/layer/local/a0;->f1()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private final d3()V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->h2()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/transsion/postdetail/util/u;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public static synthetic e0(Lcom/transsion/postdetail/layer/local/a0;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/postdetail/layer/local/a0;->H1(Lcom/transsion/postdetail/layer/local/a0;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e2(Lcom/transsion/postdetail/layer/local/a0;Landroid/view/MotionEvent;ZILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_2

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/transsion/postdetail/layer/local/a0;->d2(Landroid/view/MotionEvent;Z)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: pause"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final e3(J)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/a0;->u:Lcom/transsion/subtitle/VideoSubtitleControl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/transsion/subtitle/VideoSubtitleControl;->s0(J)V

    :cond_0
    iget-wide v0, p0, Lcom/transsion/postdetail/layer/local/a0;->l:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/BaseLayer;->H()Lcom/transsion/player/orplayer/g;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->getDuration()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/postdetail/layer/local/a0;->l:J

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/transsion/postdetail/layer/local/a0;->r:Z

    if-nez v0, :cond_3

    iget-wide v0, p0, Lcom/transsion/postdetail/layer/local/a0;->l:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_3

    long-to-float v2, p1

    long-to-float v0, v0

    div-float/2addr v2, v0

    const-wide/16 v0, 0x2710

    long-to-float v0, v0

    mul-float/2addr v2, v0

    float-to-int v0, v2

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/transsion/postdetail/layer/local/a0;->E:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_3

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->q2()Lcom/tn/lib/view/SecondariesSeekBar;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2, v0, v1}, Lcom/tn/lib/view/SecondariesSeekBar;->setProgress(J)V

    :cond_3
    iget-wide v0, p0, Lcom/transsion/postdetail/layer/local/a0;->l:J

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/transsion/postdetail/layer/local/a0;->f3(JJ)V

    return-void
.end method

.method public static synthetic f0(Lcom/transsion/postdetail/layer/local/a0;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/postdetail/layer/local/a0;->o2(Lcom/transsion/postdetail/layer/local/a0;)V

    return-void
.end method

.method private final f1()I
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    const/high16 v0, 0x4000000

    goto :goto_0

    :cond_0
    const/high16 v0, 0x8000000

    :goto_0
    return v0
.end method

.method private final f3(JJ)V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->h3()Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Lcom/transsion/postdetail/util/n;->d(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p4}, Lcom/transsion/postdetail/util/n;->d(J)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->k3()Landroid/widget/TextView;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-wide p3, p0, Lcom/transsion/postdetail/layer/local/a0;->l:J

    invoke-static {p3, p4}, Lcom/transsion/postdetail/util/n;->d(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->k3()Landroid/widget/TextView;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-static {p1, p2}, Lcom/transsion/postdetail/util/n;->d(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic g0(Lcom/transsion/postdetail/layer/local/a0;Ljava/util/List;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/postdetail/layer/local/a0;->K1(Lcom/transsion/postdetail/layer/local/a0;Ljava/util/List;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private final g3()V
    .locals 5

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/a0;->H:Lcom/transsion/baselib/db/download/DownloadBean;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->isSeries()Z

    move-result v0

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/a0;->H:Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/a0;->H:Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    iget-object v4, p0, Lcom/transsion/postdetail/layer/local/a0;->H:Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v4, :cond_1

    invoke-static {v4, v1, v3, v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getEpTitleName$default(Lcom/transsion/baselib/db/download/DownloadBean;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_2
    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/a0;->H:Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getResolution()I

    move-result v0

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    if-lez v0, :cond_8

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/a0;->H:Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_4

    move v0, v3

    goto :goto_2

    :cond_4
    move v0, v1

    :goto_2
    if-ne v0, v3, :cond_5

    move v1, v3

    :cond_5
    if-eqz v1, :cond_8

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/a0;->H:Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getResolution()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_3

    :cond_6
    move-object v0, v2

    :goto_3
    iget-object v1, p0, Lcom/transsion/postdetail/layer/local/a0;->H:Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectName()Ljava/lang/String;

    move-result-object v2

    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "P "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_8
    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/a0;->H:Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    :cond_9
    const-string v0, ""

    :cond_a
    :goto_4
    invoke-virtual {p0, v0}, Lcom/transsion/postdetail/layer/local/a0;->updateTitle(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic h0(Lcom/transsion/postdetail/layer/local/a0;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/postdetail/layer/local/a0;->B1(Lcom/transsion/postdetail/layer/local/a0;Landroid/view/View;)V

    return-void
.end method

.method private final h1()Ljava/util/Map;
    .locals 6

    new-instance v0, Lkotlin/Pair;

    const-string v1, "module_name"

    const-string v2, "play_next"

    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Lkotlin/Pair;

    const-string v2, "subject_id"

    iget-object v3, p0, Lcom/transsion/postdetail/layer/local/a0;->K:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Lkotlin/Pair;

    iget-object v3, p0, Lcom/transsion/postdetail/layer/local/a0;->H:Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getOps()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const-string v4, "ops"

    invoke-direct {v2, v4, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Lkotlin/Pair;

    const-string v4, "resource_id"

    iget-object v5, p0, Lcom/transsion/postdetail/layer/local/a0;->J:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v4, 0x4

    new-array v4, v4, [Lkotlin/Pair;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v2, v4, v0

    const/4 v0, 0x3

    aput-object v3, v4, v0

    invoke-static {v4}, Lkotlin/collections/MapsKt;->l([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic i0(Lcom/transsion/postdetail/layer/local/a0;Z)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/postdetail/layer/local/a0;->G2(Lcom/transsion/postdetail/layer/local/a0;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j0(Lcom/transsion/postdetail/layer/local/a0;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/postdetail/layer/local/a0;->C1(Lcom/transsion/postdetail/layer/local/a0;Landroid/view/View;)V

    return-void
.end method

.method private final j2()Z
    .locals 9

    iget-boolean v0, p0, Lcom/transsion/postdetail/layer/local/a0;->O:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->o1()Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel;->i()Landroidx/lifecycle/b0;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    iget-boolean v3, p0, Lcom/transsion/postdetail/layer/local/a0;->L:Z

    if-eqz v3, :cond_6

    move-object v3, v0

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    move v4, v2

    move v5, v4

    :goto_0
    if-ge v4, v3, :cond_6

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v6}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/transsion/postdetail/layer/local/a0;->H:Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v8, :cond_2

    invoke-virtual {v8}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    :goto_1
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    move v5, v1

    goto :goto_2

    :cond_3
    if-eqz v5, :cond_5

    invoke-virtual {v6}, Lcom/transsion/baselib/db/download/DownloadBean;->getCanPlay()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v6}, Lcom/transsion/baselib/db/download/DownloadBean;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v6}, Lcom/transsion/baselib/db/download/DownloadBean;->isFileExist()Z

    move-result v0

    if-nez v0, :cond_4

    return v2

    :cond_4
    invoke-virtual {p0, v6, v2}, Lcom/transsion/postdetail/layer/local/a0;->r2(Lcom/transsion/baselib/db/download/DownloadBean;Z)V

    return v1

    :cond_5
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    return v2
.end method

.method public static synthetic k0(Lcom/transsion/postdetail/layer/local/a0;Lcom/transsion/moviedetailapi/bean/Subject;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/postdetail/layer/local/a0;->y1(Lcom/transsion/postdetail/layer/local/a0;Lcom/transsion/moviedetailapi/bean/Subject;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l0(Lcom/transsion/postdetail/layer/local/a0;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/postdetail/layer/local/a0;->D2(Lcom/transsion/postdetail/layer/local/a0;Landroid/view/View;)V

    return-void
.end method

.method private final l2(Lcom/transsion/baselib/db/download/DownloadBean;)V
    .locals 9

    const/4 v0, 0x2

    const/4 v1, 0x1

    sget-object v2, Llg/a;->a:Llg/a$a;

    iget-object v3, p0, Lcom/transsion/postdetail/layer/local/a0;->j:Ljava/lang/String;

    const-string v4, "TAG"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getEpse()I

    move-result v5

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onPlayProgress next tips name = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", epse = "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", status = "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getCanPlay()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/transsion/postdetail/layer/local/a0;->H:Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    move-result v2

    if-eq v2, v3, :cond_1

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->T0()Lcom/transsnet/downloader/manager/g;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/transsnet/downloader/manager/g;->k(Lcom/transsion/baselib/db/download/DownloadBean;)V

    :cond_1
    sget-object v2, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v2

    sget v3, Lcom/transsion/postdetail/R$string;->series_next_play_tips:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getString(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    const-string v3, ""

    :cond_2
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getEp()I

    move-result v4

    if-lez v4, :cond_3

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getEp()I

    move-result v4

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSe()I

    move-result p1

    invoke-static {v4, p1, v1}, Lcom/transsion/baseui/util/n;->b(IIZ)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getEpse()I

    move-result p1

    invoke-static {p1, v1}, Lcom/transsion/baseui/util/n;->c(IZ)Ljava/lang/String;

    move-result-object p1

    :goto_0
    new-array v4, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    aput-object p1, v4, v1

    invoke-static {v4, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "format(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0xbb8

    invoke-virtual {p0, p1, v0, v1}, Lcom/transsion/postdetail/layer/local/a0;->i(Ljava/lang/String;J)V

    return-void
.end method

.method private static final l3(Landroidx/fragment/app/Fragment;)Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel;
    .locals 2

    new-instance v0, Landroidx/lifecycle/v0;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const-string v1, "requireActivity(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Landroidx/lifecycle/v0$d;

    invoke-direct {v1}, Landroidx/lifecycle/v0$d;-><init>()V

    invoke-direct {v0, p0, v1}, Landroidx/lifecycle/v0;-><init>(Landroidx/lifecycle/y0;Landroidx/lifecycle/v0$c;)V

    const-class p0, Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/v0;->a(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    move-result-object p0

    check-cast p0, Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel;

    return-object p0
.end method

.method public static synthetic m0(Lcom/transsion/postdetail/layer/local/a0;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/postdetail/layer/local/a0;->E2(Lcom/transsion/postdetail/layer/local/a0;Landroid/view/View;)V

    return-void
.end method

.method private final m2(Lcom/transsion/player/ui/ORPlayerView;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public static synthetic n0(Lcom/transsion/postdetail/layer/local/a0;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/postdetail/layer/local/a0;->D1(Lcom/transsion/postdetail/layer/local/a0;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic o0(Lcom/transsion/postdetail/layer/local/a0;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/postdetail/layer/local/a0;->F1(Lcom/transsion/postdetail/layer/local/a0;Landroid/view/View;)V

    return-void
.end method

.method private static final o2(Lcom/transsion/postdetail/layer/local/a0;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/postdetail/layer/local/a0;->x1()V

    return-void
.end method

.method public static synthetic p0(Lcom/transsion/postdetail/layer/local/a0;Z)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/postdetail/layer/local/a0;->w2(Lcom/transsion/postdetail/layer/local/a0;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic q0(Lcom/transsion/postdetail/layer/local/a0;)Landroidx/fragment/app/Fragment;
    .locals 0

    iget-object p0, p0, Lcom/transsion/postdetail/layer/local/a0;->k:Landroidx/fragment/app/Fragment;

    return-object p0
.end method

.method public static final synthetic r0(Lcom/transsion/postdetail/layer/local/a0;)Landroid/os/Handler;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/postdetail/layer/local/a0;->X0()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic s0(Lcom/transsion/postdetail/layer/local/a0;)Lcom/transsion/player/orplayer/g;
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/BaseLayer;->H()Lcom/transsion/player/orplayer/g;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic t0(Lcom/transsion/postdetail/layer/local/a0;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/transsion/postdetail/layer/local/a0;->V:Ljava/lang/Runnable;

    return-object p0
.end method

.method private static final t1()Landroid/os/Handler;
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object v0
.end method

.method public static final synthetic u0(Lcom/transsion/postdetail/layer/local/a0;)Leo/n;
    .locals 0

    iget-object p0, p0, Lcom/transsion/postdetail/layer/local/a0;->v:Leo/n;

    return-object p0
.end method

.method private final u1()Z
    .locals 8

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->o1()Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel;->i()Landroidx/lifecycle/b0;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v2, p0, Lcom/transsion/postdetail/layer/local/a0;->L:Z

    if-eqz v2, :cond_6

    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    move v3, v1

    move v4, v3

    :goto_0
    if-ge v3, v2, :cond_6

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/transsion/postdetail/layer/local/a0;->H:Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_2

    move v4, v7

    goto :goto_2

    :cond_2
    if-eqz v4, :cond_5

    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getCanPlay()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->isFileExist()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    move v1, v7

    :cond_4
    return v1

    :cond_5
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    return v1
.end method

.method public static final synthetic v0(Lcom/transsion/postdetail/layer/local/a0;J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/postdetail/layer/local/a0;->E:J

    return-void
.end method

.method public static final synthetic w0(Lcom/transsion/postdetail/layer/local/a0;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/postdetail/layer/local/a0;->r:Z

    return-void
.end method

.method private final w1(Z)V
    .locals 0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->S2()Lcom/avery/subtitle/widget/SimpleSubtitleView;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljg/c;->h(Landroid/view/View;)V

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->j3()Landroid/widget/FrameLayout;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p1}, Ljg/c;->g(Landroid/view/View;)V

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/postdetail/layer/local/a0;->J2(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->j3()Landroid/widget/FrameLayout;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-static {p1}, Ljg/c;->k(Landroid/view/View;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private static final w2(Lcom/transsion/postdetail/layer/local/a0;Z)Lkotlin/Unit;
    .locals 4

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->P2()Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->O2()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_3

    if-nez p1, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->Q2()Landroid/widget/TextView;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    if-eqz p1, :cond_4

    sget p1, Lcom/transsion/postdetail/R$string;->play_loading:I

    goto :goto_1

    :cond_4
    sget p1, Lcom/transsion/postdetail/R$string;->turn_on_short:I

    :goto_1
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public static final synthetic x0(Lcom/transsion/postdetail/layer/local/a0;ZJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/postdetail/layer/local/a0;->c3(ZJ)V

    return-void
.end method

.method private final x1()V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->C0()Z

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->D0()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-boolean v0, p0, Lcom/transsion/postdetail/layer/local/a0;->y:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->Z2()Landroidx/constraintlayout/widget/Group;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->A0()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->E0()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->g2()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->r1()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->q1()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->b1()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    return-void
.end method

.method private static final x2(Lcom/transsion/postdetail/layer/local/a0;Landroid/view/View;Z)Lkotlin/Unit;
    .locals 1

    const-string v0, "switchView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/transsion/postdetail/layer/local/a0;->b2(Landroid/view/View;Z)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public static final synthetic y0(Lcom/transsion/postdetail/layer/local/a0;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/postdetail/layer/local/a0;->d3()V

    return-void
.end method

.method private static final y1(Lcom/transsion/postdetail/layer/local/a0;Lcom/transsion/moviedetailapi/bean/Subject;)Lkotlin/Unit;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/postdetail/layer/local/a0;->B0(Lcom/transsion/moviedetailapi/bean/Subject;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final y2(Lcom/transsion/postdetail/layer/local/a0;Landroid/view/View;)Lkotlin/Unit;
    .locals 1

    const-string v0, "settingView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/transsion/postdetail/layer/local/a0;->a2(Landroid/view/View;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private final z1()V
    .locals 6

    sget-object v0, Leo/n;->a:Leo/n$a;

    iget-object v1, p0, Lcom/transsion/postdetail/layer/local/a0;->k:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->n2()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Leo/n$a;->a(Landroid/content/Context;Landroid/view/ViewGroup;)Leo/n;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/postdetail/layer/local/a0;->v:Leo/n;

    if-nez v0, :cond_0

    const-string v0, "volumeControl"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-interface {v0}, Leo/n;->g()V

    invoke-static {}, Ljg/c;->f()Z

    move-result v0

    invoke-static {}, Lcom/blankj/utilcode/util/y;->c()I

    move-result v1

    invoke-static {}, Lcom/blankj/utilcode/util/y;->e()I

    move-result v2

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->a3()Lcom/transsion/postdetail/layer/local/LocalUiType;

    move-result-object v3

    sget-object v4, Lcom/transsion/postdetail/layer/local/a0$a;->a:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v4, v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    move v5, v2

    move v2, v1

    move v1, v5

    goto :goto_1

    :cond_2
    mul-int/lit8 v1, v2, 0x9

    div-int/lit8 v1, v1, 0x10

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->W0()Lcom/transsion/baseui/widget/f;

    move-result-object v3

    new-instance v4, Lcom/transsion/postdetail/layer/local/a0$b;

    invoke-direct {v4, p0, v0, v1, v2}, Lcom/transsion/postdetail/layer/local/a0$b;-><init>(Lcom/transsion/postdetail/layer/local/a0;ZII)V

    invoke-virtual {v3, v4}, Lcom/transsion/baseui/widget/f;->s(Lcom/transsion/baseui/widget/f$a;)V

    return-void
.end method


# virtual methods
.method public A(Lcom/transsion/subtitle/VideoSubtitleControl;)V
    .locals 8

    const-string v0, "control"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/postdetail/layer/local/a0;->u:Lcom/transsion/subtitle/VideoSubtitleControl;

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->a3()Lcom/transsion/postdetail/layer/local/LocalUiType;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/postdetail/util/u;->c(Lcom/transsion/postdetail/layer/local/LocalUiType;)Lcom/transsion/subtitle/helper/LocalVideoUiType;

    move-result-object v2

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->R2()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->V2()Lcom/avery/subtitle/widget/SimpleSubtitleView;

    move-result-object v4

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->T2()Lcom/avery/subtitle/widget/SimpleSubtitleView;

    move-result-object v5

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->N2()Landroid/view/ViewGroup;

    move-result-object v6

    const/4 v7, 0x1

    move-object v1, p1

    invoke-virtual/range {v1 .. v7}, Lcom/transsion/subtitle/VideoSubtitleControl;->b0(Lcom/transsion/subtitle/helper/LocalVideoUiType;Landroid/widget/TextView;Lcom/avery/subtitle/widget/SimpleSubtitleView;Lcom/avery/subtitle/widget/SimpleSubtitleView;Landroid/view/ViewGroup;Z)V

    new-instance v0, Lcom/transsion/postdetail/layer/local/n;

    invoke-direct {v0, p0}, Lcom/transsion/postdetail/layer/local/n;-><init>(Lcom/transsion/postdetail/layer/local/a0;)V

    invoke-virtual {p1, v0}, Lcom/transsion/subtitle/VideoSubtitleControl;->k0(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->a3()Lcom/transsion/postdetail/layer/local/LocalUiType;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/postdetail/util/u;->c(Lcom/transsion/postdetail/layer/local/LocalUiType;)Lcom/transsion/subtitle/helper/LocalVideoUiType;

    move-result-object v0

    new-instance v1, Lcom/transsion/postdetail/layer/local/o;

    invoke-direct {v1, p0}, Lcom/transsion/postdetail/layer/local/o;-><init>(Lcom/transsion/postdetail/layer/local/a0;)V

    new-instance v2, Lcom/transsion/postdetail/layer/local/p;

    invoke-direct {v2, p0}, Lcom/transsion/postdetail/layer/local/p;-><init>(Lcom/transsion/postdetail/layer/local/a0;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/transsion/subtitle/VideoSubtitleControl;->F(Lcom/transsion/subtitle/helper/LocalVideoUiType;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public abstract A0()Landroid/view/View;
.end method

.method public A2(Z)V
    .locals 4

    iget-boolean v0, p0, Lcom/transsion/postdetail/layer/local/a0;->y:Z

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lcom/transsion/postdetail/layer/local/a0;->P:Z

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-static {}, Lcom/blankj/utilcode/util/c;->l()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->b1()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    move p1, v2

    :goto_0
    if-nez p1, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_3
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    invoke-direct {p0}, Lcom/transsion/postdetail/layer/local/a0;->X0()Landroid/os/Handler;

    move-result-object v0

    iget-object v3, p0, Lcom/transsion/postdetail/layer/local/a0;->V:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-eqz p1, :cond_5

    invoke-virtual {p0, v2}, Lcom/transsion/postdetail/layer/local/a0;->v1(Z)V

    :cond_5
    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->D0()Landroid/view/ViewGroup;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->Z2()Landroidx/constraintlayout/widget/Group;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->g2()Landroid/view/ViewGroup;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->r1()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->A0()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->q1()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_b
    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->E0()Landroid/view/ViewGroup;

    move-result-object p1

    if-eqz p1, :cond_c

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->n2()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    if-eqz p1, :cond_d

    const v0, 0x102000b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_d

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    :goto_1
    return-void
.end method

.method public B(I)V
    .locals 0

    invoke-static {p0, p1}, Lvo/d$a;->n(Lvo/d;I)V

    return-void
.end method

.method protected B0(Lcom/transsion/moviedetailapi/bean/Subject;)V
    .locals 0

    return-void
.end method

.method public C(Lvo/c;)V
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/postdetail/layer/local/a0;->M:Lvo/c;

    return-void
.end method

.method public abstract C0()Z
.end method

.method public D(Lvo/b;)V
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/postdetail/layer/local/a0;->t:Lvo/b;

    return-void
.end method

.method public abstract D0()Landroid/view/ViewGroup;
.end method

.method public E(Lcom/transsion/baselib/db/download/DownloadBean;)V
    .locals 0

    invoke-static {p0, p1}, Lvo/d$a;->c(Lvo/d;Lcom/transsion/baselib/db/download/DownloadBean;)V

    return-void
.end method

.method public abstract E0()Landroid/view/ViewGroup;
.end method

.method public abstract F0()Landroid/view/View;
.end method

.method public abstract G0()Landroid/widget/TextView;
.end method

.method public abstract H0()Landroid/widget/TextView;
.end method

.method public abstract I0()Landroid/widget/TextView;
.end method

.method protected J2(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/postdetail/layer/local/a0;->z:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/transsion/postdetail/layer/local/a0;->z:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/transsion/postdetail/layer/local/a0;->A:Z

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->F0()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    invoke-direct {p0}, Lcom/transsion/postdetail/layer/local/a0;->K2()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/transsion/postdetail/layer/local/a0;->M2()V

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->F0()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected final K0()V
    .locals 7

    invoke-direct {p0}, Lcom/transsion/postdetail/layer/local/a0;->j2()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v1, Llg/a;->a:Llg/a$a;

    iget-object v2, p0, Lcom/transsion/postdetail/layer/local/a0;->j:Ljava/lang/String;

    const-string v0, "TAG"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v3, "onCompletion, showReplay"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/transsion/postdetail/layer/local/a0;->H2()V

    return-void
.end method

.method public final L2()V
    .locals 4

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/BaseLayer;->H()Lcom/transsion/player/orplayer/g;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/postdetail/layer/local/a0;->a0:J

    sget-object v0, Lcom/transsion/baselib/helper/d;->a:Lcom/transsion/baselib/helper/d;

    invoke-virtual {v0}, Lcom/transsion/baselib/helper/d;->d()F

    move-result v0

    iput v0, p0, Lcom/transsion/postdetail/layer/local/a0;->D:F

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/BaseLayer;->H()Lcom/transsion/player/orplayer/g;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/transsion/postdetail/layer/local/a0;->D:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    invoke-interface {v0, v1}, Lcom/transsion/player/orplayer/g;->setSpeed(F)V

    :cond_1
    invoke-direct {p0}, Lcom/transsion/postdetail/layer/local/a0;->x1()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/postdetail/layer/local/a0;->v1(Z)V

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->k2()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Ljg/c;->k(Landroid/view/View;)V

    :cond_2
    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/a0;->K:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/postdetail/layer/local/a0;->H:Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getOps()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/transsion/postdetail/layer/local/a0;->D:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-string v3, "local_video_detail"

    invoke-static {v3, v0, v1, v2}, Lak/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)V

    return-void
.end method

.method public M(Lcom/transsion/player/orplayer/g;Lcom/transsion/player/ui/ORPlayerView;)V
    .locals 1

    const-string v0, "orPlayer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "orPlayerView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/transsion/postdetail/layer/BaseLayer;->M(Lcom/transsion/player/orplayer/g;Lcom/transsion/player/ui/ORPlayerView;)V

    iget-object p2, p0, Lcom/transsion/postdetail/layer/local/a0;->v:Leo/n;

    if-nez p2, :cond_0

    const-string p2, "volumeControl"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    const/4 p2, 0x0

    :cond_0
    invoke-interface {p2, p1}, Leo/n;->e(Lcom/transsion/player/orplayer/g;)V

    return-void
.end method

.method public final M0()V
    .locals 12

    iget v0, p0, Lcom/transsion/postdetail/layer/local/a0;->D:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/BaseLayer;->H()Lcom/transsion/player/orplayer/g;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v2, p0, Lcom/transsion/postdetail/layer/local/a0;->D:F

    invoke-interface {v0, v2}, Lcom/transsion/player/orplayer/g;->setSpeed(F)V

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->k2()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Ljg/c;->g(Landroid/view/View;)V

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/transsion/postdetail/layer/local/a0;->a0:J

    sub-long v7, v2, v4

    iget-object v9, p0, Lcom/transsion/postdetail/layer/local/a0;->K:Ljava/lang/String;

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/a0;->H:Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getOps()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v10, v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    iget v0, p0, Lcom/transsion/postdetail/layer/local/a0;->D:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    const-string v6, "local_video_detail"

    invoke-static/range {v6 .. v11}, Lak/p;->b(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Float;)V

    iput v1, p0, Lcom/transsion/postdetail/layer/local/a0;->D:F

    :cond_3
    return-void
.end method

.method public M1()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract N2()Landroid/view/ViewGroup;
.end method

.method public abstract O0()Landroid/widget/ImageView;
.end method

.method protected final O1()Z
    .locals 2

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/a0;->H:Lcom/transsion/baselib/db/download/DownloadBean;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->isMusic()Z

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lko/l0;->a:Lko/l0;

    invoke-virtual {v0}, Lko/l0;->p()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public abstract O2()Landroid/widget/ImageView;
.end method

.method public abstract P1()Landroid/view/View;
.end method

.method public abstract P2()Landroid/widget/ProgressBar;
.end method

.method public abstract Q0()Landroid/view/View;
.end method

.method public abstract Q2()Landroid/widget/TextView;
.end method

.method public abstract R2()Landroid/widget/TextView;
.end method

.method protected final S0()Lcom/transsion/baselib/db/download/DownloadBean;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/a0;->H:Lcom/transsion/baselib/db/download/DownloadBean;

    return-object v0
.end method

.method public abstract S2()Lcom/avery/subtitle/widget/SimpleSubtitleView;
.end method

.method protected final T0()Lcom/transsnet/downloader/manager/g;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/a0;->G:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsnet/downloader/manager/g;

    return-object v0
.end method

.method protected final T1(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->n2()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->n2()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :cond_2
    return-void
.end method

.method public abstract T2()Lcom/avery/subtitle/widget/SimpleSubtitleView;
.end method

.method public abstract U2()Landroid/view/ViewGroup;
.end method

.method public abstract V1()V
.end method

.method public abstract V2()Lcom/avery/subtitle/widget/SimpleSubtitleView;
.end method

.method protected final W0()Lcom/transsion/baseui/widget/f;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/a0;->U:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/baseui/widget/f;

    return-object v0
.end method

.method public W1(Z)V
    .locals 0

    return-void
.end method

.method public abstract W2()Landroid/widget/TextView;
.end method

.method public abstract X2()Landroid/widget/TextView;
.end method

.method protected final Y0()I
    .locals 1

    iget v0, p0, Lcom/transsion/postdetail/layer/local/a0;->q:I

    return v0
.end method

.method public Y1()V
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/BaseLayer;->H()Lcom/transsion/player/orplayer/g;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/transsion/player/orplayer/g;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/BaseLayer;->H()Lcom/transsion/player/orplayer/g;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/transsion/player/orplayer/g;->isComplete()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/transsion/postdetail/layer/local/a0;->N1()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/BaseLayer;->H()Lcom/transsion/player/orplayer/g;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/transsion/player/orplayer/g;->play()V

    :cond_0
    iget-object v1, p0, Lcom/transsion/postdetail/layer/local/a0;->C:Landroid/view/View;

    if-eqz v1, :cond_1

    invoke-static {v1}, Ljg/c;->i(Landroid/view/View;)Z

    move-result v1

    if-ne v1, v0, :cond_1

    iget-object v1, p0, Lcom/transsion/postdetail/layer/local/a0;->C:Landroid/view/View;

    if-eqz v1, :cond_1

    invoke-static {v1}, Ljg/c;->g(Landroid/view/View;)V

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/BaseLayer;->H()Lcom/transsion/player/orplayer/g;

    move-result-object v1

    if-eqz v1, :cond_2

    sget-object v2, Lcom/transsion/baselib/helper/d;->a:Lcom/transsion/baselib/helper/d;

    invoke-virtual {v2}, Lcom/transsion/baselib/helper/d;->c()Lcom/transsion/player/enum/ScaleMode;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/transsion/player/orplayer/g;->setScaleMode(Lcom/transsion/player/enum/ScaleMode;)V

    :cond_2
    iget v1, p0, Lcom/transsion/postdetail/layer/local/a0;->p:I

    if-lez v1, :cond_3

    iget v2, p0, Lcom/transsion/postdetail/layer/local/a0;->q:I

    if-lez v2, :cond_3

    if-le v2, v1, :cond_3

    sget-object v1, Lcom/transsion/postdetail/layer/local/LocalUiType;->PORTRAIT:Lcom/transsion/postdetail/layer/local/LocalUiType;

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/transsion/postdetail/layer/local/LocalUiType;->LAND:Lcom/transsion/postdetail/layer/local/LocalUiType;

    :goto_0
    sget-object v2, Lcom/transsion/postdetail/layer/local/LocalUiType;->LAND:Lcom/transsion/postdetail/layer/local/LocalUiType;

    if-ne v1, v2, :cond_4

    iget-object v2, p0, Lcom/transsion/postdetail/layer/local/a0;->k:Landroidx/fragment/app/Fragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_4

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_4
    sget-object v2, Lox/c;->a:Lox/c;

    invoke-virtual {v2}, Lox/c;->a()V

    sget-object v2, Lcom/transsion/postdetail/layer/listener/LayerFlag;->LOCAL_UI_CHANGED:Lcom/transsion/postdetail/layer/listener/LayerFlag;

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v0, v3

    invoke-virtual {p0, v2, v0}, Lcom/transsion/postdetail/layer/BaseLayer;->F(Lcom/transsion/postdetail/layer/listener/LayerFlag;[Ljava/lang/Object;)V

    return-void
.end method

.method public abstract Y2()Landroid/widget/TextView;
.end method

.method public Z1()V
    .locals 0

    return-void
.end method

.method public abstract Z2()Landroidx/constraintlayout/widget/Group;
.end method

.method public a(Lcom/transsion/postdetail/layer/local/LocalUiType;)V
    .locals 1

    const-string v0, "uiType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/a0;->t:Lvo/b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lvo/b;->a(Lcom/transsion/postdetail/layer/local/LocalUiType;)V

    :cond_0
    return-void
.end method

.method public a2(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public abstract a3()Lcom/transsion/postdetail/layer/local/LocalUiType;
.end method

.method public b(ZZ)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/transsion/postdetail/layer/local/a0;->A2(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/transsion/postdetail/layer/local/a0;->v1(Z)V

    :goto_0
    return-void
.end method

.method public b1()Landroid/view/View;
    .locals 1

    invoke-static {p0}, Lvo/d$a;->a(Lvo/d;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public b2(Landroid/view/View;Z)V
    .locals 6

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/transsion/postdetail/layer/local/a0;->A2(Z)V

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p1

    if-eqz p2, :cond_0

    sget p2, Lcom/transsion/subtitle/R$string;->subtitle_turn_on_toast:I

    goto :goto_0

    :cond_0
    sget p2, Lcom/transsion/subtitle/R$string;->subtitle_turn_off_toast:I

    :goto_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string p1, "getString(...)"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const-wide/16 v2, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lvo/d$a;->l(Lvo/d;Ljava/lang/String;JILjava/lang/Object;)V

    return-void
.end method

.method public b3(Z)V
    .locals 5

    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/a0;->k:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    sget-object v1, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    invoke-virtual {v1}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    const-string v2, "k_pip_enable"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mmkv/MMKV;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    sget-object v1, Lox/e;->a:Lox/e$a;

    invoke-virtual {v1}, Lox/e$a;->b()Lox/e;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/BaseLayer;->I()Lcom/transsion/player/ui/ORPlayerView;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    move-object v2, v3

    :goto_0
    instance-of v4, v2, Landroid/view/ViewGroup;

    if-eqz v4, :cond_3

    move-object v3, v2

    check-cast v3, Landroid/view/ViewGroup;

    :cond_3
    const/4 v2, 0x0

    invoke-interface {v1, v0, v2, p1, v3}, Lox/e;->a(Landroidx/fragment/app/FragmentActivity;ZZLandroid/view/ViewGroup;)Landroid/app/PictureInPictureParams;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :cond_4
    :goto_1
    return-void

    :goto_2
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/a0;->H:Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setPlaying(Z)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/a0;->s:Lcom/transsion/postdetail/layer/SystemTimeManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/postdetail/layer/SystemTimeManager;->c()V

    :cond_1
    invoke-direct {p0}, Lcom/transsion/postdetail/layer/local/a0;->X0()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/transsion/postdetail/layer/local/a0;->a1()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/transsion/postdetail/layer/local/a0;->U0()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    sget-object v0, Lcom/transsion/ad/strategy/b;->a:Lcom/transsion/ad/strategy/b;

    invoke-virtual {v0, p0}, Lcom/transsion/ad/strategy/b;->m(Lcom/transsion/ad/strategy/b$a;)V

    sget-object v0, Lcom/transsion/baselib/report/l;->a:Lcom/transsion/baselib/report/l;

    invoke-virtual {v0, p0}, Lcom/transsion/baselib/report/l;->u(Lcom/transsion/baselib/report/l$a;)Z

    return-void
.end method

.method public canNonSubscriberPlay(ZIILmo/d;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/player/orplayer/f$a;->a(Lcom/transsion/player/orplayer/f;ZIILmo/d;)V

    return-void
.end method

.method public d()V
    .locals 0

    invoke-static {p0}, Lvo/d$a;->i(Lvo/d;)V

    return-void
.end method

.method protected final d2(Landroid/view/MotionEvent;Z)V
    .locals 4

    sget-object v0, Lcom/transsion/baseui/util/c;->a:Lcom/transsion/baseui/util/c;

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->f2()Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    goto :goto_0

    :cond_0
    const/16 v1, 0x2537

    :goto_0
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/transsion/baseui/util/c;->a(IJ)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/a0;->B:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6

    iget-object p1, p0, Lcom/transsion/postdetail/layer/local/a0;->B:Landroid/view/View;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_1

    :cond_2
    move p1, v1

    :goto_1
    if-eqz p1, :cond_4

    sget-object p1, Llg/a;->a:Llg/a$a;

    const-string p2, "long_video_play"

    const-string v0, "video error\uff0creload~~ from errorLayout"

    invoke-virtual {p1, p2, v0, v2}, Llg/a$a;->x(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/transsion/postdetail/layer/local/a0;->k:Landroidx/fragment/app/Fragment;

    instance-of p2, p1, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    check-cast p1, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    goto :goto_2

    :cond_3
    move-object p1, v0

    :goto_2
    if-eqz p1, :cond_5

    invoke-static {p1, v1, v2, v0}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->s3(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;ZILjava/lang/Object;)V

    goto :goto_3

    :cond_4
    sget-object p1, Lnh/m;->a:Lnh/m;

    invoke-virtual {p1}, Lnh/m;->e()Z

    move-result p1

    if-nez p1, :cond_5

    sget-object p1, Lcom/tn/lib/widget/toast/core/h;->a:Lcom/tn/lib/widget/toast/core/h;

    sget p2, Lcom/transsion/baseui/R$string;->base_network_fail:I

    invoke-virtual {p1, p2}, Lcom/tn/lib/widget/toast/core/h;->k(I)V

    :cond_5
    :goto_3
    return-void

    :cond_6
    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/BaseLayer;->H()Lcom/transsion/player/orplayer/g;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->isComplete()Z

    move-result v0

    if-ne v0, v2, :cond_7

    move v0, v2

    goto :goto_4

    :cond_7
    move v0, v1

    :goto_4
    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->M1()Z

    move-result p1

    if-eqz p1, :cond_8

    return-void

    :cond_8
    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->i3()V

    return-void

    :cond_9
    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/BaseLayer;->H()Lcom/transsion/player/orplayer/g;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->isPlaying()Z

    move-result v0

    if-ne v0, v2, :cond_a

    move v0, v2

    goto :goto_5

    :cond_a
    move v0, v1

    :goto_5
    if-eqz v0, :cond_b

    invoke-virtual {p0, p1, p2}, Lcom/transsion/postdetail/layer/local/a0;->s1(Landroid/view/MotionEvent;Z)V

    goto :goto_6

    :cond_b
    invoke-virtual {p0, v1}, Lcom/transsion/postdetail/layer/BaseLayer;->P(Z)V

    invoke-virtual {p0, v2}, Lcom/transsion/postdetail/layer/local/a0;->u2(Z)V

    sget-object p1, Lox/c;->a:Lox/c;

    invoke-virtual {p1}, Lox/c;->a()V

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/BaseLayer;->H()Lcom/transsion/player/orplayer/g;

    move-result-object p1

    if-eqz p1, :cond_c

    invoke-interface {p1}, Lcom/transsion/player/orplayer/g;->play()V

    :cond_c
    :goto_6
    return-void
.end method

.method public e(Lcom/transsion/videofloat/bean/FloatActionType;)Z
    .locals 13

    const-string v0, "actionType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/a0;->H:Lcom/transsion/baselib/db/download/DownloadBean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->isMusic()Z

    move-result v0

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/a0;->k:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {v4}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_2

    :cond_1
    sget-object v0, Lcom/transsion/videofloat/bean/FloatActionType;->ICON:Lcom/transsion/videofloat/bean/FloatActionType;

    if-eq p1, v0, :cond_2

    sget-object v3, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    invoke-virtual {v3}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v3

    const-string v5, "k_pip_enable"

    invoke-virtual {v3, v5, v2}, Lcom/tencent/mmkv/MMKV;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object p1, Llg/a;->a:Llg/a$a;

    const-string v0, "VideoFloat"

    const-string v3, "local \u8bbe\u7f6e\u9875pip\u5f00\u5173\u88ab\u5173\u95ed\u4e86"

    invoke-virtual {p1, v0, v3, v2}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    return v1

    :cond_2
    invoke-direct {p0}, Lcom/transsion/postdetail/layer/local/a0;->V0()Lpx/a;

    move-result-object v5

    if-eqz v5, :cond_8

    if-eq p1, v0, :cond_3

    invoke-virtual {v5}, Lpx/a;->f()Lcom/transsion/player/orplayer/g;

    move-result-object v3

    invoke-interface {v3}, Lcom/transsion/player/orplayer/g;->isPlaying()Z

    move-result v3

    if-nez v3, :cond_3

    sget-object p1, Llg/a;->a:Llg/a$a;

    const-string v0, "VideoFloat-pip"

    const-string v3, "local \u89c6\u9891\u6682\u505c\uff0c\u65e0\u9700\u89e6\u53d1\u753b\u4e2d\u753b"

    invoke-virtual {p1, v0, v3, v2}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    return v1

    :cond_3
    sget-object v3, Lox/e;->a:Lox/e$a;

    invoke-virtual {v3}, Lox/e$a;->b()Lox/e;

    move-result-object v6

    invoke-interface {v6}, Lox/e;->c()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {p0, v2}, Lcom/transsion/postdetail/layer/local/a0;->v1(Z)V

    sget-object v7, Llg/a;->a:Llg/a$a;

    const/4 v11, 0x4

    const/4 v12, 0x0

    const-string v8, "VideoFloat-pip"

    const-string v9, "local \u5f53\u524d\u53ef\u7528\u753b\u4e2d\u753b\uff0c\u4f7f\u7528\u753b\u4e2d\u753b\u64ad\u653e"

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-virtual {v3}, Lox/e$a;->b()Lox/e;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->a3()Lcom/transsion/postdetail/layer/local/LocalUiType;

    move-result-object v3

    sget-object v6, Lcom/transsion/postdetail/layer/local/LocalUiType;->LAND:Lcom/transsion/postdetail/layer/local/LocalUiType;

    if-ne v3, v6, :cond_4

    move v1, v2

    :cond_4
    invoke-interface {v0, v4, v5, p1, v1}, Lox/e;->k(Landroidx/fragment/app/FragmentActivity;Lpx/a;Lcom/transsion/videofloat/bean/FloatActionType;Z)V

    return v2

    :cond_5
    sget-object v3, Lox/b;->a:Lox/b$a;

    invoke-virtual {v3}, Lox/b$a;->c()Lox/b;

    move-result-object v3

    if-ne p1, v0, :cond_6

    move v6, v2

    goto :goto_0

    :cond_6
    move v6, v1

    :goto_0
    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->a3()Lcom/transsion/postdetail/layer/local/LocalUiType;

    move-result-object p1

    sget-object v0, Lcom/transsion/postdetail/layer/local/LocalUiType;->LAND:Lcom/transsion/postdetail/layer/local/LocalUiType;

    if-ne p1, v0, :cond_7

    move v7, v2

    goto :goto_1

    :cond_7
    move v7, v1

    :goto_1
    new-instance v8, Lcom/transsion/postdetail/layer/local/i;

    invoke-direct {v8, p0}, Lcom/transsion/postdetail/layer/local/i;-><init>(Lcom/transsion/postdetail/layer/local/a0;)V

    new-instance v9, Lcom/transsion/postdetail/layer/local/a0$f;

    invoke-direct {v9}, Lcom/transsion/postdetail/layer/local/a0$f;-><init>()V

    invoke-interface/range {v3 .. v9}, Lox/b;->g(Landroidx/fragment/app/FragmentActivity;Lpx/a;ZZLkotlin/jvm/functions/Function1;Lsx/a;)V

    :cond_8
    :goto_2
    return v1
.end method

.method protected final e1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/a0;->I:Ljava/lang/String;

    return-object v0
.end method

.method public f(ZLjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lvo/d$a;->h(Lvo/d;ZLjava/lang/String;)V

    return-void
.end method

.method public abstract f2()Landroid/widget/ImageView;
.end method

.method public g()V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/postdetail/layer/local/a0;->J2(Z)V

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/transsion/postdetail/layer/local/a0;->C2(I)V

    const-string v2, ""

    iput-object v2, p0, Lcom/transsion/postdetail/layer/local/a0;->x:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/transsion/postdetail/layer/local/a0;->y:Z

    invoke-virtual {p0, v1}, Lcom/transsion/postdetail/layer/local/a0;->v1(Z)V

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->Z2()Landroidx/constraintlayout/widget/Group;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    invoke-direct {p0, v1}, Lcom/transsion/postdetail/layer/local/a0;->w1(Z)V

    return-void
.end method

.method protected final g1()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/a0;->C:Landroid/view/View;

    return-object v0
.end method

.method public abstract g2()Landroid/view/ViewGroup;
.end method

.method public h(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "subjectId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/postdetail/layer/local/a0;->K:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/postdetail/layer/local/a0;->L:Z

    iget-object p1, p0, Lcom/transsion/postdetail/layer/local/a0;->k:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->o1()Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel;->i()Landroidx/lifecycle/b0;

    move-result-object p2

    new-instance v0, Lcom/transsion/postdetail/layer/local/m;

    invoke-direct {v0, p0}, Lcom/transsion/postdetail/layer/local/m;-><init>(Lcom/transsion/postdetail/layer/local/a0;)V

    new-instance v1, Lcom/transsion/postdetail/layer/local/a0$e;

    invoke-direct {v1, v0}, Lcom/transsion/postdetail/layer/local/a0$e;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p2, p1, v1}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    :cond_0
    return-void
.end method

.method public abstract h2()Landroid/widget/TextView;
.end method

.method public abstract h3()Landroid/widget/TextView;
.end method

.method public i(Ljava/lang/String;J)V
    .locals 1

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/a0;->w:Lcom/transsion/postdetail/layer/local/j1;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/transsion/postdetail/layer/local/j1;->h(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method protected final i1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/a0;->J:Ljava/lang/String;

    return-object v0
.end method

.method public abstract i2()Landroid/view/View;
.end method

.method public i3()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/a0;->t:Lvo/b;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/postdetail/layer/local/a0;->H:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-interface {v0, v1}, Lvo/b;->b(Lcom/transsion/baselib/db/download/DownloadBean;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/a0;->C:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-static {v0}, Ljg/c;->g(Landroid/view/View;)V

    :cond_1
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/transsion/postdetail/layer/local/a0;->E:J

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/BaseLayer;->H()Lcom/transsion/player/orplayer/g;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2, v0, v1}, Lcom/transsion/player/orplayer/g;->seekTo(J)V

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/BaseLayer;->H()Lcom/transsion/player/orplayer/g;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->play()V

    :cond_3
    return-void
.end method

.method public initPlayer()V
    .locals 5

    invoke-static {p0}, Lcom/transsion/player/orplayer/f$a;->b(Lcom/transsion/player/orplayer/f;)V

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/a0;->C:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljg/c;->g(Landroid/view/View;)V

    :cond_0
    iget-wide v0, p0, Lcom/transsion/postdetail/layer/local/a0;->l:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/BaseLayer;->H()Lcom/transsion/player/orplayer/g;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->getDuration()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/postdetail/layer/local/a0;->l:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/transsion/postdetail/layer/local/a0;->f3(JJ)V

    nop

    :cond_1
    return-void
.end method

.method public isVisible()Z
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->n2()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public j(Z)V
    .locals 0

    invoke-static {p0, p1}, Lvo/d$a;->k(Lvo/d;Z)V

    return-void
.end method

.method public abstract j1()Landroid/view/View;
.end method

.method public abstract j3()Landroid/widget/FrameLayout;
.end method

.method public k(Lcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/String;Z)V
    .locals 6

    const-string p3, "pageFrom"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/postdetail/layer/local/a0;->H:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->o1()Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel;

    move-result-object p3

    invoke-virtual {p3}, Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel;->e()Landroidx/lifecycle/b0;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/transsion/postdetail/layer/local/a0;->I:Ljava/lang/String;

    const-wide/16 p2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getDuration()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    move-wide v0, p2

    :goto_0
    const-wide/16 v2, 0x7530

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getDuration()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_1

    :cond_1
    move-wide v0, p2

    :goto_1
    invoke-direct {p0, p2, p3, v0, v1}, Lcom/transsion/postdetail/layer/local/a0;->f3(JJ)V

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->P1()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->O1()Z

    move-result p3

    if-eqz p3, :cond_3

    const/4 p3, 0x0

    goto :goto_2

    :cond_3
    const/16 p3, 0x8

    :goto_2
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    if-eqz p1, :cond_5

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/transsion/baselib/db/download/DownloadBean;->setPlaying(Z)V

    :cond_5
    sget-object v0, Llg/a;->a:Llg/a$a;

    iget-object v1, p0, Lcom/transsion/postdetail/layer/local/a0;->j:Ljava/lang/String;

    const-string p2, "TAG"

    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getName()Ljava/lang/String;

    move-result-object p3

    goto :goto_3

    :cond_6
    move-object p3, p2

    :goto_3
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getEpse()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateInfo,name = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", epse = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/transsion/postdetail/layer/local/a0;->g3()V

    return-void
.end method

.method protected final k1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/a0;->K:Ljava/lang/String;

    return-object v0
.end method

.method public abstract k2()Landroid/view/View;
.end method

.method public abstract k3()Landroid/widget/TextView;
.end method

.method public l(Ljava/util/Map;)V
    .locals 1

    const-string v0, "progress"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->q2()Lcom/tn/lib/view/SecondariesSeekBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/tn/lib/view/SecondariesSeekBar;->setSecondariesProgress(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method protected final l1()Lcom/transsion/postdetail/layer/SystemTimeManager;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/a0;->s:Lcom/transsion/postdetail/layer/SystemTimeManager;

    return-object v0
.end method

.method public m(Lcom/transsion/postdetail/layer/local/LocalUiType;)V
    .locals 0

    invoke-static {p0, p1}, Lvo/d$a;->f(Lvo/d;Lcom/transsion/postdetail/layer/local/LocalUiType;)V

    return-void
.end method

.method protected final m1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/a0;->j:Ljava/lang/String;

    return-object v0
.end method

.method public abstract m3()Landroid/view/ViewStub;
.end method

.method public n()V
    .locals 2

    sget-object v0, Lox/c;->a:Lox/c;

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/BaseLayer;->H()Lcom/transsion/player/orplayer/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lox/c;->c(Lcom/transsion/player/orplayer/g;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/BaseLayer;->H()Lcom/transsion/player/orplayer/g;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->pause()V

    :cond_0
    return-void
.end method

.method protected final n1()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/postdetail/layer/local/a0;->l:J

    return-wide v0
.end method

.method public abstract n2()Landroidx/constraintlayout/widget/ConstraintLayout;
.end method

.method public abstract n3()Landroid/view/ViewStub;
.end method

.method public o(F)V
    .locals 1

    invoke-static {p0, p1}, Lvo/d$a;->o(Lvo/d;F)V

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/a0;->u:Lcom/transsion/subtitle/VideoSubtitleControl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/transsion/subtitle/VideoSubtitleControl;->t0(F)V

    :cond_0
    return-void
.end method

.method protected final o1()Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/a0;->F:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel;

    return-object v0
.end method

.method public onAdClick(Lcom/transsion/ad/monopoly/model/AdPlans;)V
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "VideoFloat-pip"

    const-string v2, "onAdClick stop auto pip"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/postdetail/layer/local/a0;->b3(Z)V

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->n2()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/transsion/postdetail/layer/local/q;

    invoke-direct {v0, p0}, Lcom/transsion/postdetail/layer/local/q;-><init>(Lcom/transsion/postdetail/layer/local/a0;)V

    const-wide/16 v1, 0xbb8

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public onAliyunDecodeErrorChangeSoftwareDecoder(Lao/e;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->c(Lcom/transsion/player/orplayer/f;Lao/e;)V

    return-void
.end method

.method public onBackgroundStatusChange(Z)V
    .locals 0

    return-void
.end method

.method public onBufferedPosition(JLao/e;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/player/orplayer/f$a;->d(Lcom/transsion/player/orplayer/f;JLao/e;)V

    return-void
.end method

.method public onCompletion(Lao/e;)V
    .locals 6

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->e(Lcom/transsion/player/orplayer/f;Lao/e;)V

    sget-object v0, Llg/a;->a:Llg/a$a;

    iget-object v1, p0, Lcom/transsion/postdetail/layer/local/a0;->j:Ljava/lang/String;

    const-string p1, "TAG"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->a3()Lcom/transsion/postdetail/layer/local/LocalUiType;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCompletion, uiType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->M1()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/postdetail/layer/local/a0;->u2(Z)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->K0()V

    return-void
.end method

.method public onFocusChange(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->g(Lcom/transsion/player/orplayer/f;Z)V

    return-void
.end method

.method public onIsPlayingChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->h(Lcom/transsion/player/orplayer/f;Z)V

    return-void
.end method

.method public onLoadingBegin(Lao/e;)V
    .locals 1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/transsion/postdetail/layer/local/a0;->y:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/postdetail/layer/local/a0;->J2(Z)V

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/a0;->B:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljg/c;->g(Landroid/view/View;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/postdetail/layer/local/a0;->w1(Z)V

    return-void
.end method

.method public onLoadingEnd(Lao/e;)V
    .locals 2

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/postdetail/layer/local/a0;->J2(Z)V

    invoke-direct {p0}, Lcom/transsion/postdetail/layer/local/a0;->U0()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-boolean p1, p0, Lcom/transsion/postdetail/layer/local/a0;->y:Z

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/a0;->B:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljg/c;->g(Landroid/view/View;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/postdetail/layer/local/a0;->w1(Z)V

    return-void
.end method

.method public onLoadingProgress(IFLao/e;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/player/orplayer/f$a;->m(Lcom/transsion/player/orplayer/f;IFLao/e;)V

    return-void
.end method

.method public onLoopingStart()V
    .locals 0

    invoke-static {p0}, Lcom/transsion/player/orplayer/f$a;->o(Lcom/transsion/player/orplayer/f;)V

    return-void
.end method

.method public onMediaItemTransition(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->p(Lcom/transsion/player/orplayer/f;Ljava/lang/String;)V

    return-void
.end method

.method public onPlayError(Lcom/transsion/player/orplayer/PlayError;Lao/e;)V
    .locals 6

    const-string p2, "errorInfo"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/transsion/postdetail/layer/local/a0;->E:J

    invoke-virtual {p1}, Lcom/transsion/player/orplayer/PlayError;->getErrorCode()Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const p2, 0x20030004

    if-ne p1, p2, :cond_2

    sget-object v0, Llg/a;->a:Llg/a$a;

    iget-object v1, p0, Lcom/transsion/postdetail/layer/local/a0;->j:Ljava/lang/String;

    const-string p1, "TAG"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v2, "--onPlayError\uff0cnet time out ,"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    sget-object p1, Lnh/m;->a:Lnh/m;

    invoke-virtual {p1}, Lnh/m;->e()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->g()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/transsion/postdetail/layer/local/a0;->U0()Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/postdetail/layer/local/a0;->Z:Ljava/lang/Runnable;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public onPlayerRelease(Lao/e;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->t(Lcom/transsion/player/orplayer/f;Lao/e;)V

    return-void
.end method

.method public onPlayerReset()V
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    iget-object v1, p0, Lcom/transsion/postdetail/layer/local/a0;->j:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v2, "onPlayerReset"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/postdetail/layer/local/a0;->y:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/transsion/postdetail/layer/local/a0;->l:J

    iput-wide v0, p0, Lcom/transsion/postdetail/layer/local/a0;->E:J

    return-void
.end method

.method public onPrepare(Lao/e;)V
    .locals 2

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->w(Lcom/transsion/player/orplayer/f;Lao/e;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/transsion/postdetail/layer/local/a0;->E:J

    return-void
.end method

.method public onProgress(JLao/e;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/transsion/postdetail/layer/local/a0;->e3(J)V

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->a3()Lcom/transsion/postdetail/layer/local/LocalUiType;

    move-result-object p3

    sget-object v0, Lcom/transsion/postdetail/layer/local/LocalUiType;->MIDDLE:Lcom/transsion/postdetail/layer/local/LocalUiType;

    const/4 v1, 0x0

    if-ne p3, v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->f2()Landroid/widget/ImageView;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    goto :goto_0

    :cond_0
    move p3, v1

    :goto_0
    if-eqz p3, :cond_1

    const/4 p3, 0x1

    invoke-virtual {p0, p3}, Lcom/transsion/postdetail/layer/local/a0;->u2(Z)V

    :cond_1
    iget-boolean p3, p0, Lcom/transsion/postdetail/layer/local/a0;->z:Z

    if-eqz p3, :cond_2

    invoke-virtual {p0, v1}, Lcom/transsion/postdetail/layer/local/a0;->J2(Z)V

    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/transsion/postdetail/layer/local/a0;->X1(J)V

    iget-object p3, p0, Lcom/transsion/postdetail/layer/local/a0;->u:Lcom/transsion/subtitle/VideoSubtitleControl;

    if-eqz p3, :cond_3

    invoke-virtual {p3, p1, p2}, Lcom/transsion/subtitle/VideoSubtitleControl;->S(J)V

    :cond_3
    return-void
.end method

.method public onRenderFirstFrame()V
    .locals 2

    invoke-static {p0}, Lcom/transsion/player/orplayer/f$a;->A(Lcom/transsion/player/orplayer/f;)V

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->a3()Lcom/transsion/postdetail/layer/local/LocalUiType;

    move-result-object v0

    sget-object v1, Lcom/transsion/postdetail/layer/local/LocalUiType;->MIDDLE:Lcom/transsion/postdetail/layer/local/LocalUiType;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->f2()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/postdetail/layer/local/a0;->u2(Z)V

    :cond_1
    return-void
.end method

.method public onSetDataSource()V
    .locals 0

    invoke-static {p0}, Lcom/transsion/player/orplayer/f$a;->B(Lcom/transsion/player/orplayer/f;)V

    return-void
.end method

.method public onTracksAudioBitrateChange(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->C(Lcom/transsion/player/orplayer/f;I)V

    return-void
.end method

.method public onTracksChange(Lmo/c;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->D(Lcom/transsion/player/orplayer/f;Lmo/c;)V

    return-void
.end method

.method public onTracksVideoBitrateChange(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->E(Lcom/transsion/player/orplayer/f;I)V

    return-void
.end method

.method public onVideoPause(Lao/e;)V
    .locals 2

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/postdetail/layer/local/a0;->b3(Z)V

    invoke-virtual {p0, p1}, Lcom/transsion/postdetail/layer/local/a0;->u2(Z)V

    invoke-direct {p0}, Lcom/transsion/postdetail/layer/local/a0;->N1()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/transsion/postdetail/layer/local/a0;->B2(Lcom/transsion/postdetail/layer/local/a0;ZILjava/lang/Object;)V

    :cond_0
    iget-object p1, p0, Lcom/transsion/postdetail/layer/local/a0;->u:Lcom/transsion/subtitle/VideoSubtitleControl;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/subtitle/VideoSubtitleControl;->R()V

    :cond_1
    return-void
.end method

.method public onVideoSizeChanged(II)V
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/transsion/player/orplayer/f$a;->H(Lcom/transsion/player/orplayer/f;II)V

    if-lez p1, :cond_0

    iget v0, p0, Lcom/transsion/postdetail/layer/local/a0;->p:I

    if-ne v0, p1, :cond_1

    :cond_0
    if-lez p2, :cond_2

    iget v0, p0, Lcom/transsion/postdetail/layer/local/a0;->q:I

    if-eq v0, p2, :cond_2

    :cond_1
    iput p2, p0, Lcom/transsion/postdetail/layer/local/a0;->q:I

    iput p1, p0, Lcom/transsion/postdetail/layer/local/a0;->p:I

    :cond_2
    return-void
.end method

.method public onVideoStart(Lao/e;)V
    .locals 1

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/transsion/postdetail/layer/local/a0;->b3(Z)V

    invoke-virtual {p0, p1}, Lcom/transsion/postdetail/layer/local/a0;->u2(Z)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/postdetail/layer/local/a0;->v1(Z)V

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/a0;->u:Lcom/transsion/subtitle/VideoSubtitleControl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/subtitle/VideoSubtitleControl;->T()V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/postdetail/layer/local/a0;->J2(Z)V

    iput-boolean p1, p0, Lcom/transsion/postdetail/layer/local/a0;->O:Z

    iget-object p1, p0, Lcom/transsion/postdetail/layer/local/a0;->C:Landroid/view/View;

    if-eqz p1, :cond_1

    invoke-static {p1}, Ljg/c;->g(Landroid/view/View;)V

    :cond_1
    invoke-direct {p0}, Lcom/transsion/postdetail/layer/local/a0;->J0()V

    return-void
.end method

.method public onViewPause()V
    .locals 0

    invoke-static {p0}, Lvo/d$a;->g(Lvo/d;)V

    return-void
.end method

.method public onViewResume()V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/BaseLayer;->J()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lnh/m;->a:Lnh/m;

    invoke-virtual {v0}, Lnh/m;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lox/c;->a:Lox/c;

    invoke-virtual {v0}, Lox/c;->d()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/transsion/postdetail/layer/local/a0;->N1()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/BaseLayer;->H()Lcom/transsion/player/orplayer/g;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->play()V

    :cond_0
    return-void
.end method

.method public p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0

    const-string p4, "resourceId"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "subjectId"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "postId"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/postdetail/layer/local/a0;->J:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/postdetail/layer/local/a0;->K:Ljava/lang/String;

    invoke-virtual {p0, p3}, Lcom/transsion/postdetail/layer/BaseLayer;->O(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/postdetail/layer/local/a0;->k:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->o1()Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel;->g()Landroidx/lifecycle/b0;

    move-result-object p2

    new-instance p3, Lcom/transsion/postdetail/layer/local/x;

    invoke-direct {p3, p0}, Lcom/transsion/postdetail/layer/local/x;-><init>(Lcom/transsion/postdetail/layer/local/a0;)V

    new-instance p4, Lcom/transsion/postdetail/layer/local/a0$e;

    invoke-direct {p4, p3}, Lcom/transsion/postdetail/layer/local/a0$e;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p2, p1, p4}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    :cond_0
    return-void
.end method

.method protected final p1()I
    .locals 1

    iget v0, p0, Lcom/transsion/postdetail/layer/local/a0;->p:I

    return v0
.end method

.method public abstract p2()Landroid/view/View;
.end method

.method public q(II)V
    .locals 0

    iput p2, p0, Lcom/transsion/postdetail/layer/local/a0;->q:I

    iput p1, p0, Lcom/transsion/postdetail/layer/local/a0;->p:I

    return-void
.end method

.method public abstract q1()Landroid/view/View;
.end method

.method public abstract q2()Lcom/tn/lib/view/SecondariesSeekBar;
.end method

.method public r(Landroid/view/View;Lcom/transsion/postdetail/layer/local/LocalUiType;)V
    .locals 1

    const-string v0, "rootView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "uiType"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/transsion/postdetail/layer/local/a0;->L:Z

    iput-boolean p1, p0, Lcom/transsion/postdetail/layer/local/a0;->N:Z

    invoke-virtual {p0, p1}, Lcom/transsion/postdetail/layer/local/a0;->T1(Z)V

    sget-object p1, Lcom/transsion/baselib/report/l;->a:Lcom/transsion/baselib/report/l;

    invoke-virtual {p1, p0}, Lcom/transsion/baselib/report/l;->g(Lcom/transsion/baselib/report/l$a;)Z

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->F0()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    invoke-direct {p0}, Lcom/transsion/postdetail/layer/local/a0;->A1()V

    invoke-direct {p0}, Lcom/transsion/postdetail/layer/local/a0;->J1()V

    invoke-direct {p0}, Lcom/transsion/postdetail/layer/local/a0;->L1()V

    invoke-direct {p0}, Lcom/transsion/postdetail/layer/local/a0;->I1()V

    invoke-direct {p0}, Lcom/transsion/postdetail/layer/local/a0;->z1()V

    sget-object p1, Lcom/transsion/ad/strategy/b;->a:Lcom/transsion/ad/strategy/b;

    invoke-virtual {p1, p0}, Lcom/transsion/ad/strategy/b;->c(Lcom/transsion/ad/strategy/b$a;)V

    return-void
.end method

.method public abstract r1()Landroid/view/View;
.end method

.method protected final r2(Lcom/transsion/baselib/db/download/DownloadBean;Z)V
    .locals 11

    const-string v0, "nextVideoBean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->isFileExist()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p2, p0, Lcom/transsion/postdetail/layer/local/a0;->k:Landroidx/fragment/app/Fragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    if-eqz p2, :cond_0

    sget-object v0, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;->a:Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;

    const/4 v1, -0x1

    invoke-virtual {v0, p2, p1, v1}, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;->v(Landroid/content/Context;Lcom/transsion/baselib/db/download/DownloadBean;I)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/a0;->C:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-static {v0}, Ljg/c;->g(Landroid/view/View;)V

    :cond_2
    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/a0;->H:Lcom/transsion/baselib/db/download/DownloadBean;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setPlaying(Z)V

    :cond_3
    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->o1()Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel;->f()Landroidx/lifecycle/b0;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/postdetail/layer/local/a0;->H:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v0, v2}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/postdetail/layer/local/a0;->O:Z

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->q2()Lcom/tn/lib/view/SecondariesSeekBar;

    move-result-object v2

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_4

    invoke-virtual {v2, v3, v4}, Lcom/tn/lib/view/SecondariesSeekBar;->setProgress(J)V

    :cond_4
    invoke-direct {p0, v3, v4}, Lcom/transsion/postdetail/layer/local/a0;->e3(J)V

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/transsion/postdetail/layer/local/a0;->M:Lvo/c;

    if-eqz v2, :cond_5

    xor-int/2addr p2, v0

    invoke-interface {v2, p1, p2}, Lvo/c;->a(Lcom/transsion/baselib/db/download/DownloadBean;Z)V

    :cond_5
    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/BaseLayer;->H()Lcom/transsion/player/orplayer/g;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-interface {p2}, Lcom/transsion/player/orplayer/g;->clearScreen()V

    :cond_6
    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/BaseLayer;->H()Lcom/transsion/player/orplayer/g;

    move-result-object p2

    if-eqz p2, :cond_7

    invoke-interface {p2}, Lcom/transsion/player/orplayer/g;->stop()V

    :cond_7
    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/BaseLayer;->H()Lcom/transsion/player/orplayer/g;

    move-result-object p2

    if-eqz p2, :cond_8

    invoke-interface {p2}, Lcom/transsion/player/orplayer/g;->reset()V

    :cond_8
    iput-boolean v1, p0, Lcom/transsion/postdetail/layer/local/a0;->N:Z

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->s()V

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getPostId()Ljava/lang/String;

    move-result-object p2

    const-string v2, ""

    if-nez p2, :cond_9

    move-object p2, v2

    :cond_9
    invoke-virtual {p0, p2}, Lcom/transsion/postdetail/layer/BaseLayer;->O(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_a

    move-object p2, v2

    :cond_a
    iput-object p2, p0, Lcom/transsion/postdetail/layer/local/a0;->K:Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/postdetail/layer/local/a0;->H:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {p1, v0}, Lcom/transsion/baselib/db/download/DownloadBean;->setPlaying(Z)V

    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {p0, p2}, Lcom/transsion/postdetail/layer/local/a0;->l(Ljava/util/Map;)V

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    move-result p2

    const/4 v3, 0x5

    if-eq p2, v3, :cond_b

    move v1, v0

    :cond_b
    const/4 p2, 0x0

    invoke-static {p0, p2, v0, p2}, Lcom/transsion/player/orplayer/f$a;->j(Lcom/transsion/player/orplayer/f;Lao/e;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_11

    sget-object v3, Lcom/transsnet/downloader/util/i;->a:Lcom/transsnet/downloader/util/i;

    const-string v4, "1"

    invoke-virtual {v3, v4}, Lcom/transsnet/downloader/util/i;->d(Ljava/lang/String;)V

    if-eqz v1, :cond_c

    iget-object p2, p0, Lcom/transsion/postdetail/layer/local/a0;->M:Lvo/c;

    if-eqz p2, :cond_11

    invoke-interface {p2, p1}, Lvo/c;->b(Lcom/transsion/baselib/db/download/DownloadBean;)V

    goto/16 :goto_1

    :cond_c
    sget-object v1, Llg/a;->a:Llg/a$a;

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getPath()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "series playerSetDataSource, subjectId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",resourceId = "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", path = "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "long_video_play"

    invoke-virtual {v1, v4, v3, v0}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/BaseLayer;->H()Lcom/transsion/player/orplayer/g;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->clearScreen()V

    :cond_d
    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/BaseLayer;->H()Lcom/transsion/player/orplayer/g;

    move-result-object v0

    if-eqz v0, :cond_10

    new-instance v1, Lao/e;

    iget-object v3, p0, Lcom/transsion/postdetail/layer/local/a0;->H:Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v3, :cond_e

    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object p2

    :cond_e
    move-object v4, p2

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getPath()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_f

    move-object v5, v2

    goto :goto_0

    :cond_f
    move-object v5, p1

    :goto_0
    invoke-direct {p0}, Lcom/transsion/postdetail/layer/local/a0;->c1()Lcom/transsion/player/mediasession/MediaItem;

    move-result-object v8

    const/16 v9, 0xc

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lao/e;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/transsion/player/enum/PlayMimeType;Lcom/transsion/player/mediasession/MediaItem;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object p1, Lcom/transsion/baseui/music/MusicFloatManager;->h:Lcom/transsion/baseui/music/MusicFloatManager$a;

    invoke-virtual {p1}, Lcom/transsion/baseui/music/MusicFloatManager$a;->b()Lcom/transsion/baseui/music/MusicFloatManager;

    move-result-object p2

    invoke-virtual {v1}, Lao/e;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/transsion/baseui/music/MusicFloatManager;->C(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/baseui/music/MusicFloatManager$a;->b()Lcom/transsion/baseui/music/MusicFloatManager;

    move-result-object p1

    invoke-virtual {v1}, Lao/e;->i()Lcom/transsion/player/mediasession/MediaItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/baseui/music/MusicFloatManager;->B(Lcom/transsion/player/mediasession/MediaItem;)V

    invoke-interface {v0, v1}, Lcom/transsion/player/orplayer/g;->setDataSource(Lao/e;)V

    :cond_10
    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/BaseLayer;->H()Lcom/transsion/player/orplayer/g;

    move-result-object p1

    if-eqz p1, :cond_11

    invoke-interface {p1}, Lcom/transsion/player/orplayer/g;->prepare()V

    :cond_11
    :goto_1
    return-void
.end method

.method public s()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/a0;->w:Lcom/transsion/postdetail/layer/local/j1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/postdetail/layer/local/j1;->d()V

    :cond_0
    return-void
.end method

.method public s1(Landroid/view/MotionEvent;Z)V
    .locals 1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/transsion/postdetail/layer/local/a0;->P:Z

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Lcom/transsion/postdetail/layer/BaseLayer;->P(Z)V

    invoke-virtual {p0, p1}, Lcom/transsion/postdetail/layer/local/a0;->u2(Z)V

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/BaseLayer;->H()Lcom/transsion/player/orplayer/g;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/transsion/player/orplayer/g;->pause()V

    :cond_0
    iget-object p2, p0, Lcom/transsion/postdetail/layer/local/a0;->k:Landroidx/fragment/app/Fragment;

    instance-of v0, p2, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    if-eqz v0, :cond_1

    check-cast p2, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->d3()V

    :cond_2
    invoke-virtual {p0, p1}, Lcom/transsion/postdetail/layer/local/a0;->J2(Z)V

    return-void
.end method

.method public final s2(Ljava/lang/String;)V
    .locals 8

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->j3()Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    sget v1, Lcom/transsion/postdetail/R$id;->id_local_video_cover:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/transsion/postdetail/layer/local/a0;->k:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->j3()Landroid/widget/FrameLayout;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    invoke-virtual {p0, v0}, Lcom/transsion/postdetail/layer/BaseLayer;->K(Landroid/widget/ImageView;)V

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/BaseLayer;->G()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/transsion/core/utils/e;->f()I

    move-result v3

    sget-object v1, Lej/f;->a:Lej/f$a;

    if-nez p1, :cond_2

    const-string p1, ""

    :cond_2
    move-object v2, p1

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Lej/f$a;->e(Lej/f$a;Ljava/lang/String;IZZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Lej/a;->a(Landroid/view/View;)Lej/d;

    move-result-object v1

    invoke-virtual {v1, p1}, Lej/d;->q(Ljava/lang/String;)Lej/c;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :cond_3
    return-void
.end method

.method public setOnSeekCompleteListener()V
    .locals 0

    invoke-static {p0}, Lcom/transsion/player/orplayer/f$a;->K(Lcom/transsion/player/orplayer/f;)V

    return-void
.end method

.method public t(Z)V
    .locals 9

    invoke-static {p0, p1}, Lvo/d$a;->d(Lvo/d;Z)V

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/postdetail/layer/local/a0;->k:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/transsion/postdetail/layer/local/a0;->V0()Lpx/a;

    move-result-object v0

    if-eqz v0, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    if-lt v1, v2, :cond_1

    sget-object v3, Llg/a;->a:Llg/a$a;

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v4, "VideoFloat-pip"

    const-string v5, "onPictureInPictureModeChanged local--- updateData"

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    sget-object v1, Lox/e;->a:Lox/e$a;

    invoke-virtual {v1}, Lox/e$a;->b()Lox/e;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lox/e;->h(Landroidx/fragment/app/FragmentActivity;Lpx/a;)V

    nop

    :cond_1
    :goto_0
    return-void
.end method

.method protected final t2(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/postdetail/layer/local/a0;->q:I

    return-void
.end method

.method public u(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lvo/d$a;->j(Lvo/d;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public u2(Z)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/transsion/postdetail/layer/local/a0;->W1(Z)V

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->f2()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->f2()Landroid/widget/ImageView;

    move-result-object p1

    if-eqz p1, :cond_2

    sget v0, Lcom/transsion/baseui/R$mipmap;->icon_player_pause:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->f2()Landroid/widget/ImageView;

    move-result-object p1

    if-eqz p1, :cond_2

    sget v0, Lcom/transsion/baseui/R$mipmap;->icon_player_play:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public updateTitle(Ljava/lang/String;)V
    .locals 1

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->W2()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public v(Z)V
    .locals 3

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/transsion/postdetail/layer/local/a0;->w1(Z)V

    iput-boolean p1, p0, Lcom/transsion/postdetail/layer/local/a0;->y:Z

    iget-object p1, p0, Lcom/transsion/postdetail/layer/local/a0;->B:Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/BaseLayer;->J()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/BaseLayer;->H()Lcom/transsion/player/orplayer/g;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/transsion/player/orplayer/g;->play()V

    :cond_0
    iget-object p1, p0, Lcom/transsion/postdetail/layer/local/a0;->B:Landroid/view/View;

    if-eqz p1, :cond_2

    invoke-static {p1}, Ljg/c;->g(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/transsion/postdetail/layer/local/a0;->U0()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/a0;->Z:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    return-void
.end method

.method protected final v1(Z)V
    .locals 3

    invoke-static {}, Lcom/blankj/utilcode/util/c;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/transsion/postdetail/layer/local/a0;->x1()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/BaseLayer;->H()Lcom/transsion/player/orplayer/g;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/transsion/player/orplayer/g;->isPlaying()Z

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/transsion/postdetail/layer/local/a0;->X0()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/a0;->V:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/transsion/postdetail/layer/local/a0;->X0()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/a0;->V:Ljava/lang/Runnable;

    const-wide/16 v1, 0xbb8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method protected final v2(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/postdetail/layer/local/a0;->K:Ljava/lang/String;

    return-void
.end method

.method public w(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V
    .locals 0

    invoke-static {p0, p1}, Lvo/d$a;->m(Lvo/d;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    return-void
.end method

.method public x(Ljava/lang/String;)V
    .locals 1

    const-string v0, "speed"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/postdetail/layer/local/a0;->x:Ljava/lang/String;

    return-void
.end method

.method public y(Landroid/view/View;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lvo/d$a;->b(Lvo/d;Landroid/view/View;Z)V

    return-void
.end method

.method public z()V
    .locals 4

    invoke-static {p0}, Lvo/d$a;->e(Lvo/d;)V

    sget-object v0, Lox/c;->a:Lox/c;

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/BaseLayer;->H()Lcom/transsion/player/orplayer/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lox/c;->c(Lcom/transsion/player/orplayer/g;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/transsion/videofloat/manager/a0;->a:Lcom/transsion/videofloat/manager/a0;

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/BaseLayer;->H()Lcom/transsion/player/orplayer/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/videofloat/manager/a0;->c(Lcom/transsion/player/orplayer/g;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Llg/a;->a:Llg/a$a;

    iget-object v1, p0, Lcom/transsion/postdetail/layer/local/a0;->j:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "local \u64ad\u653e\u5668\u5728\u7f13\u5b58\u4e2d\uff0c\u8fd9\u91cc\u4e0d\u80fdrelease"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/BaseLayer;->H()Lcom/transsion/player/orplayer/g;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/transsion/postdetail/layer/local/a0;->H:Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getPlayingUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Lcom/transsion/player/orplayer/g;->release(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method protected final z0()V
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    iget-object v1, p0, Lcom/transsion/postdetail/layer/local/a0;->j:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget v2, p0, Lcom/transsion/postdetail/layer/local/a0;->p:I

    iget v3, p0, Lcom/transsion/postdetail/layer/local/a0;->q:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addLandSurface \u5bbd:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",\u9ad8:"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/BaseLayer;->I()Lcom/transsion/player/ui/ORPlayerView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/transsion/postdetail/layer/local/a0;->m2(Lcom/transsion/player/ui/ORPlayerView;)V

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->j3()Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/BaseLayer;->I()Lcom/transsion/player/ui/ORPlayerView;

    move-result-object v1

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method protected final z2(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/postdetail/layer/local/a0;->p:I

    return-void
.end method
