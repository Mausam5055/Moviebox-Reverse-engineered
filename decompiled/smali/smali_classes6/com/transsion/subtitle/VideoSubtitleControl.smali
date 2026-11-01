.class public final Lcom/transsion/subtitle/VideoSubtitleControl;
.super Ljava/lang/Object;


# instance fields
.field private final A:Lkotlin/Lazy;

.field private B:Ljava/util/Map;

.field private final C:Lcom/transsion/subtitle/VideoSubtitleControl$b;

.field private final D:Lcom/transsion/subtitle/VideoSubtitleControl$downloadListener$1;

.field private E:J

.field private final F:Ljava/util/Set;

.field private G:Z

.field private H:Ljava/lang/String;

.field private final I:Lcom/transsion/subtitle/VideoSubtitleControl$c;

.field private final a:Landroidx/fragment/app/FragmentActivity;

.field private final b:Ljava/lang/String;

.field private c:F

.field private d:Ljava/util/List;

.field private final e:Lkotlin/jvm/functions/Function1;

.field private final f:Lkotlin/jvm/functions/Function2;

.field private final g:Lkotlin/jvm/functions/Function3;

.field private final h:Lkotlin/jvm/functions/Function1;

.field private final i:Lkotlin/jvm/functions/Function1;

.field private final j:Lkotlin/jvm/functions/Function1;

.field private final k:Lkotlin/jvm/functions/Function2;

.field private l:Ljava/util/List;

.field private m:Z

.field private n:J

.field private o:Z

.field private p:Lcom/transsion/baselib/db/download/DownloadBean;

.field private q:Lcom/transsion/subtitle/helper/f;

.field private r:Lcom/transsion/subtitle/helper/LocalVideoUiType;

.field private final s:Lkotlinx/coroutines/n0;

.field private t:Ljava/util/Map;

.field private u:Landroid/view/ViewGroup;

.field private final v:Ljava/util/Map;

.field private final w:Ljava/util/Map;

.field private x:Lkotlin/jvm/functions/Function1;

.field private y:Ljava/util/Map;

