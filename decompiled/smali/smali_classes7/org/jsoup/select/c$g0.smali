.class public final Lorg/jsoup/select/c$g0;
.super Lorg/jsoup/select/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/select/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g0"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/jsoup/select/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)Z
    .locals 5

    instance-of p1, p2, Lorg/jsoup/nodes/k;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->Y0()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/l;

    new-instance v1, Lorg/jsoup/nodes/k;

    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->U0()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/jsoup/parser/f;->k(Ljava/lang/String;)Lorg/jsoup/parser/f;

    move-result-object v2

    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->i()Lorg/jsoup/nodes/b;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lorg/jsoup/nodes/k;-><init>(Lorg/jsoup/parser/f;Ljava/lang/String;Lorg/jsoup/nodes/b;)V

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/j;->Q(Lorg/jsoup/nodes/j;)V

    invoke-virtual {v1, v0}, Lorg/jsoup/nodes/Element;->g0(Lorg/jsoup/nodes/j;)Lorg/jsoup/nodes/Element;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, ":matchText"

    return-object v0
.end method
