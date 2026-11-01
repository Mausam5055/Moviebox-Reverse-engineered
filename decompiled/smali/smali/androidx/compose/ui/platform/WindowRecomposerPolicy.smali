.class public final Landroidx/compose/ui/platform/WindowRecomposerPolicy;
.super Ljava/lang/Object;


# static fields
.field public static final a:Landroidx/compose/ui/platform/WindowRecomposerPolicy;

.field private static final b:Ljava/util/concurrent/atomic/AtomicReference;

.field public static final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/platform/WindowRecomposerPolicy;

    invoke-direct {v0}, Landroidx/compose/ui/platform/WindowRecomposerPolicy;-><init>()V

    sput-object v0, Landroidx/compose/ui/platform/WindowRecomposerPolicy;->a:Landroidx/compose/ui/platform/WindowRecomposerPolicy;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Landroidx/compose/ui/platform/y2;->a:Landroidx/compose/ui/platform/y2$a;

    invoke-virtual {v1}, Landroidx/compose/ui/platform/y2$a;->c()Landroidx/compose/ui/platform/y2;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Landroidx/compose/ui/platform/WindowRecomposerPolicy;->b:Ljava/util/concurrent/atomic/AtomicReference;

    const/16 v0, 0x8

    sput v0, Landroidx/compose/ui/platform/WindowRecomposerPolicy;->c:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)Landroidx/compose/runtime/Recomposer;
    .locals 7

    sget-object v0, Landroidx/compose/ui/platform/WindowRecomposerPolicy;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/platform/y2;

    invoke-interface {v0, p1}, Landroidx/compose/ui/platform/y2;->a(Landroid/view/View;)Landroidx/compose/runtime/Recomposer;

    move-result-object v0

    invoke-static {p1, v0}, Landroidx/compose/ui/platform/WindowRecomposer_androidKt;->i(Landroid/view/View;Landroidx/compose/runtime/m;)V

    sget-object v1, Lkotlinx/coroutines/n1;->a:Lkotlinx/coroutines/n1;

    invoke-virtual {p1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const-string v3, "windowRecomposer cleanup"

    invoke-static {v2, v3}, Lkotlinx/coroutines/android/g;->d(Landroid/os/Handler;Ljava/lang/String;)Lkotlinx/coroutines/android/e;

    move-result-object v2

    invoke-virtual {v2}, Lkotlinx/coroutines/android/e;->q()Lkotlinx/coroutines/android/e;

    move-result-object v2

    new-instance v4, Landroidx/compose/ui/platform/WindowRecomposerPolicy$createAndInstallWindowRecomposer$unsetJob$1;

    const/4 v3, 0x0

    invoke-direct {v4, v0, p1, v3}, Landroidx/compose/ui/platform/WindowRecomposerPolicy$createAndInstallWindowRecomposer$unsetJob$1;-><init>(Landroidx/compose/runtime/Recomposer;Landroid/view/View;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    move-result-object v1

    new-instance v2, Landroidx/compose/ui/platform/WindowRecomposerPolicy$a;

    invoke-direct {v2, v1}, Landroidx/compose/ui/platform/WindowRecomposerPolicy$a;-><init>(Lkotlinx/coroutines/t1;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-object v0
.end method
