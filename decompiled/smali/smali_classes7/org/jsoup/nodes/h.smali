.class public Lorg/jsoup/nodes/h;
.super Lorg/jsoup/nodes/Element;


# instance fields
.field private final j:Lorg/jsoup/select/Elements;


# direct methods
.method public constructor <init>(Lorg/jsoup/parser/f;Ljava/lang/String;Lorg/jsoup/nodes/b;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/jsoup/nodes/Element;-><init>(Lorg/jsoup/parser/f;Ljava/lang/String;Lorg/jsoup/nodes/b;)V

    new-instance p1, Lorg/jsoup/select/Elements;

    invoke-direct {p1}, Lorg/jsoup/select/Elements;-><init>()V

    iput-object p1, p0, Lorg/jsoup/nodes/h;->j:Lorg/jsoup/select/Elements;

    return-void
.end method


# virtual methods
.method protected N(Lorg/jsoup/nodes/j;)V
    .locals 1

    invoke-super {p0, p1}, Lorg/jsoup/nodes/j;->N(Lorg/jsoup/nodes/j;)V

    iget-object v0, p0, Lorg/jsoup/nodes/h;->j:Lorg/jsoup/select/Elements;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public d1(Lorg/jsoup/nodes/Element;)Lorg/jsoup/nodes/h;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/nodes/h;->j:Lorg/jsoup/select/Elements;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
