.class public final Leh/a;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ldh/b;

.field private e:Ljava/util/concurrent/Executor;

.field private f:Ljava/util/concurrent/ExecutorService;

.field private g:I


# direct methods
.method public constructor <init>(IILjava/util/concurrent/ExecutorService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Leh/a;->c:Ljava/lang/String;

    const/4 v0, 0x5

    iput v0, p0, Leh/a;->g:I

    const/4 v0, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Leh/a;->a:I

    iput p2, p0, Leh/a;->b:I

    iput-object p3, p0, Leh/a;->f:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method public final a()Lcom/tn/lib/thread/c;
    .locals 9

    const/16 v0, 0xa

    iget v1, p0, Leh/a;->g:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Leh/a;->g:I

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Leh/a;->g:I

    iget v0, p0, Leh/a;->a:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Leh/a;->a:I

    sget-object v0, Leh/c;->b:Leh/c$a;

    invoke-virtual {v0}, Leh/c$a;->a()Leh/c;

    move-result-object v0

    iput-object v0, p0, Leh/a;->e:Ljava/util/concurrent/Executor;

    iget-object v0, p0, Leh/a;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Leh/a;->b:I

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const-string v0, "ThreadEngine"

    goto :goto_0

    :cond_0
    const-string v0, "SINGLE"

    goto :goto_0

    :cond_1
    const-string v0, "SCHEDULED"

    goto :goto_0

    :cond_2
    const-string v0, "CACHEABLE"

    goto :goto_0

    :cond_3
    const-string v0, "FIXED"

    :goto_0
    iput-object v0, p0, Leh/a;->c:Ljava/lang/String;

    :cond_4
    new-instance v0, Lcom/tn/lib/thread/c;

    iget v2, p0, Leh/a;->b:I

    iget v3, p0, Leh/a;->a:I

    iget v4, p0, Leh/a;->g:I

    iget-object v5, p0, Leh/a;->c:Ljava/lang/String;

    iget-object v6, p0, Leh/a;->d:Ldh/b;

    iget-object v7, p0, Leh/a;->e:Ljava/util/concurrent/Executor;

    iget-object v8, p0, Leh/a;->f:Ljava/util/concurrent/ExecutorService;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/tn/lib/thread/c;-><init>(IIILjava/lang/String;Ldh/b;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ExecutorService;)V

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Leh/a;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Leh/a;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final c(I)Leh/a;
    .locals 0

    iput p1, p0, Leh/a;->g:I

    return-object p0
.end method
