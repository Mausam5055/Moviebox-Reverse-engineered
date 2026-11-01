.class public final Lt8/h;
.super Ljava/lang/Object;

# interfaces
.implements Lu8/b;


# instance fields
.field private final a:Luz/a;

.field private final b:Luz/a;

.field private final c:Luz/a;


# direct methods
.method public constructor <init>(Luz/a;Luz/a;Luz/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt8/h;->a:Luz/a;

    iput-object p2, p0, Lt8/h;->b:Luz/a;

    iput-object p3, p0, Lt8/h;->c:Luz/a;

    return-void
.end method

.method public static a(Luz/a;Luz/a;Luz/a;)Lt8/h;
    .locals 1

    new-instance v0, Lt8/h;

    invoke-direct {v0, p0, p1, p2}, Lt8/h;-><init>(Luz/a;Luz/a;Luz/a;)V

    return-object v0
.end method

.method public static c(Landroid/content/Context;Lc9/a;Lc9/a;)Lt8/g;
    .locals 1

    new-instance v0, Lt8/g;

    invoke-direct {v0, p0, p1, p2}, Lt8/g;-><init>(Landroid/content/Context;Lc9/a;Lc9/a;)V

    return-object v0
.end method


# virtual methods
.method public b()Lt8/g;
    .locals 3

    iget-object v0, p0, Lt8/h;->a:Luz/a;

    invoke-interface {v0}, Luz/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lt8/h;->b:Luz/a;

    invoke-interface {v1}, Luz/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc9/a;

    iget-object v2, p0, Lt8/h;->c:Luz/a;

    invoke-interface {v2}, Luz/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc9/a;

    invoke-static {v0, v1, v2}, Lt8/h;->c(Landroid/content/Context;Lc9/a;Lc9/a;)Lt8/g;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lt8/h;->b()Lt8/g;

    move-result-object v0

    return-object v0
.end method
