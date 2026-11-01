.class public Lcom/transsion/audio/view/EnFloatingView;
.super Lcom/transsion/audio/view/FloatingMagnetView;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/audio/view/EnFloatingView$f;
    }
.end annotation


# instance fields
.field private final h:Lbj/d;

.field private i:Ljava/util/List;

.field private j:I

.field private k:Lcom/transsion/audio/view/EnFloatingView$f;

.field l:Ljava/lang/String;

.field private m:Ljava/lang/Boolean;

.field n:Lcom/transsnet/downloader/bean/DownloadListBean;

.field private final o:Llj/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget v0, Lcom/transsion/audio/R$layout;->new_en_floating_view:I

    invoke-direct {p0, p1, v0}, Lcom/transsion/audio/view/EnFloatingView;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/transsion/audio/view/FloatingMagnetView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/transsion/audio/view/EnFloatingView;->i:Ljava/util/List;

    const/4 v1, 0x0

    iput v1, p0, Lcom/transsion/audio/view/EnFloatingView;->j:I

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/transsion/audio/view/EnFloatingView;->m:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/transsion/audio/view/EnFloatingView;->n:Lcom/transsnet/downloader/bean/DownloadListBean;

    new-instance v0, Lcom/transsion/audio/view/EnFloatingView$a;

    invoke-direct {v0, p0}, Lcom/transsion/audio/view/EnFloatingView$a;-><init>(Lcom/transsion/audio/view/EnFloatingView;)V

    iput-object v0, p0, Lcom/transsion/audio/view/EnFloatingView;->o:Llj/a;

    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    sget p1, Lcom/transsion/audio/R$id;->clRoot:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {p1}, Lbj/d;->a(Landroid/view/View;)Lbj/d;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audio/view/EnFloatingView;->h:Lbj/d;

    invoke-direct {p0}, Lcom/transsion/audio/view/EnFloatingView;->r()V

    invoke-direct {p0}, Lcom/transsion/audio/view/EnFloatingView;->s()V

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/transsion/audio/view/EnFloatingView;->q(Z)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private A()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/audio/view/EnFloatingView;->h:Lbj/d;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/CenterInside;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/bitmap/CenterInside;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    sget v2, Lcom/transsion/audio/R$mipmap;->libui_audio_playing_2:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->optionalTransform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/RequestBuilder;

    new-instance v2, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawableTransformation;

    invoke-direct {v2, v0}, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawableTransformation;-><init>(Lcom/bumptech/glide/load/Transformation;)V

    const-class v0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;

    invoke-virtual {v1, v0, v2}, Lcom/bumptech/glide/request/BaseRequestOptions;->optionalTransform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    iget-object v1, p0, Lcom/transsion/audio/view/EnFloatingView;->h:Lbj/d;

    iget-object v1, v1, Lbj/d;->g:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    iget-object v0, p0, Lcom/transsion/audio/view/EnFloatingView;->h:Lbj/d;

    iget-object v0, v0, Lbj/d;->h:Landroidx/appcompat/widget/AppCompatImageView;

    sget v1, Lcom/transsion/audio/R$mipmap;->ic_audio_ctl_play:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    return-void
.end method

