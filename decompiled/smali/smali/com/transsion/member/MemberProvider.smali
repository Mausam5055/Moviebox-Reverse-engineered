.class public final Lcom/transsion/member/MemberProvider;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/memberapi/IMemberApi;


# instance fields
.field private final a:Lkotlin/Lazy;

.field private volatile b:Lcom/transsion/memberapi/MemberDetail;

.field private volatile c:Lcom/transsion/memberapi/MemberTaskInfo;

.field private final d:Lkotlinx/coroutines/flow/y0;

.field private final e:Lkotlinx/coroutines/flow/y0;

.field private f:Ljava/lang/String;

.field private g:Lcom/transsion/member/dialog/ClaimMemberDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/transsion/member/o0;

    invoke-direct {v0}, Lcom/transsion/member/o0;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/member/MemberProvider;->a:Lkotlin/Lazy;

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlinx/coroutines/flow/j1;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/y0;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/member/MemberProvider;->d:Lkotlinx/coroutines/flow/y0;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1}, Lkotlinx/coroutines/flow/j1;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/y0;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/member/MemberProvider;->e:Lkotlinx/coroutines/flow/y0;

    const-string v1, ""

    iput-object v1, p0, Lcom/transsion/member/MemberProvider;->f:Ljava/lang/String;

    sget-object v1, Lcom/transsion/member/c0;->a:Lcom/transsion/member/c0;

    invoke-virtual {v1}, Lcom/transsion/member/c0;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    const-string v2, "MEMBER_JSON"

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    const-class v2, Lcom/transsion/memberapi/MemberDetail;

    invoke-static {v1, v2}, Lcom/blankj/utilcode/util/o;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/memberapi/MemberDetail;

    iput-object v1, p0, Lcom/transsion/member/MemberProvider;->b:Lcom/transsion/memberapi/MemberDetail;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    iput-object v0, p0, Lcom/transsion/member/MemberProvider;->b:Lcom/transsion/memberapi/MemberDetail;

    goto :goto_1

    :cond_1
    :goto_0
    iput-object v0, p0, Lcom/transsion/member/MemberProvider;->b:Lcom/transsion/memberapi/MemberDetail;

    :goto_1
    sget-object v1, Lcom/transsion/member/c0;->a:Lcom/transsion/member/c0;

    invoke-virtual {v1}, Lcom/transsion/member/c0;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    const-string v2, "MEMBER_TASK_JSON"

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    :try_start_1
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    const-class v2, Lcom/transsion/memberapi/MemberTaskInfo;

    invoke-static {v1, v2}, Lcom/blankj/utilcode/util/o;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/memberapi/MemberTaskInfo;

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v1

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_2
    invoke-static {v1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_3

    :cond_2
    move-object v0, v1

    :goto_3
    check-cast v0, Lcom/transsion/memberapi/MemberTaskInfo;

    iput-object v0, p0, Lcom/transsion/member/MemberProvider;->c:Lcom/transsion/memberapi/MemberTaskInfo;

    :cond_3
    invoke-virtual {p0}, Lcom/transsion/member/MemberProvider;->B()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/transsion/member/ObserveLoginAction;->c:Lcom/transsion/member/ObserveLoginAction$a;

    invoke-virtual {v0}, Lcom/transsion/member/ObserveLoginAction$a;->a()Lcom/transsion/member/ObserveLoginAction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/member/ObserveLoginAction;->j()V

    :cond_4
    return-void
.end method

.method public static synthetic H()Lvm/a;
    .locals 1

    invoke-static {}, Lcom/transsion/member/MemberProvider;->Y()Lvm/a;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic I(Lcom/transsion/member/MemberProvider;Lkotlin/jvm/functions/Function0;Lcom/transsion/memberapi/TaskRewards;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/member/MemberProvider;->U(Lcom/transsion/member/MemberProvider;Lkotlin/jvm/functions/Function0;Lcom/transsion/memberapi/TaskRewards;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic J(Lkotlin/jvm/functions/Function2;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/member/MemberProvider;->T(Lkotlin/jvm/functions/Function2;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic K(Lcom/transsion/member/MemberProvider;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/member/MemberProvider;->V()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic L(Lcom/transsion/member/MemberProvider;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/member/MemberProvider;->W()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic M(Lcom/transsion/member/MemberProvider;)Lkotlinx/coroutines/flow/y0;
    .locals 0

    iget-object p0, p0, Lcom/transsion/member/MemberProvider;->e:Lkotlinx/coroutines/flow/y0;

    return-object p0
.end method

.method public static final synthetic N(Lcom/transsion/member/MemberProvider;)Lcom/transsion/memberapi/MemberDetail;
    .locals 0

    iget-object p0, p0, Lcom/transsion/member/MemberProvider;->b:Lcom/transsion/memberapi/MemberDetail;

    return-object p0
.end method

.method public static final synthetic O(Lcom/transsion/member/MemberProvider;)Lkotlinx/coroutines/flow/y0;
    .locals 0

    iget-object p0, p0, Lcom/transsion/member/MemberProvider;->d:Lkotlinx/coroutines/flow/y0;

    return-object p0
.end method

.method public static final synthetic P(Lcom/transsion/member/MemberProvider;)Lcom/transsion/memberapi/MemberTaskInfo;
    .locals 0

    iget-object p0, p0, Lcom/transsion/member/MemberProvider;->c:Lcom/transsion/memberapi/MemberTaskInfo;

    return-object p0
.end method

.method public static final synthetic Q(Lcom/transsion/member/MemberProvider;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/member/MemberProvider;->f:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic R(Lcom/transsion/member/MemberProvider;Lcom/transsion/memberapi/MemberDetail;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/member/MemberProvider;->b:Lcom/transsion/memberapi/MemberDetail;

    return-void
.end method

.method public static final synthetic S(Lcom/transsion/member/MemberProvider;Lcom/transsion/memberapi/MemberTaskInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/member/MemberProvider;->c:Lcom/transsion/memberapi/MemberTaskInfo;

    return-void
.end method

.method private static final native T(Lkotlin/jvm/functions/Function2;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
.end method

.method private static final native U(Lcom/transsion/member/MemberProvider;Lkotlin/jvm/functions/Function0;Lcom/transsion/memberapi/TaskRewards;)Lkotlin/Unit;
.end method

.method private final native V()Ljava/lang/String;
.end method

.method private final native W()Ljava/lang/String;
.end method

.method private final native X()Lvm/a;
.end method

.method private static final native Y()Lvm/a;
.end method


# virtual methods
.method public native A(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;)V
.end method

.method public native B()Z
.end method

.method public native C(Lkotlin/jvm/functions/Function0;)V
.end method

.method public native D()I
.end method

.method public native E(Lzm/e;)V
.end method

.method public native F(Lcom/transsion/memberapi/MemberRemindData;)Z
.end method

.method public native G()V
.end method

.method public native a(Landroid/app/Activity;Lcom/transsion/memberapi/MemberSource;Lzm/b;ZLjava/lang/String;)V
.end method

.method public native b()Lcom/transsion/memberapi/MemberDetail;
.end method

.method public native c()Z
.end method

.method public native d()Lkotlinx/coroutines/flow/i1;
.end method

.method public native e(Lcom/transsion/memberapi/MemberSceneType;Ljava/lang/Integer;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end method

.method public native f()Z
.end method

.method public native g()Z
.end method

.method public native h()V
.end method

.method public native i()V
.end method

.method public native j(Landroidx/fragment/app/Fragment;)Z
.end method

.method public native k(Lcom/transsion/memberapi/MemberDetail;)V
.end method

.method public native l(Lcom/transsion/memberapi/MemberTaskItem;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)V
.end method

.method public native m(Lkotlin/jvm/functions/Function1;)V
.end method

.method public native n(Lcom/transsion/memberapi/OpType;Lkotlin/jvm/functions/Function1;)V
.end method

.method public native o(Ljava/lang/Integer;Lzm/a;)V
.end method

.method public native p()V
.end method

.method public native q()V
.end method

.method public native r()Landroidx/fragment/app/Fragment;
.end method

.method public native s(Lzm/c;)V
.end method

.method public native t(Lzm/e;)V
.end method

.method public native u(Lzm/c;)V
.end method

.method public native v()V
.end method

.method public native w(Landroid/app/Activity;Lcom/transsion/memberapi/MemberSource;Lcom/transsion/memberapi/MemberCheckResult;Lzm/b;)V
.end method

.method public native x(F)V
.end method

.method public native y(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lzm/k;)V
.end method

.method public native z(Lcom/transsion/memberapi/MemberSceneType;Ljava/lang/Integer;Lzm/a;)V
.end method
