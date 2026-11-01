.class public final Lm6/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm6/c$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/chad/library/adapter/base/BaseQuickAdapter;

.field private final b:Lm6/d;

.field private final c:Landroidx/recyclerview/widget/j;

.field private d:Ljava/util/concurrent/Executor;

.field private final e:Ljava/util/concurrent/Executor;

.field private final f:Ljava/util/List;

.field private g:I


# direct methods
.method public constructor <init>(Lcom/chad/library/adapter/base/BaseQuickAdapter;Lm6/d;)V
    .locals 1

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm6/c;->a:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    iput-object p2, p0, Lm6/c;->b:Lm6/d;

    new-instance v0, Lm6/e;

    invoke-direct {v0, p1}, Lm6/e;-><init>(Lcom/chad/library/adapter/base/BaseQuickAdapter;)V

    iput-object v0, p0, Lm6/c;->c:Landroidx/recyclerview/widget/j;

    new-instance p1, Lm6/c$a;

    invoke-direct {p1}, Lm6/c$a;-><init>()V

    iput-object p1, p0, Lm6/c;->e:Ljava/util/concurrent/Executor;

    invoke-virtual {p2}, Lm6/d;->c()Ljava/util/concurrent/Executor;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    iput-object p1, p0, Lm6/c;->d:Ljava/util/concurrent/Executor;

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lm6/c;->f:Ljava/util/List;

    return-void
.end method

.method public static synthetic a(Lm6/c;Ljava/util/List;Ljava/util/List;ILjava/lang/Runnable;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lm6/c;->g(Lm6/c;Ljava/util/List;Ljava/util/List;ILjava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic b(Lm6/c;ILjava/util/List;Landroidx/recyclerview/widget/DiffUtil$d;Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lm6/c;->h(Lm6/c;ILjava/util/List;Landroidx/recyclerview/widget/DiffUtil$d;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static final synthetic c(Lm6/c;)Lm6/d;
    .locals 0

    iget-object p0, p0, Lm6/c;->b:Lm6/d;

    return-object p0
.end method

.method private final d(Ljava/util/List;Landroidx/recyclerview/widget/DiffUtil$d;Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lm6/c;->a:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lm6/c;->a:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {v1, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->Q0(Ljava/util/List;)V

    iget-object p1, p0, Lm6/c;->c:Landroidx/recyclerview/widget/j;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/DiffUtil$d;->b(Landroidx/recyclerview/widget/j;)V

    invoke-direct {p0, v0, p3}, Lm6/c;->e(Ljava/util/List;Ljava/lang/Runnable;)V

    return-void
.end method

.method private final e(Ljava/util/List;Ljava/lang/Runnable;)V
    .locals 1

    iget-object p1, p0, Lm6/c;->f:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lm6/c;->a:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    const/4 p1, 0x0

    throw p1
.end method

.method private static final g(Lm6/c;Ljava/util/List;Ljava/util/List;ILjava/lang/Runnable;)V
    .locals 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$oldList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lm6/c$b;

    invoke-direct {v0, p1, p2, p0}, Lm6/c$b;-><init>(Ljava/util/List;Ljava/util/List;Lm6/c;)V

    invoke-static {v0}, Landroidx/recyclerview/widget/DiffUtil;->b(Landroidx/recyclerview/widget/DiffUtil$a;)Landroidx/recyclerview/widget/DiffUtil$d;

    move-result-object v5

    const-string p1, "@JvmOverloads\n    fun su\u2026        }\n        }\n    }"

    invoke-static {v5, p1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lm6/c;->d:Ljava/util/concurrent/Executor;

    new-instance v0, Lm6/b;

    move-object v1, v0

    move-object v2, p0

    move v3, p3

    move-object v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lm6/b;-><init>(Lm6/c;ILjava/util/List;Landroidx/recyclerview/widget/DiffUtil$d;Ljava/lang/Runnable;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final h(Lm6/c;ILjava/util/List;Landroidx/recyclerview/widget/DiffUtil$d;Ljava/lang/Runnable;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$result"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lm6/c;->g:I

    if-ne v0, p1, :cond_0

    invoke-direct {p0, p2, p3, p4}, Lm6/c;->d(Ljava/util/List;Landroidx/recyclerview/widget/DiffUtil$d;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final f(Ljava/util/List;Ljava/lang/Runnable;)V
    .locals 8

    iget v0, p0, Lm6/c;->g:I

    add-int/lit8 v5, v0, 0x1

    iput v5, p0, Lm6/c;->g:I

    iget-object v0, p0, Lm6/c;->a:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lm6/c;->a:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v3

    const/4 v0, 0x0

    if-nez p1, :cond_2

    iget-object p1, p0, Lm6/c;->a:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object v1, p0, Lm6/c;->a:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->Q0(Ljava/util/List;)V

    iget-object v1, p0, Lm6/c;->c:Landroidx/recyclerview/widget/j;

    invoke-interface {v1, v0, p1}, Landroidx/recyclerview/widget/j;->onRemoved(II)V

    invoke-direct {p0, v3, p2}, Lm6/c;->e(Ljava/util/List;Ljava/lang/Runnable;)V

    return-void

    :cond_2
    iget-object v1, p0, Lm6/c;->a:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lm6/c;->a:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {v1, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->Q0(Ljava/util/List;)V

    iget-object v1, p0, Lm6/c;->c:Landroidx/recyclerview/widget/j;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {v1, v0, p1}, Landroidx/recyclerview/widget/j;->onInserted(II)V

    invoke-direct {p0, v3, p2}, Lm6/c;->e(Ljava/util/List;Ljava/lang/Runnable;)V

    return-void

    :cond_3
    iget-object v0, p0, Lm6/c;->b:Lm6/d;

    invoke-virtual {v0}, Lm6/d;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v7, Lm6/a;

    move-object v1, v7

    move-object v2, p0

    move-object v4, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lm6/a;-><init>(Lm6/c;Ljava/util/List;Ljava/util/List;ILjava/lang/Runnable;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
