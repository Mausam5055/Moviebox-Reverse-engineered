.class public final Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$b;
    }
.end annotation


# instance fields
.field private final a:Lho/j;

.field private final b:Ljava/lang/String;

.field private c:Ljava/util/List;

.field private final d:Lcom/transsion/player/longvideo/helper/x;

.field private final e:Lkotlin/jvm/functions/Function1;

.field private f:Z

.field private g:Ljava/util/List;

.field private final h:Lcom/transsion/subtitle/VideoSubtitleControl;

.field private i:Z

.field private j:Lcom/transsion/baselib/db/download/DownloadBean;

.field private k:Lgo/a;

.field private l:Z

.field private m:Landroid/view/View;

.field private n:Landroid/view/ViewGroup;

.field private final o:Lcom/transsion/player/longvideo/helper/o0;

.field private final p:Lkotlinx/coroutines/n0;

.field private final q:Lkotlin/Lazy;

.field private final r:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Lho/j;Ljava/lang/String;Ljava/util/List;Lcom/transsion/player/longvideo/helper/x;Lkotlin/jvm/functions/Function1;Z)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    const-string v4, "viewBinding"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "dubs"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "callback"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->a:Lho/j;

    move-object/from16 v4, p2

    iput-object v4, v0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->b:Ljava/lang/String;

    iput-object v2, v0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->c:Ljava/util/List;

    iput-object v3, v0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->d:Lcom/transsion/player/longvideo/helper/x;

    move-object/from16 v2, p5

    iput-object v2, v0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->e:Lkotlin/jvm/functions/Function1;

    move/from16 v2, p6

    iput-boolean v2, v0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->f:Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->g:Ljava/util/List;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->l:Z

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v3

    invoke-static {v3}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v3

    iput-object v3, v0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->p:Lkotlinx/coroutines/n0;

    new-instance v3, Lcom/transsion/player/longvideo/helper/h0;

    invoke-direct {v3}, Lcom/transsion/player/longvideo/helper/h0;-><init>()V

    invoke-static {v3}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v3

    iput-object v3, v0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->q:Lkotlin/Lazy;

    new-instance v3, Lcom/transsion/player/longvideo/helper/j0;

    invoke-direct {v3}, Lcom/transsion/player/longvideo/helper/j0;-><init>()V

    invoke-static {v3}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v3

    iput-object v3, v0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->r:Lkotlin/Lazy;

    new-instance v3, Landroidx/lifecycle/v0;

    invoke-virtual/range {p1 .. p1}, Lho/j;->getRoot()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v15, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity"

    invoke-static {v5, v15}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Landroidx/fragment/app/FragmentActivity;

    invoke-direct {v3, v5}, Landroidx/lifecycle/v0;-><init>(Landroidx/lifecycle/y0;)V

    const-class v5, Lcom/transsion/player/longvideo/helper/o0;

    invoke-virtual {v3, v5}, Landroidx/lifecycle/v0;->a(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    move-result-object v3

    check-cast v3, Lcom/transsion/player/longvideo/helper/o0;

    iput-object v3, v0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->o:Lcom/transsion/player/longvideo/helper/o0;

    sget-object v5, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    invoke-virtual {v5}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v5

    const-string v6, "subtitle_land_guide"

    invoke-virtual {v5, v6, v2}, Lcom/tencent/mmkv/MMKV;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->l:Z

    invoke-virtual/range {p1 .. p1}, Lho/j;->getRoot()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v15}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, v2

    check-cast v6, Landroidx/fragment/app/FragmentActivity;

    sget-object v2, Lcom/transsion/baselib/helper/d;->a:Lcom/transsion/baselib/helper/d;

    invoke-virtual {v2}, Lcom/transsion/baselib/helper/d;->d()F

    move-result v8

    iget-object v9, v0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->c:Ljava/util/List;

    new-instance v2, Lcom/transsion/subtitle/VideoSubtitleControl;

    new-instance v10, Lcom/transsion/player/longvideo/helper/k0;

    invoke-direct {v10}, Lcom/transsion/player/longvideo/helper/k0;-><init>()V

    new-instance v11, Lcom/transsion/player/longvideo/helper/l0;

    invoke-direct {v11, v0}, Lcom/transsion/player/longvideo/helper/l0;-><init>(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;)V

    new-instance v12, Lcom/transsion/player/longvideo/helper/m0;

    invoke-direct {v12, v0}, Lcom/transsion/player/longvideo/helper/m0;-><init>(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;)V

    new-instance v13, Lcom/transsion/player/longvideo/helper/n0;

    invoke-direct {v13, v0}, Lcom/transsion/player/longvideo/helper/n0;-><init>(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;)V

    new-instance v14, Lcom/transsion/player/longvideo/helper/z;

    invoke-direct {v14, v0}, Lcom/transsion/player/longvideo/helper/z;-><init>(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;)V

    new-instance v7, Lcom/transsion/player/longvideo/helper/a0;

    invoke-direct {v7, v0}, Lcom/transsion/player/longvideo/helper/a0;-><init>(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;)V

    new-instance v5, Lcom/transsion/player/longvideo/helper/b0;

    invoke-direct {v5, v0}, Lcom/transsion/player/longvideo/helper/b0;-><init>(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;)V

    move-object/from16 v16, v5

    move-object v5, v2

    move-object/from16 v17, v7

    move-object/from16 v7, p2

    move-object v4, v15

    move-object/from16 v15, v17

    invoke-direct/range {v5 .. v16}, Lcom/transsion/subtitle/VideoSubtitleControl;-><init>(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;FLjava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    sget-object v5, Lcom/transsion/subtitle/helper/LocalVideoUiType;->MIDDLE:Lcom/transsion/subtitle/helper/LocalVideoUiType;

    invoke-virtual {v2, v5}, Lcom/transsion/subtitle/VideoSubtitleControl;->P(Lcom/transsion/subtitle/helper/LocalVideoUiType;)V

    new-instance v5, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$a;

    invoke-direct {v5, v0}, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$a;-><init>(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;)V

    invoke-virtual {v2, v5}, Lcom/transsion/subtitle/VideoSubtitleControl;->i0(Lhu/a;)V

    new-instance v5, Lcom/transsion/player/longvideo/helper/c0;

    invoke-direct {v5, v0}, Lcom/transsion/player/longvideo/helper/c0;-><init>(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;)V

    invoke-virtual {v2, v5}, Lcom/transsion/subtitle/VideoSubtitleControl;->e0(Lkotlin/jvm/functions/Function1;)V

    iput-object v2, v0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->h:Lcom/transsion/subtitle/VideoSubtitleControl;

    iget-boolean v2, v0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->f:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->l:Z

    :cond_0
    invoke-virtual {v3}, Lcom/transsion/player/longvideo/helper/o0;->b()Landroidx/lifecycle/b0;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lho/j;->getRoot()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroidx/fragment/app/FragmentActivity;

    new-instance v3, Lcom/transsion/player/longvideo/helper/i0;

    invoke-direct {v3, v0}, Lcom/transsion/player/longvideo/helper/i0;-><init>(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;)V

    new-instance v4, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$c;

    invoke-direct {v4, v3}, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$c;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v2, v1, v4}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    return-void
