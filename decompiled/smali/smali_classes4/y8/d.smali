.class public final Ly8/d;
.super Ljava/lang/Object;

# interfaces
.implements Lu8/b;


# instance fields
.field private final a:Luz/a;

.field private final b:Luz/a;

.field private final c:Luz/a;

.field private final d:Luz/a;

.field private final e:Luz/a;


# direct methods
.method public constructor <init>(Luz/a;Luz/a;Luz/a;Luz/a;Luz/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly8/d;->a:Luz/a;

    iput-object p2, p0, Ly8/d;->b:Luz/a;

    iput-object p3, p0, Ly8/d;->c:Luz/a;

    iput-object p4, p0, Ly8/d;->d:Luz/a;

    iput-object p5, p0, Ly8/d;->e:Luz/a;

    return-void
.end method

.method public static a(Luz/a;Luz/a;Luz/a;Luz/a;Luz/a;)Ly8/d;
    .locals 7

    new-instance v6, Ly8/d;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Ly8/d;-><init>(Luz/a;Luz/a;Luz/a;Luz/a;Luz/a;)V

    return-object v6
.end method

.method public static c(Ljava/util/concurrent/Executor;Lt8/d;Lz8/u;La9/d;Lb9/a;)Ly8/c;
    .locals 7

    new-instance v6, Ly8/c;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Ly8/c;-><init>(Ljava/util/concurrent/Executor;Lt8/d;Lz8/u;La9/d;Lb9/a;)V

    return-object v6
.end method


# virtual methods
.method public b()Ly8/c;
    .locals 5

    iget-object v0, p0, Ly8/d;->a:Luz/a;

    invoke-interface {v0}, Luz/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iget-object v1, p0, Ly8/d;->b:Luz/a;

    invoke-interface {v1}, Luz/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt8/d;

    iget-object v2, p0, Ly8/d;->c:Luz/a;

    invoke-interface {v2}, Luz/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lz8/u;

    iget-object v3, p0, Ly8/d;->d:Luz/a;

    invoke-interface {v3}, Luz/a;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, La9/d;

    iget-object v4, p0, Ly8/d;->e:Luz/a;

    invoke-interface {v4}, Luz/a;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb9/a;

    invoke-static {v0, v1, v2, v3, v4}, Ly8/d;->c(Ljava/util/concurrent/Executor;Lt8/d;Lz8/u;La9/d;Lb9/a;)Ly8/c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ly8/d;->b()Ly8/c;

    move-result-object v0

    return-object v0
.end method
