.class public final Lcom/transsion/member/MemberViewModel;
.super Landroidx/lifecycle/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/member/MemberViewModel$a;
    }
.end annotation


# static fields
.field public static final t:Lcom/transsion/member/MemberViewModel$a;

.field public static final u:I


# instance fields
.field private final b:Lkotlin/Lazy;

.field private final c:Lkotlin/Lazy;

.field private final d:Lkotlin/Lazy;

.field private final e:Landroidx/lifecycle/b0;

.field private final f:Landroidx/lifecycle/b0;

.field private final g:Landroidx/lifecycle/b0;

.field private final h:Landroidx/lifecycle/b0;

.field private final i:Landroidx/lifecycle/b0;

.field private final j:Landroidx/lifecycle/b0;

.field private final k:Landroidx/lifecycle/b0;

.field private final l:Landroidx/lifecycle/b0;

.field private final m:Landroidx/lifecycle/b0;

.field private final n:Landroidx/lifecycle/b0;

.field private final o:Landroidx/lifecycle/b0;

.field private p:Ljava/util/Map;

.field private q:Lio/reactivex/rxjava3/disposables/c;

.field private r:Lio/reactivex/rxjava3/disposables/c;

.field private s:Lio/reactivex/rxjava3/disposables/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/member/MemberViewModel$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/member/MemberViewModel$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/member/MemberViewModel;->t:Lcom/transsion/member/MemberViewModel$a;

    const/16 v0, 0x8

    sput v0, Lcom/transsion/member/MemberViewModel;->u:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/lifecycle/b;-><init>(Landroid/app/Application;)V

    new-instance p1, Lcom/transsion/member/t0;

    invoke-direct {p1}, Lcom/transsion/member/t0;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/member/MemberViewModel;->b:Lkotlin/Lazy;

    new-instance p1, Lcom/transsion/member/u0;

    invoke-direct {p1}, Lcom/transsion/member/u0;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/member/MemberViewModel;->c:Lkotlin/Lazy;

    new-instance p1, Lcom/transsion/member/v0;

    invoke-direct {p1}, Lcom/transsion/member/v0;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/member/MemberViewModel;->d:Lkotlin/Lazy;

    new-instance p1, Landroidx/lifecycle/b0;

    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    iput-object p1, p0, Lcom/transsion/member/MemberViewModel;->e:Landroidx/lifecycle/b0;

    new-instance p1, Landroidx/lifecycle/b0;

    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    iput-object p1, p0, Lcom/transsion/member/MemberViewModel;->f:Landroidx/lifecycle/b0;

    new-instance p1, Landroidx/lifecycle/b0;

    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    iput-object p1, p0, Lcom/transsion/member/MemberViewModel;->g:Landroidx/lifecycle/b0;

    new-instance p1, Landroidx/lifecycle/b0;

    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    iput-object p1, p0, Lcom/transsion/member/MemberViewModel;->h:Landroidx/lifecycle/b0;

    new-instance p1, Landroidx/lifecycle/b0;

    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    iput-object p1, p0, Lcom/transsion/member/MemberViewModel;->i:Landroidx/lifecycle/b0;

    new-instance p1, Landroidx/lifecycle/b0;

    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    iput-object p1, p0, Lcom/transsion/member/MemberViewModel;->j:Landroidx/lifecycle/b0;

    new-instance p1, Landroidx/lifecycle/b0;

    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    iput-object p1, p0, Lcom/transsion/member/MemberViewModel;->k:Landroidx/lifecycle/b0;

    new-instance p1, Landroidx/lifecycle/b0;

    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    iput-object p1, p0, Lcom/transsion/member/MemberViewModel;->l:Landroidx/lifecycle/b0;

    new-instance p1, Landroidx/lifecycle/b0;

    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    iput-object p1, p0, Lcom/transsion/member/MemberViewModel;->m:Landroidx/lifecycle/b0;

    new-instance p1, Landroidx/lifecycle/b0;

    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    iput-object p1, p0, Lcom/transsion/member/MemberViewModel;->n:Landroidx/lifecycle/b0;

    new-instance p1, Landroidx/lifecycle/b0;

    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    iput-object p1, p0, Lcom/transsion/member/MemberViewModel;->o:Landroidx/lifecycle/b0;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/transsion/member/MemberViewModel;->p:Ljava/util/Map;

    return-void
.end method

