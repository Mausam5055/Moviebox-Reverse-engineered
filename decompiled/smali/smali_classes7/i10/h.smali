.class public Li10/h;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/mvel2/a;


# instance fields
.field private final a:[Lorg/mvel2/a;


# direct methods
.method public varargs constructor <init>([Lorg/mvel2/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li10/h;->a:[Lorg/mvel2/a;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Z
    .locals 5

    iget-object v0, p0, Li10/h;->a:[Lorg/mvel2/a;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    invoke-interface {v4, p1}, Lorg/mvel2/a;->a(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Li10/h;->a:[Lorg/mvel2/a;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/mvel2/a;->a(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3, p1}, Lorg/mvel2/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
