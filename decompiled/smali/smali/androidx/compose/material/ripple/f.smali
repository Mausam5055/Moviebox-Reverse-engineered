.class final Landroidx/compose/material/ripple/f;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/Map;

.field private final b:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroidx/compose/material/ripple/f;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroidx/compose/material/ripple/f;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/material/ripple/RippleHostView;)Landroidx/compose/material/ripple/e;
    .locals 1

    iget-object v0, p0, Landroidx/compose/material/ripple/f;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/material/ripple/e;

    return-object p1
.end method

.method public final b(Landroidx/compose/material/ripple/e;)Landroidx/compose/material/ripple/RippleHostView;
    .locals 1

    iget-object v0, p0, Landroidx/compose/material/ripple/f;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/material/ripple/RippleHostView;

    return-object p1
.end method

.method public final c(Landroidx/compose/material/ripple/e;)V
    .locals 2

    iget-object v0, p0, Landroidx/compose/material/ripple/f;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/material/ripple/RippleHostView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/compose/material/ripple/f;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/material/ripple/e;

    :cond_0
    iget-object v0, p0, Landroidx/compose/material/ripple/f;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final d(Landroidx/compose/material/ripple/e;Landroidx/compose/material/ripple/RippleHostView;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/material/ripple/f;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/compose/material/ripple/f;->b:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