.method private final C()Lvm/a;
    .locals 1

    iget-object v0, p0, Lcom/transsion/member/MemberViewModel;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvm/a;

    return-object v0
.end method

.method private final F()Lcom/transsion/memberapi/IMemberApi;
    .locals 1

    iget-object v0, p0, Lcom/transsion/member/MemberViewModel;->d:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/memberapi/IMemberApi;

    return-object v0
.end method

.method private final G()Lcom/transsion/memberapi/IPremiumApi;
    .locals 1

    iget-object v0, p0, Lcom/transsion/member/MemberViewModel;->c:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/memberapi/IPremiumApi;

    return-object v0
.end method

.method private static final P()Lvm/a;
    .locals 2

    sget-object v0, Lzg/c;->e:Lzg/c$a;

    invoke-virtual {v0}, Lzg/c$a;->a()Lzg/c;

    move-result-object v0

    const-class v1, Lvm/a;

    invoke-virtual {v0, v1}, Lzg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvm/a;

    return-object v0
.end method

.method private static final Q()Lcom/transsion/memberapi/IMemberApi;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-class v1, Lcom/transsion/memberapi/IMemberApi;

    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/memberapi/IMemberApi;

    return-object v0
.end method

.method private static final R()Lcom/transsion/memberapi/IPremiumApi;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-class v1, Lcom/transsion/memberapi/IPremiumApi;

    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/memberapi/IPremiumApi;

    return-object v0
.end method