.method public static synthetic j(Lcom/transsion/audio/view/EnFloatingView;Lcom/transsnet/downloader/bean/DownloadListBean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/audio/view/EnFloatingView;->u(Lcom/transsnet/downloader/bean/DownloadListBean;)V

    return-void
.end method

.method public static synthetic k(Lcom/transsion/audio/view/EnFloatingView;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/audio/view/EnFloatingView;->t(Ljava/util/List;)V

    return-void
.end method

.method static bridge synthetic l(Lcom/transsion/audio/view/EnFloatingView;)Lbj/d;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/view/EnFloatingView;->h:Lbj/d;

    return-object p0
.end method

.method static bridge synthetic m(Lcom/transsion/audio/view/EnFloatingView;Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/view/EnFloatingView;->m:Ljava/lang/Boolean;

    return-void
.end method

.method static bridge synthetic n(Lcom/transsion/audio/view/EnFloatingView;Z)Landroid/widget/FrameLayout$LayoutParams;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/audio/view/EnFloatingView;->q(Z)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method private o()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/audio/view/EnFloatingView;->h:Lbj/d;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/transsion/audio/player/AudioPlayer;->i:Lcom/transsion/audio/player/AudioPlayer$a;

    invoke-virtual {v0}, Lcom/transsion/audio/player/AudioPlayer$a;->a()Lcom/transsion/audio/player/AudioPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/audio/player/AudioPlayer;->J()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/transsion/audio/player/AudioPlayer$a;->a()Lcom/transsion/audio/player/AudioPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/audio/player/AudioPlayer;->T()V

    iget-object v0, p0, Lcom/transsion/audio/view/EnFloatingView;->h:Lbj/d;

    iget-object v0, v0, Lbj/d;->h:Landroidx/appcompat/widget/AppCompatImageView;

    sget v1, Lcom/transsion/audio/R$mipmap;->ic_audio_ctl_pause:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/transsion/audio/view/d;->k()Lcom/transsion/audio/view/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/audio/view/d;->m()Lcom/transsion/baselib/db/audio/AudioBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/baselib/db/audio/AudioBean;->isChangeToLocalPath()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/transsion/baselib/db/audio/AudioBean;->setChangeToLocalPath(Z)V

    invoke-virtual {v0}, Lcom/transsion/audio/player/AudioPlayer$a;->a()Lcom/transsion/audio/player/AudioPlayer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/transsion/audio/player/AudioPlayer;->L(Lcom/transsion/baselib/db/audio/AudioBean;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/transsion/audio/player/AudioPlayer$a;->a()Lcom/transsion/audio/player/AudioPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/audio/player/AudioPlayer;->K()V

    :goto_0
    iget-object v0, p0, Lcom/transsion/audio/view/EnFloatingView;->h:Lbj/d;

    iget-object v0, v0, Lbj/d;->h:Landroidx/appcompat/widget/AppCompatImageView;

    sget v1, Lcom/transsion/audio/R$mipmap;->ic_audio_ctl_play:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    :goto_1
    return-void
.end method

.method private p()I
    .locals 3

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    const/high16 v2, 0x42a00000    # 80.0f

    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method private q(Z)Landroid/widget/FrameLayout$LayoutParams;
    .locals 4

    const/4 v0, -0x2

    if-eqz p1, :cond_0

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p1, v1, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    :goto_0
    const v0, 0x800053

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v1, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    invoke-direct {p0}, Lcom/transsion/audio/view/EnFloatingView;->p()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    return-object p1
.end method

.method private r()V
    .locals 1

    sget-object v0, Lcom/transsion/audio/viewmodel/HistoryListManager;->e:Lcom/transsion/audio/viewmodel/HistoryListManager$a;

    invoke-virtual {v0}, Lcom/transsion/audio/viewmodel/HistoryListManager$a;->b()Lcom/transsion/audio/viewmodel/HistoryListManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/audio/viewmodel/HistoryListManager;->r()V

    return-void
.end method

.method private s()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/audio/view/EnFloatingView;->h:Lbj/d;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lbj/d;->h:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/transsion/audio/view/EnFloatingView;->h:Lbj/d;

    iget-object v0, v0, Lbj/d;->f:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/transsion/audio/view/EnFloatingView;->h:Lbj/d;

    iget-object v0, v0, Lbj/d;->e:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/transsion/audio/view/EnFloatingView;->h:Lbj/d;

    iget-object v0, v0, Lbj/d;->i:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/transsion/audio/view/EnFloatingView;->h:Lbj/d;

    iget-object v0, v0, Lbj/d;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    sget-object v0, Lcom/transsnet/downloader/manager/p;->a:Lcom/transsnet/downloader/manager/p$a;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsnet/downloader/manager/p$a;->a(Landroid/content/Context;)Lcom/transsnet/downloader/manager/g;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/audio/view/EnFloatingView;->o:Llj/a;

    invoke-interface {v0, v1}, Lcom/transsnet/downloader/manager/g;->e(Llj/m0;)V

    return-void
.end method

.method private synthetic t(Ljava/util/List;)V
    .locals 2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iput-object p1, p0, Lcom/transsion/audio/view/EnFloatingView;->i:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/audio/view/EnFloatingView;->j:I

    iget-object v0, p0, Lcom/transsion/audio/view/EnFloatingView;->h:Lbj/d;

    iget-object v0, v0, Lbj/d;->f:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iget v1, p0, Lcom/transsion/audio/view/EnFloatingView;->j:I

    if-le p1, v1, :cond_0

    sget p1, Lcom/transsion/audio/R$mipmap;->ic_audio_next_enable:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/transsion/audio/R$mipmap;->ic_audio_next_disable:I

    :goto_0
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    :cond_1
    return-void
.end method

.method private synthetic u(Lcom/transsnet/downloader/bean/DownloadListBean;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/DownloadListBean;->getItems()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/DownloadListBean;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iput-object p1, p0, Lcom/transsion/audio/view/EnFloatingView;->n:Lcom/transsnet/downloader/bean/DownloadListBean;

    :cond_0
    return-void
.end method

.method private v()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/audio/view/EnFloatingView;->h:Lbj/d;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lbj/d;->h:Landroidx/appcompat/widget/AppCompatImageView;

    sget v1, Lcom/transsion/audio/R$mipmap;->ic_audio_ctl_pause:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/transsion/audio/view/EnFloatingView;->h:Lbj/d;

    iget-object v0, v0, Lbj/d;->g:Landroidx/appcompat/widget/AppCompatImageView;

    sget v1, Lcom/transsion/audio/R$mipmap;->ic_audio_right:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    return-void
.end method

.method private w()V
    .locals 28

    move-object/from16 v0, p0

    sget-object v1, Lcom/transsion/audio/player/AudioPlayer;->i:Lcom/transsion/audio/player/AudioPlayer$a;

    invoke-virtual {v1}, Lcom/transsion/audio/player/AudioPlayer$a;->a()Lcom/transsion/audio/player/AudioPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/audio/player/AudioPlayer;->T()V

    invoke-static {}, Lcom/transsion/audio/view/d;->k()Lcom/transsion/audio/view/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/audio/view/d;->m()Lcom/transsion/baselib/db/audio/AudioBean;

    move-result-object v1

    const-class v2, Lcom/transsion/room/api/IAudioApi;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/transsion/baselib/db/audio/AudioBean;->getSubjectId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, v0, Lcom/transsion/audio/view/EnFloatingView;->n:Lcom/transsnet/downloader/bean/DownloadListBean;

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/transsnet/downloader/bean/DownloadListBean;->getItems()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, v0, Lcom/transsion/audio/view/EnFloatingView;->n:Lcom/transsnet/downloader/bean/DownloadListBean;

    invoke-virtual {v5}, Lcom/transsnet/downloader/bean/DownloadListBean;->getItems()Ljava/util/List;

    move-result-object v5

    move v6, v3

    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, -0x1

    if-ge v6, v7, :cond_1

    invoke-virtual {v1}, Lcom/transsion/baselib/db/audio/AudioBean;->getPostId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/transsion/moviedetailapi/DownloadItem;

    invoke-virtual {v9}, Lcom/transsion/moviedetailapi/DownloadItem;->getPostId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    move v6, v8

    :goto_1
    if-eq v6, v8, :cond_4

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    if-ge v6, v1, :cond_4

    add-int/2addr v6, v4

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/moviedetailapi/DownloadItem;

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/DownloadItem;->getUrl()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lcom/transsion/audio/view/EnFloatingView;->n:Lcom/transsnet/downloader/bean/DownloadListBean;

    invoke-virtual {v6}, Lcom/transsnet/downloader/bean/DownloadListBean;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    move-result-object v6

    invoke-virtual {v6}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    move-result-object v9

    new-instance v6, Lcom/transsion/baselib/db/audio/AudioBean;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v5, ""

    :cond_2
    move-object v8, v5

    const-wide/16 v17, 0x0

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/DownloadItem;->getSize()Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/DownloadItem;->getUrl()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/DownloadItem;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/DownloadItem;->getResourceId()Ljava/lang/String;

    move-result-object v20

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/DownloadItem;->getPostId()Ljava/lang/String;

    move-result-object v21

    iget-object v5, v0, Lcom/transsion/audio/view/EnFloatingView;->n:Lcom/transsnet/downloader/bean/DownloadListBean;

    invoke-virtual {v5}, Lcom/transsnet/downloader/bean/DownloadListBean;->getSubjectId()Ljava/lang/String;

    move-result-object v22

    iget-object v5, v0, Lcom/transsion/audio/view/EnFloatingView;->n:Lcom/transsnet/downloader/bean/DownloadListBean;

    invoke-virtual {v5}, Lcom/transsnet/downloader/bean/DownloadListBean;->getGroupId()Ljava/lang/String;

    move-result-object v23

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/DownloadItem;->getSe()I

    move-result v26

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/DownloadItem;->getEp()I

    move-result v27

    const-string v14, ""

    const-string v18, ""

    const-string v19, ""

    const/16 v24, 0x0

    const-string v25, ""

    move-object v7, v6

    invoke-direct/range {v7 .. v27}, Lcom/transsion/baselib/db/audio/AudioBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;II)V

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/room/api/IAudioApi;

    invoke-interface {v1, v6, v4}, Lcom/transsion/room/api/IAudioApi;->d(Lcom/transsion/baselib/db/audio/AudioBean;Z)V

    goto :goto_2

    :cond_3
    iget-object v1, v0, Lcom/transsion/audio/view/EnFloatingView;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v4

    iget v5, v0, Lcom/transsion/audio/view/EnFloatingView;->j:I

    if-le v1, v5, :cond_4

    iget-object v1, v0, Lcom/transsion/audio/view/EnFloatingView;->i:Ljava/util/List;

    add-int/2addr v5, v4

    iput v5, v0, Lcom/transsion/audio/view/EnFloatingView;->j:I

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/baselib/db/audio/AudioBean;

    if-eqz v1, :cond_4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/room/api/IAudioApi;

    invoke-interface {v2, v1, v4}, Lcom/transsion/room/api/IAudioApi;->d(Lcom/transsion/baselib/db/audio/AudioBean;Z)V

    :cond_4
    :goto_2
    return-void
.end method

.method private x()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/audio/view/EnFloatingView;->k:Lcom/transsion/audio/view/EnFloatingView$f;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/transsion/audio/view/EnFloatingView$f;->a(Landroid/view/ViewGroup;)V

    :cond_0
    sget-object v0, Lcom/transsion/audio/player/AudioPlayer;->i:Lcom/transsion/audio/player/AudioPlayer$a;

    invoke-virtual {v0}, Lcom/transsion/audio/player/AudioPlayer$a;->a()Lcom/transsion/audio/player/AudioPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/audio/player/AudioPlayer;->q()V

    sget-object v0, Lcom/transsnet/downloader/manager/p;->a:Lcom/transsnet/downloader/manager/p$a;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsnet/downloader/manager/p$a;->a(Landroid/content/Context;)Lcom/transsnet/downloader/manager/g;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/audio/view/EnFloatingView;->o:Llj/a;

    invoke-interface {v0, v1}, Lcom/transsnet/downloader/manager/g;->x(Llj/m0;)V

    return-void
.end method

.method private y(Z)V
    .locals 3

    invoke-static {}, Lcom/transsion/audio/view/d;->k()Lcom/transsion/audio/view/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/audio/view/d;->m()Lcom/transsion/baselib/db/audio/AudioBean;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/transsion/audio/view/EnFloatingView;->h:Lbj/d;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/transsion/baselib/db/audio/AudioBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/transsion/baselib/db/audio/AudioBean;->getDesc()Ljava/lang/String;

    move-result-object v1

    :cond_1
    iget-object v2, p0, Lcom/transsion/audio/view/EnFloatingView;->h:Lbj/d;

    iget-object v2, v2, Lbj/d;->k:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/transsion/baselib/db/audio/AudioBean;->getReadProcess()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0}, Lcom/transsion/baselib/db/audio/AudioBean;->getDuration()Ljava/lang/Long;

    move-result-object v0

    if-eqz v1, :cond_4

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    const-string p1, "00:00/00:00"

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ldj/a;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ldj/a;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-object v0, p0, Lcom/transsion/audio/view/EnFloatingView;->h:Lbj/d;

    iget-object v0, v0, Lbj/d;->l:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    :catch_0
    :cond_4
    :goto_1
    return-void
.end method

.method private z()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/audio/view/EnFloatingView;->k:Lcom/transsion/audio/view/EnFloatingView$f;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/transsion/audio/view/EnFloatingView$f;->b(Landroid/view/ViewGroup;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public attach(Landroid/content/Context;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/audio/view/EnFloatingView;->h:Lbj/d;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/transsion/audio/viewmodel/HistoryListManager;->e:Lcom/transsion/audio/viewmodel/HistoryListManager$a;

    invoke-virtual {v0}, Lcom/transsion/audio/viewmodel/HistoryListManager$a;->b()Lcom/transsion/audio/viewmodel/HistoryListManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/audio/viewmodel/HistoryListManager;->p()Landroidx/lifecycle/b0;

    move-result-object v1

    check-cast p1, Landroidx/lifecycle/u;

    new-instance v2, Lcom/transsion/audio/view/a;

    invoke-direct {v2, p0}, Lcom/transsion/audio/view/a;-><init>(Lcom/transsion/audio/view/EnFloatingView;)V

    invoke-virtual {v1, p1, v2}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    invoke-virtual {v0}, Lcom/transsion/audio/viewmodel/HistoryListManager$a;->b()Lcom/transsion/audio/viewmodel/HistoryListManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/audio/viewmodel/HistoryListManager;->v()Landroidx/lifecycle/b0;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/u;

    new-instance v2, Lcom/transsion/audio/view/b;

    invoke-direct {v2, p0}, Lcom/transsion/audio/view/b;-><init>(Lcom/transsion/audio/view/EnFloatingView;)V

    invoke-virtual {p1, v1, v2}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    invoke-virtual {v0}, Lcom/transsion/audio/viewmodel/HistoryListManager$a;->b()Lcom/transsion/audio/viewmodel/HistoryListManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/audio/viewmodel/HistoryListManager;->r()V

    return-void
.end method

.method public expanded()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/audio/view/EnFloatingView;->h:Lbj/d;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lbj/d;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/audio/view/EnFloatingView;->h:Lbj/d;

    iget-object v0, v0, Lbj/d;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/transsion/audio/view/EnFloatingView;->q(Z)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public expandedAnimation()V
    .locals 7

    iget-object v0, p0, Lcom/transsion/audio/view/EnFloatingView;->h:Lbj/d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/audio/view/EnFloatingView;->m:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v3, 0x12c

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v1, Lcom/transsion/audio/view/EnFloatingView$b;

    invoke-direct {v1, p0}, Lcom/transsion/audio/view/EnFloatingView$b;-><init>(Lcom/transsion/audio/view/EnFloatingView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/transsion/audio/view/EnFloatingView;->h:Lbj/d;

    iget-object v1, v1, Lbj/d;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    new-instance v1, Landroid/view/animation/TranslateAnimation;

    sget-object v5, Loh/h;->a:Loh/h;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6}, Loh/h;->e(Landroid/content/Context;)I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-direct {v1, v5, v2, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    new-instance v2, Lcom/transsion/audio/view/EnFloatingView$c;

    invoke-direct {v2, p0}, Lcom/transsion/audio/view/EnFloatingView$c;-><init>(Lcom/transsion/audio/view/EnFloatingView;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v1, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v2, p0, Lcom/transsion/audio/view/EnFloatingView;->h:Lbj/d;

    iget-object v2, v2, Lbj/d;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    new-instance v2, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v2, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v2}, Landroid/view/animation/Animation;->startNow()V

    :cond_1
    :goto_0
    return-void
.end method

.method public isPackUp()Z
    .locals 3

    iget-object v0, p0, Lcom/transsion/audio/view/EnFloatingView;->h:Lbj/d;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, v0, Lbj/d;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method protected onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/transsion/audio/R$id;->iv_play:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/transsion/audio/view/EnFloatingView;->o()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/transsion/audio/R$id;->iv_next:I

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/transsion/audio/view/EnFloatingView;->w()V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/transsion/audio/R$id;->iv_history:I

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lcom/transsion/audio/view/EnFloatingView;->z()V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/transsion/audio/R$id;->iv_remove:I

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Lcom/transsion/audio/view/EnFloatingView;->x()V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/transsion/audio/R$id;->clPackUp:I

    if-ne p1, v0, :cond_4

    invoke-virtual {p0}, Lcom/transsion/audio/view/EnFloatingView;->expandedAnimation()V

    :cond_4
    :goto_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public onProgress(I)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/audio/view/EnFloatingView;->h:Lbj/d;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lbj/d;->j:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/transsion/audio/view/EnFloatingView;->y(Z)V

    return-void
.end method

.method public onSlideTheLeft()V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/audio/view/EnFloatingView;->packUpAnimation()V

    return-void
.end method

.method public onStateChanged(I)V
    .locals 1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/transsion/audio/view/EnFloatingView;->v()V

    invoke-direct {p0}, Lcom/transsion/audio/view/EnFloatingView;->w()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/transsion/audio/view/EnFloatingView;->v()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/transsion/audio/view/EnFloatingView;->A()V

    :goto_0
    return-void
.end method

.method public onViewClick()V
    .locals 4

    sget-object v0, Lcom/transsion/baselib/report/l;->a:Lcom/transsion/baselib/report/l;

    invoke-virtual {v0}, Lcom/transsion/baselib/report/l;->o()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PostDetailActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/transsion/audio/view/d;->k()Lcom/transsion/audio/view/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/audio/view/d;->m()Lcom/transsion/baselib/db/audio/AudioBean;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {v0}, Lcom/transsion/baselib/db/audio/AudioBean;->getPostId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v0, Luh/b;->a:Luh/b$a;

    const-string v1, "This page is unavailable"

    invoke-virtual {v0, v1}, Luh/b$a;->e(Ljava/lang/CharSequence;)V

    return-void

    :cond_3
    const-string v1, "/post/detail"

    invoke-static {v1}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object v1

    const-string v2, "page_from"

    const-string v3, "audio_list"

    invoke-virtual {v1, v2, v3}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v0}, Lcom/transsion/baselib/db/audio/AudioBean;->getPostId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object v0

    sget-object v1, Lcom/transsion/moviedetailapi/bean/MediaType;->AUDIO:Lcom/transsion/moviedetailapi/bean/MediaType;

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/MediaType;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "media_type"

    invoke-virtual {v0, v2, v1}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object v0

    const-string v1, "from_comment"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/therouter/router/Navigator;->z(Ljava/lang/String;Z)Lcom/therouter/router/Navigator;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/therouter/router/Navigator;->r(Landroid/content/Context;)V

    return-void
.end method

.method public packUp()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/audio/view/EnFloatingView;->h:Lbj/d;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lbj/d;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/audio/view/EnFloatingView;->h:Lbj/d;

    iget-object v0, v0, Lbj/d;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, v1}, Lcom/transsion/audio/view/EnFloatingView;->q(Z)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public packUpAnimation()V
    .locals 7

    iget-object v0, p0, Lcom/transsion/audio/view/EnFloatingView;->h:Lbj/d;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lbj/d;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/transsion/audio/view/EnFloatingView;->m:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/transsion/audio/view/d;->k()Lcom/transsion/audio/view/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/audio/view/d;->o()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v3, 0x12c

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v1, Lcom/transsion/audio/view/EnFloatingView$d;

    invoke-direct {v1, p0}, Lcom/transsion/audio/view/EnFloatingView$d;-><init>(Lcom/transsion/audio/view/EnFloatingView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/transsion/audio/view/EnFloatingView;->h:Lbj/d;

    iget-object v1, v1, Lbj/d;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    new-instance v1, Landroid/view/animation/TranslateAnimation;

    sget-object v5, Loh/h;->a:Loh/h;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6}, Loh/h;->e(Landroid/content/Context;)I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-direct {v1, v2, v5, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    new-instance v2, Lcom/transsion/audio/view/EnFloatingView$e;

    invoke-direct {v2, p0}, Lcom/transsion/audio/view/EnFloatingView$e;-><init>(Lcom/transsion/audio/view/EnFloatingView;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v1, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v2, p0, Lcom/transsion/audio/view/EnFloatingView;->h:Lbj/d;

    iget-object v2, v2, Lbj/d;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    new-instance v2, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v2, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v2}, Landroid/view/animation/Animation;->startNow()V

    :cond_2
    :goto_0
    return-void
.end method

.method public prepare()V
    .locals 6

    invoke-static {}, Lcom/transsion/audio/view/d;->k()Lcom/transsion/audio/view/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/audio/view/d;->m()Lcom/transsion/baselib/db/audio/AudioBean;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/transsion/audio/view/EnFloatingView;->h:Lbj/d;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lcom/transsion/baselib/db/audio/AudioBean;->getCover()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/audio/view/EnFloatingView;->l:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/transsion/baselib/db/audio/AudioBean;->getReadProcess()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0}, Lcom/transsion/baselib/db/audio/AudioBean;->getDuration()Ljava/lang/Long;

    move-result-object v0

    if-eqz v1, :cond_4

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_2

    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    div-long/2addr v1, v3

    const-wide/16 v3, 0x64

    mul-long/2addr v1, v3

    invoke-static {v1, v2}, Lcom/cloud/hisavana/sdk/common/util/l;->a(J)I

    move-result v0

    iget-object v1, p0, Lcom/transsion/audio/view/EnFloatingView;->h:Lbj/d;

    iget-object v1, v1, Lbj/d;->j:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/transsion/audio/view/EnFloatingView;->h:Lbj/d;

    iget-object v0, v0, Lbj/d;->f:Landroidx/appcompat/widget/AppCompatImageView;

    iget-object v1, p0, Lcom/transsion/audio/view/EnFloatingView;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iget v3, p0, Lcom/transsion/audio/view/EnFloatingView;->j:I

    if-le v1, v3, :cond_3

    sget v1, Lcom/transsion/audio/R$mipmap;->ic_audio_next_enable:I

    goto :goto_0

    :cond_3
    sget v1, Lcom/transsion/audio/R$mipmap;->ic_audio_next_disable:I

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    invoke-direct {p0, v2}, Lcom/transsion/audio/view/EnFloatingView;->y(Z)V

    :cond_4
    :goto_1
    return-void
.end method

.method public setOnOptionListener(Lcom/transsion/audio/view/EnFloatingView$f;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/view/EnFloatingView;->k:Lcom/transsion/audio/view/EnFloatingView$f;

    return-void
.end method
