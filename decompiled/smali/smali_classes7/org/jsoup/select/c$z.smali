.class public final Lorg/jsoup/select/c$z;
.super Lorg/jsoup/select/c$o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/select/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "z"
.end annotation


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/jsoup/select/c$o;-><init>(II)V

    return-void
.end method


# virtual methods
.method protected b(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)I
    .locals 0

    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->v0()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    const-string v0, "nth-child"

    return-object v0
.end method