.method private final S(Lcom/transsion/memberapi/SkuItem;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10

    instance-of v0, p2, Lcom/transsion/member/MemberViewModel$redeem$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/transsion/member/MemberViewModel$redeem$1;

    iget v1, v0, Lcom/transsion/member/MemberViewModel$redeem$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsion/member/MemberViewModel$redeem$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsion/member/MemberViewModel$redeem$1;

    invoke-direct {v0, p0, p2}, Lcom/transsion/member/MemberViewModel$redeem$1;-><init>(Lcom/transsion/member/MemberViewModel;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/transsion/member/MemberViewModel$redeem$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsion/member/MemberViewModel$redeem$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "skuId"

    invoke-virtual {p1}, Lcom/transsion/memberapi/SkuItem;->getSkuId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/transsion/member/MemberViewModel;->p:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/transsion/memberapi/SkuItem;->getSkuId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v4, "clientOrderId"

    if-eqz v2, :cond_3

    :try_start_2
    iget-object v2, p0, Lcom/transsion/member/MemberViewModel;->p:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/transsion/memberapi/SkuItem;->getSkuId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_3
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/transsion/member/MemberViewModel;->p:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/transsion/memberapi/SkuItem;->getSkuId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    sget-object p1, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "toString(...)"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    const-string v4, "application/json"

    invoke-virtual {v2, v4}, Lokhttp3/MediaType$Companion;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v2

    invoke-virtual {p1, p2, v2}, Lokhttp3/RequestBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object p1

    invoke-direct {p0}, Lcom/transsion/member/MemberViewModel;->C()Lvm/a;

    move-result-object p2

    sget-object v2, Lvg/a;->a:Lvg/a$a;

    invoke-virtual {v2}, Lvg/a$a;->a()Ljava/lang/String;

    move-result-object v2

    iput v3, v0, Lcom/transsion/member/MemberViewModel$redeem$1;->label:I

    invoke-interface {p2, v2, p1, v0}, Lvm/a;->a(Ljava/lang/String;Lokhttp3/RequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    :goto_2
    return-object p2

    :goto_3
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_c

    instance-of p2, p1, Lretrofit2/HttpException;

    const/4 v0, 0x0

    if-eqz p2, :cond_b

    sget-object p2, Lcom/transsion/payment/lib/bean/HttpErrorBodyBean;->Companion:Lcom/transsion/payment/lib/bean/HttpErrorBodyBean$a;

    check-cast p1, Lretrofit2/HttpException;

    invoke-virtual {p2, p1}, Lcom/transsion/payment/lib/bean/HttpErrorBodyBean$a;->a(Lretrofit2/HttpException;)Lcom/transsion/payment/lib/bean/HttpErrorBodyBean;

    move-result-object p1

    new-instance p2, Lcom/tn/lib/net/bean/BaseDto;

    const-string v1, ""

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/transsion/payment/lib/bean/HttpErrorBodyBean;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6

    :cond_5
    move-object v2, v1

    :cond_6
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/transsion/payment/lib/bean/HttpErrorBodyBean;->getCode()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_8

    :cond_7
    move-object v3, v1

    :cond_8
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/transsion/payment/lib/bean/HttpErrorBodyBean;->getReason()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_9

    goto :goto_4

    :cond_9
    move-object v1, p1

    :cond_a
    :goto_4
    invoke-direct {p2, v2, v3, v0, v1}, Lcom/tn/lib/net/bean/BaseDto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-object p2

    :cond_b
    sget-object v4, Llg/a;->a:Llg/a$a;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "it = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x4

    const/4 v9, 0x0

    const-string v5, "MemberViewModel"

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Llg/a$a;->l(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-object v0

    :cond_c
    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
.end method

.method public static synthetic c()Lcom/transsion/memberapi/IPremiumApi;
    .locals 1

    invoke-static {}, Lcom/transsion/member/MemberViewModel;->R()Lcom/transsion/memberapi/IPremiumApi;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic d()Lcom/transsion/memberapi/IMemberApi;
    .locals 1

    invoke-static {}, Lcom/transsion/member/MemberViewModel;->Q()Lcom/transsion/memberapi/IMemberApi;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic e()Lvm/a;
    .locals 1

    invoke-static {}, Lcom/transsion/member/MemberViewModel;->P()Lvm/a;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic f(Lcom/transsion/member/MemberViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    iget-object p0, p0, Lcom/transsion/member/MemberViewModel;->h:Landroidx/lifecycle/b0;

    return-object p0
.end method

.method public static final synthetic g(Lcom/transsion/member/MemberViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    iget-object p0, p0, Lcom/transsion/member/MemberViewModel;->l:Landroidx/lifecycle/b0;

    return-object p0
.end method

.method public static final synthetic h(Lcom/transsion/member/MemberViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    iget-object p0, p0, Lcom/transsion/member/MemberViewModel;->e:Landroidx/lifecycle/b0;

    return-object p0
.end method

.method public static final synthetic i(Lcom/transsion/member/MemberViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    iget-object p0, p0, Lcom/transsion/member/MemberViewModel;->o:Landroidx/lifecycle/b0;

    return-object p0
.end method

.method public static final synthetic j(Lcom/transsion/member/MemberViewModel;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/transsion/member/MemberViewModel;->p:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic k(Lcom/transsion/member/MemberViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    iget-object p0, p0, Lcom/transsion/member/MemberViewModel;->g:Landroidx/lifecycle/b0;

    return-object p0
.end method

.method public static final synthetic l(Lcom/transsion/member/MemberViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    iget-object p0, p0, Lcom/transsion/member/MemberViewModel;->m:Landroidx/lifecycle/b0;

    return-object p0
.end method

.method public static final synthetic m(Lcom/transsion/member/MemberViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    iget-object p0, p0, Lcom/transsion/member/MemberViewModel;->f:Landroidx/lifecycle/b0;

    return-object p0
.end method

.method public static final synthetic n(Lcom/transsion/member/MemberViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    iget-object p0, p0, Lcom/transsion/member/MemberViewModel;->j:Landroidx/lifecycle/b0;

    return-object p0
.end method

.method public static final synthetic o(Lcom/transsion/member/MemberViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    iget-object p0, p0, Lcom/transsion/member/MemberViewModel;->k:Landroidx/lifecycle/b0;

    return-object p0
.end method

.method public static final synthetic p(Lcom/transsion/member/MemberViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    iget-object p0, p0, Lcom/transsion/member/MemberViewModel;->i:Landroidx/lifecycle/b0;

    return-object p0
.end method

.method public static final synthetic q(Lcom/transsion/member/MemberViewModel;Lcom/transsion/memberapi/SkuItem;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/member/MemberViewModel;->S(Lcom/transsion/memberapi/SkuItem;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic r(Lcom/transsion/member/MemberViewModel;Lio/reactivex/rxjava3/disposables/c;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/member/MemberViewModel;->q:Lio/reactivex/rxjava3/disposables/c;

    return-void
.end method

.method public static final synthetic s(Lcom/transsion/member/MemberViewModel;Lio/reactivex/rxjava3/disposables/c;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/member/MemberViewModel;->s:Lio/reactivex/rxjava3/disposables/c;

    return-void
.end method

.method public static final synthetic t(Lcom/transsion/member/MemberViewModel;Lio/reactivex/rxjava3/disposables/c;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/member/MemberViewModel;->r:Lio/reactivex/rxjava3/disposables/c;

    return-void
.end method


# virtual methods
.method public final A()Landroidx/lifecycle/LiveData;
    .locals 1

    iget-object v0, p0, Lcom/transsion/member/MemberViewModel;->h:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final B()Landroidx/lifecycle/LiveData;
    .locals 1

    iget-object v0, p0, Lcom/transsion/member/MemberViewModel;->l:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final D()Landroidx/lifecycle/LiveData;
    .locals 1

    iget-object v0, p0, Lcom/transsion/member/MemberViewModel;->e:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final E()Landroidx/lifecycle/LiveData;
    .locals 1

    iget-object v0, p0, Lcom/transsion/member/MemberViewModel;->o:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final H()Landroidx/lifecycle/LiveData;
    .locals 1

    iget-object v0, p0, Lcom/transsion/member/MemberViewModel;->g:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final I()Landroidx/lifecycle/LiveData;
    .locals 1

    iget-object v0, p0, Lcom/transsion/member/MemberViewModel;->m:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final J()Lcom/transsion/memberapi/SkuData;
    .locals 1

    iget-object v0, p0, Lcom/transsion/member/MemberViewModel;->f:Landroidx/lifecycle/b0;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/memberapi/SkuData;

    return-object v0
.end method

.method public final K()Landroidx/lifecycle/LiveData;
    .locals 1

    iget-object v0, p0, Lcom/transsion/member/MemberViewModel;->f:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final L()Landroidx/lifecycle/LiveData;
    .locals 1

    iget-object v0, p0, Lcom/transsion/member/MemberViewModel;->j:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final M()Landroidx/lifecycle/LiveData;
    .locals 1

    iget-object v0, p0, Lcom/transsion/member/MemberViewModel;->k:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final N()Landroidx/lifecycle/LiveData;
    .locals 1

    iget-object v0, p0, Lcom/transsion/member/MemberViewModel;->i:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final O()V
    .locals 9

    sget-object v0, Lcom/transsion/member/c0;->a:Lcom/transsion/member/c0;

    invoke-virtual {v0}, Lcom/transsion/member/c0;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "MEMBER_JSON"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    const-class v1, Lcom/transsion/memberapi/MemberDetail;

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/o;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/memberapi/MemberDetail;

    iget-object v1, p0, Lcom/transsion/member/MemberViewModel;->e:Landroidx/lifecycle/b0;

    invoke-virtual {v1, v0}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v3, Llg/a;->a:Llg/a$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No member detail cache "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v4, "MemberViewModel"

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    :cond_1
    :goto_0
    sget-object v0, Lcom/transsion/member/c0;->a:Lcom/transsion/member/c0;

    invoke-virtual {v0}, Lcom/transsion/member/c0;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "MEMBER_GOODS_JSON"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    :try_start_1
    const-class v1, Lcom/transsion/memberapi/MemberPriceData;

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/o;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/memberapi/MemberPriceData;

    iget-object v1, p0, Lcom/transsion/member/MemberViewModel;->o:Landroidx/lifecycle/b0;

    invoke-virtual {v1, v0}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    sget-object v1, Llg/a;->a:Llg/a$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No member goods cache "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "MemberViewModel"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final T(Lcom/transsion/memberapi/SkuItem;)V
    .locals 7

    const-string v0, "skuItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v4, Lcom/transsion/member/MemberViewModel$redeemProduct$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Lcom/transsion/member/MemberViewModel$redeemProduct$1;-><init>(Lcom/transsion/member/MemberViewModel;Lcom/transsion/memberapi/SkuItem;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final U(II)V
    .locals 6

    invoke-direct {p0}, Lcom/transsion/member/MemberViewModel;->C()Lvm/a;

    move-result-object v0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    move v2, p1

    move v3, p2

    invoke-static/range {v0 .. v5}, Lvm/a$a;->c(Lvm/a;Ljava/lang/String;IIILjava/lang/Object;)Lio/reactivex/rxjava3/core/j;

    move-result-object p1

    sget-object p2, Lsg/d;->a:Lsg/d;

    invoke-virtual {p2}, Lsg/d;->c()Lio/reactivex/rxjava3/core/n;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/j;->f(Lio/reactivex/rxjava3/core/n;)Lio/reactivex/rxjava3/core/j;

    move-result-object p1

    new-instance p2, Lcom/transsion/member/MemberViewModel$m;

    invoke-direct {p2, p0}, Lcom/transsion/member/MemberViewModel$m;-><init>(Lcom/transsion/member/MemberViewModel;)V

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/j;->subscribe(Lio/reactivex/rxjava3/core/o;)V

    return-void
.end method

.method public final V()V
    .locals 12

    invoke-direct {p0}, Lcom/transsion/member/MemberViewModel;->C()Lvm/a;

    move-result-object v0

    new-instance v7, Lcom/transsion/member/bean/request/InviteUserShareInfoReq;

    const/4 v5, 0x5

    const/4 v6, 0x0

    const/4 v2, 0x0

    const-string v3, "WhatsApp"

    const/4 v4, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/transsion/member/bean/request/InviteUserShareInfoReq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v7, v2, v1}, Lvm/a$a;->d(Lvm/a;Ljava/lang/String;Lcom/transsion/member/bean/request/InviteUserShareInfoReq;ILjava/lang/Object;)Lio/reactivex/rxjava3/core/j;

    move-result-object v0

    invoke-direct {p0}, Lcom/transsion/member/MemberViewModel;->C()Lvm/a;

    move-result-object v3

    new-instance v10, Lcom/transsion/member/bean/request/InviteUserShareInfoReq;

    const/4 v8, 0x5

    const/4 v9, 0x0

    const/4 v5, 0x0

    const-string v6, "Telegram"

    const/4 v7, 0x0

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lcom/transsion/member/bean/request/InviteUserShareInfoReq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v3, v1, v10, v2, v1}, Lvm/a$a;->d(Lvm/a;Ljava/lang/String;Lcom/transsion/member/bean/request/InviteUserShareInfoReq;ILjava/lang/Object;)Lio/reactivex/rxjava3/core/j;

    move-result-object v3

    invoke-direct {p0}, Lcom/transsion/member/MemberViewModel;->C()Lvm/a;

    move-result-object v4

    new-instance v11, Lcom/transsion/member/bean/request/InviteUserShareInfoReq;

    const/4 v9, 0x5

    const/4 v10, 0x0

    const/4 v6, 0x0

    const-string v7, "CopyLink"

    const/4 v8, 0x0

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lcom/transsion/member/bean/request/InviteUserShareInfoReq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v4, v1, v11, v2, v1}, Lvm/a$a;->d(Lvm/a;Ljava/lang/String;Lcom/transsion/member/bean/request/InviteUserShareInfoReq;ILjava/lang/Object;)Lio/reactivex/rxjava3/core/j;

    move-result-object v1

    sget-object v2, Lcom/transsion/member/MemberViewModel$n;->a:Lcom/transsion/member/MemberViewModel$n;

    invoke-static {v0, v3, v1, v2}, Lio/reactivex/rxjava3/core/j;->H(Lio/reactivex/rxjava3/core/m;Lio/reactivex/rxjava3/core/m;Lio/reactivex/rxjava3/core/m;Llz/g;)Lio/reactivex/rxjava3/core/j;

    move-result-object v0

    sget-object v1, Lsg/d;->a:Lsg/d;

    invoke-virtual {v1}, Lsg/d;->c()Lio/reactivex/rxjava3/core/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/j;->f(Lio/reactivex/rxjava3/core/n;)Lio/reactivex/rxjava3/core/j;

    move-result-object v0

    new-instance v1, Lcom/transsion/member/MemberViewModel$o;

    invoke-direct {v1, p0}, Lcom/transsion/member/MemberViewModel$o;-><init>(Lcom/transsion/member/MemberViewModel;)V

    new-instance v2, Lcom/transsion/member/MemberViewModel$p;

    invoke-direct {v2, p0}, Lcom/transsion/member/MemberViewModel$p;-><init>(Lcom/transsion/member/MemberViewModel;)V

    invoke-virtual {v0, v1, v2}, Lio/reactivex/rxjava3/core/j;->B(Llz/f;Llz/f;)Lio/reactivex/rxjava3/disposables/c;

    return-void
.end method

.method public final W(I)V
    .locals 3

    invoke-direct {p0}, Lcom/transsion/member/MemberViewModel;->C()Lvm/a;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-static {v0, v1, v1, v2, v1}, Lvm/a$a;->m(Lvm/a;Ljava/lang/String;Lokhttp3/RequestBody;ILjava/lang/Object;)Lio/reactivex/rxjava3/core/j;

    move-result-object v0

    sget-object v1, Lsg/d;->a:Lsg/d;

    invoke-virtual {v1}, Lsg/d;->c()Lio/reactivex/rxjava3/core/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/j;->f(Lio/reactivex/rxjava3/core/n;)Lio/reactivex/rxjava3/core/j;

    move-result-object v0

    new-instance v1, Lcom/transsion/member/MemberViewModel$q;

    invoke-direct {v1, p0, p1}, Lcom/transsion/member/MemberViewModel$q;-><init>(Lcom/transsion/member/MemberViewModel;I)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/j;->subscribe(Lio/reactivex/rxjava3/core/o;)V

    return-void
.end method

.method public final X(ILjava/lang/String;II)V
    .locals 8

    const-string v0, "rewardId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/member/MemberViewModel;->C()Lvm/a;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, p2, v2, v1}, Lvm/a$a;->k(Lvm/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lio/reactivex/rxjava3/core/j;

    move-result-object v0

    sget-object v1, Lsg/d;->a:Lsg/d;

    invoke-virtual {v1}, Lsg/d;->c()Lio/reactivex/rxjava3/core/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/j;->f(Lio/reactivex/rxjava3/core/n;)Lio/reactivex/rxjava3/core/j;

    move-result-object v0

    new-instance v7, Lcom/transsion/member/MemberViewModel$r;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/transsion/member/MemberViewModel$r;-><init>(Lcom/transsion/member/MemberViewModel;ILjava/lang/String;II)V

    invoke-virtual {v0, v7}, Lio/reactivex/rxjava3/core/j;->subscribe(Lio/reactivex/rxjava3/core/o;)V

    return-void
.end method

.method public final u()V
    .locals 3

    invoke-direct {p0}, Lcom/transsion/member/MemberViewModel;->C()Lvm/a;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lvm/a$a;->b(Lvm/a;Ljava/lang/String;ILjava/lang/Object;)Lio/reactivex/rxjava3/core/j;

    move-result-object v0

    sget-object v1, Lsg/d;->a:Lsg/d;

    invoke-virtual {v1}, Lsg/d;->c()Lio/reactivex/rxjava3/core/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/j;->f(Lio/reactivex/rxjava3/core/n;)Lio/reactivex/rxjava3/core/j;

    move-result-object v0

    new-instance v1, Lcom/transsion/member/MemberViewModel$b;

    invoke-direct {v1, p0}, Lcom/transsion/member/MemberViewModel$b;-><init>(Lcom/transsion/member/MemberViewModel;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/j;->subscribe(Lio/reactivex/rxjava3/core/o;)V

    return-void
.end method

.method public final v()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/member/MemberViewModel;->q:Lio/reactivex/rxjava3/disposables/c;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/c;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/member/MemberViewModel;->q:Lio/reactivex/rxjava3/disposables/c;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/c;->dispose()V

    :cond_0
    invoke-direct {p0}, Lcom/transsion/member/MemberViewModel;->C()Lvm/a;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lvm/a$a;->e(Lvm/a;Ljava/lang/String;ILjava/lang/Object;)Lio/reactivex/rxjava3/core/j;

    move-result-object v0

    invoke-static {}, Lqz/a;->c()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/j;->v(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/j;

    move-result-object v0

    sget-object v1, Lcom/transsion/member/MemberViewModel$c;->a:Lcom/transsion/member/MemberViewModel$c;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/j;->h(Llz/f;)Lio/reactivex/rxjava3/core/j;

    move-result-object v0

    sget-object v1, Lsg/d;->a:Lsg/d;

    invoke-virtual {v1}, Lsg/d;->c()Lio/reactivex/rxjava3/core/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/j;->f(Lio/reactivex/rxjava3/core/n;)Lio/reactivex/rxjava3/core/j;

    move-result-object v0

    new-instance v1, Lcom/transsion/member/MemberViewModel$d;

    invoke-direct {v1, p0}, Lcom/transsion/member/MemberViewModel$d;-><init>(Lcom/transsion/member/MemberViewModel;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/j;->subscribe(Lio/reactivex/rxjava3/core/o;)V

    return-void
.end method

.method public final w()V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/member/MemberViewModel;->G()Lcom/transsion/memberapi/IPremiumApi;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/transsion/member/MemberViewModel$e;

    invoke-direct {v1, p0}, Lcom/transsion/member/MemberViewModel$e;-><init>(Lcom/transsion/member/MemberViewModel;)V

    invoke-interface {v0, v1}, Lcom/transsion/memberapi/IPremiumApi;->g(Lzm/j;)V

    :cond_0
    return-void
.end method

.method public final x()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/member/MemberViewModel;->s:Lio/reactivex/rxjava3/disposables/c;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/c;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/member/MemberViewModel;->s:Lio/reactivex/rxjava3/disposables/c;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/c;->dispose()V

    :cond_0
    invoke-direct {p0}, Lcom/transsion/member/MemberViewModel;->C()Lvm/a;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lvm/a$a;->f(Lvm/a;Ljava/lang/String;ILjava/lang/Object;)Lio/reactivex/rxjava3/core/j;

    move-result-object v0

    invoke-static {}, Lqz/a;->c()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/j;->v(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/j;

    move-result-object v0

    sget-object v1, Lcom/transsion/member/MemberViewModel$f;->a:Lcom/transsion/member/MemberViewModel$f;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/j;->x(Llz/h;)Lio/reactivex/rxjava3/core/j;

    move-result-object v0

    sget-object v1, Lcom/transsion/member/MemberViewModel$g;->a:Lcom/transsion/member/MemberViewModel$g;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/j;->h(Llz/f;)Lio/reactivex/rxjava3/core/j;

    move-result-object v0

    sget-object v1, Lsg/d;->a:Lsg/d;

    invoke-virtual {v1}, Lsg/d;->c()Lio/reactivex/rxjava3/core/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/j;->f(Lio/reactivex/rxjava3/core/n;)Lio/reactivex/rxjava3/core/j;

    move-result-object v0

    new-instance v1, Lcom/transsion/member/MemberViewModel$h;

    invoke-direct {v1, p0}, Lcom/transsion/member/MemberViewModel$h;-><init>(Lcom/transsion/member/MemberViewModel;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/j;->subscribe(Lio/reactivex/rxjava3/core/o;)V

    return-void
.end method

.method public final y()V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/member/MemberViewModel;->F()Lcom/transsion/memberapi/IMemberApi;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/transsion/member/MemberViewModel$i;

    invoke-direct {v1, p0}, Lcom/transsion/member/MemberViewModel$i;-><init>(Lcom/transsion/member/MemberViewModel;)V

    invoke-interface {v0, v1}, Lcom/transsion/memberapi/IMemberApi;->s(Lzm/c;)V

    :cond_0
    return-void
.end method

.method public final z()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/member/MemberViewModel;->r:Lio/reactivex/rxjava3/disposables/c;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/c;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/member/MemberViewModel;->r:Lio/reactivex/rxjava3/disposables/c;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/c;->dispose()V

    :cond_0
    invoke-direct {p0}, Lcom/transsion/member/MemberViewModel;->C()Lvm/a;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lvm/a$a;->i(Lvm/a;Ljava/lang/String;ILjava/lang/Object;)Lio/reactivex/rxjava3/core/j;

    move-result-object v0

    invoke-static {}, Lqz/a;->c()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/j;->v(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/j;

    move-result-object v0

    sget-object v1, Lcom/transsion/member/MemberViewModel$j;->a:Lcom/transsion/member/MemberViewModel$j;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/j;->x(Llz/h;)Lio/reactivex/rxjava3/core/j;

    move-result-object v0

    sget-object v1, Lcom/transsion/member/MemberViewModel$k;->a:Lcom/transsion/member/MemberViewModel$k;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/j;->h(Llz/f;)Lio/reactivex/rxjava3/core/j;

    move-result-object v0

    sget-object v1, Lsg/d;->a:Lsg/d;

    invoke-virtual {v1}, Lsg/d;->c()Lio/reactivex/rxjava3/core/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/j;->f(Lio/reactivex/rxjava3/core/n;)Lio/reactivex/rxjava3/core/j;

    move-result-object v0

    new-instance v1, Lcom/transsion/member/MemberViewModel$l;

    invoke-direct {v1, p0}, Lcom/transsion/member/MemberViewModel$l;-><init>(Lcom/transsion/member/MemberViewModel;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/j;->subscribe(Lio/reactivex/rxjava3/core/o;)V

    return-void
.end method
