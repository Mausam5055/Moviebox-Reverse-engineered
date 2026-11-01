.class public Lcom/alibaba/fastjson/util/g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson/util/g$a;
    }
.end annotation


# instance fields
.field private final a:[Lcom/alibaba/fastjson/util/g$a;

.field private final b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x2000

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/util/g;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    add-int/lit8 v0, p1, -0x1

    iput v0, p0, Lcom/alibaba/fastjson/util/g;->b:I

    new-array p1, p1, [Lcom/alibaba/fastjson/util/g$a;

    iput-object p1, p0, Lcom/alibaba/fastjson/util/g;->a:[Lcom/alibaba/fastjson/util/g$a;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/Class;
    .locals 5

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/alibaba/fastjson/util/g;->a:[Lcom/alibaba/fastjson/util/g$a;

    array-length v2, v1

    if-ge v0, v2, :cond_3

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    move-object v2, v1

    :goto_1
    if-eqz v2, :cond_2

    iget-object v3, v1, Lcom/alibaba/fastjson/util/g$a;->b:Ljava/lang/Object;

    instance-of v4, v3, Ljava/lang/Class;

    if-eqz v4, :cond_1

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v3

    :cond_1
    iget-object v2, v2, Lcom/alibaba/fastjson/util/g$a;->d:Lcom/alibaba/fastjson/util/g$a;

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    iget v1, p0, Lcom/alibaba/fastjson/util/g;->b:I

    and-int/2addr v0, v1

    iget-object v1, p0, Lcom/alibaba/fastjson/util/g;->a:[Lcom/alibaba/fastjson/util/g$a;

    aget-object v0, v1, v0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/alibaba/fastjson/util/g$a;->b:Ljava/lang/Object;

    if-ne p1, v1, :cond_0

    iget-object p1, v0, Lcom/alibaba/fastjson/util/g$a;->c:Ljava/lang/Object;

    return-object p1

    :cond_0
    iget-object v0, v0, Lcom/alibaba/fastjson/util/g$a;->d:Lcom/alibaba/fastjson/util/g$a;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public c(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    iget v1, p0, Lcom/alibaba/fastjson/util/g;->b:I

    and-int/2addr v1, v0

    iget-object v2, p0, Lcom/alibaba/fastjson/util/g;->a:[Lcom/alibaba/fastjson/util/g$a;

    aget-object v2, v2, v1

    :goto_0
    if-eqz v2, :cond_1

    iget-object v3, v2, Lcom/alibaba/fastjson/util/g$a;->b:Ljava/lang/Object;

    if-ne p1, v3, :cond_0

    iput-object p2, v2, Lcom/alibaba/fastjson/util/g$a;->c:Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_0
    iget-object v2, v2, Lcom/alibaba/fastjson/util/g$a;->d:Lcom/alibaba/fastjson/util/g$a;

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/alibaba/fastjson/util/g$a;

    iget-object v3, p0, Lcom/alibaba/fastjson/util/g;->a:[Lcom/alibaba/fastjson/util/g$a;

    aget-object v3, v3, v1

    invoke-direct {v2, p1, p2, v0, v3}, Lcom/alibaba/fastjson/util/g$a;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILcom/alibaba/fastjson/util/g$a;)V

    iget-object p1, p0, Lcom/alibaba/fastjson/util/g;->a:[Lcom/alibaba/fastjson/util/g$a;

    aput-object v2, p1, v1

    const/4 p1, 0x0

    return p1
.end method
