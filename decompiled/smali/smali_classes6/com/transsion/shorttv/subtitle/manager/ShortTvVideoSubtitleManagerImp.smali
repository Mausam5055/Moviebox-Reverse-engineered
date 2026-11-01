.class public final Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/shorttv/subtitle/manager/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp$a;
    }
.end annotation


# static fields
.field public static final g:Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp$a;


# instance fields
.field private b:Ljava/util/Set;

.field private final c:Ljava/lang/String;

.field private final d:Lkotlinx/coroutines/n0;

.field private final e:Lkotlin/Lazy;

.field private final f:Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp$resDownloadListener$1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp;->g:Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp;->b:Ljava/util/Set;

    const-class v0, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp;->c:Ljava/lang/String;

    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp;->d:Lkotlinx/coroutines/n0;

    new-instance v0, Lcom/transsion/shorttv/subtitle/manager/c;

    invoke-direct {v0}, Lcom/transsion/shorttv/subtitle/manager/c;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp;->e:Lkotlin/Lazy;

    new-instance v0, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp$resDownloadListener$1;

    invoke-direct {v0, p0}, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp$resDownloadListener$1;-><init>(Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp;)V

    iput-object v0, p0, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp;->f:Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp$resDownloadListener$1;

    return-void
.end method

.method public static synthetic h()Lqs/d;
    .locals 1

    invoke-static {}, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp;->r()Lqs/d;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic i()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp;->q()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic j(Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp;Lkotlin/jvm/functions/Function1;Z)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp;->o(Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp;Lkotlin/jvm/functions/Function1;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic k(Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp;->c:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic l(Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp;->b:Ljava/util/Set;

    return-object p0
.end method

.method private final m(Lts/a;Lkotlin/jvm/functions/Function1;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {p1 .. p1}, Lts/a;->d()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lts/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/text/StringsKt;->x(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    if-nez v2, :cond_2

    sget-object v3, Llg/a;->a:Llg/a$a;

    iget-object v2, v0, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp;->c:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " checkDownloadSubtitle ,shorTvId is abnormal"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v4, "short_tv_subtitle"

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Llg/a$a;->z(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    if-eqz v1, :cond_1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void

    :cond_2
    sget-object v2, Lnh/m;->a:Lnh/m;

    invoke-virtual {v2}, Lnh/m;->e()Z

    move-result v2

    const/4 v3, 0x1

    const-string v4, "short_tv_subtitle"

    if-nez v2, :cond_3

    sget-object v1, Llg/a;->a:Llg/a$a;

    iget-object v2, v0, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp;->c:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " checkDownloadSubtitle ,\u65e0\u7f51\u7edc\u4e0d\u505a\u68c0\u6d4b"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2, v3}, Llg/a$a;->x(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_3
    sget-object v2, Llg/a;->a:Llg/a$a;

    iget-object v5, v0, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp;->c:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lts/a;->h()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lts/a;->e()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lts/a;->g()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " checkDownloadSubtitle, name = "

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " subjectId:"

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " subtitleResId:"

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5, v3}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v6, Lcom/transsion/subtitle_download/SubtitleDownloadManager;->a:Lcom/transsion/subtitle_download/SubtitleDownloadManager;

    invoke-virtual/range {p1 .. p1}, Lts/a;->e()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lts/a;->g()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lts/a;->d()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lts/a;->f()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lts/a;->a()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Lts/a;->c()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Lts/a;->b()Ljava/lang/String;

    move-result-object v16

    new-instance v2, Lcom/transsion/shorttv/subtitle/manager/e;

    invoke-direct {v2, v0, v1}, Lcom/transsion/shorttv/subtitle/manager/e;-><init>(Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp;Lkotlin/jvm/functions/Function1;)V

    const/4 v9, 0x0

    const/4 v12, 0x3

    const/4 v13, 0x0

    move-object/from16 v17, v2

    invoke-virtual/range {v6 .. v17}, Lcom/transsion/subtitle_download/SubtitleDownloadManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void

    :cond_4
    :goto_0
    sget-object v17, Llg/a;->a:Llg/a$a;

    iget-object v2, v0, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " checkDownloadSubtitle fail\uff0c has no shorTvId"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v21, 0x4

    const/16 v22, 0x0

    const-string v18, "short_tv_subtitle"

    const/16 v20, 0x0

    invoke-static/range {v17 .. v22}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    if-eqz v1, :cond_5

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-void
.end method

.method static synthetic n(Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp;Lts/a;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp;->m(Lts/a;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private static final o(Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp;Lkotlin/jvm/functions/Function1;Z)Lkotlin/Unit;
    .locals 6

    iget-object v0, p0, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp;->d:Lkotlinx/coroutines/n0;

    new-instance v3, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp$checkDownloadSubtitle$1$1;

    const/4 v1, 0x0

    invoke-direct {v3, p1, p2, p0, v1}, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp$checkDownloadSubtitle$1$1;-><init>(Lkotlin/jvm/functions/Function1;ZLcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private final p()Lqs/d;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp;->e:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqs/d;

    return-object v0
.end method

.method private static final q()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/transsion/shorttv/utils/h;->a:Lcom/transsion/shorttv/utils/h;

    invoke-virtual {v0}, Lcom/transsion/shorttv/utils/h;->e()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "k_language_short_name"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final r()Lqs/d;
    .locals 1

    sget-object v0, Llr/c;->a:Llr/c;

    invoke-virtual {v0}, Llr/c;->c()Lrs/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lrs/a;->b()Lqs/d;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp$getSubtitleList$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp$getSubtitleList$1;

    iget v1, v0, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp$getSubtitleList$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp$getSubtitleList$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp$getSubtitleList$1;

    invoke-direct {v0, p0, p2}, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp$getSubtitleList$1;-><init>(Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp$getSubtitleList$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp$getSubtitleList$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp$getSubtitleList$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Lcom/transsion/subtitle_download/SubtitleDownloadManager;->a:Lcom/transsion/subtitle_download/SubtitleDownloadManager;

    iput-object p2, v0, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp$getSubtitleList$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp$getSubtitleList$1;->label:I

    invoke-virtual {v2, p1, v0}, Lcom/transsion/subtitle_download/SubtitleDownloadManager;->j(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object v4, p2

    move-object p2, p1

    move-object p1, v4

    :goto_1
    check-cast p2, Ljava/util/List;

    if-eqz p2, :cond_4

    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    new-instance v1, Lts/b;

    invoke-direct {v1, v0}, Lts/b;-><init>(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    return-object p1
.end method

.method public b(Lcom/transsion/subtitle_download/a;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/subtitle_download/SubtitleDownloadManager;->a:Lcom/transsion/subtitle_download/SubtitleDownloadManager;

    invoke-virtual {v0, p1}, Lcom/transsion/subtitle_download/SubtitleDownloadManager;->b(Lcom/transsion/subtitle_download/a;)V

    return-void
.end method

.method public c(Lcom/transsion/subtitle_download/a;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/subtitle_download/SubtitleDownloadManager;->a:Lcom/transsion/subtitle_download/SubtitleDownloadManager;

    invoke-virtual {v0, p1}, Lcom/transsion/subtitle_download/SubtitleDownloadManager;->s(Lcom/transsion/subtitle_download/a;)V

    return-void
.end method

.method public d(Lts/b;)V
    .locals 1

    const-string v0, "bean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/subtitle_download/SubtitleDownloadManager;->a:Lcom/transsion/subtitle_download/SubtitleDownloadManager;

    invoke-virtual {p1}, Lts/b;->a()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/subtitle_download/SubtitleDownloadManager;->d(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V

    return-void
.end method

.method public e(Lvs/a;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public f(Lvs/a;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public g(Lts/a;Lkotlin/jvm/functions/Function1;)V
    .locals 1

    const-string v0, "bean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp;->m(Lts/a;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public init()V
    .locals 3

    sget-object v0, Lcom/transsion/subtitle_download/bean/SubtitleAppType;->NOVEL:Lcom/transsion/subtitle_download/bean/SubtitleAppType;

    invoke-virtual {v0}, Lcom/transsion/subtitle_download/bean/SubtitleAppType;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mb"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/transsion/subtitle_download/bean/SubtitleAppType;->MB:Lcom/transsion/subtitle_download/bean/SubtitleAppType;

    :goto_0
    sget-object v1, Lcom/transsion/subtitle_download/SubtitleDownloadManager;->a:Lcom/transsion/subtitle_download/SubtitleDownloadManager;

    invoke-virtual {v1, v0}, Lcom/transsion/subtitle_download/SubtitleDownloadManager;->k(Lcom/transsion/subtitle_download/bean/SubtitleAppType;)V

    new-instance v0, Lcom/transsion/shorttv/subtitle/manager/d;

    invoke-direct {v0}, Lcom/transsion/shorttv/subtitle/manager/d;-><init>()V

    invoke-virtual {v1, v0}, Lcom/transsion/subtitle_download/SubtitleDownloadManager;->l(Lkotlin/jvm/functions/Function0;)V

    invoke-direct {p0}, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp;->p()Lqs/d;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp;->f:Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp$resDownloadListener$1;

    invoke-interface {v0, v1}, Lqs/d;->j(Lqs/n;)V

    :cond_1
    return-void
.end method
