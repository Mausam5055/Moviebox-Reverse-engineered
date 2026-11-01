.class public final La9/n0;
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

    iput-object p1, p0, La9/n0;->a:Luz/a;

    iput-object p2, p0, La9/n0;->b:Luz/a;

    iput-object p3, p0, La9/n0;->c:Luz/a;

    iput-object p4, p0, La9/n0;->d:Luz/a;

    iput-object p5, p0, La9/n0;->e:Luz/a;

    return-void
.end method

.method public static a(Luz/a;Luz/a;Luz/a;Luz/a;Luz/a;)La9/n0;
    .locals 7

    new-instance v6, La9/n0;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, La9/n0;-><init>(Luz/a;Luz/a;Luz/a;Luz/a;Luz/a;)V

    return-object v6
.end method

.method public static c(Lc9/a;Lc9/a;Ljava/lang/Object;Ljava/lang/Object;Luz/a;)La9/m0;
    .locals 7

    new-instance v6, La9/m0;

    move-object v3, p2

    check-cast v3, La9/e;

    move-object v4, p3

    check-cast v4, La9/v0;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, La9/m0;-><init>(Lc9/a;Lc9/a;La9/e;La9/v0;Luz/a;)V

    return-object v6
.end method


# virtual methods
.method public b()La9/m0;
    .locals 5

    iget-object v0, p0, La9/n0;->a:Luz/a;

    invoke-interface {v0}, Luz/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc9/a;

    iget-object v1, p0, La9/n0;->b:Luz/a;

    invoke-interface {v1}, Luz/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc9/a;

    iget-object v2, p0, La9/n0;->c:Luz/a;

    invoke-interface {v2}, Luz/a;->get()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, La9/n0;->d:Luz/a;

    invoke-interface {v3}, Luz/a;->get()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, La9/n0;->e:Luz/a;

    invoke-static {v0, v1, v2, v3, v4}, La9/n0;->c(Lc9/a;Lc9/a;Ljava/lang/Object;Ljava/lang/Object;Luz/a;)La9/m0;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, La9/n0;->b()La9/m0;

    move-result-object v0

    return-object v0
.end method
