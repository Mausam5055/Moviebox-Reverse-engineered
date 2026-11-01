.class public final Leh/d;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ldh/b;

.field private c:J

.field private d:Ljava/util/concurrent/Executor;

.field private e:Ldh/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Leh/d;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ldh/a;
    .locals 1

    iget-object v0, p0, Leh/d;->e:Ldh/a;

    return-object v0
.end method

.method public final b()J
    .locals 2

    iget-wide v0, p0, Leh/d;->c:J

    return-wide v0
.end method

.method public final c()Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Leh/d;->d:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public final d()Ldh/b;
    .locals 1

    iget-object v0, p0, Leh/d;->b:Ldh/b;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Leh/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final f(Ljava/util/concurrent/Executor;)V
    .locals 0

    iput-object p1, p0, Leh/d;->d:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public final g(Ldh/b;)V
    .locals 0

    iput-object p1, p0, Leh/d;->b:Ldh/b;

    return-void
.end method

.method public final h(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Leh/d;->a:Ljava/lang/String;

    return-void
.end method
