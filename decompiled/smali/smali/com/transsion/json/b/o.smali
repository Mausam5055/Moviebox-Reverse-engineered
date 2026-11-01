.class public Lcom/transsion/json/b/o;
.super Lcom/transsion/json/b/a;


# instance fields
.field protected final a:Lcom/transsion/json/b/n;


# direct methods
.method public constructor <init>(Lcom/transsion/json/b/n;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/json/b/a;-><init>()V

    iput-object p1, p0, Lcom/transsion/json/b/o;->a:Lcom/transsion/json/b/n;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lcom/transsion/json/b/o;->a:Lcom/transsion/json/b/n;

    instance-of v1, v0, Lcom/transsion/json/b/g;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/transsion/json/b/g;

    invoke-interface {v0}, Lcom/transsion/json/b/g;->a()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/json/b/a;->b()Lcom/transsion/json/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/json/h;->t()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/json/b/o;->a:Lcom/transsion/json/b/n;

    invoke-interface {v0, p1}, Lcom/transsion/json/b/n;->a(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/transsion/json/b/a;->b()Lcom/transsion/json/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/json/h;->t()Ljava/util/LinkedList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    return-void
.end method
