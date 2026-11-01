.class public final Lcom/bykv/vk/openvk/preload/a/b/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bykv/vk/openvk/preload/a/s;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final a:Lcom/bykv/vk/openvk/preload/a/b/c;


# instance fields
.field private b:D

.field private c:I

.field private d:Z

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bykv/vk/openvk/preload/geckox/a/a/c;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bykv/vk/openvk/preload/geckox/a/a/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/bykv/vk/openvk/preload/a/b/c;

    invoke-direct {v0}, Lcom/bykv/vk/openvk/preload/a/b/c;-><init>()V

    sput-object v0, Lcom/bykv/vk/openvk/preload/a/b/c;->a:Lcom/bykv/vk/openvk/preload/a/b/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/bykv/vk/openvk/preload/a/b/c;->b:D

    const/16 v0, 0x88

    iput v0, p0, Lcom/bykv/vk/openvk/preload/a/b/c;->c:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bykv/vk/openvk/preload/a/b/c;->d:Z

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/bykv/vk/openvk/preload/a/b/c;->e:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/bykv/vk/openvk/preload/a/b/c;->f:Ljava/util/List;

    return-void
.end method

.method private a()Lcom/bykv/vk/openvk/preload/a/b/c;
    .locals 2

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bykv/vk/openvk/preload/a/b/c;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method private a(Lcom/bykv/vk/openvk/preload/a/a/c;)Z
    .locals 4

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/bykv/vk/openvk/preload/a/a/c;->a()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/bykv/vk/openvk/preload/a/b/c;->b:D

    cmpl-double p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private a(Lcom/bykv/vk/openvk/preload/a/a/c;Lcom/bykv/vk/openvk/preload/a/a/d;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/bykv/vk/openvk/preload/a/b/c;->a(Lcom/bykv/vk/openvk/preload/a/a/c;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0, p2}, Lcom/bykv/vk/openvk/preload/a/b/c;->a(Lcom/bykv/vk/openvk/preload/a/a/d;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private a(Lcom/bykv/vk/openvk/preload/a/a/d;)Z
    .locals 4

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/bykv/vk/openvk/preload/a/a/d;->a()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/bykv/vk/openvk/preload/a/b/c;->b:D

    cmpg-double p1, v0, v2

    if-gtz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private a(Ljava/lang/Class;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    iget-wide v0, p0, Lcom/bykv/vk/openvk/preload/a/b/c;->b:D

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    cmpl-double v0, v0, v2

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-class v0, Lcom/bykv/vk/openvk/preload/a/a/c;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/bykv/vk/openvk/preload/a/a/c;

    const-class v2, Lcom/bykv/vk/openvk/preload/a/a/d;

    invoke-virtual {p1, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/bykv/vk/openvk/preload/a/a/d;

    invoke-direct {p0, v0, v2}, Lcom/bykv/vk/openvk/preload/a/b/c;->a(Lcom/bykv/vk/openvk/preload/a/a/c;Lcom/bykv/vk/openvk/preload/a/a/d;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/bykv/vk/openvk/preload/a/b/c;->d:Z

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/bykv/vk/openvk/preload/a/b/c;->c(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-static {p1}, Lcom/bykv/vk/openvk/preload/a/b/c;->b(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private a(Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)Z"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bykv/vk/openvk/preload/a/b/c;->e:Ljava/util/List;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/bykv/vk/openvk/preload/a/b/c;->f:Ljava/util/List;

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bykv/vk/openvk/preload/geckox/a/a/c;

    invoke-interface {v0}, Lcom/bykv/vk/openvk/preload/geckox/a/a/c;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private static b(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    const-class v0, Ljava/lang/Enum;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Class;->isLocalClass()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static c(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/bykv/vk/openvk/preload/a/b/c;->d(Ljava/lang/Class;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static d(Ljava/lang/Class;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result p0

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a(Lcom/bykv/vk/openvk/preload/a/d;Lcom/bykv/vk/openvk/preload/a/c/a;)Lcom/bykv/vk/openvk/preload/a/r;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bykv/vk/openvk/preload/a/d;",
            "Lcom/bykv/vk/openvk/preload/a/c/a<",
            "TT;>;)",
            "Lcom/bykv/vk/openvk/preload/a/r<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/bykv/vk/openvk/preload/a/c/a;->a()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bykv/vk/openvk/preload/a/b/c;->a(Ljava/lang/Class;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    invoke-direct {p0, v2}, Lcom/bykv/vk/openvk/preload/a/b/c;->a(Z)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v7, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v7, v2

    :goto_1
    if-nez v0, :cond_3

    invoke-direct {p0, v1}, Lcom/bykv/vk/openvk/preload/a/b/c;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v6, v1

    goto :goto_3

    :cond_3
    :goto_2
    move v6, v2

    :goto_3
    if-nez v7, :cond_4

    if-nez v6, :cond_4

    const/4 p1, 0x0

    return-object p1

    :cond_4
    new-instance v0, Lcom/bykv/vk/openvk/preload/a/b/c$1;

    move-object v4, v0

    move-object v5, p0

    move-object v8, p1

    move-object v9, p2

    invoke-direct/range {v4 .. v9}, Lcom/bykv/vk/openvk/preload/a/b/c$1;-><init>(Lcom/bykv/vk/openvk/preload/a/b/c;ZZLcom/bykv/vk/openvk/preload/a/d;Lcom/bykv/vk/openvk/preload/a/c/a;)V

    return-object v0
.end method

.method public final a(Ljava/lang/Class;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z)Z"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/bykv/vk/openvk/preload/a/b/c;->a(Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-direct {p0, p2}, Lcom/bykv/vk/openvk/preload/a/b/c;->a(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final a(Ljava/lang/reflect/Field;Z)Z
    .locals 6

    iget v0, p0, Lcom/bykv/vk/openvk/preload/a/b/c;->c:I

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v1

    and-int/2addr v0, v1

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-wide v2, p0, Lcom/bykv/vk/openvk/preload/a/b/c;->b:D

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    cmpl-double v0, v2, v4

    if-eqz v0, :cond_1

    const-class v0, Lcom/bykv/vk/openvk/preload/a/a/c;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/bykv/vk/openvk/preload/a/a/c;

    const-class v2, Lcom/bykv/vk/openvk/preload/a/a/d;

    invoke-virtual {p1, v2}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/bykv/vk/openvk/preload/a/a/d;

    invoke-direct {p0, v0, v2}, Lcom/bykv/vk/openvk/preload/a/b/c;->a(Lcom/bykv/vk/openvk/preload/a/a/c;Lcom/bykv/vk/openvk/preload/a/a/d;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->isSynthetic()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-boolean v0, p0, Lcom/bykv/vk/openvk/preload/a/b/c;->d:Z

    if-nez v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/bykv/vk/openvk/preload/a/b/c;->c(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/bykv/vk/openvk/preload/a/b/c;->b(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    :cond_4
    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/bykv/vk/openvk/preload/a/b/c;->e:Ljava/util/List;

    goto :goto_0

    :cond_5
    iget-object p2, p0, Lcom/bykv/vk/openvk/preload/a/b/c;->f:Ljava/util/List;

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    new-instance v0, Lcom/bykv/vk/openvk/preload/geckox/a/c;

    invoke-direct {v0, p1}, Lcom/bykv/vk/openvk/preload/geckox/a/c;-><init>(Ljava/lang/reflect/Field;)V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bykv/vk/openvk/preload/geckox/a/a/c;

    invoke-interface {p2}, Lcom/bykv/vk/openvk/preload/geckox/a/a/c;->b()Z

    move-result p2

    if-eqz p2, :cond_6

    return v1

    :cond_7
    const/4 p1, 0x0

    return p1
.end method

.method protected final synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/a/b/c;->a()Lcom/bykv/vk/openvk/preload/a/b/c;

    move-result-object v0

    return-object v0
.end method
