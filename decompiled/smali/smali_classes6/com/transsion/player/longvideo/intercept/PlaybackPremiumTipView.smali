.class public final Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView;
.super Landroid/widget/FrameLayout;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u00002\u00020\u0001B\u001d\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J-\u0010\u000e\u001a\u00020\r2\u0008\u0010\t\u001a\u0004\u0018\u00010\u00082\u0008\u0010\n\u001a\u0004\u0018\u00010\u00082\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\r\u0010\u0010\u001a\u00020\r\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\r\u0010\u0012\u001a\u00020\r\u00a2\u0006\u0004\u0008\u0012\u0010\u0011J\u001f\u0010\u0015\u001a\u00020\r2\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u000c\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J3\u0010\u0019\u001a\u00020\r2\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u00132\u0008\u0010\t\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u000c\u001a\u00020\u000b2\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0017\u00a2\u0006\u0004\u0008\u0019\u0010\u001aR\u0017\u0010 \u001a\u00020\u001b8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001c\u0010\u001d\u001a\u0004\u0008\u001e\u0010\u001fR\u0014\u0010$\u001a\u00020!8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\"\u0010#R\u001b\u0010*\u001a\u00020%8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008&\u0010\'\u001a\u0004\u0008(\u0010)R\u0016\u0010-\u001a\u00020\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008+\u0010,\u00a8\u0006."
    }
    d2 = {
        "Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView;",
        "Landroid/widget/FrameLayout;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "",
        "pageName",
        "subjectId",
        "Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;",
        "manager",
        "",
        "g",
        "(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;)V",
        "destroy",
        "()V",
        "setPremiumTip",
        "Lgo/a;",
        "bean",
        "setPreviewing",
        "(Lgo/a;Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;)V",
        "Landroid/widget/TextView;",
        "tvUnlockHD",
        "setPreviewingEnded",
        "(Lgo/a;Ljava/lang/String;Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;Landroid/widget/TextView;)V",
        "Lho/r;",
        "a",
        "Lho/r;",
        "getBinding",
        "()Lho/r;",
        "binding",
        "Landroid/os/Handler;",
        "b",
        "Landroid/os/Handler;",
        "mHandler",
        "Lcom/transsion/baselib/db/video/PlaybackRecordDao;",
        "c",
        "Lkotlin/Lazy;",
        "getPlaybackRecordDao",
        "()Lcom/transsion/baselib/db/video/PlaybackRecordDao;",
        "playbackRecordDao",
        "d",
        "Ljava/lang/String;",
        "traceId",
        "LongVideo_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final a:Lho/r;

.field private final b:Landroid/os/Handler;

.field private final c:Lkotlin/Lazy;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, p0, p2}, Lho/r;->c(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lho/r;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView;->a:Lho/r;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView;->b:Landroid/os/Handler;

    new-instance p1, Lcom/transsion/player/longvideo/intercept/c0;

    invoke-direct {p1}, Lcom/transsion/player/longvideo/intercept/c0;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView;->c:Lkotlin/Lazy;

    const-string p1, ""

    iput-object p1, p0, Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView;->d:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static synthetic a()Lcom/transsion/baselib/db/video/PlaybackRecordDao;
    .locals 1

    invoke-static {}, Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView;->f()Lcom/transsion/baselib/db/video/PlaybackRecordDao;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getPlaybackRecordDao(Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView;)Lcom/transsion/baselib/db/video/PlaybackRecordDao;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView;->getPlaybackRecordDao()Lcom/transsion/baselib/db/video/PlaybackRecordDao;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getTraceId$p(Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView;->d:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$setClick(Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView;->g(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;)V

    return-void
.end method

.method public static final synthetic access$setTraceId$p(Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView;->d:Ljava/lang/String;

    return-void
.end method

.method public static synthetic b(Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView;->setPremiumTip$lambda$1(Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView;)V

    return-void
.end method

.method public static synthetic c(Ljava/lang/String;Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView;Ljava/lang/String;Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView;->h(Ljava/lang/String;Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView;Ljava/lang/String;Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Ljava/lang/String;Ljava/lang/String;Lgo/a;Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView;->j(Ljava/lang/String;Ljava/lang/String;Lgo/a;Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e(Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView;Lgo/a;Landroid/widget/TextView;Ljava/lang/String;Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView;->i(Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView;Lgo/a;Landroid/widget/TextView;Ljava/lang/String;Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;)V

    return-void
.end method

.method private static final f()Lcom/transsion/baselib/db/video/PlaybackRecordDao;
    .locals 3

    sget-object v0, Lcom/transsion/baselib/db/AppDatabase;->p:Lcom/transsion/baselib/db/AppDatabase$g1;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    const-string v2, "getApp(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/transsion/baselib/db/AppDatabase$g1;->b(Landroid/content/Context;)Lcom/transsion/baselib/db/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/baselib/db/AppDatabase;->v1()Lcom/transsion/baselib/db/video/PlaybackRecordDao;

    move-result-object v0

    return-object v0
.end method

.method private final g(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView;->a:Lho/r;

    iget-object v0, v0, Lho/r;->f:Landroid/widget/TextView;

    new-instance v1, Lcom/transsion/player/longvideo/intercept/e0;

    invoke-direct {v1, p1, p0, p2, p3}, Lcom/transsion/player/longvideo/intercept/e0;-><init>(Ljava/lang/String;Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView;Ljava/lang/String;Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private final getPlaybackRecordDao()Lcom/transsion/baselib/db/video/PlaybackRecordDao;
    .locals 1

    iget-object v0, p0, Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView;->c:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/baselib/db/video/PlaybackRecordDao;

    return-object v0
.end method

.method private static final h(Ljava/lang/String;Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView;Ljava/lang/String;Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;Landroid/view/View;)V
    .locals 14

    move-object v0, p1

    sget-object v1, Lcom/transsion/baselib/helper/f;->a:Lcom/transsion/baselib/helper/f;

    if-nez p0, :cond_0

    const-string v2, ""

    goto :goto_0

    :cond_0
    move-object v2, p0

    :goto_0
    iget-object v4, v0, Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView;->d:Ljava/lang/String;

    const/4 v6, 0x0

    const-string v3, "player/resolution_upgrade"

    move-object/from16 v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/transsion/baselib/helper/f;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    if-eqz p3, :cond_1

    iget-object v10, v0, Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView;->d:Ljava/lang/String;

    const/16 v12, 0x8

    const/4 v13, 0x0

    const/4 v8, 0x1

    const-string v9, "player/resolution_upgrade"

    const/4 v11, 0x0

    move-object/from16 v7, p3

    invoke-static/range {v7 .. v13}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->X(Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;ZLjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private static final i(Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView;Lgo/a;Landroid/widget/TextView;Ljava/lang/String;Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;)V
    .locals 6

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    sget-object p0, Lti/n;->a:Lti/n;

    invoke-virtual {p0}, Lti/n;->b()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/transsion/baselib/helper/f;->a:Lcom/transsion/baselib/helper/f;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lgo/a;->i()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    const-string v1, ""

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lgo/a;->o()Ljava/lang/String;

    move-result-object v2

    :goto_0
    move-object v4, v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    :goto_1
    const/4 v5, 0x0

    const-string v2, "player/unlock_hd"

    move-object v3, p0

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/baselib/helper/f;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    if-eqz p2, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    if-eqz p2, :cond_4

    new-instance v0, Lcom/transsion/player/longvideo/intercept/g0;

    invoke-direct {v0, p3, p0, p1, p4}, Lcom/transsion/player/longvideo/intercept/g0;-><init>(Ljava/lang/String;Ljava/lang/String;Lgo/a;Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    return-void
.end method

.method private static final j(Ljava/lang/String;Ljava/lang/String;Lgo/a;Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;Landroid/view/View;)V
    .locals 13

    sget-object v0, Lcom/transsion/baselib/helper/f;->a:Lcom/transsion/baselib/helper/f;

    if-nez p0, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    move-object v1, p0

    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lgo/a;->o()Ljava/lang/String;

    move-result-object v2

    :goto_1
    move-object v4, v2

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :goto_2
    const/4 v5, 0x0

    const-string v2, "player/unlock_hd"

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/baselib/helper/f;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v11, 0x8

    const/4 v12, 0x0

    const/4 v7, 0x1

    const-string v8, "player/unlock_hd"

    const/4 v10, 0x0

    move-object/from16 v6, p3

    move-object v9, p1

    invoke-static/range {v6 .. v12}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->X(Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;ZLjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method private static final setPremiumTip$lambda$1(Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView;)V
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView;->b:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final getBinding()Lho/r;
    .locals 1

    iget-object v0, p0, Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView;->a:Lho/r;

    return-object v0
.end method

.method public final setPremiumTip()V
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "premium_p"

    const-string v2, "PlaybackPremiumTipView --> setPremiumTip() --> \u4f1a\u5458\u63d0\u793a,3\u79d2\u81ea\u52a8\u6d88\u5931"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView;->a:Lho/r;

    iget-object v1, v1, Lho/r;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView;->a:Lho/r;

    iget-object v0, v0, Lho/r;->c:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Lcom/transsion/player/longvideo/intercept/d0;

    invoke-direct {v0, p0}, Lcom/transsion/player/longvideo/intercept/d0;-><init>(Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView;)V

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final setPreviewing(Lgo/a;Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;)V
    .locals 8

    const-string v0, "manager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-static {v0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v0, Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView$setPreviewing$1$1;

    const/4 v7, 0x0

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView$setPreviewing$1$1;-><init>(Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView;Lgo/a;Lgo/a;Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    :cond_1
    return-void
.end method

.method public final setPreviewingEnded(Lgo/a;Ljava/lang/String;Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;Landroid/widget/TextView;)V
    .locals 8

    const-string v0, "manager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Llg/a;->a:Llg/a$a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PlaybackPremiumTipView --> setPreviewingEnded() --> \u8bd5\u770b\u63d0\u793a --> pageName = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " --> \u8bd5\u770b\u7ed3\u675f"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "premium_p"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView;->a:Lho/r;

    iget-object v0, v0, Lho/r;->d:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView;->a:Lho/r;

    iget-object v0, v0, Lho/r;->c:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lgo/a;->m()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Subject;->getVipInfo()Lcom/transsion/baselib/db/download/VipInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/VipInfo;->getRequireMemberType()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView;->a:Lho/r;

    iget-object v0, v0, Lho/r;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/transsion/postdetail/R$string;->p_v2_previewing:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView;->a:Lho/r;

    iget-object v0, v0, Lho/r;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/transsion/postdetail/R$string;->p_v2_unlock_full_access:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView;->a:Lho/r;

    iget-object v0, v0, Lho/r;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/transsion/postdetail/R$string;->p_v2_hd_preview_ended:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView;->a:Lho/r;

    iget-object v0, v0, Lho/r;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/transsion/postdetail/R$string;->p_v2_unlock_hd:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v0, p0, Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView;->b:Landroid/os/Handler;

    new-instance v7, Lcom/transsion/player/longvideo/intercept/f0;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p4

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/transsion/player/longvideo/intercept/f0;-><init>(Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView;Lgo/a;Landroid/widget/TextView;Ljava/lang/String;Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;)V

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v7, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lgo/a;->o()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    invoke-direct {p0, p2, p1, p3}, Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView;->g(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;)V

    return-void
.end method
