.class public final Lcom/transsnet/downloader/viewmodel/DownloadViewModel;
.super Landroidx/lifecycle/t0;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lkotlin/Lazy;

.field private final c:Lkotlin/Lazy;

.field private d:Z

.field private final e:Lkotlin/Lazy;

.field private final f:Lkotlin/Lazy;

.field private final g:Lkotlin/Lazy;

.field private final h:Lkotlin/Lazy;

.field private final i:Lkotlin/Lazy;

.field private final j:Lkotlin/Lazy;

.field private final k:Lkotlin/Lazy;

.field private final l:Lkotlin/Lazy;

.field private final m:Lkotlin/Lazy;

.field private final n:Ljava/util/Map;

.field private final o:Landroidx/lifecycle/b0;

.field private final p:Landroidx/lifecycle/b0;

.field private final q:Landroidx/lifecycle/b0;

.field private final r:Landroidx/lifecycle/b0;

.field private final s:Landroidx/lifecycle/b0;

.field private final t:Lkotlin/Lazy;

.field private final u:Lkotlin/Lazy;

.field private final v:Lkotlin/Lazy;

.field private final w:Lkotlin/Lazy;

.field private final x:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/lifecycle/t0;-><init>()V

    const-class v0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->a:Ljava/lang/String;

    new-instance v0, Lcom/transsnet/downloader/viewmodel/k;

    invoke-direct {v0}, Lcom/transsnet/downloader/viewmodel/k;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->b:Lkotlin/Lazy;

    new-instance v0, Lcom/transsnet/downloader/viewmodel/x;

    invoke-direct {v0}, Lcom/transsnet/downloader/viewmodel/x;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->c:Lkotlin/Lazy;

    new-instance v0, Lcom/transsnet/downloader/viewmodel/y;

    invoke-direct {v0}, Lcom/transsnet/downloader/viewmodel/y;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->e:Lkotlin/Lazy;

    new-instance v0, Lcom/transsnet/downloader/viewmodel/z;

    invoke-direct {v0}, Lcom/transsnet/downloader/viewmodel/z;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->f:Lkotlin/Lazy;

    new-instance v0, Lcom/transsnet/downloader/viewmodel/l;

    invoke-direct {v0}, Lcom/transsnet/downloader/viewmodel/l;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->g:Lkotlin/Lazy;

    new-instance v0, Lcom/transsnet/downloader/viewmodel/m;

    invoke-direct {v0}, Lcom/transsnet/downloader/viewmodel/m;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->h:Lkotlin/Lazy;

    new-instance v0, Lcom/transsnet/downloader/viewmodel/n;

    invoke-direct {v0}, Lcom/transsnet/downloader/viewmodel/n;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->i:Lkotlin/Lazy;

    new-instance v0, Lcom/transsnet/downloader/viewmodel/o;

    invoke-direct {v0}, Lcom/transsnet/downloader/viewmodel/o;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->j:Lkotlin/Lazy;

    new-instance v0, Lcom/transsnet/downloader/viewmodel/p;

    invoke-direct {v0}, Lcom/transsnet/downloader/viewmodel/p;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->k:Lkotlin/Lazy;

    new-instance v0, Lcom/transsnet/downloader/viewmodel/q;

    invoke-direct {v0}, Lcom/transsnet/downloader/viewmodel/q;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->l:Lkotlin/Lazy;

    new-instance v0, Lcom/transsnet/downloader/viewmodel/r;

    invoke-direct {v0}, Lcom/transsnet/downloader/viewmodel/r;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->m:Lkotlin/Lazy;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->n:Ljava/util/Map;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->o:Landroidx/lifecycle/b0;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->p:Landroidx/lifecycle/b0;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->q:Landroidx/lifecycle/b0;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->r:Landroidx/lifecycle/b0;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->s:Landroidx/lifecycle/b0;

    new-instance v0, Lcom/transsnet/downloader/viewmodel/s;

    invoke-direct {v0}, Lcom/transsnet/downloader/viewmodel/s;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->t:Lkotlin/Lazy;

    new-instance v0, Lcom/transsnet/downloader/viewmodel/t;

    invoke-direct {v0}, Lcom/transsnet/downloader/viewmodel/t;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->u:Lkotlin/Lazy;

    new-instance v0, Lcom/transsnet/downloader/viewmodel/u;

    invoke-direct {v0}, Lcom/transsnet/downloader/viewmodel/u;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->v:Lkotlin/Lazy;

    new-instance v0, Lcom/transsnet/downloader/viewmodel/v;

    invoke-direct {v0}, Lcom/transsnet/downloader/viewmodel/v;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->w:Lkotlin/Lazy;

    new-instance v0, Lcom/transsnet/downloader/viewmodel/w;

    invoke-direct {v0}, Lcom/transsnet/downloader/viewmodel/w;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->x:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic A(Lcom/transsnet/downloader/viewmodel/DownloadViewModel;Ljava/util/List;)Lcom/transsion/baselib/db/download/DownloadBean;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->o0(Ljava/util/List;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object p0

    return-object p0
.end method

.method private static final A0()Landroidx/lifecycle/b0;
    .locals 1

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    return-object v0
.end method

.method public static final synthetic B(Lcom/transsnet/downloader/viewmodel/DownloadViewModel;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->p0(Ljava/util/List;)V

    return-void
.end method

.method private static final B0()Landroidx/lifecycle/b0;
    .locals 1

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    return-object v0
.end method

.method public static final synthetic C(Lcom/transsnet/downloader/viewmodel/DownloadViewModel;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->d:Z

    return-void
.end method

.method private static final C0()Landroidx/lifecycle/b0;
    .locals 1

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    return-object v0
.end method

.method private final D(Ljava/util/List;)Ljava/util/Map;
    .locals 4

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-direct {p0, v1}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->X(Lcom/transsion/baselib/db/download/DownloadBean;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->t0(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_1
    invoke-static {}, Lkotlin/collections/MapsKt;->h()Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method private static final D0()Landroidx/lifecycle/b0;
    .locals 1

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    return-object v0
.end method

.method private static final E()Landroidx/lifecycle/b0;
    .locals 1

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    return-object v0
.end method

.method private static final E0()Landroidx/lifecycle/b0;
    .locals 1

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    return-object v0
.end method

.method private static final F()Landroidx/lifecycle/b0;
    .locals 1

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    return-object v0
.end method

.method private static final G()Landroidx/lifecycle/b0;
    .locals 1

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    return-object v0
.end method

.method public static synthetic N(Lcom/transsnet/downloader/viewmodel/DownloadViewModel;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->M(Z)V

    return-void
.end method

.method private final W()Lqy/a;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqy/a;

    return-object v0
.end method

.method private final X(Lcom/transsion/baselib/db/download/DownloadBean;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoType()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->Y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectType()I

    move-result p1

    sget-object v0, Lcom/transsion/moviedetailapi/SubjectType;->MOVIE:Lcom/transsion/moviedetailapi/SubjectType;

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    move-result v0

    const-string v1, "getString(...)"

    if-ne p1, v0, :cond_2

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p1

    sget v0, Lcom/transsnet/downloader/R$string;->ugc_tab_movie:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_2
    sget-object v0, Lcom/transsion/moviedetailapi/SubjectType;->TV:Lcom/transsion/moviedetailapi/SubjectType;

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_3

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p1

    sget v0, Lcom/transsnet/downloader/R$string;->ugc_tab_tv:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_3
    sget-object v0, Lcom/transsion/moviedetailapi/SubjectType;->VSHOW:Lcom/transsion/moviedetailapi/SubjectType;

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_4

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p1

    sget v0, Lcom/transsnet/downloader/R$string;->ugc_tab_video:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_4
    sget-object v0, Lcom/transsion/moviedetailapi/SubjectType;->AUDIO:Lcom/transsion/moviedetailapi/SubjectType;

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    move-result v0

    if-eq p1, v0, :cond_9

    sget-object v0, Lcom/transsion/moviedetailapi/SubjectType;->MUSIC:Lcom/transsion/moviedetailapi/SubjectType;

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_5

    goto :goto_1

    :cond_5
    sget-object v0, Lcom/transsion/moviedetailapi/SubjectType;->EDUCATION:Lcom/transsion/moviedetailapi/SubjectType;

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_6

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p1

    sget v0, Lcom/transsnet/downloader/R$string;->ugc_tab_education:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    sget-object v0, Lcom/transsion/moviedetailapi/SubjectType;->SHORT_TV:Lcom/transsion/moviedetailapi/SubjectType;

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_7

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p1

    sget v0, Lcom/transsnet/downloader/R$string;->ugc_tab_short_tv:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    sget-object v0, Lcom/transsion/moviedetailapi/SubjectType;->SPORT:Lcom/transsion/moviedetailapi/SubjectType;

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_8

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p1

    sget v0, Lcom/transsnet/downloader/R$string;->ugc_tab_sport:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p1

    sget v0, Lcom/transsnet/downloader/R$string;->ugc_tab_video:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    :goto_1
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p1

    sget v0, Lcom/transsnet/downloader/R$string;->ugc_tab_music:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    return-object p1
.end method

.method private final Y(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "getString(...)"

    if-eqz p1, :cond_d

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    sget-object v1, Lcom/transsion/ugcvideodetail/api/UGCVideoType;->MOVIE:Lcom/transsion/ugcvideodetail/api/UGCVideoType;

    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/UGCVideoType;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p1

    sget v1, Lcom/transsnet/downloader/R$string;->ugc_tab_movie:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    sget-object v1, Lcom/transsion/ugcvideodetail/api/UGCVideoType;->TV:Lcom/transsion/ugcvideodetail/api/UGCVideoType;

    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/UGCVideoType;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p1

    sget v1, Lcom/transsnet/downloader/R$string;->ugc_tab_tv:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    sget-object v1, Lcom/transsion/ugcvideodetail/api/UGCVideoType;->MUSIC:Lcom/transsion/ugcvideodetail/api/UGCVideoType;

    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/UGCVideoType;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p1

    sget v1, Lcom/transsnet/downloader/R$string;->ugc_tab_music:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    sget-object v1, Lcom/transsion/ugcvideodetail/api/UGCVideoType;->EDUCATION:Lcom/transsion/ugcvideodetail/api/UGCVideoType;

    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/UGCVideoType;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p1

    sget v1, Lcom/transsnet/downloader/R$string;->ugc_tab_education:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    sget-object v1, Lcom/transsion/ugcvideodetail/api/UGCVideoType;->SHORT_TV:Lcom/transsion/ugcvideodetail/api/UGCVideoType;

    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/UGCVideoType;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p1

    sget v1, Lcom/transsnet/downloader/R$string;->ugc_tab_short_tv:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    sget-object v1, Lcom/transsion/ugcvideodetail/api/UGCVideoType;->SPORT:Lcom/transsion/ugcvideodetail/api/UGCVideoType;

    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/UGCVideoType;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p1

    sget v1, Lcom/transsnet/downloader/R$string;->ugc_tab_sport:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    sget-object v1, Lcom/transsion/ugcvideodetail/api/UGCVideoType;->ROOM:Lcom/transsion/ugcvideodetail/api/UGCVideoType;

    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/UGCVideoType;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p1

    sget v1, Lcom/transsnet/downloader/R$string;->ugc_tab_room:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    sget-object v1, Lcom/transsion/ugcvideodetail/api/UGCVideoType;->NOVEL:Lcom/transsion/ugcvideodetail/api/UGCVideoType;

    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/UGCVideoType;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p1

    sget v1, Lcom/transsnet/downloader/R$string;->ugc_tab_novel:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    sget-object v1, Lcom/transsion/ugcvideodetail/api/UGCVideoType;->LIVE:Lcom/transsion/ugcvideodetail/api/UGCVideoType;

    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/UGCVideoType;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p1

    sget v1, Lcom/transsnet/downloader/R$string;->ugc_tab_live:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_9
    sget-object v1, Lcom/transsion/ugcvideodetail/api/UGCVideoType;->KIDS:Lcom/transsion/ugcvideodetail/api/UGCVideoType;

    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/UGCVideoType;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p1

    sget v1, Lcom/transsnet/downloader/R$string;->ugc_tab_kids:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_a
    sget-object v1, Lcom/transsion/ugcvideodetail/api/UGCVideoType;->RECREATION:Lcom/transsion/ugcvideodetail/api/UGCVideoType;

    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/UGCVideoType;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p1

    sget v1, Lcom/transsnet/downloader/R$string;->ugc_tab_recreation:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_b
    sget-object v1, Lcom/transsion/ugcvideodetail/api/UGCVideoType;->POST:Lcom/transsion/ugcvideodetail/api/UGCVideoType;

    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/UGCVideoType;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p1

    sget v1, Lcom/transsnet/downloader/R$string;->ugc_tab_post:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_c
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p1

    sget v1, Lcom/transsnet/downloader/R$string;->ugc_tab_video:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p1

    :cond_d
    :goto_1
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p1

    sget v1, Lcom/transsnet/downloader/R$string;->ugc_tab_video:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final Z()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->x:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public static synthetic b()Landroidx/lifecycle/b0;
    .locals 1

    invoke-static {}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->E0()Landroidx/lifecycle/b0;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c()Landroidx/lifecycle/b0;
    .locals 1

    invoke-static {}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->x0()Landroidx/lifecycle/b0;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic d()Landroidx/lifecycle/b0;
    .locals 1

    invoke-static {}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->A0()Landroidx/lifecycle/b0;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic e()Landroidx/lifecycle/b0;
    .locals 1

    invoke-static {}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->F()Landroidx/lifecycle/b0;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic f()Landroidx/lifecycle/b0;
    .locals 1

    invoke-static {}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->w0()Landroidx/lifecycle/b0;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic g()Lqy/a;
    .locals 1

    invoke-static {}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->s0()Lqy/a;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic h()Landroidx/lifecycle/b0;
    .locals 1

    invoke-static {}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->q0()Landroidx/lifecycle/b0;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic i()Landroidx/lifecycle/b0;
    .locals 1

    invoke-static {}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->C0()Landroidx/lifecycle/b0;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic j()Ljava/util/List;
    .locals 1

    invoke-static {}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->u0()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic k()Landroidx/lifecycle/b0;
    .locals 1

    invoke-static {}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->B0()Landroidx/lifecycle/b0;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic l()Landroidx/lifecycle/b0;
    .locals 1

    invoke-static {}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->E()Landroidx/lifecycle/b0;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic m()Landroidx/lifecycle/b0;
    .locals 1

    invoke-static {}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->z0()Landroidx/lifecycle/b0;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic n()Landroidx/lifecycle/b0;
    .locals 1

    invoke-static {}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->D0()Landroidx/lifecycle/b0;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic o()Landroidx/lifecycle/b0;
    .locals 1

    invoke-static {}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->y0()Landroidx/lifecycle/b0;

    move-result-object v0

    return-object v0
.end method

.method private final o0(Ljava/util/List;)Lcom/transsion/baselib/db/download/DownloadBean;
    .locals 96

    invoke-static/range {p1 .. p1}, Lkotlin/collections/CollectionsKt;->i0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/baselib/db/download/DownloadBean;

    new-instance v15, Lcom/transsion/baselib/db/download/DownloadBean;

    move-object v1, v15

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getCover()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v93, 0x0

    invoke-static/range {v93 .. v94}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getUpdateTimeStamp()Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getCreateAt()J

    move-result-wide v19

    const v91, 0xffff

    const/16 v92, 0x0

    const-string v2, "series"

    const-string v3, "series"

    const-string v4, ""

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object/from16 v95, v15

    move/from16 v15, v16

    const-wide/16 v17, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const-wide/16 v36, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const-wide/16 v42, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const-wide/16 v46, 0x0

    const/16 v48, 0x0

    const-wide/16 v49, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

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

    const v89, -0x8220

    const/16 v90, -0x1

    invoke-direct/range {v1 .. v92}, Lcom/transsion/baselib/db/download/DownloadBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;JIIIJJIIIIIIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JIJLjava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZILjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v1, 0xa

    move-object/from16 v2, v95

    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setStatus(I)V

    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getSeriesList()Ljava/util/List;

    move-result-object v1

    move-object/from16 v3, p1

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    move-object v12, v0

    move v4, v3

    move v5, v4

    move-wide/from16 v6, v93

    move-wide v8, v6

    move-wide v10, v8

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v13}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    move-result v14

    const/16 v15, 0xe

    const/16 v16, 0x1

    if-ne v14, v15, :cond_0

    move/from16 v4, v16

    goto :goto_0

    :cond_0
    invoke-virtual {v13}, Lcom/transsion/baselib/db/download/DownloadBean;->isTransferFailed()Z

    move-result v14

    if-eqz v14, :cond_1

    move/from16 v3, v16

    :cond_1
    if-nez v5, :cond_2

    invoke-virtual {v13}, Lcom/transsion/baselib/db/download/DownloadBean;->isTransferFailed()Z

    move-result v14

    if-nez v14, :cond_2

    invoke-virtual {v13}, Lcom/transsion/baselib/db/download/DownloadBean;->isFileExist()Z

    move-result v14

    if-eqz v14, :cond_2

    move-object v12, v13

    move/from16 v5, v16

    :cond_2
    invoke-virtual {v13}, Lcom/transsion/baselib/db/download/DownloadBean;->getSize()Ljava/lang/Long;

    move-result-object v14

    if-eqz v14, :cond_3

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    goto :goto_1

    :cond_3
    move-wide/from16 v14, v93

    :goto_1
    add-long/2addr v6, v14

    invoke-virtual {v13}, Lcom/transsion/baselib/db/download/DownloadBean;->getDuration()Ljava/lang/Long;

    move-result-object v14

    if-eqz v14, :cond_4

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    goto :goto_2

    :cond_4
    move-wide/from16 v14, v93

    :goto_2
    add-long/2addr v8, v14

    invoke-virtual {v13}, Lcom/transsion/baselib/db/download/DownloadBean;->getReadProgress()J

    move-result-wide v13

    add-long/2addr v10, v13

    goto :goto_0

    :cond_5
    invoke-virtual {v2, v3}, Lcom/transsion/baselib/db/download/DownloadBean;->setTransferFailed(Z)V

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getThumbnail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setThumbnail(Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setCount(I)V

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setSize(Ljava/lang/Long;)V

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setDuration(Ljava/lang/Long;)V

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getOps()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setOps(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getTotalEpisode()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setTotalEpisode(I)V

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setSubjectId(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setSubjectName(Ljava/lang/String;)V

    invoke-virtual {v2, v10, v11}, Lcom/transsion/baselib/db/download/DownloadBean;->setReadProgress(J)V

    invoke-virtual {v12}, Lcom/transsion/baselib/db/download/DownloadBean;->getRootPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setRootPath(Ljava/lang/String;)V

    invoke-virtual {v12}, Lcom/transsion/baselib/db/download/DownloadBean;->getRootPathType()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setRootPathType(I)V

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getType()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setType(I)V

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectType()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setSubjectType(I)V

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoCollectionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setUgcVideoCollectionId(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setUgcVideoId(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setUgcVideoType(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoCollectionName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/transsion/baselib/db/download/DownloadBean;->setUgcVideoCollectionName(Ljava/lang/String;)V

    return-object v2
.end method

.method public static synthetic p()Landroidx/lifecycle/b0;
    .locals 1

    invoke-static {}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->v0()Landroidx/lifecycle/b0;

    move-result-object v0

    return-object v0
.end method

.method private final p0(Ljava/util/List;)V
    .locals 96

    move-object/from16 v0, p1

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-static/range {p1 .. p1}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/baselib/db/download/DownloadBean;

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getTotalEpisode()I

    move-result v2

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    if-le v2, v3, :cond_3

    new-instance v2, Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getType()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/transsnet/downloader/R$string;->download_series_all_chapters:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    move-object v7, v1

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/transsnet/downloader/R$string;->download_series_all_episodes:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :goto_1
    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const v94, 0xffff

    const/16 v95, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const-wide/16 v39, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const-wide/16 v45, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const-wide/16 v49, 0x0

    const/16 v51, 0x0

    const-wide/16 v52, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

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

    const/16 v92, -0x20

    const/16 v93, -0x1

    const-string v5, "allEp"

    const-string v6, "allEp"

    const-string v8, ""

    move-object v4, v2

    invoke-direct/range {v4 .. v95}, Lcom/transsion/baselib/db/download/DownloadBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;JIIIJJIIIIIIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JIJLjava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZILjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v1, 0xe

    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setStatus(I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_2
    return-void
.end method

.method public static synthetic q()Landroidx/lifecycle/b0;
    .locals 1

    invoke-static {}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->G()Landroidx/lifecycle/b0;

    move-result-object v0

    return-object v0
.end method

.method private static final q0()Landroidx/lifecycle/b0;
    .locals 1

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    return-object v0
.end method

.method public static final synthetic r(Lcom/transsnet/downloader/viewmodel/DownloadViewModel;Ljava/util/List;)Ljava/util/Map;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->D(Ljava/util/List;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic s(Lcom/transsnet/downloader/viewmodel/DownloadViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    iget-object p0, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->s:Landroidx/lifecycle/b0;

    return-object p0
.end method

.method private static final s0()Lqy/a;
    .locals 2

    sget-object v0, Lzg/c;->e:Lzg/c$a;

    invoke-virtual {v0}, Lzg/c$a;->a()Lzg/c;

    move-result-object v0

    const-class v1, Lqy/a;

    invoke-virtual {v0, v1}, Lzg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqy/a;

    return-object v0
.end method

.method public static final synthetic t(Lcom/transsnet/downloader/viewmodel/DownloadViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    iget-object p0, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->q:Landroidx/lifecycle/b0;

    return-object p0
.end method

.method private final t0(Ljava/util/Map;)Ljava/util/Map;
    .locals 3

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel$sortTabsByOrder$$inlined$sortedBy$1;

    invoke-direct {v0, p0}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel$sortTabsByOrder$$inlined$sortedBy$1;-><init>(Lcom/transsnet/downloader/viewmodel/DownloadViewModel;)V

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->I0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->e(I)I

    move-result v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->f(II)I

    move-result v0

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static final synthetic u(Lcom/transsnet/downloader/viewmodel/DownloadViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    iget-object p0, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->p:Landroidx/lifecycle/b0;

    return-object p0
.end method

.method private static final u0()Ljava/util/List;
    .locals 15

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    sget v1, Lcom/transsnet/downloader/R$string;->ugc_tab_movie:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    sget v1, Lcom/transsnet/downloader/R$string;->ugc_tab_tv:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    sget v1, Lcom/transsnet/downloader/R$string;->ugc_tab_music:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    sget v1, Lcom/transsnet/downloader/R$string;->ugc_tab_education:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    sget v1, Lcom/transsnet/downloader/R$string;->ugc_tab_short_tv:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    sget v1, Lcom/transsnet/downloader/R$string;->ugc_tab_sport:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    sget v1, Lcom/transsnet/downloader/R$string;->ugc_tab_kids:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    sget v1, Lcom/transsnet/downloader/R$string;->ugc_tab_post:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    sget v1, Lcom/transsnet/downloader/R$string;->ugc_tab_room:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    sget v1, Lcom/transsnet/downloader/R$string;->ugc_tab_recreation:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    sget v1, Lcom/transsnet/downloader/R$string;->ugc_tab_live:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    sget v1, Lcom/transsnet/downloader/R$string;->ugc_tab_novel:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    sget v1, Lcom/transsnet/downloader/R$string;->ugc_tab_video:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    filled-new-array/range {v2 .. v14}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->o([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic v(Lcom/transsnet/downloader/viewmodel/DownloadViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    iget-object p0, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->o:Landroidx/lifecycle/b0;

    return-object p0
.end method

.method private static final v0()Landroidx/lifecycle/b0;
    .locals 1

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    return-object v0
.end method

.method public static final synthetic w(Lcom/transsnet/downloader/viewmodel/DownloadViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    iget-object p0, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->r:Landroidx/lifecycle/b0;

    return-object p0
.end method

.method private static final w0()Landroidx/lifecycle/b0;
    .locals 1

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    return-object v0
.end method

.method public static final synthetic x(Lcom/transsnet/downloader/viewmodel/DownloadViewModel;)Lqy/a;
    .locals 0

    invoke-direct {p0}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->W()Lqy/a;

    move-result-object p0

    return-object p0
.end method

.method private static final x0()Landroidx/lifecycle/b0;
    .locals 1

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    return-object v0
.end method

.method public static final synthetic y(Lcom/transsnet/downloader/viewmodel/DownloadViewModel;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->a:Ljava/lang/String;

    return-object p0
.end method

.method private static final y0()Landroidx/lifecycle/b0;
    .locals 1

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    return-object v0
.end method

.method public static final synthetic z(Lcom/transsnet/downloader/viewmodel/DownloadViewModel;)Ljava/util/List;
    .locals 0

    invoke-direct {p0}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->Z()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static final z0()Landroidx/lifecycle/b0;
    .locals 1

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final H()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->N(Lcom/transsnet/downloader/viewmodel/DownloadViewModel;ZILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->P()V

    return-void
.end method

.method public final I()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->s:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final J()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->h:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final K()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->e:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final L()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->q:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final M(Z)V
    .locals 6

    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v1

    new-instance v3, Lcom/transsnet/downloader/viewmodel/DownloadViewModel$getDownloadedList$1;

    const/4 v2, 0x0

    invoke-direct {v3, p1, p0, v2}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel$getDownloadedList$1;-><init>(ZLcom/transsnet/downloader/viewmodel/DownloadViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final O()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->p:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final P()V
    .locals 6

    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v1

    new-instance v3, Lcom/transsnet/downloader/viewmodel/DownloadViewModel$getDownloadingList$1;

    const/4 v2, 0x0

    invoke-direct {v3, p0, v2}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel$getDownloadingList$1;-><init>(Lcom/transsnet/downloader/viewmodel/DownloadViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final Q()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->o:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final R()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->g:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final S(II)V
    .locals 7

    iget-boolean v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v1

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v2

    new-instance v4, Lcom/transsnet/downloader/viewmodel/DownloadViewModel$getMovieRec$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, p2, v0}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel$getMovieRec$1;-><init>(Lcom/transsnet/downloader/viewmodel/DownloadViewModel;IILkotlin/coroutines/Continuation;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final T()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->c:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final U(Ljava/lang/String;)V
    .locals 6

    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v1

    new-instance v3, Lcom/transsnet/downloader/viewmodel/DownloadViewModel$getSeriesList$1;

    const/4 v2, 0x0

    invoke-direct {v3, p1, p0, v2}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel$getSeriesList$1;-><init>(Ljava/lang/String;Lcom/transsnet/downloader/viewmodel/DownloadViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final V()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->r:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final a0()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->l:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final b0()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->t:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final c0()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->u:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final d0()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->w:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final e0()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->m:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final f0(I)Landroidx/lifecycle/b0;
    .locals 2

    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->n:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->n:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/lifecycle/b0;

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v1, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->n:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public final g0()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->n:Ljava/util/Map;

    return-object v0
.end method

.method public final h0()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->k:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final i0()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->v:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final j0()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->i:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final k0()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->j:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final l0()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->f:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final m0(Ljava/lang/String;)V
    .locals 6

    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v1

    new-instance v3, Lcom/transsnet/downloader/viewmodel/DownloadViewModel$getUGCCollectionList$1;

    const/4 v2, 0x0

    invoke-direct {v3, p1, p0, v2}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel$getUGCCollectionList$1;-><init>(Ljava/lang/String;Lcom/transsnet/downloader/viewmodel/DownloadViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final n0(Ljava/lang/String;)V
    .locals 6

    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v1

    new-instance v3, Lcom/transsnet/downloader/viewmodel/DownloadViewModel$getUGCSubjectList$1;

    const/4 v2, 0x0

    invoke-direct {v3, p1, p0, v2}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel$getUGCSubjectList$1;-><init>(Ljava/lang/String;Lcom/transsnet/downloader/viewmodel/DownloadViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final r0(Lcom/transsion/transfer/impl/entity/FileData;Lkotlin/jvm/functions/Function0;)V
    .locals 102

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "data"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "callback"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Llg/a;->a:Llg/a$a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u4f20\u8f93\u5b8c\u6210\uff0c\u4fdd\u5b58\u5230\u6570\u636e\u5e93, data:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const-string v5, "Transfer_d"

    invoke-virtual {v2, v5, v3, v4}, Llg/a$a;->p(Ljava/lang/String;[Ljava/lang/String;Z)V

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/transfer/impl/entity/FileData;->getDownloadBean()Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/transfer/impl/entity/FileData;->getDownloadBean()Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Lcom/transsion/baselib/db/download/DownloadBean;->setFileType(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/transsion/baselib/db/download/DownloadBean;->setCreateAt(J)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/transsion/baselib/db/download/DownloadBean;->setUpdateTimeStamp(Ljava/lang/Long;)V

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/transfer/impl/entity/FileData;->getCoverFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/transsion/baselib/db/download/DownloadBean;->setCover(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/transfer/impl/entity/FileData;->getFileReceiveCachePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/transsion/baselib/db/download/DownloadBean;->setPath(Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/transsion/baselib/db/download/DownloadBean;->setProgress(J)V

    const/4 v0, 0x5

    invoke-virtual {v2, v0}, Lcom/transsion/baselib/db/download/DownloadBean;->setStatus(I)V

    sget-object v0, Lcom/transsion/moviedetailapi/SubjectType;->OUTSIDE_FILE:Lcom/transsion/moviedetailapi/SubjectType;

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/transsion/baselib/db/download/DownloadBean;->setSubjectType(I)V

    invoke-static/range {p0 .. p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v4

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v5

    new-instance v7, Lcom/transsnet/downloader/viewmodel/DownloadViewModel$saveTransferData2DB$1$1;

    invoke-direct {v7, v2, v1, v3}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel$saveTransferData2DB$1$1;-><init>(Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    goto/16 :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/transfer/impl/entity/FileData;->getCoverFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/transfer/impl/entity/FileData;->getFileReceiveCachePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/transfer/impl/entity/FileData;->getFileReceiveCachePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/transfer/impl/entity/FileData;->getFileName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/transfer/impl/entity/FileData;->getFileSize()J

    move-result-wide v9

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/transfer/impl/entity/FileData;->getFileReceiveCachePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/transfer/impl/entity/FileData;->getFileSize()J

    move-result-wide v15

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    sget-object v0, Lcom/transsion/moviedetailapi/SubjectType;->OUTSIDE_FILE:Lcom/transsion/moviedetailapi/SubjectType;

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    move-result v60

    new-instance v0, Lcom/transsion/baselib/db/download/DownloadBean;

    move-object v4, v0

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const v94, 0xffff

    const/16 v95, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x5

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const-wide/16 v39, 0x0

    const/16 v41, 0x3

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const-wide/16 v45, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const-wide/16 v49, 0x0

    const/16 v51, 0x0

    const-wide/16 v52, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v57, 0x0

    const/16 v58, 0x0

    const/16 v59, 0x0

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

    const/16 v92, -0x16a0

    const v93, -0x10002

    invoke-direct/range {v4 .. v95}, Lcom/transsion/baselib/db/download/DownloadBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;JIIIJJIIIIIIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JIJLjava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZILjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static/range {p0 .. p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v96

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v97

    new-instance v2, Lcom/transsnet/downloader/viewmodel/DownloadViewModel$saveTransferData2DB$2$1;

    invoke-direct {v2, v0, v1, v3}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel$saveTransferData2DB$2$1;-><init>(Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    const/16 v100, 0x2

    const/16 v101, 0x0

    const/16 v98, 0x0

    move-object/from16 v99, v2

    invoke-static/range {v96 .. v101}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    :goto_0
    return-void
.end method
