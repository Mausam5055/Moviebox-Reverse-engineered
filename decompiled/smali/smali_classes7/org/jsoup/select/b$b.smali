.class final Lorg/jsoup/select/b$b;
.super Lorg/jsoup/select/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/select/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/jsoup/select/b;-><init>()V

    return-void
.end method

.method constructor <init>(Ljava/util/Collection;)V
    .locals 2

    invoke-direct {p0}, Lorg/jsoup/select/b;-><init>()V

    iget v0, p0, Lorg/jsoup/select/b;->b:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lorg/jsoup/select/b;->a:Ljava/util/ArrayList;

    new-instance v1, Lorg/jsoup/select/b$a;

    invoke-direct {v1, p1}, Lorg/jsoup/select/b$a;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/jsoup/select/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_0
    invoke-virtual {p0}, Lorg/jsoup/select/b;->d()V

    return-void
.end method

.method varargs constructor <init>([Lorg/jsoup/select/c;)V
    .locals 0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/jsoup/select/b$b;-><init>(Ljava/util/Collection;)V

    return-void
.end method


# virtual methods
.method public a(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lorg/jsoup/select/b;->b:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lorg/jsoup/select/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/select/c;

    invoke-virtual {v2, p1, p2}, Lorg/jsoup/select/c;->a(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public e(Lorg/jsoup/select/c;)V
    .locals 1

    iget-object v0, p0, Lorg/jsoup/select/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lorg/jsoup/select/b;->d()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/jsoup/select/b;->a:Ljava/util/ArrayList;

    const-string v1, ", "

    invoke-static {v0, v1}, Lorg/jsoup/helper/c;->i(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
