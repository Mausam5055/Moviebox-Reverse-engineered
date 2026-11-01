.class public final Landroidx/compose/ui/platform/i0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlinx/coroutines/n0;


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Landroidx/compose/ui/text/input/e0;

.field private final c:Lkotlinx/coroutines/n0;

.field private final d:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroidx/compose/ui/text/input/e0;Lkotlinx/coroutines/n0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/platform/i0;->a:Landroid/view/View;

    iput-object p2, p0, Landroidx/compose/ui/platform/i0;->b:Landroidx/compose/ui/text/input/e0;

    iput-object p3, p0, Landroidx/compose/ui/platform/i0;->c:Lkotlinx/coroutines/n0;

    invoke-static {}, Landroidx/compose/ui/SessionMutex;->a()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/platform/i0;->d:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 0

    iget-object p1, p0, Landroidx/compose/ui/platform/i0;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1}, Landroidx/compose/ui/SessionMutex;->c(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final b()Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/i0;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Landroidx/compose/ui/SessionMutex;->c(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    const/4 v0, 0x0

    return v0
.end method

.method public getCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/i0;->c:Lkotlinx/coroutines/n0;

    invoke-interface {v0}, Lkotlinx/coroutines/n0;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    return-object v0
.end method
