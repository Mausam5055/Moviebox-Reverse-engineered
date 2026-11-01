.class public final Landroidx/window/layout/t$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/layout/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:Ljava/util/concurrent/Executor;

.field private final c:Landroidx/core/util/a;

.field private d:Landroidx/window/layout/a0;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/concurrent/Executor;Landroidx/core/util/a;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/window/layout/t$c;->a:Landroid/app/Activity;

    iput-object p2, p0, Landroidx/window/layout/t$c;->b:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroidx/window/layout/t$c;->c:Landroidx/core/util/a;

    return-void
.end method

.method public static synthetic a(Landroidx/window/layout/t$c;Landroidx/window/layout/a0;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/window/layout/t$c;->c(Landroidx/window/layout/t$c;Landroidx/window/layout/a0;)V

    return-void
.end method

.method private static final c(Landroidx/window/layout/t$c;Landroidx/window/layout/a0;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$newLayoutInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/window/layout/t$c;->c:Landroidx/core/util/a;

    invoke-interface {p0, p1}, Landroidx/core/util/a;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final b(Landroidx/window/layout/a0;)V
    .locals 2

    const-string v0, "newLayoutInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/window/layout/t$c;->d:Landroidx/window/layout/a0;

    iget-object v0, p0, Landroidx/window/layout/t$c;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/window/layout/u;

    invoke-direct {v1, p0, p1}, Landroidx/window/layout/u;-><init>(Landroidx/window/layout/t$c;Landroidx/window/layout/a0;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final d()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Landroidx/window/layout/t$c;->a:Landroid/app/Activity;

    return-object v0
.end method

.method public final e()Landroidx/core/util/a;
    .locals 1

    iget-object v0, p0, Landroidx/window/layout/t$c;->c:Landroidx/core/util/a;

    return-object v0
.end method

.method public final f()Landroidx/window/layout/a0;
    .locals 1

    iget-object v0, p0, Landroidx/window/layout/t$c;->d:Landroidx/window/layout/a0;

    return-object v0
.end method
