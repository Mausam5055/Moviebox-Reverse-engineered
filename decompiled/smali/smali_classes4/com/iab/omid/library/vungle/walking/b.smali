.class public Lcom/iab/omid/library/vungle/walking/b;
.super Ljava/lang/Object;

# interfaces
.implements Lve/b$b;


# instance fields
.field private a:Lorg/json/JSONObject;

.field private final b:Lve/c;


# direct methods
.method public constructor <init>(Lve/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iab/omid/library/vungle/walking/b;->b:Lve/c;

    return-void
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/iab/omid/library/vungle/walking/b;->a:Lorg/json/JSONObject;

    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/iab/omid/library/vungle/walking/b;->a:Lorg/json/JSONObject;

    return-void
.end method

.method public b(Lorg/json/JSONObject;Ljava/util/HashSet;J)V
    .locals 8

    iget-object v0, p0, Lcom/iab/omid/library/vungle/walking/b;->b:Lve/c;

    new-instance v7, Lve/e;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lve/e;-><init>(Lve/b$b;Ljava/util/HashSet;Lorg/json/JSONObject;J)V

    invoke-virtual {v0, v7}, Lve/c;->c(Lve/b;)V

    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/iab/omid/library/vungle/walking/b;->b:Lve/c;

    new-instance v1, Lve/d;

    invoke-direct {v1, p0}, Lve/d;-><init>(Lve/b$b;)V

    invoke-virtual {v0, v1}, Lve/c;->c(Lve/b;)V

    return-void
.end method

.method public d(Lorg/json/JSONObject;Ljava/util/HashSet;J)V
    .locals 8

    iget-object v0, p0, Lcom/iab/omid/library/vungle/walking/b;->b:Lve/c;

    new-instance v7, Lve/f;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lve/f;-><init>(Lve/b$b;Ljava/util/HashSet;Lorg/json/JSONObject;J)V

    invoke-virtual {v0, v7}, Lve/c;->c(Lve/b;)V

    return-void
.end method
