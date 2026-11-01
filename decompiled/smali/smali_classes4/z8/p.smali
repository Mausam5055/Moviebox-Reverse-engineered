.class public final Lz8/p;
.super Ljava/lang/Object;

# interfaces
.implements Lu8/b;


# instance fields
.field private final a:Luz/a;

.field private final b:Luz/a;

.field private final c:Luz/a;

.field private final d:Luz/a;

.field private final e:Luz/a;

.field private final f:Luz/a;

.field private final g:Luz/a;

.field private final h:Luz/a;

.field private final i:Luz/a;


# direct methods
.method public constructor <init>(Luz/a;Luz/a;Luz/a;Luz/a;Luz/a;Luz/a;Luz/a;Luz/a;Luz/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz8/p;->a:Luz/a;

    iput-object p2, p0, Lz8/p;->b:Luz/a;

    iput-object p3, p0, Lz8/p;->c:Luz/a;

    iput-object p4, p0, Lz8/p;->d:Luz/a;

    iput-object p5, p0, Lz8/p;->e:Luz/a;

    iput-object p6, p0, Lz8/p;->f:Luz/a;

    iput-object p7, p0, Lz8/p;->g:Luz/a;

    iput-object p8, p0, Lz8/p;->h:Luz/a;

    iput-object p9, p0, Lz8/p;->i:Luz/a;

    return-void
.end method

.method public static a(Luz/a;Luz/a;Luz/a;Luz/a;Luz/a;Luz/a;Luz/a;Luz/a;Luz/a;)Lz8/p;
    .locals 11

    new-instance v10, Lz8/p;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lz8/p;-><init>(Luz/a;Luz/a;Luz/a;Luz/a;Luz/a;Luz/a;Luz/a;Luz/a;Luz/a;)V

    return-object v10
.end method

.method public static c(Landroid/content/Context;Lt8/d;La9/d;Lz8/u;Ljava/util/concurrent/Executor;Lb9/a;Lc9/a;Lc9/a;La9/c;)Lz8/o;
    .locals 11

    new-instance v10, Lz8/o;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lz8/o;-><init>(Landroid/content/Context;Lt8/d;La9/d;Lz8/u;Ljava/util/concurrent/Executor;Lb9/a;Lc9/a;Lc9/a;La9/c;)V

    return-object v10
.end method


# virtual methods
.method public b()Lz8/o;
    .locals 10

    iget-object v0, p0, Lz8/p;->a:Luz/a;

    invoke-interface {v0}, Luz/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    iget-object v0, p0, Lz8/p;->b:Luz/a;

    invoke-interface {v0}, Luz/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lt8/d;

    iget-object v0, p0, Lz8/p;->c:Luz/a;

    invoke-interface {v0}, Luz/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, La9/d;

    iget-object v0, p0, Lz8/p;->d:Luz/a;

    invoke-interface {v0}, Luz/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lz8/u;

    iget-object v0, p0, Lz8/p;->e:Luz/a;

    invoke-interface {v0}, Luz/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/util/concurrent/Executor;

    iget-object v0, p0, Lz8/p;->f:Luz/a;

    invoke-interface {v0}, Luz/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lb9/a;

    iget-object v0, p0, Lz8/p;->g:Luz/a;

    invoke-interface {v0}, Luz/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lc9/a;

    iget-object v0, p0, Lz8/p;->h:Luz/a;

    invoke-interface {v0}, Luz/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lc9/a;

    iget-object v0, p0, Lz8/p;->i:Luz/a;

    invoke-interface {v0}, Luz/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, La9/c;

    invoke-static/range {v1 .. v9}, Lz8/p;->c(Landroid/content/Context;Lt8/d;La9/d;Lz8/u;Ljava/util/concurrent/Executor;Lb9/a;Lc9/a;Lc9/a;La9/c;)Lz8/o;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lz8/p;->b()Lz8/o;

    move-result-object v0

    return-object v0
.end method
