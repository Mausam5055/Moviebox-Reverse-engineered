.class public final Lz8/t;
.super Ljava/lang/Object;

# interfaces
.implements Lu8/b;


# instance fields
.field private final a:Luz/a;

.field private final b:Luz/a;

.field private final c:Luz/a;

.field private final d:Luz/a;


# direct methods
.method public constructor <init>(Luz/a;Luz/a;Luz/a;Luz/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz8/t;->a:Luz/a;

    iput-object p2, p0, Lz8/t;->b:Luz/a;

    iput-object p3, p0, Lz8/t;->c:Luz/a;

    iput-object p4, p0, Lz8/t;->d:Luz/a;

    return-void
.end method

.method public static a(Luz/a;Luz/a;Luz/a;Luz/a;)Lz8/t;
    .locals 1

    new-instance v0, Lz8/t;

    invoke-direct {v0, p0, p1, p2, p3}, Lz8/t;-><init>(Luz/a;Luz/a;Luz/a;Luz/a;)V

    return-object v0
.end method

.method public static c(Ljava/util/concurrent/Executor;La9/d;Lz8/u;Lb9/a;)Lz8/s;
    .locals 1

    new-instance v0, Lz8/s;

    invoke-direct {v0, p0, p1, p2, p3}, Lz8/s;-><init>(Ljava/util/concurrent/Executor;La9/d;Lz8/u;Lb9/a;)V

    return-object v0
.end method


# virtual methods
.method public b()Lz8/s;
    .locals 4

    iget-object v0, p0, Lz8/t;->a:Luz/a;

    invoke-interface {v0}, Luz/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lz8/t;->b:Luz/a;

    invoke-interface {v1}, Luz/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La9/d;

    iget-object v2, p0, Lz8/t;->c:Luz/a;

    invoke-interface {v2}, Luz/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lz8/u;

    iget-object v3, p0, Lz8/t;->d:Luz/a;

    invoke-interface {v3}, Luz/a;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb9/a;

    invoke-static {v0, v1, v2, v3}, Lz8/t;->c(Ljava/util/concurrent/Executor;La9/d;Lz8/u;Lb9/a;)Lz8/s;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lz8/t;->b()Lz8/s;

    move-result-object v0

    return-object v0
.end method
