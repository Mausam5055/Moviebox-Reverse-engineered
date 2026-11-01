.class public Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/d$a;
    }
.end annotation


# static fields
.field private static final f:Ljava/util/Set;

.field private static final g:Ljava/util/Set;


# instance fields
.field private final a:Ljava/util/ArrayList;

.field private final b:I

.field private c:I

.field private d:I

.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/d;->f:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/d;->g:Ljava/util/Set;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/d;->c:I

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/d;->a:Ljava/util/ArrayList;

    new-instance v2, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/d$a;

    invoke-direct {v2, p0, p1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/d$a;-><init>(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/d;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/d;->b:I

    iput v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/d;->e:I

    return-void
.end method

.method constructor <init>(Ljava/util/List;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/d;->c:I

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/d;->b:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/d;->a:Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move-object v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/d$a;

    invoke-direct {v3, p0, v2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/d$a;-><init>(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/d;Ljava/lang/String;)V

    sget-object v4, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/d;->f:Ljava/util/Set;

    invoke-interface {v4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    sget-object v4, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/d;->g:Ljava/util/Set;

    invoke-interface {v4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_2
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    if-eqz v0, :cond_5

    iget-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/d;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_5
    if-eqz v1, :cond_6

    iget-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/d;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_6
    sget-object p1, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/a;->h:Ljava/lang/Integer;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gtz v0, :cond_7

    goto :goto_1

    :cond_7
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_2

    :cond_8
    :goto_1
    iget p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/d;->b:I

    const/4 v0, 0x2

    if-lt p1, v0, :cond_9

    const/4 p1, 0x1

    goto :goto_2

    :cond_9
    move p1, v0

    :goto_2
    iput p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/d;->e:I

    return-void

    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "urls can\'t be empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a()Ljava/util/Set;
    .locals 1

    sget-object v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/d;->g:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic c()Ljava/util/Set;
    .locals 1

    sget-object v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/d;->f:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method b()Z
    .locals 2

    iget v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/d;->d:I

    iget v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/d;->e:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method d()Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/d$a;
    .locals 3

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/d;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/d;->c:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/d;->b:I

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_0

    const/4 v1, -0x1

    iput v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/d;->c:I

    iget v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/d;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/d;->d:I

    goto :goto_0

    :cond_0
    iput v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/d;->c:I

    :goto_0
    iget-object v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/d$a;

    iget v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/d;->d:I

    iget v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/d;->b:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/d;->c:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/d$a;->b:I

    return-object v0

    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
