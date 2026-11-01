.class public Lcom/iab/omid/library/mmadbridge/walking/b;
.super Ljava/lang/Object;

# interfaces
.implements Lpe/b$b;


# instance fields
.field private a:Lorg/json/JSONObject;

.field private final b:Lpe/c;


# direct methods
.method public constructor <init>(Lpe/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iab/omid/library/mmadbridge/walking/b;->b:Lpe/c;

    return-void
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/iab/omid/library/mmadbridge/walking/b;->a:Lorg/json/JSONObject;

    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/iab/omid/library/mmadbridge/walking/b;->a:Lorg/json/JSONObject;

    return-void
.end method

.method public b(Lorg/json/JSONObject;Ljava/util/HashSet;J)V
    .locals 8

    iget-object v0, p0, Lcom/iab/omid/library/mmadbridge/walking/b;->b:Lpe/c;

    new-instance v7, Lpe/e;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lpe/e;-><init>(Lpe/b$b;Ljava/util/HashSet;Lorg/json/JSONObject;J)V

    invoke-virtual {v0, v7}, Lpe/c;->c(Lpe/b;)V

    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/iab/omid/library/mmadbridge/walking/b;->b:Lpe/c;

    new-instance v1, Lpe/d;

    invoke-direct {v1, p0}, Lpe/d;-><init>(Lpe/b$b;)V

    invoke-virtual {v0, v1}, Lpe/c;->c(Lpe/b;)V

    return-void
.end method

.method public d(Lorg/json/JSONObject;Ljava/util/HashSet;J)V
    .locals 8

    iget-object v0, p0, Lcom/iab/omid/library/mmadbridge/walking/b;->b:Lpe/c;

    new-instance v7, Lpe/f;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lpe/f;-><init>(Lpe/b$b;Ljava/util/HashSet;Lorg/json/JSONObject;J)V

    invoke-virtual {v0, v7}, Lpe/c;->c(Lpe/b;)V

    return-void
.end method
