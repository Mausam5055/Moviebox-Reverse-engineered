.class public Lcom/transsion/json/b/b;
.super Lcom/transsion/json/b/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/json/b/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 5

    invoke-virtual {p0}, Lcom/transsion/json/b/a;->b()Lcom/transsion/json/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/json/h;->G()Lcom/transsion/json/u;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0}, Lcom/transsion/json/u;->e()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/transsion/json/b/a;->b()Lcom/transsion/json/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/json/h;->E()V

    :cond_0
    invoke-virtual {v0}, Lcom/transsion/json/u;->d()V

    invoke-virtual {p0}, Lcom/transsion/json/b/a;->b()Lcom/transsion/json/h;

    move-result-object v3

    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/transsion/json/h;->j(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/json/b/a;->b()Lcom/transsion/json/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/json/h;->C()V

    return-void
.end method
