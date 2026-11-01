.class public final Lcom/transsion/commercialization/task/treasure/CheckLotteryLoadingDialog;
.super Lcom/transsion/baseui/dialog/BaseMemberLoadingDialog;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0003J\u0019\u0010\u0008\u001a\u00020\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\tJ!\u0010\u000c\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\n2\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rJ)\u0010\u0013\u001a\u00020\u00002\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u0012\u001a\u00020\u0011\u00a2\u0006\u0004\u0008\u0013\u0010\u0014R\u001b\u0010\u001a\u001a\u00020\u00158BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019R\u0018\u0010\u000f\u001a\u0004\u0018\u00010\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR\u0018\u0010\u0010\u001a\u0004\u0018\u00010\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001cR\u0018\u0010\u0012\u001a\u0004\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001f\u00a8\u0006 "
    }
    d2 = {
        "Lcom/transsion/commercialization/task/treasure/CheckLotteryLoadingDialog;",
        "Lcom/transsion/baseui/dialog/BaseMemberLoadingDialog;",
        "<init>",
        "()V",
        "",
        "v0",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Landroid/view/View;",
        "view",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "",
        "activityId",
        "orderId",
        "",
        "showErrorToast",
        "x0",
        "(Ljava/lang/String;Ljava/lang/String;Z)Lcom/transsion/commercialization/task/treasure/CheckLotteryLoadingDialog;",
        "Lcom/transsion/commercialization/task/treasure/b;",
        "c",
        "Lkotlin/Lazy;",
        "u0",
        "()Lcom/transsion/commercialization/task/treasure/b;",
        "iTreasureApi",
        "d",
        "Ljava/lang/String;",
        "e",
        "f",
        "Ljava/lang/Boolean;",
        "Commercialization_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final c:Lkotlin/Lazy;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/baseui/dialog/BaseMemberLoadingDialog;-><init>()V

    new-instance v0, Lcom/transsion/commercialization/task/treasure/a;

    invoke-direct {v0}, Lcom/transsion/commercialization/task/treasure/a;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/commercialization/task/treasure/CheckLotteryLoadingDialog;->c:Lkotlin/Lazy;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/transsion/commercialization/task/treasure/CheckLotteryLoadingDialog;->f:Ljava/lang/Boolean;

    return-void
.end method

.method public static synthetic p0()Lcom/transsion/commercialization/task/treasure/b;
    .locals 1

    invoke-static {}, Lcom/transsion/commercialization/task/treasure/CheckLotteryLoadingDialog;->w0()Lcom/transsion/commercialization/task/treasure/b;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic q0(Lcom/transsion/commercialization/task/treasure/CheckLotteryLoadingDialog;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/commercialization/task/treasure/CheckLotteryLoadingDialog;->d:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic r0(Lcom/transsion/commercialization/task/treasure/CheckLotteryLoadingDialog;)Lcom/transsion/commercialization/task/treasure/b;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/commercialization/task/treasure/CheckLotteryLoadingDialog;->u0()Lcom/transsion/commercialization/task/treasure/b;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic s0(Lcom/transsion/commercialization/task/treasure/CheckLotteryLoadingDialog;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/commercialization/task/treasure/CheckLotteryLoadingDialog;->e:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic t0(Lcom/transsion/commercialization/task/treasure/CheckLotteryLoadingDialog;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/transsion/commercialization/task/treasure/CheckLotteryLoadingDialog;->f:Ljava/lang/Boolean;

    return-object p0
.end method

.method private final u0()Lcom/transsion/commercialization/task/treasure/b;
    .locals 1

    iget-object v0, p0, Lcom/transsion/commercialization/task/treasure/CheckLotteryLoadingDialog;->c:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/commercialization/task/treasure/b;

    return-object v0
.end method

.method private final v0()V
    .locals 6

    invoke-static {p0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    new-instance v3, Lcom/transsion/commercialization/task/treasure/CheckLotteryLoadingDialog$getLotteryUserActivityInfo$1;

    const/4 v1, 0x0

    invoke-direct {v3, p0, v1}, Lcom/transsion/commercialization/task/treasure/CheckLotteryLoadingDialog$getLotteryUserActivityInfo$1;-><init>(Lcom/transsion/commercialization/task/treasure/CheckLotteryLoadingDialog;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method private static final w0()Lcom/transsion/commercialization/task/treasure/b;
    .locals 2

    sget-object v0, Lzg/c;->e:Lzg/c$a;

    invoke-virtual {v0}, Lzg/c$a;->a()Lzg/c;

    move-result-object v0

    const-class v1, Lcom/transsion/commercialization/task/treasure/b;

    invoke-virtual {v0, v1}, Lzg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/commercialization/task/treasure/b;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/baseui/dialog/BaseMemberLoadingDialog;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/transsion/baseui/dialog/BaseMemberLoadingDialog;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/transsion/commercialization/task/treasure/CheckLotteryLoadingDialog;->v0()V

    return-void
.end method

.method public final x0(Ljava/lang/String;Ljava/lang/String;Z)Lcom/transsion/commercialization/task/treasure/CheckLotteryLoadingDialog;
    .locals 0

    iput-object p1, p0, Lcom/transsion/commercialization/task/treasure/CheckLotteryLoadingDialog;->d:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/commercialization/task/treasure/CheckLotteryLoadingDialog;->e:Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/commercialization/task/treasure/CheckLotteryLoadingDialog;->f:Ljava/lang/Boolean;

    return-object p0
.end method