.field private z:Ljava/util/Map;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;FLjava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dubs"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loadingCallback"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "controlCallback"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subtitleSelected"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "audioSelected"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "setSublistData"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subtitleSelectedBilingual"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->a:Landroidx/fragment/app/FragmentActivity;

    iput-object p2, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->b:Ljava/lang/String;

    iput p3, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->c:F

    iput-object p4, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->d:Ljava/util/List;

    iput-object p5, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->e:Lkotlin/jvm/functions/Function1;

    iput-object p6, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->f:Lkotlin/jvm/functions/Function2;

    iput-object p7, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->g:Lkotlin/jvm/functions/Function3;

    iput-object p8, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->h:Lkotlin/jvm/functions/Function1;

    iput-object p9, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->i:Lkotlin/jvm/functions/Function1;

    iput-object p10, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->j:Lkotlin/jvm/functions/Function1;

    iput-object p11, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->k:Lkotlin/jvm/functions/Function2;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->l:Ljava/util/List;

    sget-object p2, Lcom/transsion/subtitle/helper/LocalVideoUiType;->MIDDLE:Lcom/transsion/subtitle/helper/LocalVideoUiType;

    iput-object p2, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->r:Lcom/transsion/subtitle/helper/LocalVideoUiType;

    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object p2

    invoke-static {p2}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->s:Lkotlinx/coroutines/n0;

    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p2, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->t:Ljava/util/Map;

    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p2, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->v:Ljava/util/Map;

    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p2, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->w:Ljava/util/Map;

    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p2, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->y:Ljava/util/Map;

    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p2, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->z:Ljava/util/Map;

    new-instance p2, Lcom/transsion/subtitle/b;

    invoke-direct {p2}, Lcom/transsion/subtitle/b;-><init>()V

    invoke-static {p2}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->A:Lkotlin/Lazy;

    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p2, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->B:Ljava/util/Map;

    new-instance p2, Lcom/transsion/subtitle/VideoSubtitleControl$b;

    invoke-direct {p2, p0}, Lcom/transsion/subtitle/VideoSubtitleControl$b;-><init>(Lcom/transsion/subtitle/VideoSubtitleControl;)V

    iput-object p2, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->C:Lcom/transsion/subtitle/VideoSubtitleControl$b;

    new-instance p3, Lcom/transsion/subtitle/VideoSubtitleControl$downloadListener$1;

    invoke-direct {p3, p0}, Lcom/transsion/subtitle/VideoSubtitleControl$downloadListener$1;-><init>(Lcom/transsion/subtitle/VideoSubtitleControl;)V

    iput-object p3, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->D:Lcom/transsion/subtitle/VideoSubtitleControl$downloadListener$1;

    new-instance p4, Lcom/transsion/subtitle/helper/f;

    invoke-direct {p4, p1}, Lcom/transsion/subtitle/helper/f;-><init>(Landroid/content/Context;)V

    iput-object p4, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->q:Lcom/transsion/subtitle/helper/f;

    sget-object p1, Lcom/transsion/subtitle/a;->a:Lcom/transsion/subtitle/a;

    const-class p4, Lcom/transsion/subtitle/VideoSubtitleControl;

    invoke-virtual {p4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p4

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " --> init{} --> VideoSubtitleControl --> \u521b\u5efa\u4e86"

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Lcom/transsion/subtitle/a;->a(Ljava/lang/String;)V

    sget-object p1, Lcom/transsion/subtitle/h;->a:Lcom/transsion/subtitle/h$a;

    invoke-virtual {p1}, Lcom/transsion/subtitle/h$a;->b()Lcom/transsion/subtitle/h;

    move-result-object p4

    invoke-interface {p4, p3}, Lcom/transsion/subtitle/h;->b(Lcom/transsion/subtitle_download/a;)V

    invoke-virtual {p1}, Lcom/transsion/subtitle/h$a;->b()Lcom/transsion/subtitle/h;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/transsion/subtitle/h;->d(Lhu/c;)V

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->F:Ljava/util/Set;

    const-string p1, ""

    iput-object p1, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->H:Ljava/lang/String;

    new-instance p1, Lcom/transsion/subtitle/VideoSubtitleControl$c;

    invoke-direct {p1, p0}, Lcom/transsion/subtitle/VideoSubtitleControl$c;-><init>(Lcom/transsion/subtitle/VideoSubtitleControl;)V

    iput-object p1, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->I:Lcom/transsion/subtitle/VideoSubtitleControl$c;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;FLjava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 14

    move/from16 v0, p12

    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    move-result-object v1

    move-object v6, v1

    goto :goto_0

    :cond_0
    move-object/from16 v6, p4

    :goto_0
    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    move-object v12, v0

    goto :goto_1

    :cond_1
    move-object/from16 v12, p10

    :goto_1
    move-object v2, p0

    move-object v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v13, p11

    invoke-direct/range {v2 .. v13}, Lcom/transsion/subtitle/VideoSubtitleControl;-><init>(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;FLjava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public static final synthetic A(Lcom/transsion/subtitle/VideoSubtitleControl;Leu/a;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/subtitle/VideoSubtitleControl;->X(Leu/a;Z)V

    return-void
.end method

.method public static final synthetic B(Lcom/transsion/subtitle/VideoSubtitleControl;Leu/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/subtitle/VideoSubtitleControl;->Y(Leu/a;)V

    return-void
.end method

.method public static final synthetic C(Lcom/transsion/subtitle/VideoSubtitleControl;Leu/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/subtitle/VideoSubtitleControl;->a0(Leu/a;)V

    return-void
.end method

.method public static final synthetic D(Lcom/transsion/subtitle/VideoSubtitleControl;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->G:Z

    return-void
.end method

.method public static final synthetic E(Lcom/transsion/subtitle/VideoSubtitleControl;Leu/a;Lcom/avery/subtitle/widget/SimpleSubtitleView;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/subtitle/VideoSubtitleControl;->f0(Leu/a;Lcom/avery/subtitle/widget/SimpleSubtitleView;Z)V

    return-void
.end method

.method private final H()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;
    .locals 1

    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->A:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/baselib/db/video/VideoDetailPlayDao;

    return-object v0
.end method

.method private final I()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->t:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/avery/subtitle/widget/SimpleSubtitleView;

    if-eqz v2, :cond_1

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->turnOff(Z)V

    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avery/subtitle/widget/SimpleSubtitleView;

    if-eqz v1, :cond_0

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private final J()V
    .locals 12

    invoke-static {}, Lcom/transsion/subtitle/helper/e;->a()Ljava/util/Locale;

    move-result-object v0

    sget-object v1, Lcom/transsion/subtitle/a;->a:Lcom/transsion/subtitle/a;

    const-class v2, Lcom/transsion/subtitle/VideoSubtitleControl;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " --> initDefaultSubtitle() --> cur language = "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " -- country = "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/transsion/subtitle/a;->a(Ljava/lang/String;)V

    sget-object v3, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    invoke-virtual {v3}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v3

    const-string v4, "k_subtitle_language"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->p:Lcom/transsion/baselib/db/download/DownloadBean;

    const/4 v6, 0x0

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubtitleSelectId()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v6

    :goto_0
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " --> initDefaultSubtitle() --> savedDiffId = "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " -- savedLan = "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/transsion/subtitle/a;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v8, v5

    move-object v7, v6

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Leu/a;

    invoke-virtual {v9}, Leu/a;->d()Z

    move-result v10

    if-nez v10, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v9}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v10

    invoke-virtual {v10}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLan()Ljava/lang/String;

    move-result-object v10

    const-string v11, "en"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    move-object v6, v9

    :cond_3
    if-eqz v4, :cond_4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-nez v10, :cond_5

    :cond_4
    invoke-virtual {v9}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v10

    invoke-virtual {v10}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLanAbbr()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-virtual {v9}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v7

    invoke-virtual {v7}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

    move-result-object v8

    sget-object v7, Lcom/transsion/subtitle/a;->a:Lcom/transsion/subtitle/a;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " --> initDefaultSubtitle() --> \u6ca1\u6709\u81ea\u5df1\u9009\u62e9\u7684\u9ed8\u8ba4\u8bed\u8a00\uff0c\u4f7f\u7528\u624b\u673a\u8bed\u8a00 -- phone set def language = "

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/transsion/subtitle/a;->a(Ljava/lang/String;)V

    :goto_2
    move-object v7, v9

    goto :goto_1

    :cond_5
    invoke-virtual {v9}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v10

    invoke-virtual {v10}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-virtual {v9}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v7

    invoke-virtual {v7}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

    move-result-object v8

    sget-object v7, Lcom/transsion/subtitle/a;->a:Lcom/transsion/subtitle/a;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " --> initDefaultSubtitle() --> \u4f7f\u7528\u4e4b\u524d\u9009\u62e9\u7684\u5b57\u5e55 saved flag = "

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/transsion/subtitle/a;->a(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    if-eqz v4, :cond_7

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-nez v10, :cond_1

    :cond_7
    invoke-virtual {v9}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v10

    invoke-virtual {v10}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLanName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {v9}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v7

    invoke-virtual {v7}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

    move-result-object v8

    sget-object v7, Lcom/transsion/subtitle/a;->a:Lcom/transsion/subtitle/a;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " --> initDefaultSubtitle() --> \u4f7f\u7528\u4e4b\u524d\u9009\u62e9\u7684\u8bed\u8a00 local set savedLan = "

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/transsion/subtitle/a;->a(Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_c

    if-eqz v6, :cond_9

    invoke-virtual {v6}, Leu/a;->d()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {v6}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

    move-result-object v8

    sget-object v0, Lcom/transsion/subtitle/a;->a:Lcom/transsion/subtitle/a;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> initDefaultSubtitle() --> \u6ca1\u6709\u8bbe\u7f6e\u9ed8\u8ba4\u8bed\u8a00 --> english set def language = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/subtitle/a;->a(Ljava/lang/String;)V

    goto :goto_4

    :cond_9
    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->l:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leu/a;

    invoke-virtual {v1}, Leu/a;->d()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {v1}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

    move-result-object v8

    move-object v6, v1

    goto :goto_3

    :cond_b
    move-object v6, v7

    :goto_3
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_d

    sget-object v0, Lcom/transsion/subtitle/a;->a:Lcom/transsion/subtitle/a;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> initDefaultSubtitle() --> \u53ef\u80fd\u5916\u90e8\u53ea\u8bfb\u53d6\u5230\u4e86\u6570\u636e\u5e93\u524d\u9762\u6ca1\u4e0b\u8f7d\u7684\u5b57\u5e55 --> \u6ca1\u6709\u5bf9\u5e94\u7684\u8bed\u8a00\uff0c\u4e0d\u8bbe\u7f6e\uff0c\u9700\u8981\u7528\u6237\u624b\u52a8\u8bbe\u7f6e\u6216\u5f53\u524d\u4e0b\u8f7d\u540e\u81ea\u52a8\u8bbe\u7f6e\u4e0a"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/subtitle/a;->a(Ljava/lang/String;)V

    return-void

    :cond_c
    move-object v6, v7

    :cond_d
    :goto_4
    iput-object v8, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->H:Ljava/lang/String;

    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->g:Lkotlin/jvm/functions/Function3;

    if-eqz v6, :cond_e

    invoke-virtual {v6}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLanName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_f

    :cond_e
    move-object v1, v5

    :cond_f
    if-eqz v6, :cond_11

    invoke-virtual {v6}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v2

    if-eqz v2, :cond_11

    invoke-virtual {v2}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLan()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_10

    goto :goto_5

    :cond_10
    move-object v5, v2

    :cond_11
    :goto_5
    const/4 v2, 0x1

    if-eqz v6, :cond_12

    invoke-virtual {v6}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v3

    if-eqz v3, :cond_12

    invoke-virtual {v3}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getType()I

    move-result v3

    goto :goto_6

    :cond_12
    move v3, v2

    :goto_6
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v5, v3}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v6, :cond_14

    invoke-virtual {v6}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v1, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->t:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_13
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/avery/subtitle/widget/SimpleSubtitleView;

    if-eqz v3, :cond_13

    invoke-virtual {v3, v0}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->setDefaultSubtitle(Ljava/lang/String;)V

    goto :goto_7

    :cond_14
    if-eqz v6, :cond_15

    invoke-virtual {v6, v2}, Leu/a;->l(Z)V

    :cond_15
    if-eqz v6, :cond_17

    invoke-virtual {v6}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getDelay()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    sget-object v3, Llg/a;->a:Llg/a$a;

    sget-object v4, Lcom/transsion/baselib/report/a;->a:Lcom/transsion/baselib/report/a;

    invoke-virtual {v4}, Lcom/transsion/baselib/report/a;->a()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "default delayDuration = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v2}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v3, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->t:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_16
    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_17

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/avery/subtitle/widget/SimpleSubtitleView;

    if-eqz v4, :cond_16

    invoke-virtual {v4, v0, v1}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->subtitleDelay(J)V

    goto :goto_8

    :cond_17
    if-eqz v6, :cond_18

    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->F:Ljava/util/Set;

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_18
    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->t:Ljava/util/Map;

    const-string v1, "top"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avery/subtitle/widget/SimpleSubtitleView;

    invoke-direct {p0, v6, v0, v2}, Lcom/transsion/subtitle/VideoSubtitleControl;->f0(Leu/a;Lcom/avery/subtitle/widget/SimpleSubtitleView;Z)V

    return-void
.end method

.method private final K(Lcom/avery/subtitle/widget/SimpleSubtitleView;)V
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Lcom/transsion/subtitle/VideoSubtitleControl$a;

    invoke-direct {v0, p0}, Lcom/transsion/subtitle/VideoSubtitleControl$a;-><init>(Lcom/transsion/subtitle/VideoSubtitleControl;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->initSubtitle(Li5/a;Z)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/transsion/subtitle/a;->a:Lcom/transsion/subtitle/a;

    const-class v0, Lcom/transsion/subtitle/VideoSubtitleControl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " --> vdSubtitle --> initSubtitle() --> null"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/subtitle/a;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private final M()Z
    .locals 4

    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->l:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Leu/a;

    invoke-virtual {v3}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->isInner()Z

    move-result v3

    if-nez v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-le v2, v0, :cond_2

    move v1, v0

    :cond_2
    return v1
.end method

.method private final Q(Z)V
    .locals 5

    sget-object v0, Lcom/transsion/subtitle/a;->a:Lcom/transsion/subtitle/a;

    const-class v1, Lcom/transsion/subtitle/VideoSubtitleControl;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

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

    invoke-virtual {v0, v1}, Lcom/transsion/subtitle/a;->a(Ljava/lang/String;)V

    const-string v0, "Off"

    const-string v1, ""

    if-eqz p1, :cond_0

    iput-object v1, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->H:Ljava/lang/String;

    invoke-direct {p0}, Lcom/transsion/subtitle/VideoSubtitleControl;->n0()V

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->H:Ljava/lang/String;

    invoke-direct {p0}, Lcom/transsion/subtitle/VideoSubtitleControl;->I()V

    :goto_0
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->F:Ljava/util/Set;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->F:Ljava/util/Set;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->h0(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leu/a;

    iget-object v2, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->g:Lkotlin/jvm/functions/Function3;

    invoke-virtual {v0}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLanName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    move-object v3, v1

    :cond_1
    invoke-virtual {v0}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v4

    invoke-virtual {v4}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLan()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, v4

    :goto_1
    invoke-virtual {v0}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v3, v1, v0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->g:Lkotlin/jvm/functions/Function3;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v0, v2}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_2
    if-eqz p1, :cond_5

    invoke-direct {p0}, Lcom/transsion/subtitle/VideoSubtitleControl;->M()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-direct {p0}, Lcom/transsion/subtitle/VideoSubtitleControl;->o0()V

    :cond_5
    return-void
.end method

.method private final V(Z)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v1, "bilingual"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lhj/i;->a:Lhj/i;

    iget-object v1, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->b:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lhj/i;->p(Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final W(Leu/a;)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->b:Ljava/lang/String;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    if-nez p1, :cond_1

    goto/16 :goto_1

    :cond_1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v1, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->p:Lcom/transsion/baselib/db/download/DownloadBean;

    const-string v2, ""

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    :cond_2
    move-object v1, v2

    :cond_3
    const-string v3, "subject_id"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->p:Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    :cond_4
    move-object v1, v2

    :cond_5
    const-string v3, "resource_id"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getEp()I

    move-result v1

    if-lez v1, :cond_6

    invoke-virtual {p1}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getEp()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "ep"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    invoke-virtual {p1}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getSe()I

    move-result v1

    if-lez v1, :cond_7

    invoke-virtual {p1}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getSe()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "se"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    invoke-virtual {p1}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLan()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    move-object v1, v2

    :cond_8
    const-string v3, "lan"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLanName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_9

    goto :goto_0

    :cond_9
    move-object v2, v1

    :goto_0
    const-string v1, "lan_name"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getType()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "type"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "switch_type"

    const-string v1, "subtitle_select"

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lhj/i;->a:Lhj/i;

    iget-object v1, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->b:Ljava/lang/String;

    const-string v2, "subtitle_switch"

    invoke-virtual {p1, v1, v2, v0}, Lhj/i;->s(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_a
    :goto_1
    return-void
.end method

.method private final X(Leu/a;Z)V
    .locals 6

    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->b:Ljava/lang/String;

    if-eqz v0, :cond_13

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v1, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->p:Lcom/transsion/baselib/db/download/DownloadBean;

    const-string v2, ""

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    :cond_1
    move-object v1, v2

    :cond_2
    const-string v3, "subject_id"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->p:Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    :cond_3
    move-object v1, v2

    :cond_4
    const-string v3, "resource_id"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getEp()I

    move-result v3

    goto :goto_0

    :cond_5
    move v3, v1

    :goto_0
    const/4 v4, 0x0

    if-lez v3, :cond_7

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getEp()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_1

    :cond_6
    move-object v3, v4

    :goto_1
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "ep"

    invoke-interface {v0, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getSe()I

    move-result v1

    :cond_8
    if-lez v1, :cond_a

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getSe()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_2

    :cond_9
    move-object v1, v4

    :goto_2
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "se"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLan()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_c

    :cond_b
    move-object v1, v2

    :cond_c
    const-string v3, "lan"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLanName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_e

    :cond_d
    move-object v1, v2

    :cond_e
    const-string v3, "lan_name"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_f

    goto :goto_3

    :cond_f
    move-object v2, v1

    :cond_10
    :goto_3
    const-string v1, "id"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object p1

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getType()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :cond_11
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "type"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_12

    const-string p1, "1"

    goto :goto_4

    :cond_12
    const-string p1, "0"

    :goto_4
    const-string p2, "result"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lhj/i;->a:Lhj/i;

    iget-object p2, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->b:Ljava/lang/String;

    const-string v1, "subtitle_switch"

    invoke-virtual {p1, p2, v1, v0}, Lhj/i;->s(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_13
    :goto_5
    return-void
.end method

.method private final Y(Leu/a;)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->B:Ljava/util/Map;

    invoke-virtual {p1}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->b:Ljava/lang/String;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->B:Ljava/util/Map;

    invoke-virtual {p1}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v1, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->p:Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    :cond_2
    move-object v1, v2

    :cond_3
    const-string v3, "subject_id"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->p:Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    :cond_4
    move-object v1, v2

    :cond_5
    const-string v3, "resource_id"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getEp()I

    move-result v1

    if-lez v1, :cond_6

    invoke-virtual {p1}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getEp()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "ep"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    invoke-virtual {p1}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getSe()I

    move-result v1

    if-lez v1, :cond_7

    invoke-virtual {p1}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getSe()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "se"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    invoke-virtual {p1}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLan()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    move-object v1, v2

    :cond_8
    const-string v3, "lan"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLanName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_9

    goto :goto_0

    :cond_9
    move-object v2, v1

    :goto_0
    const-string v1, "lan_name"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getType()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "type"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lhj/i;->a:Lhj/i;

    iget-object v1, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->b:Ljava/lang/String;

    const-string v2, "subtitle_sync"

    invoke-virtual {p1, v1, v2, v0}, Lhj/i;->s(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_a
    :goto_1
    return-void
.end method

.method public static synthetic a(Lcom/transsion/subtitle/VideoSubtitleControl;Leu/a;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/subtitle/VideoSubtitleControl;->p0(Lcom/transsion/subtitle/VideoSubtitleControl;Leu/a;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private final a0(Leu/a;)V
    .locals 10

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->isInner()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    invoke-virtual {v0}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    invoke-virtual {p1}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLanName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "k_subtitle_language"

    invoke-virtual {v0, v2, v1}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_0
    sget-object v0, Lcom/transsion/subtitle/a;->a:Lcom/transsion/subtitle/a;

    const-class v1, Lcom/transsion/subtitle/VideoSubtitleControl;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->p:Lcom/transsion/baselib/db/download/DownloadBean;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_2
    move-object v4, v3

    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> saveSelectedFlag() --> saveSelectId = "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -- id = "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/subtitle/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->p:Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    move-object v1, v3

    :goto_2
    invoke-virtual {v0, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setSubtitleSelectId(Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->x:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_6

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_5
    move-object v1, v3

    :goto_3
    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v4

    new-instance v7, Lcom/transsion/subtitle/VideoSubtitleControl$saveSelectedFlag$1;

    invoke-direct {v7, p0, p1, v3}, Lcom/transsion/subtitle/VideoSubtitleControl$saveSelectedFlag$1;-><init>(Lcom/transsion/subtitle/VideoSubtitleControl;Leu/a;Lkotlin/coroutines/Continuation;)V

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public static synthetic b(Lcom/transsion/subtitle/VideoSubtitleControl;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/subtitle/VideoSubtitleControl;->c0(Lcom/transsion/subtitle/VideoSubtitleControl;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/transsion/subtitle/VideoSubtitleControl;Lcom/avery/subtitle/widget/SimpleSubtitleView;Leu/a;ZLcom/avery/subtitle/widget/SimpleSubtitleView;Z)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/transsion/subtitle/VideoSubtitleControl;->g0(Lcom/transsion/subtitle/VideoSubtitleControl;Lcom/avery/subtitle/widget/SimpleSubtitleView;Leu/a;ZLcom/avery/subtitle/widget/SimpleSubtitleView;Z)V

    return-void
.end method

.method private static final c0(Lcom/transsion/subtitle/VideoSubtitleControl;Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->z:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-interface {v1, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/transsion/subtitle/VideoSubtitleControl;->o0()V

    return-void
.end method

.method public static synthetic d()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;
    .locals 1

    invoke-static {}, Lcom/transsion/subtitle/VideoSubtitleControl;->u0()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic e(Lcom/transsion/subtitle/VideoSubtitleControl;)Landroidx/fragment/app/FragmentActivity;
    .locals 0

    iget-object p0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->a:Landroidx/fragment/app/FragmentActivity;

    return-object p0
.end method

.method public static final synthetic f(Lcom/transsion/subtitle/VideoSubtitleControl;)Lkotlin/jvm/functions/Function1;
    .locals 0

    iget-object p0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->h:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method private final f0(Leu/a;Lcom/avery/subtitle/widget/SimpleSubtitleView;Z)V
    .locals 9

    const-string v0, ""

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    move-object v1, v0

    :cond_1
    iput-object v1, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->H:Ljava/lang/String;

    const/4 v1, 0x0

    const-class v2, Lcom/transsion/subtitle/VideoSubtitleControl;

    if-nez p1, :cond_5

    if-eqz p2, :cond_2

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->turnOff(Z)V

    const/16 p1, 0x8

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    sget-object p1, Lcom/transsion/subtitle/a;->a:Lcom/transsion/subtitle/a;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    if-eqz p3, :cond_3

    const-string v2, "topBean"

    goto :goto_0

    :cond_3
    const-string v2, "bottomBean"

    :goto_0
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " --> setSubtitle() --> "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " == null --> isTop = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, " --> view.hashCode = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/subtitle/a;->a(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    if-eqz p2, :cond_8

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getPath()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    move-object v1, v0

    :cond_6
    invoke-static {p1}, Lcom/transsion/subtitle/helper/e;->b(Leu/a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->setSubtitlePath(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getPath()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    goto :goto_1

    :cond_7
    move-object v0, v1

    :goto_1
    invoke-static {p1}, Lcom/transsion/subtitle/helper/e;->b(Leu/a;)Ljava/lang/String;

    move-result-object v1

    new-instance v8, Lcom/transsion/subtitle/e;

    move-object v2, v8

    move-object v3, p0

    move-object v4, p2

    move-object v5, p1

    move v6, p3

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/transsion/subtitle/e;-><init>(Lcom/transsion/subtitle/VideoSubtitleControl;Lcom/avery/subtitle/widget/SimpleSubtitleView;Leu/a;ZLcom/avery/subtitle/widget/SimpleSubtitleView;)V

    invoke-virtual {p2, v0, v1, v8}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->selectSubtitle(Ljava/lang/String;Ljava/lang/String;Li5/b;)V

    iget-object p2, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->x:Lkotlin/jvm/functions/Function1;

    if-eqz p2, :cond_9

    invoke-virtual {p1}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_8
    sget-object p1, Lcom/transsion/subtitle/a;->a:Lcom/transsion/subtitle/a;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " --> setSubtitle() --> subtitleView ==null --> isTop = "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/subtitle/a;->b(Ljava/lang/String;)V

    :cond_9
    :goto_2
    return-void
.end method

.method public static final synthetic g(Lcom/transsion/subtitle/VideoSubtitleControl;)J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->n:J

    return-wide v0
.end method

.method private static final g0(Lcom/transsion/subtitle/VideoSubtitleControl;Lcom/avery/subtitle/widget/SimpleSubtitleView;Leu/a;ZLcom/avery/subtitle/widget/SimpleSubtitleView;Z)V
    .locals 2

    iget-object p0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->e:Lkotlin/jvm/functions/Function1;

    sget-object p5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, p5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->turnOff(Z)V

    invoke-virtual {p1}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->refreshImmediately()V

    sget-object p0, Lcom/transsion/subtitle/h;->a:Lcom/transsion/subtitle/h$a;

    invoke-virtual {p0}, Lcom/transsion/subtitle/h$a;->b()Lcom/transsion/subtitle/h;

    move-result-object p0

    invoke-interface {p0, p2}, Lcom/transsion/subtitle/h;->g(Leu/a;)V

    invoke-virtual {p2}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getDelay()Ljava/lang/Long;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->subtitleDelay(J)V

    :cond_0
    sget-object p0, Lcom/transsion/subtitle/a;->a:Lcom/transsion/subtitle/a;

    const-class p1, Lcom/transsion/subtitle/VideoSubtitleControl;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object p5

    invoke-virtual {p5}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getName()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4}, Ljava/lang/Object;->hashCode()I

    move-result p4

    invoke-virtual {p2}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getPath()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " --> setSubtitle() --> refreshImmediately() --> \u5c55\u793a\u5b57\u5e55 --> bean.dbBean.name = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " --> isTop = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "  --> view.hashCode = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " -- path = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/subtitle/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic h(Lcom/transsion/subtitle/VideoSubtitleControl;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->H:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic i(Lcom/transsion/subtitle/VideoSubtitleControl;)Lcom/transsion/subtitle/helper/LocalVideoUiType;
    .locals 0

    iget-object p0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->r:Lcom/transsion/subtitle/helper/LocalVideoUiType;

    return-object p0
.end method

.method public static final synthetic j(Lcom/transsion/subtitle/VideoSubtitleControl;)Lcom/transsion/baselib/db/download/DownloadBean;
    .locals 0

    iget-object p0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->p:Lcom/transsion/baselib/db/download/DownloadBean;

    return-object p0
.end method

.method public static final synthetic k(Lcom/transsion/subtitle/VideoSubtitleControl;)Lkotlinx/coroutines/n0;
    .locals 0

    iget-object p0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->s:Lkotlinx/coroutines/n0;

    return-object p0
.end method

.method public static final synthetic l(Lcom/transsion/subtitle/VideoSubtitleControl;)Lcom/transsion/subtitle/helper/f;
    .locals 0

    iget-object p0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->q:Lcom/transsion/subtitle/helper/f;

    return-object p0
.end method

.method public static final synthetic m(Lcom/transsion/subtitle/VideoSubtitleControl;)Lkotlin/jvm/functions/Function1;
    .locals 0

    iget-object p0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->i:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public static synthetic m0(Lcom/transsion/subtitle/VideoSubtitleControl;ZZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/transsion/subtitle/VideoSubtitleControl;->l0(ZZ)V

    return-void
.end method

.method public static final synthetic n(Lcom/transsion/subtitle/VideoSubtitleControl;)Lkotlin/jvm/functions/Function1;
    .locals 0

    iget-object p0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->j:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method private final n0()V
    .locals 7

    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->F:Ljava/util/Set;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    if-gez v2, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    :cond_0
    check-cast v3, Leu/a;

    const/4 v5, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v5, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->t:Ljava/util/Map;

    const-string v5, "bottom"

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/avery/subtitle/widget/SimpleSubtitleView;

    invoke-direct {p0, v3, v2, v1}, Lcom/transsion/subtitle/VideoSubtitleControl;->f0(Leu/a;Lcom/avery/subtitle/widget/SimpleSubtitleView;Z)V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->t:Ljava/util/Map;

    const-string v6, "top"

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/avery/subtitle/widget/SimpleSubtitleView;

    invoke-direct {p0, v3, v2, v5}, Lcom/transsion/subtitle/VideoSubtitleControl;->f0(Leu/a;Lcom/avery/subtitle/widget/SimpleSubtitleView;Z)V

    :goto_1
    move v2, v4

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static final synthetic o(Lcom/transsion/subtitle/VideoSubtitleControl;)F
    .locals 0

    iget p0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->c:F

    return p0
.end method

.method private final o0()V
    .locals 12

    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2, v1}, Lcom/transsion/subtitle/VideoSubtitleControl;->l0(ZZ)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->a:Landroidx/fragment/app/FragmentActivity;

    sget-object v3, Lcom/transsion/subtitle/dialog/SubtitleMainDialog2;->x:Lcom/transsion/subtitle/dialog/SubtitleMainDialog2$a;

    iget-object v4, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->r:Lcom/transsion/subtitle/helper/LocalVideoUiType;

    sget-object v5, Lcom/transsion/subtitle/helper/LocalVideoUiType;->LAND:Lcom/transsion/subtitle/helper/LocalVideoUiType;

    if-ne v4, v5, :cond_1

    move v4, v1

    goto :goto_0

    :cond_1
    move v4, v2

    :goto_0
    iget-object v1, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->H:Ljava/lang/String;

    const-string v2, "Off"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    iget-object v6, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->l:Ljava/util/List;

    iget-object v7, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->d:Ljava/util/List;

    iget-object v8, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->p:Lcom/transsion/baselib/db/download/DownloadBean;

    iget-object v9, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->r:Lcom/transsion/subtitle/helper/LocalVideoUiType;

    iget-object v1, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->q:Lcom/transsion/subtitle/helper/f;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v9}, Lcom/transsion/subtitle/helper/f;->h(Lcom/transsion/subtitle/helper/LocalVideoUiType;)I

    move-result v1

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/blankj/utilcode/util/y;->c()I

    move-result v1

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget-object v11, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->b:Ljava/lang/String;

    invoke-virtual/range {v3 .. v11}, Lcom/transsion/subtitle/dialog/SubtitleMainDialog2$a;->b(ZZLjava/util/List;Ljava/util/List;Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsion/subtitle/helper/LocalVideoUiType;Ljava/lang/Integer;Ljava/lang/String;)Lcom/transsion/subtitle/dialog/SubtitleMainDialog2;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->I:Lcom/transsion/subtitle/VideoSubtitleControl$c;

    invoke-virtual {v1, v2}, Lcom/transsion/subtitle/dialog/SubtitleMainDialog2;->F0(Lhu/b;)V

    new-instance v2, Lcom/transsion/subtitle/d;

    invoke-direct {v2, p0}, Lcom/transsion/subtitle/d;-><init>(Lcom/transsion/subtitle/VideoSubtitleControl;)V

    invoke-virtual {v1, v2}, Lcom/transsion/subtitle/dialog/SubtitleMainDialog2;->J0(Lkotlin/jvm/functions/Function1;)V

    const-string v2, "fragment_subtitle_main_dialog"

    invoke-virtual {v1, v0, v2}, Lcom/transsion/baseui/dialog/BaseDialog;->k0(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic p(Lcom/transsion/subtitle/VideoSubtitleControl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->l:Ljava/util/List;

    return-object p0
.end method

.method private static final p0(Lcom/transsion/subtitle/VideoSubtitleControl;Leu/a;)Lkotlin/Unit;
    .locals 1

    const-string v0, "bean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/transsion/subtitle/VideoSubtitleControl;->q0(Leu/a;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public static final synthetic q(Lcom/transsion/subtitle/VideoSubtitleControl;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->F:Ljava/util/Set;

    return-object p0
.end method

.method private final q0(Leu/a;)V
    .locals 8

    sget-object v0, Lcom/transsion/subtitle/a;->a:Lcom/transsion/subtitle/a;

    const-class v1, Lcom/transsion/subtitle/VideoSubtitleControl;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->G:Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " --> subtitleSelectFromSearch() --> \u641c\u7d22\u5b57\u5e55\u9009\u4e2d --> \u76f4\u63a5\u8bbe\u7f6e\u4f7f\u7528 --> isOpenBilingual = "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/transsion/subtitle/a;->a(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->G:Z

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->l:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v6, "1st"

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Leu/a;

    invoke-virtual {v5}, Leu/a;->f()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v5}, Leu/a;->a()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v5, v3}, Leu/a;->l(Z)V

    invoke-virtual {v5, v2}, Leu/a;->g(Ljava/lang/String;)V

    sget-object v5, Lcom/transsion/subtitle/a;->a:Lcom/transsion/subtitle/a;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " --> subtitleSelectFromSearch() --> \u8fd9\u91cc\u9ed8\u8ba4\u66ff\u6362 1st --> it.isSelect = false"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/transsion/subtitle/a;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->l:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Leu/a;

    invoke-virtual {v3}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v5

    invoke-virtual {v5}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v7

    invoke-virtual {v7}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v3, v4}, Leu/a;->l(Z)V

    invoke-virtual {v3, v6}, Leu/a;->g(Ljava/lang/String;)V

    sget-object v3, Lcom/transsion/subtitle/a;->a:Lcom/transsion/subtitle/a;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " --> subtitleSelectFromSearch() --> \u8fd9\u91cc\u9ed8\u8ba4\u66ff\u6362 1st --> it.isSelect = true"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/transsion/subtitle/a;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->l:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Leu/a;

    invoke-virtual {v5}, Leu/a;->f()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v5, v3}, Leu/a;->l(Z)V

    goto :goto_2

    :cond_5
    sget-object v0, Lcom/transsion/subtitle/a;->a:Lcom/transsion/subtitle/a;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " --> subtitleSelectFromSearch() --> \u80fd\u4ece\u641c\u7d22\u9009\u4e2d\u56de\u8c03\uff0c\u4e00\u5b9a\u5728\u5b57\u5e55\u5217\u8868\u91cc\u9762\u4e86"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/transsion/subtitle/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->l:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Leu/a;

    invoke-virtual {p1}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v5

    invoke-virtual {v5}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v6

    invoke-virtual {v6}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v3, v4}, Leu/a;->l(Z)V

    goto :goto_3

    :cond_7
    sget-object v0, Lcom/transsion/subtitle/a;->a:Lcom/transsion/subtitle/a;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " --> subtitleSelectFromSearch() --> \u627e\u5230ID\u76f8\u540c\u7684\u54ea\u4e2a\u8bbe\u7f6e \u9009\u4e2d"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/transsion/subtitle/a;->a(Ljava/lang/String;)V

    :cond_8
    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->t:Ljava/util/Map;

    const-string v3, "top"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avery/subtitle/widget/SimpleSubtitleView;

    invoke-direct {p0, p1, v0, v4}, Lcom/transsion/subtitle/VideoSubtitleControl;->f0(Leu/a;Lcom/avery/subtitle/widget/SimpleSubtitleView;Z)V

    sget-object v0, Lcom/transsion/subtitle/a;->a:Lcom/transsion/subtitle/a;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> subtitleSelectFromSearch() --> \u8bbe\u7f6e\u5b57\u5e55 --> bean.id = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/subtitle/a;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->j:Lkotlin/jvm/functions/Function1;

    if-eqz p1, :cond_b

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_a

    sget v1, Lcom/transsion/subtitle/R$string;->subtitle_switch_toast:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_4

    :cond_9
    move-object v2, v0

    :cond_a
    :goto_4
    invoke-interface {p1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    return-void
.end method

.method public static final synthetic r(Lcom/transsion/subtitle/VideoSubtitleControl;)Lkotlin/jvm/functions/Function3;
    .locals 0

    iget-object p0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->g:Lkotlin/jvm/functions/Function3;

    return-object p0
.end method

.method public static final synthetic s(Lcom/transsion/subtitle/VideoSubtitleControl;)Lkotlin/jvm/functions/Function2;
    .locals 0

    iget-object p0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->k:Lkotlin/jvm/functions/Function2;

    return-object p0
.end method

.method public static final synthetic t(Lcom/transsion/subtitle/VideoSubtitleControl;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->u:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public static final synthetic u(Lcom/transsion/subtitle/VideoSubtitleControl;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->t:Ljava/util/Map;

    return-object p0
.end method

.method private static final u0()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;
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

.method public static final synthetic v(Lcom/transsion/subtitle/VideoSubtitleControl;)Lcom/transsion/baselib/db/video/VideoDetailPlayDao;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/subtitle/VideoSubtitleControl;->H()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic w(Lcom/transsion/subtitle/VideoSubtitleControl;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->G:Z

    return p0
.end method

.method public static final synthetic x(Lcom/transsion/subtitle/VideoSubtitleControl;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/subtitle/VideoSubtitleControl;->Q(Z)V

    return-void
.end method

.method public static final synthetic y(Lcom/transsion/subtitle/VideoSubtitleControl;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/subtitle/VideoSubtitleControl;->V(Z)V

    return-void
.end method

.method public static final synthetic z(Lcom/transsion/subtitle/VideoSubtitleControl;Leu/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/subtitle/VideoSubtitleControl;->W(Leu/a;)V

    return-void
.end method


# virtual methods
.method public final F(Lcom/transsion/subtitle/helper/LocalVideoUiType;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)V
    .locals 1

    const-string v0, "uitType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "switchCallback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settingCallback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->y:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->z:Ljava/util/Map;

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final G()Ljava/util/Map;
    .locals 1

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    return-object v0
.end method

.method public final L()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->o:Z

    return v0
.end method

.method public final N()V
    .locals 3

    sget-object v0, Lcom/transsion/subtitle/a;->a:Lcom/transsion/subtitle/a;

    const-class v1, Lcom/transsion/subtitle/VideoSubtitleControl;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> onDestroy()"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/subtitle/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->t:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/avery/subtitle/widget/SimpleSubtitleView;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->stop()V

    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avery/subtitle/widget/SimpleSubtitleView;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->destroy()V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->m:Z

    if-eqz v0, :cond_6

    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->v:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/avery/subtitle/widget/SimpleSubtitleView;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->destroy()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_5
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->t:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->y:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->z:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    sget-object v0, Lcom/transsion/subtitle/h;->a:Lcom/transsion/subtitle/h$a;

    invoke-virtual {v0}, Lcom/transsion/subtitle/h$a;->b()Lcom/transsion/subtitle/h;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->D:Lcom/transsion/subtitle/VideoSubtitleControl$downloadListener$1;

    invoke-interface {v1, v2}, Lcom/transsion/subtitle/h;->c(Lcom/transsion/subtitle_download/a;)V

    invoke-virtual {v0}, Lcom/transsion/subtitle/h$a;->b()Lcom/transsion/subtitle/h;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->C:Lcom/transsion/subtitle/VideoSubtitleControl$b;

    invoke-interface {v1, v2}, Lcom/transsion/subtitle/h;->f(Lhu/c;)V

    invoke-virtual {v0}, Lcom/transsion/subtitle/h$a;->b()Lcom/transsion/subtitle/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/subtitle/h;->reset()V

    return-void
.end method

.method public final O(Leu/a;)V
    .locals 7

    const-string v0, "bean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/subtitle/a;->a:Lcom/transsion/subtitle/a;

    const-class v1, Lcom/transsion/subtitle/VideoSubtitleControl;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLan()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v4

    invoke-virtual {v4}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLanName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Leu/a;->d()Z

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " --> onDetailPageSubtitleSelect--> "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/transsion/subtitle/a;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Leu/a;->d()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->I:Lcom/transsion/subtitle/VideoSubtitleControl$c;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v3, v1, p1}, Lcom/transsion/subtitle/VideoSubtitleControl$c;->k(Leu/a;Leu/a;ZLeu/a;)V

    goto/16 :goto_0

    :cond_0
    sget-object v2, Lnh/m;->a:Lnh/m;

    invoke-virtual {v2}, Lnh/m;->e()Z

    move-result v2

    if-nez v2, :cond_1

    sget-object p1, Lcom/tn/lib/widget/toast/core/h;->a:Lcom/tn/lib/widget/toast/core/h;

    sget v0, Lcom/transsion/baseui/R$string;->base_network_fail:I

    invoke-virtual {p1, v0}, Lcom/tn/lib/widget/toast/core/h;->k(I)V

    return-void

    :cond_1
    invoke-virtual {p1}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v2

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->setStatus(I)V

    invoke-virtual {p1}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->setSetImmediately(Z)V

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->p:Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getTotalTitleName()Ljava/lang/String;

    move-result-object v3

    :cond_2
    invoke-virtual {p1}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getType()I

    move-result v2

    invoke-virtual {p1}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v4

    invoke-virtual {v4}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getSubtitleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v5

    invoke-virtual {v5}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getResourceId()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> DetailPage downloadSubtitle() --> \u5185\u7f6e\u5b57\u5e55\u5217\u8868\uff0c\u4e0b\u8f7d\u5b57\u5e55\uff0cname = "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", subtype = "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",\"  download subtitleName = "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", subResourceId = "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "~"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/subtitle/a;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/subtitle/h;->a:Lcom/transsion/subtitle/h$a;

    invoke-virtual {v0}, Lcom/transsion/subtitle/h$a;->b()Lcom/transsion/subtitle/h;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/transsion/subtitle/h;->h(Leu/a;)V

    :goto_0
    return-void
.end method

.method public final P(Lcom/transsion/subtitle/helper/LocalVideoUiType;)V
    .locals 10

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->r:Lcom/transsion/subtitle/helper/LocalVideoUiType;

    iget-boolean v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->m:Z

    const-string v1, "bottom"

    const-class v2, Lcom/transsion/subtitle/VideoSubtitleControl;

    const-string v3, "top"

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->v:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    :cond_0
    iput-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->t:Ljava/util/Map;

    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->w:Ljava/util/Map;

    iget-object v4, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->r:Lcom/transsion/subtitle/helper/LocalVideoUiType;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->u:Landroid/view/ViewGroup;

    sget-object v0, Lcom/transsion/subtitle/a;->a:Lcom/transsion/subtitle/a;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->r:Lcom/transsion/subtitle/helper/LocalVideoUiType;

    iget-object v6, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->F:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " --> onLocalUiChanged() --> currentUiType = "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " --> subtitleSelectList.size = "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/transsion/subtitle/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->F:Ljava/util/Set;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Leu/a;

    iget-boolean v5, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->G:Z

    const/4 v6, 0x1

    if-eqz v5, :cond_7

    invoke-virtual {v4}, Leu/a;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_5

    const v9, 0xc652

    if-eq v7, v9, :cond_3

    const v6, 0xc968

    if-eq v7, v6, :cond_1

    goto :goto_2

    :cond_1
    const-string v6, "2nd"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_2

    :cond_2
    iget-object v5, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->t:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/avery/subtitle/widget/SimpleSubtitleView;

    :goto_1
    move v6, v8

    goto :goto_3

    :cond_3
    const-string v7, "1st"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_2

    :cond_4
    iget-object v5, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->t:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/avery/subtitle/widget/SimpleSubtitleView;

    goto :goto_3

    :cond_5
    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    :goto_2
    const/4 v5, 0x0

    goto :goto_1

    :cond_6
    iget-object v5, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->t:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/avery/subtitle/widget/SimpleSubtitleView;

    :goto_3
    invoke-direct {p0, v4, v5, v6}, Lcom/transsion/subtitle/VideoSubtitleControl;->f0(Leu/a;Lcom/avery/subtitle/widget/SimpleSubtitleView;Z)V

    goto :goto_0

    :cond_7
    iget-object v5, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->t:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/avery/subtitle/widget/SimpleSubtitleView;

    invoke-direct {p0, v4, v5, v6}, Lcom/transsion/subtitle/VideoSubtitleControl;->f0(Leu/a;Lcom/avery/subtitle/widget/SimpleSubtitleView;Z)V

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->q:Lcom/transsion/subtitle/helper/f;

    if-eqz v0, :cond_9

    iget-object v4, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->t:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/avery/subtitle/widget/SimpleSubtitleView;

    iget-object v4, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->t:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avery/subtitle/widget/SimpleSubtitleView;

    iget-object v4, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->u:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3, v1, p1, v4}, Lcom/transsion/subtitle/helper/f;->i(Lcom/avery/subtitle/widget/SimpleSubtitleView;Lcom/avery/subtitle/widget/SimpleSubtitleView;Lcom/transsion/subtitle/helper/LocalVideoUiType;Landroid/view/ViewGroup;)V

    :cond_9
    sget-object p1, Lcom/transsion/subtitle/a;->a:Lcom/transsion/subtitle/a;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " --> onLocalUiChanged() --> \u9875\u9762\u5207\u6362\u5237\u65b0\u5b57\u5e55\u4f4d\u7f6e\u4fe1\u606f"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/subtitle/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final R()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->t:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avery/subtitle/widget/SimpleSubtitleView;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->pause()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final S(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->E:J

    return-void
.end method

.method public final T()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->t:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avery/subtitle/widget/SimpleSubtitleView;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->resume()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final U()V
    .locals 0

    return-void
.end method

.method public final Z()V
    .locals 3

    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->H:Ljava/lang/String;

    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->t:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/avery/subtitle/widget/SimpleSubtitleView;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->reset()V

    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avery/subtitle/widget/SimpleSubtitleView;

    if-eqz v1, :cond_0

    invoke-static {v1}, Ljg/c;->g(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/transsion/subtitle/a;->a:Lcom/transsion/subtitle/a;

    const-class v1, Lcom/transsion/subtitle/VideoSubtitleControl;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> reset() --> \u91cd\u7f6e\u8d44\u6e90"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/subtitle/a;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/subtitle/h;->a:Lcom/transsion/subtitle/h$a;

    invoke-virtual {v0}, Lcom/transsion/subtitle/h$a;->b()Lcom/transsion/subtitle/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/subtitle/h;->reset()V

    return-void
.end method

.method public final b0(Lcom/transsion/subtitle/helper/LocalVideoUiType;Landroid/widget/TextView;Lcom/avery/subtitle/widget/SimpleSubtitleView;Lcom/avery/subtitle/widget/SimpleSubtitleView;Landroid/view/ViewGroup;Z)V
    .locals 3

    const-string v0, "uiType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-boolean p6, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->m:Z

    iput-object p5, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->u:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->t:Ljava/util/Map;

    const-string v1, "top"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->t:Ljava/util/Map;

    const-string v2, "bottom"

    invoke-interface {v0, v2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p6, :cond_0

    new-instance p6, Ljava/util/LinkedHashMap;

    invoke-direct {p6}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p6, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p6, v2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->v:Ljava/util/Map;

    invoke-interface {v0, p1, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p6, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->w:Ljava/util/Map;

    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->u:Landroid/view/ViewGroup;

    invoke-interface {p6, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object p6, Lcom/transsion/subtitle/h;->a:Lcom/transsion/subtitle/h$a;

    invoke-virtual {p6}, Lcom/transsion/subtitle/h$a;->b()Lcom/transsion/subtitle/h;

    move-result-object p6

    invoke-interface {p6}, Lcom/transsion/subtitle/h;->reset()V

    if-eqz p2, :cond_1

    new-instance p6, Lcom/transsion/subtitle/c;

    invoke-direct {p6, p0}, Lcom/transsion/subtitle/c;-><init>(Lcom/transsion/subtitle/VideoSubtitleControl;)V

    invoke-virtual {p2, p6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    if-eqz p3, :cond_2

    invoke-direct {p0, p3}, Lcom/transsion/subtitle/VideoSubtitleControl;->K(Lcom/avery/subtitle/widget/SimpleSubtitleView;)V

    :cond_2
    if-eqz p4, :cond_3

    invoke-direct {p0, p4}, Lcom/transsion/subtitle/VideoSubtitleControl;->K(Lcom/avery/subtitle/widget/SimpleSubtitleView;)V

    :cond_3
    iget-object p2, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->q:Lcom/transsion/subtitle/helper/f;

    if-eqz p2, :cond_4

    invoke-virtual {p2, p3, p4, p1, p5}, Lcom/transsion/subtitle/helper/f;->i(Lcom/avery/subtitle/widget/SimpleSubtitleView;Lcom/avery/subtitle/widget/SimpleSubtitleView;Lcom/transsion/subtitle/helper/LocalVideoUiType;Landroid/view/ViewGroup;)V

    :cond_4
    sget-object p2, Lcom/transsion/subtitle/a;->a:Lcom/transsion/subtitle/a;

    const-class p3, Lcom/transsion/subtitle/VideoSubtitleControl;

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " --> setData() --> uiType = "

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " --> END"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/transsion/subtitle/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final d0(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->o:Z

    return-void
.end method

.method public final e0(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->x:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final h0(Ljava/util/List;)V
    .locals 7

    invoke-virtual {p0}, Lcom/transsion/subtitle/VideoSubtitleControl;->Z()V

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    const-class v1, Lcom/transsion/subtitle/VideoSubtitleControl;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    sget-object v0, Lcom/transsion/subtitle/a;->a:Lcom/transsion/subtitle/a;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " --> setSubtitleDataList() --> \u5f53\u524d\u53ef\u7528\u5b57\u5e55\u6570\u91cf -- size = "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/transsion/subtitle/a;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Leu/a;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Leu/a;->l(Z)V

    invoke-virtual {v3}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v4

    invoke-virtual {v4}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v4

    invoke-virtual {v4}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/transsion/subtitle/a;->a:Lcom/transsion/subtitle/a;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " --> setSubtitleDataList() --> Repeated\uff0cremove~  name = "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/transsion/subtitle/a;->a(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v4

    invoke-virtual {v4}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    new-instance v0, Lcom/transsion/subtitle/VideoSubtitleControl$setSubtitleDataList$$inlined$sortBy$1;

    invoke-direct {v0}, Lcom/transsion/subtitle/VideoSubtitleControl$setSubtitleDataList$$inlined$sortBy$1;-><init>()V

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->A(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_3
    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->l:Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->i:Lkotlin/jvm/functions/Function1;

    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->l:Ljava/util/List;

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/transsion/subtitle/VideoSubtitleControl;->J()V

    return-void

    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->l:Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    return-void

    :cond_5
    sget-object p1, Lcom/transsion/subtitle/a;->a:Lcom/transsion/subtitle/a;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->p:Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubtitleResId()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " --> setSubtitleDataList() --> \u65e0\u5b57\u5e55 --> subtitleResId:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/subtitle/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final i0(Lhu/a;)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final j0(Lcom/transsion/baselib/db/download/DownloadBean;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->p:Lcom/transsion/baselib/db/download/DownloadBean;

    return-void
.end method

.method public final k0(Lkotlin/jvm/functions/Function1;)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final l0(ZZ)V
    .locals 9

    sget-object v0, Lsm/f;->c:Lsm/f$a;

    invoke-virtual {v0}, Lsm/f$a;->a()Lsm/f;

    move-result-object v0

    const-string v1, "sa_show_no_subtitle_tips"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lsm/f;->c(Ljava/lang/String;Z)Lcom/transsion/mb/config/manager/ConfigBean;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/mb/config/manager/ConfigBean;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/text/StringsKt;->m1(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    if-nez p2, :cond_1

    return-void

    :cond_1
    iget-object p2, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->a:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p2}, Landroid/app/Activity;->isDestroyed()Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->a:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p2}, Landroid/app/Activity;->isFinishing()Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_2

    :cond_2
    iget-object p2, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->a:Landroidx/fragment/app/FragmentActivity;

    sget-object v3, Lcom/transsion/subtitle/dialog/SubtitleMainDialog2;->x:Lcom/transsion/subtitle/dialog/SubtitleMainDialog2$a;

    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->r:Lcom/transsion/subtitle/helper/LocalVideoUiType;

    sget-object v4, Lcom/transsion/subtitle/helper/LocalVideoUiType;->LAND:Lcom/transsion/subtitle/helper/LocalVideoUiType;

    if-ne v0, v4, :cond_3

    move v4, v2

    goto :goto_1

    :cond_3
    move v4, v1

    :goto_1
    iget-object v6, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->d:Ljava/util/List;

    iget-object v7, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->p:Lcom/transsion/baselib/db/download/DownloadBean;

    iget-object v8, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->b:Ljava/lang/String;

    move v5, p1

    invoke-virtual/range {v3 .. v8}, Lcom/transsion/subtitle/dialog/SubtitleMainDialog2$a;->a(ZZLjava/util/List;Lcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/String;)Lcom/transsion/subtitle/dialog/SubtitleMainDialog2;

    move-result-object p1

    const-string v0, "fragment_subtitle_main_dialog"

    invoke-virtual {p1, p2, v0}, Lcom/transsion/baseui/dialog/BaseDialog;->k0(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->I:Lcom/transsion/subtitle/VideoSubtitleControl$c;

    invoke-virtual {p1, p2}, Lcom/transsion/subtitle/dialog/SubtitleMainDialog2;->F0(Lhu/b;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public final r0(Ljava/util/List;)V
    .locals 1

    const-string v0, "dubs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->d:Ljava/util/List;

    return-void
.end method

.method public final s0(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->n:J

    return-void
.end method

.method public final t0(F)V
    .locals 0

    iput p1, p0, Lcom/transsion/subtitle/VideoSubtitleControl;->c:F

    return-void
.end method
