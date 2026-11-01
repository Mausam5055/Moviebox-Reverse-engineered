.class public abstract Lcom/mbridge/msdk/foundation/same/directory/b;
.super Ljava/lang/Object;


# instance fields
.field protected a:Lcom/mbridge/msdk/foundation/same/directory/a;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/mbridge/msdk/foundation/same/directory/a;

    invoke-direct {v0}, Lcom/mbridge/msdk/foundation/same/directory/a;-><init>()V

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/foundation/same/directory/a;->a(Ljava/lang/String;)V

    sget-object p1, Lcom/mbridge/msdk/foundation/same/directory/c;->a:Lcom/mbridge/msdk/foundation/same/directory/c;

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/foundation/same/directory/a;->a(Lcom/mbridge/msdk/foundation/same/directory/c;)V

    invoke-virtual {p0}, Lcom/mbridge/msdk/foundation/same/directory/b;->b()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/foundation/same/directory/a;->a(Ljava/util/List;)V

    :cond_0
    iput-object v0, p0, Lcom/mbridge/msdk/foundation/same/directory/b;->a:Lcom/mbridge/msdk/foundation/same/directory/a;

    return-void
.end method


# virtual methods
.method public a()Lcom/mbridge/msdk/foundation/same/directory/a;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/directory/b;->a:Lcom/mbridge/msdk/foundation/same/directory/a;

    return-object v0
.end method

.method protected a(Ljava/util/ArrayList;Lcom/mbridge/msdk/foundation/same/directory/c;Ljava/lang/String;)Lcom/mbridge/msdk/foundation/same/directory/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/mbridge/msdk/foundation/same/directory/a;",
            ">;",
            "Lcom/mbridge/msdk/foundation/same/directory/c;",
            "Ljava/lang/String;",
            ")",
            "Lcom/mbridge/msdk/foundation/same/directory/a;"
        }
    .end annotation

    new-instance v0, Lcom/mbridge/msdk/foundation/same/directory/a;

    invoke-direct {v0}, Lcom/mbridge/msdk/foundation/same/directory/a;-><init>()V

    invoke-virtual {v0, p2}, Lcom/mbridge/msdk/foundation/same/directory/a;->a(Lcom/mbridge/msdk/foundation/same/directory/c;)V

    invoke-virtual {v0, p3}, Lcom/mbridge/msdk/foundation/same/directory/a;->a(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method protected abstract b()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/foundation/same/directory/a;",
            ">;"
        }
    .end annotation
.end method
