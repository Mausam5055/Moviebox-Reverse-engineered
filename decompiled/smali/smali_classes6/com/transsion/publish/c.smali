.class public final Lcom/transsion/publish/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/publish/c$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/transsion/publish/c$a;

.field private static final b:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/publish/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/publish/c$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/publish/c;->a:Lcom/transsion/publish/c$a;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/transsion/publish/b;

    invoke-direct {v1}, Lcom/transsion/publish/b;-><init>()V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/transsion/publish/c;->b:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lcom/transsion/publish/c;
    .locals 1

    invoke-static {}, Lcom/transsion/publish/c;->c()Lcom/transsion/publish/c;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic b(Lcom/transsion/publish/c;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/publish/c;->h(Lcom/transsion/publish/c;Ljava/lang/String;)V

    return-void
.end method

.method private static final c()Lcom/transsion/publish/c;
    .locals 1

    new-instance v0, Lcom/transsion/publish/c;

    invoke-direct {v0}, Lcom/transsion/publish/c;-><init>()V

    return-object v0
.end method

.method public static final synthetic d()Lkotlin/Lazy;
    .locals 1

    sget-object v0, Lcom/transsion/publish/c;->b:Lkotlin/Lazy;

    return-object v0
.end method

.method private final e(Ljava/lang/Runnable;)V
    .locals 1

    sget-object v0, Lcom/transsion/publish/p;->b:Lcom/transsion/publish/p$a;

    invoke-virtual {v0}, Lcom/transsion/publish/p$a;->a()Lcom/transsion/publish/p;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/publish/p;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    new-instance v0, Lcom/transsion/publish/api/LinkEntity;

    invoke-direct {v0}, Lcom/transsion/publish/api/LinkEntity;-><init>()V

    invoke-virtual {v0, p1}, Lcom/transsion/publish/api/LinkEntity;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/transsion/publish/api/LinkEntity;->setCover(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/transsion/publish/api/LinkEntity;->setUrl(Ljava/lang/String;)V

    const/4 p1, 0x4

    invoke-virtual {v0, p1}, Lin/a;->setType(I)V

    invoke-virtual {v0, p4}, Lcom/transsion/publish/api/LinkEntity;->setLoading(Z)V

    new-instance p2, Lfp/a;

    invoke-direct {p2}, Lfp/a;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lfp/a;->o(Ljava/lang/Integer;)V

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lfp/a;->n(Ljava/lang/Integer;)V

    invoke-virtual {p2, v0}, Lfp/a;->p(Lcom/transsion/publish/api/LinkEntity;)V

    sget-object p1, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    const-class p3, Lcom/transsnet/flow/event/FlowEventBus;

    invoke-virtual {p1, p3}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    move-result-object p1

    check-cast p1, Lcom/transsnet/flow/event/FlowEventBus;

    const-class p3, Lfp/a;

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    const-string p4, "getName(...)"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    invoke-virtual {p1, p3, p2, v0, v1}, Lcom/transsnet/flow/event/FlowEventBus;->postEvent(Ljava/lang/String;Ljava/lang/Object;J)V

    return-void
.end method

.method private static final h(Lcom/transsion/publish/c;Ljava/lang/String;)V
    .locals 8

    const-string v0, ""

    if-nez p1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    if-nez p1, :cond_1

    move-object v2, v0

    goto :goto_1

    :cond_1
    move-object v2, p1

    :goto_1
    const/4 v3, 0x0

    :try_start_0
    invoke-direct {p0, v1, v0, v2, v3}, Lcom/transsion/publish/c;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p1, :cond_5

    invoke-direct {p0, p1}, Lcom/transsion/publish/c;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    sget-object v2, Llg/a;->a:Llg/a$a;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v3, "LinkParseManager"

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    if-nez p1, :cond_3

    move-object v1, v0

    goto :goto_2

    :cond_3
    move-object v1, p1

    :goto_2
    if-nez p1, :cond_4

    move-object p1, v0

    :cond_4
    const/4 v2, 0x1

    invoke-direct {p0, v1, v0, p1, v2}, Lcom/transsion/publish/c;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_5
    :goto_3
    return-void
.end method

.method private final i(Ljava/lang/String;)V
    .locals 9

    invoke-static {p1}, Ld10/a;->a(Ljava/lang/String;)Lorg/jsoup/Connection;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/jsoup/Connection;->a(Z)Lorg/jsoup/Connection;

    move-result-object v0

    invoke-interface {v0}, Lorg/jsoup/Connection;->get()Lorg/jsoup/nodes/Document;

    move-result-object v0

    const-string v2, "get(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/jsoup/nodes/Document;->j1()Ljava/lang/String;

    move-result-object v0

    const-string v2, "title(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Llg/a;->a:Llg/a$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "title:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v4, "LinkParseManager"

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    const-string v2, ""

    invoke-direct {p0, v0, v2, p1, v1}, Lcom/transsion/publish/c;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Luh/b;->a:Luh/b$a;

    const-string v0, "Not a valid link"

    invoke-virtual {p1, v0}, Luh/b$a;->e(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    new-instance v0, Lcom/transsion/publish/a;

    invoke-direct {v0, p0, p1}, Lcom/transsion/publish/a;-><init>(Lcom/transsion/publish/c;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/transsion/publish/c;->e(Ljava/lang/Runnable;)V

    return-void
.end method
