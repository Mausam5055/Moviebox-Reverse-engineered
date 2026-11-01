.class public Lcom/transsion/json/u;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/transsion/json/a;

.field private b:I

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/transsion/json/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/json/u;->a:Lcom/transsion/json/a;

    const/4 p1, 0x0

    iput p1, p0, Lcom/transsion/json/u;->b:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget v0, p0, Lcom/transsion/json/u;->b:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/transsion/json/u;->b:I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/json/u;->c:Ljava/lang/String;

    return-void
.end method

.method public c()Lcom/transsion/json/a;
    .locals 1

    iget-object v0, p0, Lcom/transsion/json/u;->a:Lcom/transsion/json/a;

    return-object v0
.end method

.method public d()V
    .locals 1

    iget v0, p0, Lcom/transsion/json/u;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/transsion/json/u;->b:I

    return-void
.end method

.method public e()Z
    .locals 1

    iget v0, p0, Lcom/transsion/json/u;->b:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
