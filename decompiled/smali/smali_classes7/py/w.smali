.class public final Lpy/w;
.super Ljava/lang/Object;

# interfaces
.implements Lg4/a;


# instance fields
.field private final a:Lcom/transsion/ad/view/ScrollDetectFrameLayout;

.field public final b:Lcom/transsion/wrapperad/view/BiddingFloatingIrregularAnimationView;

.field public final c:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final d:Lcom/transsion/ad/view/ScrollDetectFrameLayout;

.field public final e:Landroid/widget/FrameLayout;

.field public final f:Landroidx/appcompat/widget/AppCompatImageView;

.field public final g:Lcom/transsnet/downloader/lottery/LotteryTipView;

.field public final h:Lcom/noober/background/view/BLTextView;

.field public final i:Lcom/transsion/wrapperad/view/DownloadTopIrregularView;

.field public final j:Lcom/tn/lib/widget/TnTextView;

.field public final k:Lcom/transsion/baseui/widget/GradientTextView;

.field public final l:Landroid/view/View;

.field public final m:Landroid/widget/ImageView;


# direct methods
.method private constructor <init>(Lcom/transsion/ad/view/ScrollDetectFrameLayout;Lcom/transsion/wrapperad/view/BiddingFloatingIrregularAnimationView;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/transsion/ad/view/ScrollDetectFrameLayout;Landroid/widget/FrameLayout;Landroidx/appcompat/widget/AppCompatImageView;Lcom/transsnet/downloader/lottery/LotteryTipView;Lcom/noober/background/view/BLTextView;Lcom/transsion/wrapperad/view/DownloadTopIrregularView;Lcom/tn/lib/widget/TnTextView;Lcom/transsion/baseui/widget/GradientTextView;Landroid/view/View;Landroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpy/w;->a:Lcom/transsion/ad/view/ScrollDetectFrameLayout;

    iput-object p2, p0, Lpy/w;->b:Lcom/transsion/wrapperad/view/BiddingFloatingIrregularAnimationView;

    iput-object p3, p0, Lpy/w;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p4, p0, Lpy/w;->d:Lcom/transsion/ad/view/ScrollDetectFrameLayout;

    iput-object p5, p0, Lpy/w;->e:Landroid/widget/FrameLayout;

    iput-object p6, p0, Lpy/w;->f:Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p7, p0, Lpy/w;->g:Lcom/transsnet/downloader/lottery/LotteryTipView;

    iput-object p8, p0, Lpy/w;->h:Lcom/noober/background/view/BLTextView;

    iput-object p9, p0, Lpy/w;->i:Lcom/transsion/wrapperad/view/DownloadTopIrregularView;

    iput-object p10, p0, Lpy/w;->j:Lcom/tn/lib/widget/TnTextView;

    iput-object p11, p0, Lpy/w;->k:Lcom/transsion/baseui/widget/GradientTextView;

    iput-object p12, p0, Lpy/w;->l:Landroid/view/View;

    iput-object p13, p0, Lpy/w;->m:Landroid/widget/ImageView;

    return-void
.end method

.method public static a(Landroid/view/View;)Lpy/w;
    .locals 17

    move-object/from16 v0, p0

    sget v1, Lcom/transsnet/downloader/R$id;->adFloatingView:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/transsion/wrapperad/view/BiddingFloatingIrregularAnimationView;

    if-eqz v5, :cond_0

    sget v1, Lcom/transsnet/downloader/R$id;->clContent:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v6, :cond_0

    move-object v7, v0

    check-cast v7, Lcom/transsion/ad/view/ScrollDetectFrameLayout;

    sget v1, Lcom/transsnet/downloader/R$id;->fl_container:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/FrameLayout;

    if-eqz v8, :cond_0

    sget v1, Lcom/transsnet/downloader/R$id;->iv_back:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v9, :cond_0

    sget v1, Lcom/transsnet/downloader/R$id;->lotteryTipView:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/transsnet/downloader/lottery/LotteryTipView;

    if-eqz v10, :cond_0

    sget v1, Lcom/transsnet/downloader/R$id;->speedUpTip:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/noober/background/view/BLTextView;

    if-eqz v11, :cond_0

    sget v1, Lcom/transsnet/downloader/R$id;->topIrregularView:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/transsion/wrapperad/view/DownloadTopIrregularView;

    if-eqz v12, :cond_0

    sget v1, Lcom/transsnet/downloader/R$id;->tv_title:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lcom/tn/lib/widget/TnTextView;

    if-eqz v13, :cond_0

    sget v1, Lcom/transsnet/downloader/R$id;->tv_transfer:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Lcom/transsion/baseui/widget/GradientTextView;

    if-eqz v14, :cond_0

    sget v1, Lcom/transsnet/downloader/R$id;->v_line:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v15

    if-eqz v15, :cond_0

    sget v1, Lcom/transsnet/downloader/R$id;->v_top_bg:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/ImageView;

    if-eqz v16, :cond_0

    new-instance v0, Lpy/w;

    move-object v3, v0

    move-object v4, v7

    invoke-direct/range {v3 .. v16}, Lpy/w;-><init>(Lcom/transsion/ad/view/ScrollDetectFrameLayout;Lcom/transsion/wrapperad/view/BiddingFloatingIrregularAnimationView;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/transsion/ad/view/ScrollDetectFrameLayout;Landroid/widget/FrameLayout;Landroidx/appcompat/widget/AppCompatImageView;Lcom/transsnet/downloader/lottery/LotteryTipView;Lcom/noober/background/view/BLTextView;Lcom/transsion/wrapperad/view/DownloadTopIrregularView;Lcom/tn/lib/widget/TnTextView;Lcom/transsion/baseui/widget/GradientTextView;Landroid/view/View;Landroid/widget/ImageView;)V

    return-object v0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static c(Landroid/view/LayoutInflater;)Lpy/w;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lpy/w;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lpy/w;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lpy/w;
    .locals 2

    sget v0, Lcom/transsnet/downloader/R$layout;->fragment_download_main:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lpy/w;->a(Landroid/view/View;)Lpy/w;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b()Lcom/transsion/ad/view/ScrollDetectFrameLayout;
    .locals 1

    iget-object v0, p0, Lpy/w;->a:Lcom/transsion/ad/view/ScrollDetectFrameLayout;

    return-object v0
.end method

.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lpy/w;->b()Lcom/transsion/ad/view/ScrollDetectFrameLayout;

    move-result-object v0

    return-object v0
.end method
