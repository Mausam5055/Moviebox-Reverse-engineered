.class public final Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel;
.super Landroidx/lifecycle/t0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel$a;
    }
.end annotation


# static fields
.field public static final l:Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel$a;


# instance fields
.field private final a:Lkotlin/Lazy;

.field private final b:Lkotlin/Lazy;

.field private final c:Lkotlin/Lazy;

.field private final d:Landroidx/lifecycle/b0;

.field private final e:Landroidx/lifecycle/LiveData;

.field private final f:Landroidx/lifecycle/b0;

.field private final g:Landroidx/lifecycle/LiveData;

.field private final h:Landroidx/lifecycle/b0;

.field private final i:Landroidx/lifecycle/LiveData;

.field private final j:Landroidx/lifecycle/b0;

.field private final k:Landroidx/lifecycle/LiveData;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel;->l:Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/lifecycle/t0;-><init>()V

    new-instance v0, Lcom/transsion/usercenter/profile/viewmodel/c;

    invoke-direct {v0}, Lcom/transsion/usercenter/profile/viewmodel/c;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel;->a:Lkotlin/Lazy;

    new-instance v0, Lcom/transsion/usercenter/profile/viewmodel/d;

    invoke-direct {v0}, Lcom/transsion/usercenter/profile/viewmodel/d;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel;->b:Lkotlin/Lazy;

    new-instance v0, Lcom/transsion/usercenter/profile/viewmodel/e;

    invoke-direct {v0}, Lcom/transsion/usercenter/profile/viewmodel/e;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel;->c:Lkotlin/Lazy;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel;->d:Landroidx/lifecycle/b0;

    iput-object v0, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel;->e:Landroidx/lifecycle/LiveData;

    new-instance v0, Landroidx/lifecycle/b0;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, v1}, Landroidx/lifecycle/b0;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel;->f:Landroidx/lifecycle/b0;

    iput-object v0, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel;->g:Landroidx/lifecycle/LiveData;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel;->h:Landroidx/lifecycle/b0;

    iput-object v0, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel;->i:Landroidx/lifecycle/LiveData;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel;->j:Landroidx/lifecycle/b0;

    iput-object v0, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel;->k:Landroidx/lifecycle/LiveData;

    return-void
.end method

.method public static synthetic b()Lcom/transsnet/loginapi/ILoginApi;
    .locals 1

    invoke-static {}, Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel;->r()Lcom/transsnet/loginapi/ILoginApi;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c()Lcom/transsion/usercenter/profile/b;
    .locals 1

    invoke-static {}, Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel;->s()Lcom/transsion/usercenter/profile/b;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic d()Lcom/transsion/usercenter/profile/c;
    .locals 1

    invoke-static {}, Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel;->t()Lcom/transsion/usercenter/profile/c;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic e(Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel;)Lcom/transsion/usercenter/profile/b;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel;->l()Lcom/transsion/usercenter/profile/b;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic f(Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel;)Lcom/transsion/usercenter/profile/c;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel;->m()Lcom/transsion/usercenter/profile/c;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic g(Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    iget-object p0, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel;->h:Landroidx/lifecycle/b0;

    return-object p0
.end method

.method public static final synthetic h(Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    iget-object p0, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel;->j:Landroidx/lifecycle/b0;

    return-object p0
.end method

.method private final k()Lcom/transsnet/loginapi/ILoginApi;
    .locals 1

    iget-object v0, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel;->a:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsnet/loginapi/ILoginApi;

    return-object v0
.end method

.method private final l()Lcom/transsion/usercenter/profile/b;
    .locals 1

    iget-object v0, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel;->c:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/usercenter/profile/b;

    return-object v0
.end method

.method private final m()Lcom/transsion/usercenter/profile/c;
    .locals 1

    iget-object v0, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/usercenter/profile/c;

    return-object v0
.end method

.method private static final r()Lcom/transsnet/loginapi/ILoginApi;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-class v1, Lcom/transsnet/loginapi/ILoginApi;

    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsnet/loginapi/ILoginApi;

    return-object v0
.end method

.method private static final s()Lcom/transsion/usercenter/profile/b;
    .locals 2

    sget-object v0, Lzg/c;->e:Lzg/c$a;

    invoke-virtual {v0}, Lzg/c$a;->a()Lzg/c;

    move-result-object v0

    const-class v1, Lcom/transsion/usercenter/profile/b;

    invoke-virtual {v0, v1}, Lzg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/usercenter/profile/b;

    return-object v0
.end method

.method private static final t()Lcom/transsion/usercenter/profile/c;
    .locals 2

    sget-object v0, Lzg/c;->e:Lzg/c$a;

    invoke-virtual {v0}, Lzg/c$a;->a()Lzg/c;

    move-result-object v0

    const-class v1, Lcom/transsion/usercenter/profile/c;

    invoke-virtual {v0, v1}, Lzg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/usercenter/profile/c;

    return-object v0
.end method


# virtual methods
.method public final i(Ljava/lang/String;)V
    .locals 7

    const-string v0, "targetUID"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v4, Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel$fetchSubscriptionStatus$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel$fetchSubscriptionStatus$1;-><init>(Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final j(Ljava/lang/String;)V
    .locals 6

    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v0

    new-instance v3, Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel$fetchUserProfileV3$1;

    const/4 v1, 0x0

    invoke-direct {v3, p0, p1, v1}, Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel$fetchUserProfileV3$1;-><init>(Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final n()Landroidx/lifecycle/LiveData;
    .locals 1

    iget-object v0, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel;->i:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final o()Landroidx/lifecycle/LiveData;
    .locals 1

    iget-object v0, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel;->k:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final p(Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel;->d:Landroidx/lifecycle/b0;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel;->k()Lcom/transsnet/loginapi/ILoginApi;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsnet/loginapi/ILoginApi;->i()Lcom/transsnet/loginapi/bean/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsnet/loginapi/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const/4 v2, 0x0

    if-eqz p1, :cond_3

    invoke-static {p1}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    move v3, v2

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v3, 0x1

    :goto_2
    sget-object v4, Llg/a;->a:Llg/a$a;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initProfile target="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", current="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", isSelf="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "UserProfileVM"

    invoke-virtual {v4, v5, v0, v2}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel;->f:Landroidx/lifecycle/b0;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel;->j(Ljava/lang/String;)V

    if-nez v3, :cond_5

    if-eqz p1, :cond_5

    invoke-static {p1}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p0, p1}, Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel;->i(Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    :goto_3
    iget-object p1, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel;->h:Landroidx/lifecycle/b0;

    invoke-virtual {p1, v1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    :goto_4
    return-void
.end method

.method public final q()Landroidx/lifecycle/LiveData;
    .locals 1

    iget-object v0, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel;->g:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final u(Ljava/lang/String;Z)V
    .locals 7

    const-string v0, "targetUID"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v4, Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel$toggleSubscription$1;

    const/4 v0, 0x0

    invoke-direct {v4, p1, p2, p0, v0}, Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel$toggleSubscription$1;-><init>(Ljava/lang/String;ZLcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method
