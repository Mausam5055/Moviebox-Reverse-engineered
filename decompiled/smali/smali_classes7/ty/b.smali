.class public final Lty/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lty/b$a;
    }
.end annotation


# static fields
.field public static final a:Lty/b$a;

.field private static final b:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lty/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lty/b$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lty/b;->a:Lty/b$a;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lty/a;

    invoke-direct {v1}, Lty/a;-><init>()V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lty/b;->b:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lty/b;
    .locals 1

    invoke-static {}, Lty/b;->b()Lty/b;

    move-result-object v0

    return-object v0
.end method

.method private static final b()Lty/b;
    .locals 1

    new-instance v0, Lty/b;

    invoke-direct {v0}, Lty/b;-><init>()V

    return-object v0
.end method

.method public static final synthetic c()Lkotlin/Lazy;
    .locals 1

    sget-object v0, Lty/b;->b:Lkotlin/Lazy;

    return-object v0
.end method


# virtual methods
.method public final d(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "commentId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "commentNum"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    new-instance p1, Lcom/transsion/user/action/sync/event/CommentEvent;

    invoke-direct {p1, v0, p2, p3, p4}, Lcom/transsion/user/action/sync/event/CommentEvent;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    const-class p3, Lcom/transsnet/flow/event/FlowEventBus;

    invoke-virtual {p2, p3}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    move-result-object p2

    check-cast p2, Lcom/transsnet/flow/event/FlowEventBus;

    const-class p3, Lcom/transsion/user/action/sync/event/CommentEvent;

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    const-string p4, "getName(...)"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    invoke-virtual {p2, p3, p1, v0, v1}, Lcom/transsnet/flow/event/FlowEventBus;->postEvent(Ljava/lang/String;Ljava/lang/Object;J)V

    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 4

    const-string v0, "postId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Luy/b;

    invoke-direct {v0, p1}, Luy/b;-><init>(Ljava/lang/String;)V

    sget-object p1, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    const-class v1, Lcom/transsnet/flow/event/FlowEventBus;

    invoke-virtual {p1, v1}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    move-result-object p1

    check-cast p1, Lcom/transsnet/flow/event/FlowEventBus;

    const-class v1, Luy/b;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getName(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v1, v0, v2, v3}, Lcom/transsnet/flow/event/FlowEventBus;->postEvent(Ljava/lang/String;Ljava/lang/Object;J)V

    return-void
.end method

.method public final f(ILjava/lang/String;)V
    .locals 3

    const-string v0, "groupId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    new-instance p1, Lcom/transsnet/flow/event/sync/event/JoinRoomEvent;

    invoke-direct {p1, v0, p2}, Lcom/transsnet/flow/event/sync/event/JoinRoomEvent;-><init>(ZLjava/lang/String;)V

    sget-object p2, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    const-class v0, Lcom/transsnet/flow/event/FlowEventBus;

    invoke-virtual {p2, v0}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    move-result-object p2

    check-cast p2, Lcom/transsnet/flow/event/FlowEventBus;

    const-class v0, Lcom/transsnet/flow/event/sync/event/JoinRoomEvent;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    invoke-virtual {p2, v0, p1, v1, v2}, Lcom/transsnet/flow/event/FlowEventBus;->postEvent(Ljava/lang/String;Ljava/lang/Object;J)V

    return-void
.end method

.method public final g(ILjava/lang/String;)V
    .locals 3

    const-string v0, "subjectId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    new-instance v0, Lcom/transsnet/flow/event/sync/event/LikeEvent;

    invoke-direct {v0, p1, p2}, Lcom/transsnet/flow/event/sync/event/LikeEvent;-><init>(ZLjava/lang/String;)V

    sget-object p1, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    const-class p2, Lcom/transsnet/flow/event/FlowEventBus;

    invoke-virtual {p1, p2}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    move-result-object p1

    check-cast p1, Lcom/transsnet/flow/event/FlowEventBus;

    const-class p2, Lcom/transsnet/flow/event/sync/event/LikeEvent;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    const-string v1, "getName(...)"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/transsnet/flow/event/FlowEventBus;->postEvent(Ljava/lang/String;Ljava/lang/Object;J)V

    return-void
.end method

.method public final h(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7

    const-string v0, "getName(...)"

    const-class v1, Lcom/transsnet/flow/event/sync/event/PublishEvent;

    const-class v2, Lcom/transsnet/flow/event/FlowEventBus;

    const-string v3, "postId"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    :try_start_0
    new-instance v5, Lcom/transsnet/flow/event/sync/event/PublishEvent;

    invoke-direct {v5, p1, p2, p3}, Lcom/transsnet/flow/event/sync/event/PublishEvent;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object p2, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    invoke-virtual {p2, v2}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    move-result-object p2

    check-cast p2, Lcom/transsnet/flow/event/FlowEventBus;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v6, v5, v3, v4}, Lcom/transsnet/flow/event/FlowEventBus;->postEvent(Ljava/lang/String;Ljava/lang/Object;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p2, Lcom/transsnet/flow/event/sync/event/PublishEvent;

    const/4 v5, 0x0

    invoke-direct {p2, p1, v5, p3}, Lcom/transsnet/flow/event/sync/event/PublishEvent;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object p1, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    invoke-virtual {p1, v2}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    move-result-object p1

    check-cast p1, Lcom/transsnet/flow/event/FlowEventBus;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p3, p2, v3, v4}, Lcom/transsnet/flow/event/FlowEventBus;->postEvent(Ljava/lang/String;Ljava/lang/Object;J)V

    :goto_0
    return-void
.end method

.method public final i(ILjava/lang/String;)V
    .locals 3

    const-string v0, "subjectId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    new-instance p1, Lcom/transsnet/flow/event/sync/event/WatchLaterEvent;

    invoke-direct {p1, v0, p2}, Lcom/transsnet/flow/event/sync/event/WatchLaterEvent;-><init>(ZLjava/lang/String;)V

    sget-object p2, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    const-class v0, Lcom/transsnet/flow/event/FlowEventBus;

    invoke-virtual {p2, v0}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    move-result-object p2

    check-cast p2, Lcom/transsnet/flow/event/FlowEventBus;

    const-class v0, Lcom/transsnet/flow/event/sync/event/WatchLaterEvent;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    invoke-virtual {p2, v0, p1, v1, v2}, Lcom/transsnet/flow/event/FlowEventBus;->postEvent(Ljava/lang/String;Ljava/lang/Object;J)V

    return-void
.end method
