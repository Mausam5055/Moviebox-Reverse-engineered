.class public final Lm6/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm6/d$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Ljava/util/concurrent/Executor;

.field private final c:Landroidx/recyclerview/widget/DiffUtil$e;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Landroidx/recyclerview/widget/DiffUtil$e;)V
    .locals 1

    const-string v0, "backgroundThreadExecutor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "diffCallback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm6/d;->a:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lm6/d;->b:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lm6/d;->c:Landroidx/recyclerview/widget/DiffUtil$e;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Lm6/d;->b:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public final b()Landroidx/recyclerview/widget/DiffUtil$e;
    .locals 1

    iget-object v0, p0, Lm6/d;->c:Landroidx/recyclerview/widget/DiffUtil$e;

    return-object v0
.end method

.method public final c()Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Lm6/d;->a:Ljava/util/concurrent/Executor;

    return-object v0
.end method
