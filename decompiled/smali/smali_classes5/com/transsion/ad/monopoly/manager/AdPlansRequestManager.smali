.class public final Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager;

.field private static final b:Lkotlin/Lazy;

.field private static c:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager;

    invoke-direct {v0}, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager;-><init>()V

    sput-object v0, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager;->a:Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager;

    new-instance v0, Lcom/transsion/ad/monopoly/manager/a;

    invoke-direct {v0}, Lcom/transsion/ad/monopoly/manager/a;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager;->b:Lkotlin/Lazy;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lpi/a;
    .locals 1

    invoke-static {}, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager;->s()Lpi/a;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic b(Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager;->h(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic c(Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager;Lcom/transsion/ad/monopoly/model/MbAdPlansDto;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager;->i(Lcom/transsion/ad/monopoly/model/MbAdPlansDto;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic d(Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager;->j(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic e(Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager;Lcom/transsion/ad/monopoly/model/MbAdPlansDto;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager;->r(Lcom/transsion/ad/monopoly/model/MbAdPlansDto;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic f(Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager;Lcom/transsion/ad/monopoly/model/MbAdPlansDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager;->v(Lcom/transsion/ad/monopoly/model/MbAdPlansDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic g(Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager;Lcom/transsion/ad/monopoly/model/AdPlans;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager;->w(Lcom/transsion/ad/monopoly/model/AdPlans;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final h(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10

    instance-of v0, p2, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$checkDownloadMaterial$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$checkDownloadMaterial$1;

    iget v1, v0, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$checkDownloadMaterial$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$checkDownloadMaterial$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$checkDownloadMaterial$1;

    invoke-direct {v0, p0, p2}, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$checkDownloadMaterial$1;-><init>(Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$checkDownloadMaterial$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$checkDownloadMaterial$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$checkDownloadMaterial$1;->L$2:Ljava/lang/Object;

    check-cast p1, Lcom/transsion/ad/monopoly/model/AdPlans;

    iget-object v2, v0, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$checkDownloadMaterial$1;->L$1:Ljava/lang/Object;

    check-cast v2, Ljava/util/Iterator;

    iget-object v4, v0, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$checkDownloadMaterial$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    new-instance p2, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {p2}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    iput-boolean v3, p2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v2, p1

    move-object v4, p2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/ad/monopoly/model/AdPlans;

    sget-object p2, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;->a:Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;

    invoke-virtual {p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getId()Ljava/lang/String;

    move-result-object v5

    iput-object v4, v0, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$checkDownloadMaterial$1;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$checkDownloadMaterial$1;->L$1:Ljava/lang/Object;

    iput-object p1, v0, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$checkDownloadMaterial$1;->L$2:Ljava/lang/Object;

    iput v3, v0, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$checkDownloadMaterial$1;->label:I

    invoke-virtual {p2, v5, v0}, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;->n(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    :goto_2
    check-cast p2, Lcom/transsion/ad/db/plan/MbAdDbPlans;

    const/4 v5, 0x0

    if-eqz p2, :cond_b

    sget-object v6, Lcom/transsion/ad/monopoly/plan/AdPlansTransform;->a:Lcom/transsion/ad/monopoly/plan/AdPlansTransform;

    invoke-virtual {v6, p2}, Lcom/transsion/ad/monopoly/plan/AdPlansTransform;->b(Lcom/transsion/ad/db/plan/MbAdDbPlans;)Lcom/transsion/ad/monopoly/model/AdPlans;

    move-result-object p2

    if-eqz p2, :cond_a

    invoke-virtual {p2}, Lcom/transsion/ad/monopoly/model/AdPlans;->getAdMaterialList()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_a

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    xor-int/2addr v6, v3

    if-ne v6, v3, :cond_a

    invoke-virtual {p2}, Lcom/transsion/ad/monopoly/model/AdPlans;->getAdMaterialList()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_7

    check-cast v6, Ljava/lang/Iterable;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v7, v5

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v9, v7, 0x1

    if-gez v7, :cond_5

    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    :cond_5
    check-cast v8, Lcom/transsion/ad/monopoly/model/AdMaterialList;

    invoke-virtual {v8}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->getDownloadMaterialSuccess()Z

    move-result v7

    if-nez v7, :cond_6

    iput-boolean v5, v4, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    goto :goto_1

    :cond_6
    move v7, v9

    goto :goto_3

    :cond_7
    sget-object v6, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager;->a:Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager;

    invoke-virtual {v6, p1}, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager;->b(Lcom/transsion/ad/monopoly/model/AdPlans;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p2}, Lcom/transsion/ad/monopoly/model/AdPlans;->getExtImage()Lcom/transsion/ad/monopoly/model/MbAdImage;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p2}, Lcom/transsion/ad/monopoly/model/AdPlans;->getExtImage()Lcom/transsion/ad/monopoly/model/MbAdImage;

    move-result-object p1

    const/4 v6, 0x0

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/transsion/ad/monopoly/model/MbAdImage;->getUrl()Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_8
    move-object p1, v6

    :goto_4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p2}, Lcom/transsion/ad/monopoly/model/AdPlans;->getExtImage()Lcom/transsion/ad/monopoly/model/MbAdImage;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/transsion/ad/monopoly/model/MbAdImage;->getPath()Ljava/lang/String;

    move-result-object v6

    :cond_9
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    iput-boolean v5, v4, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    goto/16 :goto_1

    :cond_a
    iput-boolean v5, v4, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    goto/16 :goto_1

    :cond_b
    iput-boolean v5, v4, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    goto/16 :goto_1

    :cond_c
    iget-boolean p1, v4, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method private final i(Lcom/transsion/ad/monopoly/model/MbAdPlansDto;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12

    instance-of v0, p3, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$checkResult$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$checkResult$1;

    iget v1, v0, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$checkResult$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$checkResult$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$checkResult$1;

    invoke-direct {v0, p0, p3}, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$checkResult$1;-><init>(Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$checkResult$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$checkResult$1;->label:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$checkResult$1;->L$3:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p2, v0, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$checkResult$1;->L$2:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    iget-object v1, v0, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$checkResult$1;->L$1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v0, v0, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$checkResult$1;->L$0:Ljava/lang/Object;

    check-cast v0, Loi/a;

    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v6, v0

    goto/16 :goto_4

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$checkResult$1;->L$2:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p2, v0, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$checkResult$1;->L$1:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    iget-object v2, v0, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$checkResult$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/transsion/ad/monopoly/model/MbAdPlansDto;

    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    iget-object p1, v0, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$checkResult$1;->L$1:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Ljava/lang/String;

    iget-object p1, v0, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$checkResult$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/transsion/ad/monopoly/model/MbAdPlansDto;

    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/transsion/ad/monopoly/model/MbAdPlansDto;->getData()Lcom/transsion/ad/monopoly/model/MbAdPlansBean;

    move-result-object p3

    if-eqz p3, :cond_5

    invoke-virtual {p3}, Lcom/transsion/ad/monopoly/model/MbAdPlansBean;->getAdPlans()Ljava/util/List;

    move-result-object p3

    goto :goto_1

    :cond_5
    const/4 p3, 0x0

    :goto_1
    if-eqz p3, :cond_9

    invoke-virtual {p1}, Lcom/transsion/ad/monopoly/model/MbAdPlansDto;->getData()Lcom/transsion/ad/monopoly/model/MbAdPlansBean;

    move-result-object p3

    invoke-virtual {p3}, Lcom/transsion/ad/monopoly/model/MbAdPlansBean;->getAdPlans()Ljava/util/List;

    move-result-object p3

    iput-object p1, v0, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$checkResult$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$checkResult$1;->L$1:Ljava/lang/Object;

    iput v5, v0, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$checkResult$1;->label:I

    invoke-direct {p0, p3, v0}, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager;->h(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_6

    return-object v1

    :cond_6
    :goto_2
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_9

    invoke-virtual {p1}, Lcom/transsion/ad/monopoly/model/MbAdPlansDto;->getData()Lcom/transsion/ad/monopoly/model/MbAdPlansBean;

    move-result-object p3

    invoke-virtual {p3}, Lcom/transsion/ad/monopoly/model/MbAdPlansBean;->getVersion()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    sget-object v2, Lri/c;->a:Lri/c;

    invoke-virtual {v2, p2, p3}, Lri/c;->j(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/transsion/ad/strategy/f;->a:Lcom/transsion/ad/strategy/f;

    invoke-virtual {v2}, Lcom/transsion/ad/strategy/f;->c()Lcom/tencent/mmkv/MMKV;

    move-result-object v2

    const-string v6, "non_ad_plan_version"

    invoke-virtual {v2, v6, p3}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iput-object p1, v0, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$checkResult$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$checkResult$1;->L$1:Ljava/lang/Object;

    iput-object p3, v0, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$checkResult$1;->L$2:Ljava/lang/Object;

    iput v4, v0, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$checkResult$1;->label:I

    invoke-direct {p0, p3, p2, v0}, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager;->j(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_7

    return-object v1

    :cond_7
    move-object v2, p1

    move-object p1, p3

    :goto_3
    invoke-virtual {v2}, Lcom/transsion/ad/monopoly/model/MbAdPlansDto;->getData()Lcom/transsion/ad/monopoly/model/MbAdPlansBean;

    move-result-object p3

    invoke-virtual {p3}, Lcom/transsion/ad/monopoly/model/MbAdPlansBean;->getAdPlans()Ljava/util/List;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager;->k(Ljava/util/List;)V

    sget-object p3, Loi/a;->a:Loi/a;

    invoke-direct {p0}, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager;->p()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;->a:Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;

    iput-object p3, v0, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$checkResult$1;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$checkResult$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$checkResult$1;->L$2:Ljava/lang/Object;

    iput-object p1, v0, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$checkResult$1;->L$3:Ljava/lang/Object;

    iput v3, v0, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$checkResult$1;->label:I

    invoke-virtual {v4, v0}, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;->j(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_8

    return-object v1

    :cond_8
    move-object v6, p3

    move-object p3, v0

    move-object v1, v2

    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> checkResult() --> \u66f4\u65b0\u5b8c\u8ba1\u5212\u4e14\u4e0b\u8f7d\u5b8c\u7d20\u6750,\u65b0\u8ba1\u5212\u53ef\u7528 --> lastVersion = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " --> newVersion = "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " --> size = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x6

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Loi/a;->c(Loi/a;Ljava/lang/String;IZILjava/lang/Object;)V

    sget-object p1, Lcom/transsion/ad/MBAd;->a:Lcom/transsion/ad/MBAd;

    invoke-virtual {p1}, Lcom/transsion/ad/MBAd;->c()Lcom/transsion/ad/MBAd$a;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/transsion/ad/MBAd$a;->l()Z

    move-result p1

    if-ne p1, v5, :cond_9

    sget-object p1, Lti/h;->a:Lti/h;

    sget-object p2, Lcom/transsion/ad/a;->a:Lcom/transsion/ad/a;

    invoke-virtual {p2}, Lcom/transsion/ad/a;->b()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lti/h;->e(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p3

    invoke-virtual {p2}, Lcom/transsion/ad/a;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lti/h;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Loi/a;->a:Loi/a;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fileSizeMap = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " --> folderSizeFormatted = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Loi/a;->c(Loi/a;Ljava/lang/String;IZILjava/lang/Object;)V

    :cond_9
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method private final j(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p3, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$deleteExpireAdPlan$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$deleteExpireAdPlan$1;

    iget v1, v0, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$deleteExpireAdPlan$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$deleteExpireAdPlan$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$deleteExpireAdPlan$1;

    invoke-direct {v0, p0, p3}, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$deleteExpireAdPlan$1;-><init>(Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$deleteExpireAdPlan$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$deleteExpireAdPlan$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$deleteExpireAdPlan$1;->L$1:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Ljava/lang/String;

    iget-object p1, v0, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$deleteExpireAdPlan$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_3

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :cond_3
    sget-object p3, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;->a:Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;

    iput-object p1, v0, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$deleteExpireAdPlan$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$deleteExpireAdPlan$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$deleteExpireAdPlan$1;->label:I

    invoke-virtual {p3, p1, v0}, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;->f(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    sget-object v0, Loi/a;->a:Loi/a;

    invoke-direct {p0}, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager;->p()Ljava/lang/String;

    move-result-object p3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " --> deleteExpireAdPlan() --> newVersion = "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " -- lastVersion = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " --> \u5220\u9664\u8fc7\u671f\u8ba1\u5212 -- success"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Loi/a;->c(Loi/a;Ljava/lang/String;IZILjava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method private final k(Ljava/util/List;)V
    .locals 9

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/ad/monopoly/model/AdPlans;

    invoke-virtual {v1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getAdMaterialList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/ad/monopoly/model/AdMaterialList;

    invoke-virtual {v3}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->getType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "TextAdMaterial"

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->getImage()Lcom/transsion/ad/monopoly/model/MbAdImage;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/transsion/ad/monopoly/model/MbAdImage;->getPath()Ljava/lang/String;

    move-result-object v5

    :cond_1
    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->getVideo()Lcom/transsion/ad/monopoly/model/MbAdVideo;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/transsion/ad/monopoly/model/MbAdVideo;->getPath()Ljava/lang/String;

    move-result-object v5

    :cond_3
    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getAdvertiserAvatarPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getAdvertiserAvatarPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    sget-object p1, Lcom/transsion/ad/a;->a:Lcom/transsion/ad/a;

    invoke-virtual {p1}, Lcom/transsion/ad/a;->b()Ljava/lang/String;

    move-result-object p1

    sget-char v1, Ljava/io/File;->separatorChar:C

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lti/h;->a:Lti/h;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v0}, Lti/h;->c(Ljava/io/File;Ljava/util/HashSet;)V

    sget-object v3, Loi/a;->a:Loi/a;

    invoke-direct {p0}, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager;->p()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " --> deleteExpireMaterial() --> \u5220\u9664\u8fc7\u671f\u8d44\u6e90 -- success"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Loi/a;->c(Loi/a;Ljava/lang/String;IZILjava/lang/Object;)V

    return-void
.end method

.method private final l(Lcom/transsion/ad/monopoly/model/AdPlans;)Z
    .locals 13

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getAdvertiserAvatar()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    invoke-direct {p0, v1}, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_1

    invoke-virtual {p1, v1}, Lcom/transsion/ad/monopoly/model/AdPlans;->setAdvertiserAvatarPath(Ljava/lang/String;)V

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getExtImage()Lcom/transsion/ad/monopoly/model/MbAdImage;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v0

    :goto_1
    invoke-direct {p0, v1}, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager;->n(Lcom/transsion/ad/monopoly/model/MbAdImage;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getAdMaterialList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_f

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/ad/monopoly/model/AdMaterialList;

    invoke-virtual {v2}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->getType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TextAdMaterial"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->getImage()Lcom/transsion/ad/monopoly/model/MbAdImage;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/transsion/ad/monopoly/model/MbAdImage;->getUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->getVideo()Lcom/transsion/ad/monopoly/model/MbAdVideo;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/transsion/ad/monopoly/model/MbAdVideo;->getUrl()Ljava/lang/String;

    move-result-object v0

    :cond_4
    :goto_2
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/util/a0;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/transsion/ad/a;->a:Lcom/transsion/ad/a;

    invoke-virtual {v4}, Lcom/transsion/ad/a;->b()Ljava/lang/String;

    move-result-object v4

    sget-char v5, Ljava/io/File;->separatorChar:C

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "mineType"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->getType()Ljava/lang/String;

    move-result-object v5

    const-string v6, "VideoAdMaterial"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    const-string v6, " -- localFileSize = "

    const-string v7, " downloadFileSuccess = "

    const-wide/16 v8, 0x0

    const/4 v10, 0x1

    if-eqz v5, :cond_a

    invoke-virtual {v2}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->getVideo()Lcom/transsion/ad/monopoly/model/MbAdVideo;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lcom/transsion/ad/monopoly/model/MbAdVideo;->getSize()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_3

    :cond_5
    move v5, v10

    :goto_3
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v11

    cmp-long v8, v11, v8

    if-lez v8, :cond_7

    invoke-virtual {v2}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->getVideo()Lcom/transsion/ad/monopoly/model/MbAdVideo;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1, v3}, Lcom/transsion/ad/monopoly/model/MbAdVideo;->setPath(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {v2, v10}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->setDownloadMaterialSuccess(Z)V

    return v10

    :cond_7
    sget-object v8, Lcom/transsion/ad/strategy/h;->a:Lcom/transsion/ad/strategy/h;

    invoke-virtual {v8, v0, v3}, Lcom/transsion/ad/strategy/h;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v8

    if-eqz v0, :cond_9

    int-to-long v11, v5

    cmp-long v4, v8, v11

    if-ltz v4, :cond_9

    invoke-virtual {v2}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->getVideo()Lcom/transsion/ad/monopoly/model/MbAdVideo;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-virtual {p1, v3}, Lcom/transsion/ad/monopoly/model/MbAdVideo;->setPath(Ljava/lang/String;)V

    :cond_8
    invoke-virtual {v2, v10}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->setDownloadMaterialSuccess(Z)V

    return v10

    :cond_9
    sget-object v4, Loi/a;->a:Loi/a;

    sget-object v2, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager;->a:Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager;

    invoke-direct {v2}, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getId()Ljava/lang/String;

    move-result-object p1

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " --> downloadAdPlan() --> \u89c6\u9891\u7d20\u6750\u4e0b\u8f7d\u5931\u8d25 -- adPlans.id = "

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " -- remoteFileSize = "

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " destination = "

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Loi/a;->c(Loi/a;Ljava/lang/String;IZILjava/lang/Object;)V

    return v1

    :cond_a
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v11

    cmp-long v5, v11, v8

    if-lez v5, :cond_c

    invoke-virtual {v2}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->getImage()Lcom/transsion/ad/monopoly/model/MbAdImage;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-virtual {p1, v3}, Lcom/transsion/ad/monopoly/model/MbAdImage;->setPath(Ljava/lang/String;)V

    :cond_b
    invoke-virtual {v2, v10}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->setDownloadMaterialSuccess(Z)V

    return v10

    :cond_c
    sget-object v5, Lcom/transsion/ad/strategy/h;->a:Lcom/transsion/ad/strategy/h;

    invoke-virtual {v5, v0, v3}, Lcom/transsion/ad/strategy/h;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    if-eqz v0, :cond_e

    cmp-long v8, v4, v8

    if-lez v8, :cond_e

    invoke-virtual {v2}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->getImage()Lcom/transsion/ad/monopoly/model/MbAdImage;

    move-result-object p1

    if-eqz p1, :cond_d

    invoke-virtual {p1, v3}, Lcom/transsion/ad/monopoly/model/MbAdImage;->setPath(Ljava/lang/String;)V

    :cond_d
    invoke-virtual {v2, v10}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->setDownloadMaterialSuccess(Z)V

    return v10

    :cond_e
    sget-object v2, Loi/a;->a:Loi/a;

    sget-object v8, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager;->a:Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager;

    invoke-direct {v8}, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager;->p()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getId()Ljava/lang/String;

    move-result-object p1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " --> downloadAdPlan() --> \u56fe\u7247\u7d20\u6750\u4e0b\u8f7d\u5931\u8d25 -- adPlans.id = "

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " -- destination = "

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v4, v2

    invoke-static/range {v4 .. v9}, Loi/a;->c(Loi/a;Ljava/lang/String;IZILjava/lang/Object;)V

    :cond_f
    return v1
.end method

.method private final m(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/common/util/a0;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/transsion/ad/a;->a:Lcom/transsion/ad/a;

    invoke-virtual {v1}, Lcom/transsion/ad/a;->b()Ljava/lang/String;

    move-result-object v1

    sget-char v2, Ljava/io/File;->separatorChar:C

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mineType"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lti/h;->a:Lti/h;

    invoke-virtual {v1, v0}, Lti/h;->h(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    sget-object v1, Lcom/transsion/ad/strategy/h;->a:Lcom/transsion/ad/strategy/h;

    invoke-virtual {v1, p1, v0}, Lcom/transsion/ad/strategy/h;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method private final n(Lcom/transsion/ad/monopoly/model/MbAdImage;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/ad/monopoly/model/MbAdImage;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/transsion/ad/monopoly/model/MbAdImage;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/util/a0;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/transsion/ad/a;->a:Lcom/transsion/ad/a;

    invoke-virtual {v2}, Lcom/transsion/ad/a;->b()Ljava/lang/String;

    move-result-object v2

    sget-char v3, Ljava/io/File;->separatorChar:C

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mineType"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lti/h;->a:Lti/h;

    invoke-virtual {v2, v1}, Lti/h;->h(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1, v1}, Lcom/transsion/ad/monopoly/model/MbAdImage;->setPath(Ljava/lang/String;)V

    return-void

    :cond_2
    sget-object v2, Lcom/transsion/ad/strategy/h;->a:Lcom/transsion/ad/strategy/h;

    invoke-virtual {v2, v0, v1}, Lcom/transsion/ad/strategy/h;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1, v1}, Lcom/transsion/ad/monopoly/model/MbAdImage;->setPath(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private final o(Lcom/transsion/ad/monopoly/model/AdPlans;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 23

    move-object/from16 v0, p1

    sget-object v1, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager;->a:Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager;

    invoke-virtual {v1, v0}, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager;->j(Lcom/transsion/ad/monopoly/model/AdPlans;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1, v0}, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager;->e(Lcom/transsion/ad/monopoly/model/AdPlans;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1, v0}, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager;->g(Lcom/transsion/ad/monopoly/model/AdPlans;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1, v0}, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager;->l(Lcom/transsion/ad/monopoly/model/AdPlans;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager;->l(Lcom/transsion/ad/monopoly/model/AdPlans;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct/range {p0 .. p2}, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager;->w(Lcom/transsion/ad/monopoly/model/AdPlans;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_1

    return-object v0

    :cond_1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :cond_2
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :cond_3
    :goto_0
    sget-object v1, Loi/a;->a:Loi/a;

    invoke-direct/range {p0 .. p0}, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getAdSource()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getId()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " --> downloadMaterialAndSaveAdPlans() --> PS\u865a\u62df\u8ba1\u5212\u548c\u3001Hi\u865a\u62df\u8ba1\u5212 --> \u4e0d\u9700\u8981\u4e0b\u8f7d\u7d20\u6750\u7684 --> "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " --> adPlan.name = "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " --> adPlan.id = "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Loi/a;->c(Loi/a;Ljava/lang/String;IZILjava/lang/Object;)V

    new-instance v1, Lcom/transsion/ad/monopoly/model/AdMaterialList;

    const/16 v21, 0x1fff

    const/16 v22, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v7, v1

    invoke-direct/range {v7 .. v22}, Lcom/transsion/ad/monopoly/model/AdMaterialList;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/ad/monopoly/model/MbAdImage;Lcom/transsion/ad/monopoly/model/MbAdVideo;ZLcom/transsion/ad/ps/model/RecommendInfo;Lcom/transsion/ad/db/pslink/PsLinkAdPlan;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->setDownloadMaterialSuccess(Z)V

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/ad/monopoly/model/AdPlans;->setAdMaterialList(Ljava/util/List;)V

    invoke-direct/range {p0 .. p2}, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager;->w(Lcom/transsion/ad/monopoly/model/AdPlans;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_4

    return-object v0

    :cond_4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method private final p()Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getSimpleName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final q()Lpi/a;
    .locals 1

    sget-object v0, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpi/a;

    return-object v0
.end method

.method private final r(Lcom/transsion/ad/monopoly/model/MbAdPlansDto;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    instance-of v4, v3, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$handleResponse$1;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$handleResponse$1;

    iget v5, v4, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$handleResponse$1;->label:I

    const/high16 v6, -0x80000000

    and-int v7, v5, v6

    if-eqz v7, :cond_0

    sub-int/2addr v5, v6

    iput v5, v4, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$handleResponse$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v4, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$handleResponse$1;

    invoke-direct {v4, v0, v3}, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$handleResponse$1;-><init>(Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v3, v4, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$handleResponse$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v5

    iget v6, v4, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$handleResponse$1;->label:I

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v6, :cond_4

    if-eq v6, v10, :cond_3

    if-eq v6, v8, :cond_2

    if-ne v6, v7, :cond_1

    invoke-static {v3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget-object v1, v4, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$handleResponse$1;->L$1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v4, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$handleResponse$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/transsion/ad/monopoly/model/MbAdPlansDto;

    invoke-static {v3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_3
    iget-object v1, v4, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$handleResponse$1;->L$1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v4, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$handleResponse$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/transsion/ad/monopoly/model/MbAdPlansDto;

    invoke-static {v3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v20, v2

    move-object v2, v1

    move-object/from16 v1, v20

    goto/16 :goto_3

    :cond_4
    invoke-static {v3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    const/4 v3, 0x0

    if-nez v1, :cond_5

    sget-object v11, Loi/a;->a:Loi/a;

    invoke-direct/range {p0 .. p0}, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager;->p()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> handleResponse() --> mbAdConfig == null --> lastVersion = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v15, 0x4

    const/16 v16, 0x0

    const/4 v13, 0x6

    const/4 v14, 0x0

    invoke-static/range {v11 .. v16}, Loi/a;->c(Loi/a;Ljava/lang/String;IZILjava/lang/Object;)V

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/monopoly/model/MbAdPlansDto;->getData()Lcom/transsion/ad/monopoly/model/MbAdPlansBean;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-virtual {v6}, Lcom/transsion/ad/monopoly/model/MbAdPlansBean;->getVersion()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_6
    move-object v6, v9

    :goto_1
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/monopoly/model/MbAdPlansDto;->getData()Lcom/transsion/ad/monopoly/model/MbAdPlansBean;

    move-result-object v11

    if-eqz v11, :cond_7

    invoke-virtual {v11}, Lcom/transsion/ad/monopoly/model/MbAdPlansBean;->getAdPlans()Ljava/util/List;

    move-result-object v11

    if-eqz v11, :cond_7

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    invoke-static {v11}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v11

    goto :goto_2

    :cond_7
    move-object v11, v9

    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/monopoly/model/MbAdPlansDto;->getCode()Ljava/lang/String;

    move-result-object v12

    const-string v13, "0"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    const-string v13, " --> newVersion = "

    if-nez v12, :cond_8

    sget-object v14, Loi/a;->a:Loi/a;

    invoke-direct/range {p0 .. p0}, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager;->p()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> handleResponse() --> mbAdConfig.code != 0 --> lastVersion = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v18, 0x4

    const/16 v19, 0x0

    const/16 v16, 0x6

    const/16 v17, 0x0

    invoke-static/range {v14 .. v19}, Loi/a;->c(Loi/a;Ljava/lang/String;IZILjava/lang/Object;)V

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    :cond_8
    sget-object v12, Lcom/transsion/ad/strategy/s;->a:Lcom/transsion/ad/strategy/s;

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/monopoly/model/MbAdPlansDto;->getData()Lcom/transsion/ad/monopoly/model/MbAdPlansBean;

    move-result-object v14

    invoke-virtual {v12, v14}, Lcom/transsion/ad/strategy/s;->d(Lcom/transsion/ad/monopoly/model/MbAdPlansBean;)V

    sget-object v12, Lcom/transsion/ad/strategy/d;->a:Lcom/transsion/ad/strategy/d;

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/monopoly/model/MbAdPlansDto;->getData()Lcom/transsion/ad/monopoly/model/MbAdPlansBean;

    move-result-object v14

    invoke-virtual {v12, v14}, Lcom/transsion/ad/strategy/d;->e(Lcom/transsion/ad/monopoly/model/MbAdPlansBean;)V

    sget-object v12, Lcom/transsion/ad/scene/d;->a:Lcom/transsion/ad/scene/d;

    invoke-virtual {v12, v1}, Lcom/transsion/ad/scene/d;->g(Lcom/transsion/ad/monopoly/model/MbAdPlansDto;)V

    invoke-static {v2, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_9

    sget-object v14, Loi/a;->a:Loi/a;

    invoke-direct/range {p0 .. p0}, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager;->p()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> handleResponse() --> \u7248\u672c\u53f7\u4e00\u81f4\uff0c\u670d\u52a1\u7aef\u4e0d\u4f1a\u4e0b\u53d1list \u7701\u6d41\u91cf --> lastVersion = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v18, 0x6

    const/16 v19, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v14 .. v19}, Loi/a;->c(Loi/a;Ljava/lang/String;IZILjava/lang/Object;)V

    invoke-static {v10}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    :cond_9
    sget-object v12, Lri/c;->a:Lri/c;

    invoke-virtual {v12, v2, v6}, Lri/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v12, Loi/a;->a:Loi/a;

    invoke-direct/range {p0 .. p0}, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager;->p()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " --> handleResponse() --> lastVersion = "

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " --> size = "

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " --> \u5f00\u59cb\u589e\u91cf\u66f4\u65b0"

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v18, 0x6

    const/16 v19, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v14, v12

    invoke-static/range {v14 .. v19}, Loi/a;->c(Loi/a;Ljava/lang/String;IZILjava/lang/Object;)V

    invoke-direct/range {p0 .. p0}, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager;->p()Ljava/lang/String;

    move-result-object v11

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " --> handleResponse() --> \u4fdd\u8bc1\u8ba1\u5212\u5173\u95ed\u7684\u53ca\u65f6\u6027\uff0c\u5c06\u4e0d\u662f\u6700\u65b0\u7248\u672c\u7684\u8ba1\u5212\u6807\u8bb0\u4e3a\u4e0d\u53ef\u7528 --> isValid = false"

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static/range {v14 .. v19}, Loi/a;->c(Loi/a;Ljava/lang/String;IZILjava/lang/Object;)V

    sget-object v11, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;->a:Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;

    iput-object v1, v4, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$handleResponse$1;->L$0:Ljava/lang/Object;

    iput-object v2, v4, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$handleResponse$1;->L$1:Ljava/lang/Object;

    iput v10, v4, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$handleResponse$1;->label:I

    invoke-virtual {v11, v3, v6, v4}, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;->u(ZLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v5, :cond_a

    return-object v5

    :cond_a
    :goto_3
    iput-object v1, v4, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$handleResponse$1;->L$0:Ljava/lang/Object;

    iput-object v2, v4, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$handleResponse$1;->L$1:Ljava/lang/Object;

    iput v8, v4, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$handleResponse$1;->label:I

    invoke-direct {v0, v1, v4}, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager;->v(Lcom/transsion/ad/monopoly/model/MbAdPlansDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v5, :cond_b

    return-object v5

    :cond_b
    move-object/from16 v20, v2

    move-object v2, v1

    move-object/from16 v1, v20

    :goto_4
    iput-object v9, v4, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$handleResponse$1;->L$0:Ljava/lang/Object;

    iput-object v9, v4, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$handleResponse$1;->L$1:Ljava/lang/Object;

    iput v7, v4, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$handleResponse$1;->label:I

    invoke-direct {v0, v2, v1, v4}, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager;->i(Lcom/transsion/ad/monopoly/model/MbAdPlansDto;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v5, :cond_c

    return-object v5

    :cond_c
    :goto_5
    invoke-static {v10}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method private static final s()Lpi/a;
    .locals 2

    sget-object v0, Lzg/c;->e:Lzg/c$a;

    invoke-virtual {v0}, Lzg/c$a;->a()Lzg/c;

    move-result-object v0

    const-class v1, Lpi/a;

    invoke-virtual {v0, v1}, Lzg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpi/a;

    return-object v0
.end method

.method public static synthetic u(Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager;->t(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final v(Lcom/transsion/ad/monopoly/model/MbAdPlansDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 25

    move-object/from16 v0, p2

    instance-of v1, v0, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$saveAndDownload$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$saveAndDownload$1;

    iget v2, v1, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$saveAndDownload$1;->label:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$saveAndDownload$1;->label:I

    move-object/from16 v2, p0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$saveAndDownload$1;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$saveAndDownload$1;-><init>(Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v1, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$saveAndDownload$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v3

    iget v4, v1, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$saveAndDownload$1;->label:I

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v4, :cond_4

    if-eq v4, v8, :cond_3

    if-eq v4, v7, :cond_2

    if-eq v4, v6, :cond_2

    if-ne v4, v5, :cond_1

    iget-object v4, v1, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$saveAndDownload$1;->L$2:Ljava/lang/Object;

    check-cast v4, Ljava/util/Iterator;

    iget-object v10, v1, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$saveAndDownload$1;->L$1:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    iget-object v11, v1, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$saveAndDownload$1;->L$0:Ljava/lang/Object;

    check-cast v11, Lcom/transsion/ad/monopoly/model/MbAdPlansDto;

    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_c

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v4, v1, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$saveAndDownload$1;->L$2:Ljava/lang/Object;

    check-cast v4, Ljava/util/Iterator;

    iget-object v10, v1, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$saveAndDownload$1;->L$1:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    iget-object v11, v1, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$saveAndDownload$1;->L$0:Ljava/lang/Object;

    check-cast v11, Lcom/transsion/ad/monopoly/model/MbAdPlansDto;

    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_9

    :cond_3
    iget-object v4, v1, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$saveAndDownload$1;->L$3:Ljava/lang/Object;

    check-cast v4, Lcom/transsion/ad/monopoly/model/AdPlans;

    iget-object v10, v1, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$saveAndDownload$1;->L$2:Ljava/lang/Object;

    check-cast v10, Ljava/util/Iterator;

    iget-object v11, v1, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$saveAndDownload$1;->L$1:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    iget-object v12, v1, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$saveAndDownload$1;->L$0:Ljava/lang/Object;

    check-cast v12, Lcom/transsion/ad/monopoly/model/MbAdPlansDto;

    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_3

    :cond_4
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    if-eqz p1, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/monopoly/model/MbAdPlansDto;->getData()Lcom/transsion/ad/monopoly/model/MbAdPlansBean;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/transsion/ad/monopoly/model/MbAdPlansBean;->getVersion()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    move-object v0, v9

    :goto_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_12

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/monopoly/model/MbAdPlansDto;->getData()Lcom/transsion/ad/monopoly/model/MbAdPlansBean;

    move-result-object v4

    if-eqz v4, :cond_12

    invoke-virtual {v4}, Lcom/transsion/ad/monopoly/model/MbAdPlansBean;->getAdPlans()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_12

    check-cast v4, Ljava/lang/Iterable;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v10, v4

    move-object v4, v1

    move-object v1, v0

    move-object/from16 v0, p1

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_12

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/transsion/ad/monopoly/model/AdPlans;

    sget-object v12, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;->a:Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;

    invoke-virtual {v11}, Lcom/transsion/ad/monopoly/model/AdPlans;->getId()Ljava/lang/String;

    move-result-object v13

    iput-object v0, v4, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$saveAndDownload$1;->L$0:Ljava/lang/Object;

    iput-object v1, v4, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$saveAndDownload$1;->L$1:Ljava/lang/Object;

    iput-object v10, v4, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$saveAndDownload$1;->L$2:Ljava/lang/Object;

    iput-object v11, v4, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$saveAndDownload$1;->L$3:Ljava/lang/Object;

    iput v8, v4, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$saveAndDownload$1;->label:I

    invoke-virtual {v12, v13, v4}, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;->n(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v12

    if-ne v12, v3, :cond_6

    return-object v3

    :cond_6
    move-object/from16 v23, v12

    move-object v12, v0

    move-object/from16 v0, v23

    move-object/from16 v24, v11

    move-object v11, v1

    move-object v1, v4

    move-object/from16 v4, v24

    :goto_3
    check-cast v0, Lcom/transsion/ad/db/plan/MbAdDbPlans;

    invoke-virtual {v4, v11}, Lcom/transsion/ad/monopoly/model/AdPlans;->setVersion(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Lcom/transsion/ad/monopoly/model/AdPlans;->setValid(Z)V

    invoke-virtual {v12}, Lcom/transsion/ad/monopoly/model/MbAdPlansDto;->getData()Lcom/transsion/ad/monopoly/model/MbAdPlansBean;

    move-result-object v13

    invoke-virtual {v13}, Lcom/transsion/ad/monopoly/model/MbAdPlansBean;->getCtxAttributeConfig()Lcom/transsion/ad/monopoly/model/CtxAttributeConfig;

    move-result-object v13

    invoke-virtual {v4, v13}, Lcom/transsion/ad/monopoly/model/AdPlans;->setCtxAttributeConfig(Lcom/transsion/ad/monopoly/model/CtxAttributeConfig;)V

    invoke-virtual {v12}, Lcom/transsion/ad/monopoly/model/MbAdPlansDto;->getData()Lcom/transsion/ad/monopoly/model/MbAdPlansBean;

    move-result-object v13

    invoke-virtual {v13}, Lcom/transsion/ad/monopoly/model/MbAdPlansBean;->getCountryCode()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Lcom/transsion/ad/monopoly/model/AdPlans;->setCountryCode(Ljava/lang/String;)V

    const-string v13, " --> adPlan.id = "

    if-eqz v0, :cond_10

    sget-object v14, Lcom/transsion/ad/monopoly/plan/AdPlansTransform;->a:Lcom/transsion/ad/monopoly/plan/AdPlansTransform;

    invoke-virtual {v14, v0}, Lcom/transsion/ad/monopoly/plan/AdPlansTransform;->b(Lcom/transsion/ad/db/plan/MbAdDbPlans;)Lcom/transsion/ad/monopoly/model/AdPlans;

    move-result-object v14

    if-eqz v14, :cond_7

    invoke-virtual {v14}, Lcom/transsion/ad/monopoly/model/AdPlans;->getAdMaterialList()Ljava/util/List;

    move-result-object v15

    if-eqz v15, :cond_7

    invoke-static {v15}, Lkotlin/collections/CollectionsKt;->u0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/transsion/ad/monopoly/model/AdMaterialList;

    goto :goto_4

    :cond_7
    move-object v15, v9

    :goto_4
    if-eqz v15, :cond_8

    invoke-virtual {v15}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->getDownloadMaterialSuccess()Z

    move-result v15

    goto :goto_5

    :cond_8
    const/4 v15, 0x0

    :goto_5
    if-eqz v14, :cond_9

    invoke-virtual {v4}, Lcom/transsion/ad/monopoly/model/AdPlans;->getCtxAttributeConfig()Lcom/transsion/ad/monopoly/model/CtxAttributeConfig;

    move-result-object v8

    invoke-virtual {v14, v8}, Lcom/transsion/ad/monopoly/model/AdPlans;->setCtxAttributeConfig(Lcom/transsion/ad/monopoly/model/CtxAttributeConfig;)V

    :cond_9
    invoke-virtual {v4}, Lcom/transsion/ad/monopoly/model/AdPlans;->getVersion()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->setVersion(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/transsion/ad/monopoly/model/AdPlans;->isValid()Z

    move-result v8

    invoke-virtual {v0, v8}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->setValid(Z)V

    invoke-virtual {v0}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getShowDate()Ljava/lang/String;

    move-result-object v8

    sget-object v16, Lti/p;->a:Lti/p;

    invoke-virtual/range {v16 .. v16}, Lti/p;->c()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {v0}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getShowedTimes()Ljava/lang/Integer;

    move-result-object v5

    goto :goto_6

    :cond_a
    move-object v5, v9

    :goto_6
    invoke-virtual {v0}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getShowDate()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/transsion/ad/monopoly/model/AdPlans;->setShowDate(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/transsion/ad/monopoly/model/AdPlans;->setShowedTimes(Ljava/lang/Integer;)V

    if-eqz v15, :cond_f

    invoke-virtual {v0}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getAdPlanUpdateTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/transsion/ad/monopoly/model/AdPlans;->getAdPlanUpdateTime()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_b

    goto/16 :goto_b

    :cond_b
    if-eqz v14, :cond_c

    invoke-virtual {v14}, Lcom/transsion/ad/monopoly/model/AdPlans;->getAdMaterialList()Ljava/util/List;

    move-result-object v5

    goto :goto_7

    :cond_c
    move-object v5, v9

    :goto_7
    invoke-virtual {v4, v5}, Lcom/transsion/ad/monopoly/model/AdPlans;->setAdMaterialList(Ljava/util/List;)V

    if-eqz v14, :cond_d

    invoke-virtual {v14}, Lcom/transsion/ad/monopoly/model/AdPlans;->getAdvertiserAvatarPath()Ljava/lang/String;

    move-result-object v5

    goto :goto_8

    :cond_d
    move-object v5, v9

    :goto_8
    invoke-virtual {v4, v5}, Lcom/transsion/ad/monopoly/model/AdPlans;->setAdvertiserAvatarPath(Ljava/lang/String;)V

    sget-object v17, Loi/a;->a:Loi/a;

    sget-object v5, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager;->a:Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager;

    invoke-direct {v5}, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager;->p()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/transsion/ad/monopoly/model/AdPlans;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Lcom/transsion/ad/monopoly/model/AdPlans;->getId()Ljava/lang/String;

    move-result-object v4

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " --> saveAndDownload() --> \u5e7f\u544a\u8ba1\u5212\u5df2\u5b58\u5728\u6570\u636e\u5e93 --> \u5185\u5bb9 \u65e0\u65e0\u65e0 \u53d8\u5316 --> \u5c06DB\u6570\u636e\u8d4b\u503c\u7ed9DataBean --> adPlan.name = "

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v21, 0x2

    const/16 v22, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-static/range {v17 .. v22}, Loi/a;->c(Loi/a;Ljava/lang/String;IZILjava/lang/Object;)V

    sget-object v4, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;->a:Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;

    iput-object v12, v1, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$saveAndDownload$1;->L$0:Ljava/lang/Object;

    iput-object v11, v1, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$saveAndDownload$1;->L$1:Ljava/lang/Object;

    iput-object v10, v1, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$saveAndDownload$1;->L$2:Ljava/lang/Object;

    iput-object v9, v1, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$saveAndDownload$1;->L$3:Ljava/lang/Object;

    iput v6, v1, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$saveAndDownload$1;->label:I

    invoke-virtual {v4, v0, v1}, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;->p(Lcom/transsion/ad/db/plan/MbAdDbPlans;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_e

    return-object v3

    :cond_e
    move-object v4, v10

    move-object v10, v11

    move-object v11, v12

    :goto_9
    move-object v0, v11

    const/4 v5, 0x4

    :goto_a
    move-object/from16 v23, v4

    move-object v4, v1

    move-object v1, v10

    move-object/from16 v10, v23

    goto/16 :goto_d

    :cond_f
    :goto_b
    sget-object v17, Loi/a;->a:Loi/a;

    sget-object v0, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager;->a:Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager;

    invoke-direct {v0}, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager;->p()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/transsion/ad/monopoly/model/AdPlans;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Lcom/transsion/ad/monopoly/model/AdPlans;->getId()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " --> saveAndDownload() --> \u5e7f\u544a\u8ba1\u5212\u5df2\u5b58\u5728\u6570\u636e\u5e93 --> \u5185\u5bb9 \u6709\u6709\u6709 \u53d8\u5316 --> \u4e0b\u8f7d\u7d20\u6750\u3001\u66f4\u65b0\u6570\u636e\u5e93 --> adPlan.name = "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v21, 0x2

    const/16 v22, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-static/range {v17 .. v22}, Loi/a;->c(Loi/a;Ljava/lang/String;IZILjava/lang/Object;)V

    iput-object v12, v1, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$saveAndDownload$1;->L$0:Ljava/lang/Object;

    iput-object v11, v1, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$saveAndDownload$1;->L$1:Ljava/lang/Object;

    iput-object v10, v1, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$saveAndDownload$1;->L$2:Ljava/lang/Object;

    iput-object v9, v1, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$saveAndDownload$1;->L$3:Ljava/lang/Object;

    iput v7, v1, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$saveAndDownload$1;->label:I

    invoke-direct {v0, v4, v1}, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager;->o(Lcom/transsion/ad/monopoly/model/AdPlans;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_e

    return-object v3

    :cond_10
    sget-object v17, Loi/a;->a:Loi/a;

    sget-object v0, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager;->a:Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager;

    invoke-direct {v0}, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager;->p()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/transsion/ad/monopoly/model/AdPlans;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Lcom/transsion/ad/monopoly/model/AdPlans;->getId()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " --> saveAndDownload() --> \u5e7f\u544a\u8ba1\u5212\u4e0d\u5b58\u5728\u6570\u636e\u5e93 --> \u4e0b\u8f7d\u7d20\u6750\u3001\u4fdd\u5b58\u6570\u636e\u5e93 --> adPlan.name = "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v21, 0x6

    const/16 v22, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-static/range {v17 .. v22}, Loi/a;->c(Loi/a;Ljava/lang/String;IZILjava/lang/Object;)V

    iput-object v12, v1, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$saveAndDownload$1;->L$0:Ljava/lang/Object;

    iput-object v11, v1, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$saveAndDownload$1;->L$1:Ljava/lang/Object;

    iput-object v10, v1, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$saveAndDownload$1;->L$2:Ljava/lang/Object;

    iput-object v9, v1, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$saveAndDownload$1;->L$3:Ljava/lang/Object;

    const/4 v5, 0x4

    iput v5, v1, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$saveAndDownload$1;->label:I

    invoke-direct {v0, v4, v1}, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager;->o(Lcom/transsion/ad/monopoly/model/AdPlans;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_11

    return-object v3

    :cond_11
    move-object v4, v10

    move-object v10, v11

    move-object v11, v12

    :goto_c
    move-object v0, v11

    goto/16 :goto_a

    :goto_d
    const/4 v8, 0x1

    goto/16 :goto_2

    :cond_12
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method private final w(Lcom/transsion/ad/monopoly/model/AdPlans;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$updateAdPlanToDatabase$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$updateAdPlanToDatabase$1;

    iget v1, v0, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$updateAdPlanToDatabase$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$updateAdPlanToDatabase$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$updateAdPlanToDatabase$1;

    invoke-direct {v0, p0, p2}, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$updateAdPlanToDatabase$1;-><init>(Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$updateAdPlanToDatabase$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$updateAdPlanToDatabase$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object p2, Lcom/transsion/ad/monopoly/plan/AdPlansTransform;->a:Lcom/transsion/ad/monopoly/plan/AdPlansTransform;

    invoke-virtual {p2, p1}, Lcom/transsion/ad/monopoly/plan/AdPlansTransform;->a(Lcom/transsion/ad/monopoly/model/AdPlans;)Lcom/transsion/ad/db/plan/MbAdDbPlans;

    move-result-object p1

    sget-object p2, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;->a:Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;

    iput v3, v0, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$updateAdPlanToDatabase$1;->label:I

    invoke-virtual {p2, p1, v0}, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;->p(Lcom/transsion/ad/db/plan/MbAdDbPlans;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final t(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 22

    move-object/from16 v0, p3

    const-string v1, ""

    instance-of v2, v0, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$requestNonAdPlanList$1;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$requestNonAdPlanList$1;

    iget v3, v2, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$requestNonAdPlanList$1;->label:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$requestNonAdPlanList$1;->label:I

    move-object/from16 v3, p0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$requestNonAdPlanList$1;

    move-object/from16 v3, p0

    invoke-direct {v2, v3, v0}, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$requestNonAdPlanList$1;-><init>(Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v2, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$requestNonAdPlanList$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v14

    iget v4, v2, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$requestNonAdPlanList$1;->label:I

    const/4 v15, 0x0

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v5, 0x1

    if-eqz v4, :cond_4

    if-eq v4, v5, :cond_3

    if-eq v4, v12, :cond_2

    if-ne v4, v13, :cond_1

    iget-object v1, v2, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$requestNonAdPlanList$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_8

    :catchall_0
    move-exception v0

    goto/16 :goto_9

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v1, v2, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$requestNonAdPlanList$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    :try_start_1
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_7

    :cond_3
    iget-object v1, v2, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$requestNonAdPlanList$1;->L$1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v4, v2, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$requestNonAdPlanList$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lkotlin/jvm/functions/Function1;

    :try_start_2
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v5, v1

    move v1, v12

    goto/16 :goto_6

    :catchall_1
    move-exception v0

    move-object v1, v4

    goto/16 :goto_9

    :cond_4
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object v0, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v16, Loi/a;->a:Loi/a;

    invoke-direct/range {p0 .. p0}, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager;->p()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " --> requestNonAdPlanList() --> \u6b63\u5728\u8bf7\u6c42\u4e2d.... \u7a0d\u540e\u518d\u8bd5"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v20, 0x4

    const/16 v21, 0x0

    const/16 v18, 0x5

    const/16 v19, 0x0

    invoke-static/range {v16 .. v21}, Loi/a;->c(Loi/a;Ljava/lang/String;IZILjava/lang/Object;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :cond_5
    sget-object v0, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :try_start_3
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v0, Lcom/transsion/ad/strategy/f;->a:Lcom/transsion/ad/strategy/f;

    invoke-virtual {v0}, Lcom/transsion/ad/strategy/f;->c()Lcom/tencent/mmkv/MMKV;

    move-result-object v4

    const-string v6, "non_ad_plan_version"

    invoke-virtual {v4, v6, v1}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0}, Lcom/transsion/ad/strategy/f;->c()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v4, "non_ad_scene_version"

    invoke-virtual {v0, v4, v1}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sget-object v16, Loi/a;->a:Loi/a;

    sget-object v0, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager;->a:Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager;

    invoke-direct {v0}, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager;->p()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " --> requestNonAdPlanList() --> \u5f00\u59cb\u8bf7\u6c42\u5e7f\u544a\u914d\u7f6e\u63a5\u53e3 --> lastVersion = "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " --> lastSceneVersion = "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " --> url = "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p1

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v20, 0x6

    const/16 v21, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-static/range {v16 .. v21}, Loi/a;->c(Loi/a;Ljava/lang/String;IZILjava/lang/Object;)V

    sget-object v4, Lcom/transsion/ad/MBAd;->a:Lcom/transsion/ad/MBAd;

    invoke-virtual {v4}, Lcom/transsion/ad/MBAd;->c()Lcom/transsion/ad/MBAd$a;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-virtual {v6}, Lcom/transsion/ad/MBAd$a;->a()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object/from16 v1, p2

    goto/16 :goto_9

    :cond_6
    move-object v6, v15

    :goto_1
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    sget-object v6, Lvg/a;->a:Lvg/a$a;

    invoke-virtual {v6}, Lvg/a$a;->a()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_7
    invoke-virtual {v4}, Lcom/transsion/ad/MBAd;->c()Lcom/transsion/ad/MBAd$a;

    move-result-object v6

    if-eqz v6, :cond_8

    invoke-virtual {v6}, Lcom/transsion/ad/MBAd$a;->a()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_9

    :cond_8
    move-object v6, v1

    :cond_9
    :goto_2
    invoke-direct {v0}, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager;->q()Lpi/a;

    move-result-object v0

    invoke-virtual {v4}, Lcom/transsion/ad/MBAd;->c()Lcom/transsion/ad/MBAd$a;

    move-result-object v4

    if-eqz v4, :cond_b

    invoke-virtual {v4}, Lcom/transsion/ad/MBAd$a;->b()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_a

    goto :goto_3

    :cond_a
    move-object v7, v4

    goto :goto_4

    :cond_b
    :goto_3
    move-object v7, v1

    :goto_4
    if-nez v10, :cond_c

    goto :goto_5

    :cond_c
    move-object v1, v10

    :goto_5
    sget-object v4, Lcom/transsion/ad/strategy/AppManager;->a:Lcom/transsion/ad/strategy/AppManager;

    invoke-virtual {v4}, Lcom/transsion/ad/strategy/AppManager;->a()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v9, p2

    iput-object v9, v2, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$requestNonAdPlanList$1;->L$0:Ljava/lang/Object;

    iput-object v10, v2, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$requestNonAdPlanList$1;->L$1:Ljava/lang/Object;

    iput v5, v2, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$requestNonAdPlanList$1;->label:I

    const/16 v17, 0x0

    const/16 v18, 0x10

    const/16 v19, 0x0

    move-object v4, v0

    move-object v5, v7

    move-object v7, v1

    move/from16 v9, v17

    move-object v0, v10

    move-object/from16 v10, v16

    move v1, v11

    move-object v11, v2

    move v1, v12

    move/from16 v12, v18

    move-object/from16 v13, v19

    invoke-static/range {v4 .. v13}, Lpi/a$a;->a(Lpi/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-ne v4, v14, :cond_d

    return-object v14

    :cond_d
    move-object v5, v0

    move-object v0, v4

    move-object/from16 v4, p2

    :goto_6
    :try_start_4
    check-cast v0, Lcom/transsion/ad/monopoly/model/MbAdPlansDto;

    sget-object v6, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager;->a:Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager;

    iput-object v4, v2, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$requestNonAdPlanList$1;->L$0:Ljava/lang/Object;

    iput-object v15, v2, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$requestNonAdPlanList$1;->L$1:Ljava/lang/Object;

    iput v1, v2, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$requestNonAdPlanList$1;->label:I

    invoke-direct {v6, v0, v5, v2}, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager;->r(Lcom/transsion/ad/monopoly/model/MbAdPlansDto;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-ne v0, v14, :cond_e

    return-object v14

    :cond_e
    move-object v1, v4

    :goto_7
    :try_start_5
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v1, :cond_f

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Unit;

    :cond_f
    sget-object v0, Lcom/transsion/ad/ps/distribute/PSAdPlanRequestManager;->a:Lcom/transsion/ad/ps/distribute/PSAdPlanRequestManager;

    iput-object v1, v2, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$requestNonAdPlanList$1;->L$0:Ljava/lang/Object;

    const/4 v4, 0x3

    iput v4, v2, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager$requestNonAdPlanList$1;->label:I

    invoke-virtual {v0, v2}, Lcom/transsion/ad/ps/distribute/PSAdPlanRequestManager;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v14, :cond_10

    return-object v14

    :cond_10
    :goto_8
    sget-object v0, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_a

    :goto_9
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_a
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_11

    goto :goto_b

    :cond_11
    sget-object v2, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-eqz v1, :cond_12

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/Unit;

    :cond_12
    sget-object v4, Loi/a;->a:Loi/a;

    sget-object v1, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager;->a:Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager;

    invoke-direct {v1}, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager;->p()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> requestNonAdPlanList() --> fail fail fail --> \u8bf7\u6c42\u975e\u6807\u5e7f\u544a\u8ba1\u5212\u5217\u8868\u5931\u8d25 it = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Loi/a;->c(Loi/a;Ljava/lang/String;IZILjava/lang/Object;)V

    :goto_b
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
