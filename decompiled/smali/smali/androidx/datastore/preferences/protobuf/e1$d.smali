.class Landroidx/datastore/preferences/protobuf/e1$d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Map$Entry;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/e1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field private final a:Ljava/lang/Comparable;

.field private b:Ljava/lang/Object;

.field final synthetic c:Landroidx/datastore/preferences/protobuf/e1;


# direct methods
.method constructor <init>(Landroidx/datastore/preferences/protobuf/e1;Ljava/lang/Comparable;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/e1$d;->c:Landroidx/datastore/preferences/protobuf/e1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/datastore/preferences/protobuf/e1$d;->a:Ljava/lang/Comparable;

    iput-object p3, p0, Landroidx/datastore/preferences/protobuf/e1$d;->b:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Landroidx/datastore/preferences/protobuf/e1;Ljava/util/Map$Entry;)V
    .locals 1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, v0, p2}, Landroidx/datastore/preferences/protobuf/e1$d;-><init>(Landroidx/datastore/preferences/protobuf/e1;Ljava/lang/Comparable;Ljava/lang/Object;)V

    return-void
.end method

.method private b(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-nez p1, :cond_1

    if-nez p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    :goto_0
    return p1
.end method


# virtual methods
.method public a(Landroidx/datastore/preferences/protobuf/e1$d;)I
    .locals 1

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/e1$d;->d()Ljava/lang/Comparable;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/e1$d;->d()Ljava/lang/Comparable;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroidx/datastore/preferences/protobuf/e1$d;

    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/e1$d;->a(Landroidx/datastore/preferences/protobuf/e1$d;)I

    move-result p1

    return p1
.end method

.method public d()Ljava/lang/Comparable;
    .locals 1

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/e1$d;->a:Ljava/lang/Comparable;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ljava/util/Map$Entry;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Ljava/util/Map$Entry;

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/e1$d;->a:Ljava/lang/Comparable;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Landroidx/datastore/preferences/protobuf/e1$d;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/e1$d;->b:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Landroidx/datastore/preferences/protobuf/e1$d;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public bridge synthetic getKey()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/e1$d;->d()Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/e1$d;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/e1$d;->a:Ljava/lang/Comparable;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/e1$d;->b:Ljava/lang/Object;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    xor-int/2addr v0, v1

    return v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/e1$d;->c:Landroidx/datastore/preferences/protobuf/e1;

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/e1;->a(Landroidx/datastore/preferences/protobuf/e1;)V

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/e1$d;->b:Ljava/lang/Object;

    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/e1$d;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/e1$d;->a:Ljava/lang/Comparable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/e1$d;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
