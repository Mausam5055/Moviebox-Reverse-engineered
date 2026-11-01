.class public Lcom/iab/omid/library/hisavana/walking/b;
.super Ljava/lang/Object;

# interfaces
.implements Lje/b$b;


# instance fields
.field private a:Lorg/json/JSONObject;

.field private final b:Lje/c;


# direct methods
.method public constructor <init>(Lje/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iab/omid/library/hisavana/walking/b;->b:Lje/c;

    return-void
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/iab/omid/library/hisavana/walking/b;->a:Lorg/json/JSONObject;

    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/iab/omid/library/hisavana/walking/b;->a:Lorg/json/JSONObject;

    return-void
.end method

.method public b(Lorg/json/JSONObject;Ljava/util/HashSet;J)V
    .locals 8

    iget-object v0, p0, Lcom/iab/omid/library/hisavana/walking/b;->b:Lje/c;

    new-instance v7, Lje/e;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lje/e;-><init>(Lje/b$b;Ljava/util/HashSet;Lorg/json/JSONObject;J)V

    invoke-virtual {v0, v7}, Lje/c;->c(Lje/b;)V

    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/iab/omid/library/hisavana/walking/b;->b:Lje/c;

    new-instance v1, Lje/d;

    invoke-direct {v1, p0}, Lje/d;-><init>(Lje/b$b;)V

    invoke-virtual {v0, v1}, Lje/c;->c(Lje/b;)V

    return-void
.end method

.method public d(Lorg/json/JSONObject;Ljava/util/HashSet;J)V
    .locals 8

    iget-object v0, p0, Lcom/iab/omid/library/hisavana/walking/b;->b:Lje/c;

    new-instance v7, Lje/f;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lje/f;-><init>(Lje/b$b;Ljava/util/HashSet;Lorg/json/JSONObject;J)V

    invoke-virtual {v0, v7}, Lje/c;->c(Lje/b;)V

    return-void
.end method