.end method

.method public synthetic constructor <init>(Lho/j;Ljava/lang/String;Ljava/util/List;Lcom/transsion/player/longvideo/helper/x;Lkotlin/jvm/functions/Function1;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_0

    const/4 p6, 0x1

    :cond_0
    move v6, p6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;-><init>(Lho/j;Ljava/lang/String;Ljava/util/List;Lcom/transsion/player/longvideo/helper/x;Lkotlin/jvm/functions/Function1;Z)V

    return-void
.end method

.method public static final synthetic A(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;)Lcom/transsion/subtitle/VideoSubtitleControl;
    .locals 0

    iget-object p0, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->h:Lcom/transsion/subtitle/VideoSubtitleControl;

    return-object p0
.end method

.method public static final synthetic B(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->g:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic C(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;)Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->N()Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic D(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;)Lcom/transsion/baselib/db/video/VideoDetailPlayDao;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->O()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;

    move-result-object p0

    return-object p0
.end method

.method private final E()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->g:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->l:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    sget-object v0, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    invoke-virtual {v0}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    const-string v2, "subtitle_is_search_downloaded"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mmkv/MMKV;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "subtitle_land_guide"

    if-eqz v1, :cond_2

    iput-boolean v3, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->l:Z

    invoke-virtual {v0}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    return-void

    :cond_2
    iput-boolean v3, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->l:Z

    invoke-virtual {v0}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->d:Lcom/transsion/player/longvideo/helper/x;

    const/4 v1, 0x1

    invoke-interface {v0, v1, v3}, Lcom/transsion/player/longvideo/helper/x;->b(ZZ)V

    return-void
.end method

.method private final F(Lcom/transsion/baselib/db/download/DownloadBean;)V
    .locals 8

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->i:Z

    sget-object v1, Llg/a;->a:Llg/a$a;

    sget-object v2, Lcom/transsion/baselib/report/a;->a:Lcom/transsion/baselib/report/a;

    invoke-virtual {v2}, Lcom/transsion/baselib/report/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getTotalTitleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubtitleResId()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u6d41\u5a92\u4f53\uff0c\u5f00\u59cb\u64ad\u653e\u68c0\u6d4b\u5b57\u5e55\uff0cname:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " subjectId:"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " subtitleResId:"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v0, Lcom/transsion/subtitle/h;->a:Lcom/transsion/subtitle/h$a;

    invoke-virtual {v0}, Lcom/transsion/subtitle/h$a;->b()Lcom/transsion/subtitle/h;

    move-result-object v0

    new-instance v1, Lcom/transsion/player/longvideo/helper/d0;

    invoke-direct {v1, p0}, Lcom/transsion/player/longvideo/helper/d0;-><init>(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;)V

    invoke-interface {v0, p1, v1}, Lcom/transsion/subtitle/h;->e(Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private static final G(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;Z)Lkotlin/Unit;
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->g:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->a:Lho/j;

    invoke-virtual {p0}, Lho/j;->getRoot()Landroid/view/View;

    move-result-object p0

    new-instance p1, Lcom/transsion/player/longvideo/helper/e0;

    invoke-direct {p1}, Lcom/transsion/player/longvideo/helper/e0;-><init>()V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final H()V
    .locals 0

    return-void
.end method

.method private final J()Landroid/widget/ImageView;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private final K()Landroid/widget/TextView;
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->a:Lho/j;

    iget-object v0, v0, Lho/j;->h:Lho/k;

    iget-object v0, v0, Lho/k;->x:Landroidx/appcompat/widget/AppCompatTextView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private final L()Landroid/widget/TextView;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private final N()Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;
    .locals 1

    iget-object v0, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->r:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;

    return-object v0
.end method

.method private final O()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;
    .locals 1

    iget-object v0, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->q:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/baselib/db/video/VideoDetailPlayDao;

    return-object v0
.end method

.method private static final P(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    iget-object p0, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->d:Lcom/transsion/player/longvideo/helper/x;

    invoke-interface {p0, p1}, Lcom/transsion/player/longvideo/helper/x;->f(Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private final Q(Lcom/transsion/baselib/db/download/DownloadBean;)V
    .locals 6

    iget-object v0, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->p:Lkotlinx/coroutines/n0;

    new-instance v3, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1;

    const/4 v1, 0x0

    invoke-direct {v3, p1, p0, v1}, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1;-><init>(Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method private final U(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->a:Lho/j;

    iget-object p1, p1, Lho/j;->h:Lho/k;

    iget-object p1, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->m:Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljg/c;->g(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private final V(Landroid/view/View;Z)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->d:Lcom/transsion/player/longvideo/helper/x;

    const/4 v0, 0x1

    invoke-interface {p1, v0, v0}, Lcom/transsion/player/longvideo/helper/x;->b(ZZ)V

    iget-object p1, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->d:Lcom/transsion/player/longvideo/helper/x;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    if-eqz p2, :cond_0

    sget p2, Lcom/transsion/subtitle/R$string;->subtitle_turn_on_toast:I

    goto :goto_0

    :cond_0
    sget p2, Lcom/transsion/subtitle/R$string;->subtitle_turn_off_toast:I

    :goto_0
    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "getString(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lcom/transsion/player/longvideo/helper/x;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->w(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private final a0(Lcom/transsion/subtitle/VideoSubtitleControl;)V
    .locals 8

    sget-object v7, Lcom/transsion/subtitle/helper/LocalVideoUiType;->MIDDLE:Lcom/transsion/subtitle/helper/LocalVideoUiType;

    invoke-direct {p0}, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->K()Landroid/widget/TextView;

    move-result-object v2

    iget-object v0, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->a:Lho/j;

    iget-object v3, v0, Lho/j;->t:Lcom/avery/subtitle/widget/SimpleSubtitleView;

    iget-object v4, v0, Lho/j;->s:Lcom/avery/subtitle/widget/SimpleSubtitleView;

    iget-object v5, v0, Lho/j;->e:Landroid/widget/FrameLayout;

    const/4 v6, 0x0

    move-object v0, p1

    move-object v1, v7

    invoke-virtual/range {v0 .. v6}, Lcom/transsion/subtitle/VideoSubtitleControl;->b0(Lcom/transsion/subtitle/helper/LocalVideoUiType;Landroid/widget/TextView;Lcom/avery/subtitle/widget/SimpleSubtitleView;Lcom/avery/subtitle/widget/SimpleSubtitleView;Landroid/view/ViewGroup;Z)V

    new-instance v0, Lcom/transsion/player/longvideo/helper/y;

    invoke-direct {v0, p0}, Lcom/transsion/player/longvideo/helper/y;-><init>(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;)V

    invoke-virtual {p1, v0}, Lcom/transsion/subtitle/VideoSubtitleControl;->k0(Lkotlin/jvm/functions/Function1;)V

    new-instance v0, Lcom/transsion/player/longvideo/helper/f0;

    invoke-direct {v0, p0}, Lcom/transsion/player/longvideo/helper/f0;-><init>(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;)V

    new-instance v1, Lcom/transsion/player/longvideo/helper/g0;

    invoke-direct {v1, p0}, Lcom/transsion/player/longvideo/helper/g0;-><init>(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;)V

    invoke-virtual {p1, v7, v0, v1}, Lcom/transsion/subtitle/VideoSubtitleControl;->F(Lcom/transsion/subtitle/helper/LocalVideoUiType;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static synthetic b()Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;
    .locals 1

    invoke-static {}, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->g0()Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;

    move-result-object v0

    return-object v0
.end method

.method private static final b0(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;Z)Lkotlin/Unit;
    .locals 4

    invoke-virtual {p0}, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->I()Landroid/view/View;

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
    invoke-direct {p0}, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->J()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_3

    if-nez p1, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    invoke-direct {p0}, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->L()Landroid/widget/TextView;

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

.method public static synthetic c(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;Ljava/lang/String;Ljava/lang/String;I)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->t(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;Ljava/lang/String;Ljava/lang/String;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final c0(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;Landroid/view/View;Z)Lkotlin/Unit;
    .locals 1

    const-string v0, "switchView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->V(Landroid/view/View;Z)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public static synthetic d()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;
    .locals 1

    invoke-static {}, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->k0()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;

    move-result-object v0

    return-object v0
.end method

.method private static final d0(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;Landroid/view/View;)Lkotlin/Unit;
    .locals 1

    const-string v0, "settingView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->U(Landroid/view/View;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public static synthetic e(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;Landroid/view/View;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->d0(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;Landroid/view/View;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;Lcom/transsion/moviedetailapi/bean/DubsInfo;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->u(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;Lcom/transsion/moviedetailapi/bean/DubsInfo;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->x(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final g0()Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;
    .locals 3

    sget-object v0, Lcom/transsion/baselib/db/AppDatabase;->p:Lcom/transsion/baselib/db/AppDatabase$g1;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    const-string v2, "getApp(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/transsion/baselib/db/AppDatabase$g1;->b(Landroid/content/Context;)Lcom/transsion/baselib/db/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/baselib/db/AppDatabase;->C1()Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic h()V
    .locals 0

    invoke-static {}, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->H()V

    return-void
.end method

.method public static synthetic i(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;Ljava/util/List;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->v(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;Ljava/util/List;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;Landroid/view/View;Z)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->c0(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;Landroid/view/View;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;ZZ)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->s(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;ZZ)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final k0()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;
    .locals 3

    sget-object v0, Lcom/transsion/baselib/db/AppDatabase;->p:Lcom/transsion/baselib/db/AppDatabase$g1;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    const-string v2, "getApp(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/transsion/baselib/db/AppDatabase$g1;->b(Landroid/content/Context;)Lcom/transsion/baselib/db/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/baselib/db/AppDatabase;->D1()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic l(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->P(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic m(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;Z)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->b0(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n(Z)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->r(Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic o(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;Leu/a;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->q(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;Leu/a;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic p(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;Z)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->G(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final q(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;Leu/a;)Lkotlin/Unit;
    .locals 0

    iget-object p0, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->h:Lcom/transsion/subtitle/VideoSubtitleControl;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/transsion/subtitle/VideoSubtitleControl;->O(Leu/a;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final r(Z)Lkotlin/Unit;
    .locals 0

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final s(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;ZZ)Lkotlin/Unit;
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->d:Lcom/transsion/player/longvideo/helper/x;

    invoke-interface {p0, v0, p2}, Lcom/transsion/player/longvideo/helper/x;->b(ZZ)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->d:Lcom/transsion/player/longvideo/helper/x;

    const/4 p1, 0x0

    invoke-interface {p0, p1, v0}, Lcom/transsion/player/longvideo/helper/x;->b(ZZ)V

    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final t(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;Ljava/lang/String;Ljava/lang/String;I)Lkotlin/Unit;
    .locals 2

    const-string v0, "lanName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lan"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->o:Lcom/transsion/player/longvideo/helper/o0;

    invoke-virtual {v0}, Lcom/transsion/player/longvideo/helper/o0;->d()Landroidx/lifecycle/b0;

    move-result-object v0

    new-instance v1, Lkotlin/Pair;

    invoke-direct {v1, p1, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->d:Lcom/transsion/player/longvideo/helper/x;

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/player/longvideo/helper/x;->g(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final u(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;Lcom/transsion/moviedetailapi/bean/DubsInfo;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->e:Lkotlin/jvm/functions/Function1;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final v(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;Ljava/util/List;)Lkotlin/Unit;
    .locals 1

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->o:Lcom/transsion/player/longvideo/helper/o0;

    invoke-virtual {v0}, Lcom/transsion/player/longvideo/helper/o0;->c()Landroidx/lifecycle/b0;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->d:Lcom/transsion/player/longvideo/helper/x;

    invoke-interface {p0, p1}, Lcom/transsion/player/longvideo/helper/x;->e(Ljava/util/List;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final w(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    iget-object p0, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->d:Lcom/transsion/player/longvideo/helper/x;

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-interface {p0, p1}, Lcom/transsion/player/longvideo/helper/x;->c(Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final x(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    iget-object p0, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->d:Lcom/transsion/player/longvideo/helper/x;

    invoke-interface {p0, p1, p2}, Lcom/transsion/player/longvideo/helper/x;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public static final synthetic y(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;Lcom/transsion/baselib/db/download/DownloadBean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->F(Lcom/transsion/baselib/db/download/DownloadBean;)V

    return-void
.end method

.method public static final synthetic z(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;)Lcom/transsion/player/longvideo/helper/x;
    .locals 0

    iget-object p0, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->d:Lcom/transsion/player/longvideo/helper/x;

    return-object p0
.end method


# virtual methods
.method public final I()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final M()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->h:Lcom/transsion/subtitle/VideoSubtitleControl;

    invoke-virtual {v0}, Lcom/transsion/subtitle/VideoSubtitleControl;->G()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final R()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->h:Lcom/transsion/subtitle/VideoSubtitleControl;

    invoke-virtual {v0}, Lcom/transsion/subtitle/VideoSubtitleControl;->N()V

    return-void
.end method

.method public final S()V
    .locals 9

    iget-boolean v0, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->i:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->j:Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->i:Z

    sget-object v2, Llg/a;->a:Llg/a$a;

    sget-object v3, Lcom/transsion/baselib/report/a;->a:Lcom/transsion/baselib/report/a;

    invoke-virtual {v3}, Lcom/transsion/baselib/report/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getTotalTitleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubtitleResId()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u6d41\u5a92\u4f53\uff0c\u7f51\u7edc\u8fde\u63a5\u6210\u529f\u5f00\u59cb\u68c0\u6d4b\u5b57\u5e55\uff0cname:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " subjectId:"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " subtitleResId:"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v1, Lcom/transsion/subtitle/h;->a:Lcom/transsion/subtitle/h$a;

    invoke-virtual {v1}, Lcom/transsion/subtitle/h$a;->b()Lcom/transsion/subtitle/h;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v1, v0, v3, v2, v3}, Lcom/transsion/subtitle/h$b;->a(Lcom/transsion/subtitle/h;Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final T(Lgo/a;Lgo/c;)V
    .locals 98

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "bean"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "playStream"

    move-object/from16 v3, p2

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->i:Z

    iput-object v1, v0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->k:Lgo/a;

    invoke-virtual/range {p1 .. p1}, Lgo/a;->d()Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    invoke-virtual/range {p1 .. p1}, Lgo/a;->d()Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->j:Lcom/transsion/baselib/db/download/DownloadBean;

    goto/16 :goto_6

    :cond_0
    invoke-virtual/range {p2 .. p2}, Lgo/c;->h()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Lgo/c;->c()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lgo/a;->p()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Lgo/c;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/text/StringsKt;->x(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lgo/a;->o()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {p1 .. p1}, Lgo/a;->e()I

    move-result v28

    invoke-virtual/range {p1 .. p1}, Lgo/a;->l()I

    move-result v29

    invoke-virtual/range {p1 .. p1}, Lgo/a;->p()Ljava/lang/String;

    move-result-object v40

    iget-object v2, v0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->b:Ljava/lang/String;

    move-object/from16 v38, v2

    new-instance v2, Lcom/transsion/baselib/db/download/DownloadBean;

    move-object v6, v2

    const v96, 0xffff

    const/16 v97, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v39, 0x0

    const-wide/16 v41, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const-wide/16 v47, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const-wide/16 v51, 0x0

    const/16 v53, 0x0

    const-wide/16 v54, 0x0

    const/16 v56, 0x0

    const/16 v57, 0x0

    const/16 v58, 0x0

    const/16 v59, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    const/16 v62, 0x0

    const/16 v63, 0x0

    const/16 v64, 0x0

    const/16 v65, 0x0

    const/16 v66, 0x0

    const/16 v67, 0x0

    const/16 v68, 0x0

    const/16 v69, 0x0

    const/16 v70, 0x0

    const/16 v71, 0x0

    const/16 v72, 0x0

    const/16 v73, 0x0

    const/16 v74, 0x0

    const/16 v75, 0x0

    const/16 v76, 0x0

    const/16 v77, 0x0

    const/16 v78, 0x0

    const/16 v79, 0x0

    const/16 v80, 0x0

    const/16 v81, 0x0

    const/16 v82, 0x0

    const/16 v83, 0x0

    const/16 v84, 0x0

    const/16 v85, 0x0

    const/16 v86, 0x0

    const/16 v87, 0x0

    const/16 v88, 0x0

    const/16 v89, 0x0

    const/16 v90, 0x0

    const/16 v91, 0x0

    const/16 v92, 0x0

    const/16 v93, 0x0

    const v94, -0x580c0020

    const/16 v95, -0x1

    const-string v10, ""

    invoke-direct/range {v6 .. v97}, Lcom/transsion/baselib/db/download/DownloadBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;JIIIJJIIIIIIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JIJLjava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZILjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual/range {p2 .. p2}, Lgo/c;->k()Z

    move-result v6

    invoke-virtual {v2, v6}, Lcom/transsion/baselib/db/download/DownloadBean;->setStream(Z)V

    invoke-virtual {v2, v4}, Lcom/transsion/baselib/db/download/DownloadBean;->setStreamVideoDetail(Z)V

    invoke-virtual/range {p1 .. p1}, Lgo/a;->u()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getUgcVideoId()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_1
    move-object v6, v5

    :goto_0
    invoke-virtual {v2, v6}, Lcom/transsion/baselib/db/download/DownloadBean;->setUgcVideoId(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lgo/a;->u()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getBelongToCollection()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;->getCollectionId()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_2
    move-object v6, v5

    :goto_1
    invoke-virtual {v2, v6}, Lcom/transsion/baselib/db/download/DownloadBean;->setUgcVideoCollectionId(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lgo/a;->u()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getTitle()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_3
    move-object v6, v5

    :goto_2
    invoke-virtual {v2, v6}, Lcom/transsion/baselib/db/download/DownloadBean;->setUgcVideoName(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lgo/a;->u()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getBelongToCollection()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;->getCollectionName()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_4
    move-object v6, v5

    :goto_3
    invoke-virtual {v2, v6}, Lcom/transsion/baselib/db/download/DownloadBean;->setUgcVideoCollectionName(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lgo/a;->u()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getBelongToCollection()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;->getPosition()Ljava/lang/Integer;

    move-result-object v6

    goto :goto_4

    :cond_5
    move-object v6, v5

    :goto_4
    invoke-virtual {v2, v6}, Lcom/transsion/baselib/db/download/DownloadBean;->setUgcVideoPosition(Ljava/lang/Integer;)V

    invoke-virtual/range {p1 .. p1}, Lgo/a;->u()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-virtual {v6}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCategory()Ljava/lang/String;

    move-result-object v6

    goto :goto_5

    :cond_6
    move-object v6, v5

    :goto_5
    invoke-virtual {v2, v6}, Lcom/transsion/baselib/db/download/DownloadBean;->setUgcVideoType(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lgo/a;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setOps(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lgo/c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setSubtitleIdType(Ljava/lang/String;)V

    iput-object v2, v0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->j:Lcom/transsion/baselib/db/download/DownloadBean;

    :goto_6
    sget-object v1, Llg/a;->a:Llg/a$a;

    sget-object v2, Lcom/transsion/baselib/report/a;->a:Lcom/transsion/baselib/report/a;

    invoke-virtual {v2}, Lcom/transsion/baselib/report/a;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->j:Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoId()Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    :cond_7
    move-object v3, v5

    :goto_7
    iget-object v6, v0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->j:Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v6, :cond_8

    invoke-virtual {v6}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoCollectionId()Ljava/lang/String;

    move-result-object v5

    :cond_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "subtitle onSetNewDataSource\uff0cugcVideoId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " CollectionId:"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v4}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v1, v0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->h:Lcom/transsion/subtitle/VideoSubtitleControl;

    iget-object v2, v0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->j:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v1, v2}, Lcom/transsion/subtitle/VideoSubtitleControl;->j0(Lcom/transsion/baselib/db/download/DownloadBean;)V

    iget-object v1, v0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->j:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->Q(Lcom/transsion/baselib/db/download/DownloadBean;)V

    return-void
.end method

.method public final W(Lcom/transsion/player/longvideo/ui/LongVodUiType;)V
    .locals 1

    const-string v0, "uiType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/player/longvideo/ui/LongVodUiType;->LAND:Lcom/transsion/player/longvideo/ui/LongVodUiType;

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->E()V

    :cond_0
    sget-object v0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$b;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    sget-object p1, Lcom/transsion/subtitle/helper/LocalVideoUiType;->MIDDLE:Lcom/transsion/subtitle/helper/LocalVideoUiType;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/transsion/subtitle/helper/LocalVideoUiType;->PORTRAIT:Lcom/transsion/subtitle/helper/LocalVideoUiType;

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/transsion/subtitle/helper/LocalVideoUiType;->LAND:Lcom/transsion/subtitle/helper/LocalVideoUiType;

    :goto_0
    iget-object v0, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->h:Lcom/transsion/subtitle/VideoSubtitleControl;

    invoke-virtual {v0, p1}, Lcom/transsion/subtitle/VideoSubtitleControl;->P(Lcom/transsion/subtitle/helper/LocalVideoUiType;)V

    return-void
.end method

.method public final X(J)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->h:Lcom/transsion/subtitle/VideoSubtitleControl;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/subtitle/VideoSubtitleControl;->S(J)V

    return-void
.end method

.method public final Y()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->h:Lcom/transsion/subtitle/VideoSubtitleControl;

    invoke-virtual {v0}, Lcom/transsion/subtitle/VideoSubtitleControl;->U()V

    return-void
.end method

.method public final Z()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->h:Lcom/transsion/subtitle/VideoSubtitleControl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/subtitle/VideoSubtitleControl;->Z()V

    :cond_0
    return-void
.end method

.method public final e0(Z)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->h:Lcom/transsion/subtitle/VideoSubtitleControl;

    invoke-virtual {v0, p1}, Lcom/transsion/subtitle/VideoSubtitleControl;->d0(Z)V

    return-void
.end method

.method public final f0(Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->n:Landroid/view/ViewGroup;

    iget-object p1, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->h:Lcom/transsion/subtitle/VideoSubtitleControl;

    invoke-direct {p0, p1}, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->a0(Lcom/transsion/subtitle/VideoSubtitleControl;)V

    return-void
.end method

.method public final h0(Ljava/util/List;)V
    .locals 1

    const-string v0, "dubs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->c:Ljava/util/List;

    iget-object v0, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->h:Lcom/transsion/subtitle/VideoSubtitleControl;

    invoke-virtual {v0, p1}, Lcom/transsion/subtitle/VideoSubtitleControl;->r0(Ljava/util/List;)V

    return-void
.end method

.method public final i0(J)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->h:Lcom/transsion/subtitle/VideoSubtitleControl;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/subtitle/VideoSubtitleControl;->s0(J)V

    return-void
.end method

.method public final j0(F)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->h:Lcom/transsion/subtitle/VideoSubtitleControl;

    invoke-virtual {v0, p1}, Lcom/transsion/subtitle/VideoSubtitleControl;->t0(F)V

    return-void
.end method
