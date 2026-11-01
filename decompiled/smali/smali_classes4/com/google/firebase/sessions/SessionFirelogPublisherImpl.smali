.class public final Lcom/google/firebase/sessions/SessionFirelogPublisherImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/sessions/w;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$a;
    }
.end annotation


# static fields
.field public static final g:Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$a;

.field private static final h:D


# instance fields
.field private final b:Lcom/google/firebase/f;

.field private final c:Ljc/e;

.field private final d:Lcom/google/firebase/sessions/settings/SessionsSettings;

.field private final e:Lcom/google/firebase/sessions/g;

.field private final f:Lkotlin/coroutines/CoroutineContext;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl;->g:Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$a;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    sput-wide v0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl;->h:D

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/f;Ljc/e;Lcom/google/firebase/sessions/settings/SessionsSettings;Lcom/google/firebase/sessions/g;Lkotlin/coroutines/CoroutineContext;)V
    .locals 1

    const-string v0, "firebaseApp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "firebaseInstallations"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sessionSettings"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventGDTLogger"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backgroundDispatcher"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl;->b:Lcom/google/firebase/f;

    iput-object p2, p0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl;->c:Ljc/e;

    iput-object p3, p0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl;->d:Lcom/google/firebase/sessions/settings/SessionsSettings;

    iput-object p4, p0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl;->e:Lcom/google/firebase/sessions/g;

    iput-object p5, p0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl;->f:Lkotlin/coroutines/CoroutineContext;

    return-void
.end method

.method public static final synthetic b(Lcom/google/firebase/sessions/SessionFirelogPublisherImpl;Lcom/google/firebase/sessions/u;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl;->g(Lcom/google/firebase/sessions/u;)V

    return-void
.end method

.method public static final synthetic c(Lcom/google/firebase/sessions/SessionFirelogPublisherImpl;)Lcom/google/firebase/f;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl;->b:Lcom/google/firebase/f;

    return-object p0
.end method

.method public static final synthetic d(Lcom/google/firebase/sessions/SessionFirelogPublisherImpl;)Ljc/e;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl;->c:Ljc/e;

    return-object p0
.end method

.method public static final synthetic e(Lcom/google/firebase/sessions/SessionFirelogPublisherImpl;)Lcom/google/firebase/sessions/settings/SessionsSettings;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl;->d:Lcom/google/firebase/sessions/settings/SessionsSettings;

    return-object p0
.end method

.method public static final synthetic f(Lcom/google/firebase/sessions/SessionFirelogPublisherImpl;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl;->i(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final g(Lcom/google/firebase/sessions/u;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl;->e:Lcom/google/firebase/sessions/g;

    invoke-interface {v0, p1}, Lcom/google/firebase/sessions/g;->a(Lcom/google/firebase/sessions/u;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "SessionFirelogPublisher"

    const-string v1, "Error logging Session Start event to DataTransport: "

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private final h()Z
    .locals 4

    sget-wide v0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl;->h:D

    iget-object v2, p0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl;->d:Lcom/google/firebase/sessions/settings/SessionsSettings;

    invoke-virtual {v2}, Lcom/google/firebase/sessions/settings/SessionsSettings;->b()D

    move-result-wide v2

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final i(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p1, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$shouldLogSession$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$shouldLogSession$1;

    iget v1, v0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$shouldLogSession$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$shouldLogSession$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$shouldLogSession$1;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$shouldLogSession$1;-><init>(Lcom/google/firebase/sessions/SessionFirelogPublisherImpl;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$shouldLogSession$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$shouldLogSession$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$shouldLogSession$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl;->d:Lcom/google/firebase/sessions/settings/SessionsSettings;

    iput-object p0, v0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$shouldLogSession$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$shouldLogSession$1;->label:I

    invoke-virtual {p1, v0}, Lcom/google/firebase/sessions/settings/SessionsSettings;->g(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    :goto_1
    iget-object p1, v0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl;->d:Lcom/google/firebase/sessions/settings/SessionsSettings;

    invoke-virtual {p1}, Lcom/google/firebase/sessions/settings/SessionsSettings;->d()Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_4

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-direct {v0}, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl;->h()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_5
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(Lcom/google/firebase/sessions/t;)V
    .locals 7

    const-string v0, "sessionDetails"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl;->f:Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v4, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$logSession$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$logSession$1;-><init>(Lcom/google/firebase/sessions/SessionFirelogPublisherImpl;Lcom/google/firebase/sessions/t;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method
