.class Landroidx/core/provider/CallbackWrapper;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroidx/core/provider/k$c;

.field private final b:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(Landroidx/core/provider/k$c;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/provider/CallbackWrapper;->a:Landroidx/core/provider/k$c;

    iput-object p2, p0, Landroidx/core/provider/CallbackWrapper;->b:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private a(I)V
    .locals 3

    iget-object v0, p0, Landroidx/core/provider/CallbackWrapper;->a:Landroidx/core/provider/k$c;

    iget-object v1, p0, Landroidx/core/provider/CallbackWrapper;->b:Ljava/util/concurrent/Executor;

    new-instance v2, Landroidx/core/provider/CallbackWrapper$2;

    invoke-direct {v2, p0, v0, p1}, Landroidx/core/provider/CallbackWrapper$2;-><init>(Landroidx/core/provider/CallbackWrapper;Landroidx/core/provider/k$c;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private c(Landroid/graphics/Typeface;)V
    .locals 3

    iget-object v0, p0, Landroidx/core/provider/CallbackWrapper;->a:Landroidx/core/provider/k$c;

    iget-object v1, p0, Landroidx/core/provider/CallbackWrapper;->b:Ljava/util/concurrent/Executor;

    new-instance v2, Landroidx/core/provider/CallbackWrapper$1;

    invoke-direct {v2, p0, v0, p1}, Landroidx/core/provider/CallbackWrapper$1;-><init>(Landroidx/core/provider/CallbackWrapper;Landroidx/core/provider/k$c;Landroid/graphics/Typeface;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method b(Landroidx/core/provider/i$e;)V
    .locals 1

    invoke-virtual {p1}, Landroidx/core/provider/i$e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Landroidx/core/provider/i$e;->a:Landroid/graphics/Typeface;

    invoke-direct {p0, p1}, Landroidx/core/provider/CallbackWrapper;->c(Landroid/graphics/Typeface;)V

    goto :goto_0

    :cond_0
    iget p1, p1, Landroidx/core/provider/i$e;->b:I

    invoke-direct {p0, p1}, Landroidx/core/provider/CallbackWrapper;->a(I)V

    :goto_0
    return-void
.end method
