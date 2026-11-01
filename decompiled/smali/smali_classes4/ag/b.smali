.class public final Lag/b;
.super Ljava/lang/Object;

# interfaces
.implements Lbg/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;
    .locals 1

    const/4 p1, 0x0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/therouter/router/b;->a()I

    move-result p2

    if-nez p2, :cond_0

    invoke-static {}, Lcom/therouter/router/NavigatorKt;->j()Ljava/util/HashMap;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-virtual {p3}, Lcom/therouter/router/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/therouter/router/NavigatorKt;->j()Ljava/util/HashMap;

    move-result-object p2

    invoke-virtual {p3}, Lcom/therouter/router/b;->b()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/ref/SoftReference;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    :cond_0
    return-object p1
.end method
