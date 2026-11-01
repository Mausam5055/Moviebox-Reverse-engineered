.class public final Lt8/j;
.super Ljava/lang/Object;

# interfaces
.implements Lu8/b;


# instance fields
.field private final a:Luz/a;

.field private final b:Luz/a;


# direct methods
.method public constructor <init>(Luz/a;Luz/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt8/j;->a:Luz/a;

    iput-object p2, p0, Lt8/j;->b:Luz/a;

    return-void
.end method

.method public static a(Luz/a;Luz/a;)Lt8/j;
    .locals 1

    new-instance v0, Lt8/j;

    invoke-direct {v0, p0, p1}, Lt8/j;-><init>(Luz/a;Luz/a;)V

    return-object v0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/Object;)Lt8/i;
    .locals 1

    new-instance v0, Lt8/i;

    check-cast p1, Lt8/g;

    invoke-direct {v0, p0, p1}, Lt8/i;-><init>(Landroid/content/Context;Lt8/g;)V

    return-object v0
.end method


# virtual methods
.method public b()Lt8/i;
    .locals 2

    iget-object v0, p0, Lt8/j;->a:Luz/a;

    invoke-interface {v0}, Luz/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lt8/j;->b:Luz/a;

    invoke-interface {v1}, Luz/a;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lt8/j;->c(Landroid/content/Context;Ljava/lang/Object;)Lt8/i;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lt8/j;->b()Lt8/i;

    move-result-object v0

    return-object v0
.end method
