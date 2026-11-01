.class public final Lcom/google/android/datatransport/runtime/v;
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

    iput-object p1, p0, Lcom/google/android/datatransport/runtime/v;->a:Luz/a;

    iput-object p2, p0, Lcom/google/android/datatransport/runtime/v;->b:Luz/a;

    iput-object p3, p0, Lcom/google/android/datatransport/runtime/v;->c:Luz/a;

    iput-object p4, p0, Lcom/google/android/datatransport/runtime/v;->d:Luz/a;

    iput-object p5, p0, Lcom/google/android/datatransport/runtime/v;->e:Luz/a;

    return-void
.end method

.method public static a(Luz/a;Luz/a;Luz/a;Luz/a;Luz/a;)Lcom/google/android/datatransport/runtime/v;
    .locals 7

    new-instance v6, Lcom/google/android/datatransport/runtime/v;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/datatransport/runtime/v;-><init>(Luz/a;Luz/a;Luz/a;Luz/a;Luz/a;)V

    return-object v6
.end method

.method public static c(Lc9/a;Lc9/a;Ly8/e;Lz8/o;Lz8/s;)Lcom/google/android/datatransport/runtime/t;
    .locals 7

    new-instance v6, Lcom/google/android/datatransport/runtime/t;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/datatransport/runtime/t;-><init>(Lc9/a;Lc9/a;Ly8/e;Lz8/o;Lz8/s;)V

    return-object v6
.end method


# virtual methods
.method public b()Lcom/google/android/datatransport/runtime/t;
    .locals 5

    iget-object v0, p0, Lcom/google/android/datatransport/runtime/v;->a:Luz/a;

    invoke-interface {v0}, Luz/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc9/a;

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/v;->b:Luz/a;

    invoke-interface {v1}, Luz/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc9/a;

    iget-object v2, p0, Lcom/google/android/datatransport/runtime/v;->c:Luz/a;

    invoke-interface {v2}, Luz/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ly8/e;

    iget-object v3, p0, Lcom/google/android/datatransport/runtime/v;->d:Luz/a;

    invoke-interface {v3}, Luz/a;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lz8/o;

    iget-object v4, p0, Lcom/google/android/datatransport/runtime/v;->e:Luz/a;

    invoke-interface {v4}, Luz/a;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lz8/s;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/datatransport/runtime/v;->c(Lc9/a;Lc9/a;Ly8/e;Lz8/o;Lz8/s;)Lcom/google/android/datatransport/runtime/t;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/datatransport/runtime/v;->b()Lcom/google/android/datatransport/runtime/t;

    move-result-object v0

    return-object v0
.end method
