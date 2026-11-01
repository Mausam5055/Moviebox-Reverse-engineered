.class Lcom/tencent/tinker/loader/TinkerClassLoader$CompoundEnumeration;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation build Lcom/tencent/tinker/anno/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tinker/loader/TinkerClassLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CompoundEnumeration"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private enums:[Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Enumeration<",
            "TE;>;"
        }
    .end annotation
.end field

.field private index:I

.field final synthetic this$0:Lcom/tencent/tinker/loader/TinkerClassLoader;


# direct methods
.method public constructor <init>(Lcom/tencent/tinker/loader/TinkerClassLoader;[Ljava/util/Enumeration;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Enumeration<",
            "TE;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/tencent/tinker/loader/TinkerClassLoader$CompoundEnumeration;->this$0:Lcom/tencent/tinker/loader/TinkerClassLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/tencent/tinker/loader/TinkerClassLoader$CompoundEnumeration;->index:I

    iput-object p2, p0, Lcom/tencent/tinker/loader/TinkerClassLoader$CompoundEnumeration;->enums:[Ljava/util/Enumeration;

    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 3

    :goto_0
    iget v0, p0, Lcom/tencent/tinker/loader/TinkerClassLoader$CompoundEnumeration;->index:I

    iget-object v1, p0, Lcom/tencent/tinker/loader/TinkerClassLoader$CompoundEnumeration;->enums:[Ljava/util/Enumeration;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v0, v1, v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/tencent/tinker/loader/TinkerClassLoader$CompoundEnumeration;->index:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/tinker/loader/TinkerClassLoader$CompoundEnumeration;->index:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/tencent/tinker/loader/TinkerClassLoader$CompoundEnumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tinker/loader/TinkerClassLoader$CompoundEnumeration;->enums:[Ljava/util/Enumeration;

    iget v1, p0, Lcom/tencent/tinker/loader/TinkerClassLoader$CompoundEnumeration;->index:I

    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
