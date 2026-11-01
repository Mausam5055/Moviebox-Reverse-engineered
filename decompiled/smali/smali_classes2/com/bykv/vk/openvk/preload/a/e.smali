.class public final Lcom/bykv/vk/openvk/preload/a/e;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/bykv/vk/openvk/preload/a/b/c;

.field private b:Lcom/bykv/vk/openvk/preload/a/q;

.field private c:Lcom/bykv/vk/openvk/preload/a/c;

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Lcom/bykv/vk/openvk/preload/a/f<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bykv/vk/openvk/preload/a/s;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bykv/vk/openvk/preload/a/s;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/String;

.field private h:I

.field private i:I

.field private j:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/bykv/vk/openvk/preload/a/b/c;->a:Lcom/bykv/vk/openvk/preload/a/b/c;

    iput-object v0, p0, Lcom/bykv/vk/openvk/preload/a/e;->a:Lcom/bykv/vk/openvk/preload/a/b/c;

    sget-object v0, Lcom/bykv/vk/openvk/preload/a/q;->a:Lcom/bykv/vk/openvk/preload/a/q;

    iput-object v0, p0, Lcom/bykv/vk/openvk/preload/a/e;->b:Lcom/bykv/vk/openvk/preload/a/q;

    sget-object v0, Lcom/bykv/vk/openvk/preload/a/b;->a:Lcom/bykv/vk/openvk/preload/a/b;

    iput-object v0, p0, Lcom/bykv/vk/openvk/preload/a/e;->c:Lcom/bykv/vk/openvk/preload/a/c;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bykv/vk/openvk/preload/a/e;->d:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bykv/vk/openvk/preload/a/e;->e:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bykv/vk/openvk/preload/a/e;->f:Ljava/util/List;

    const/4 v0, 0x2

    iput v0, p0, Lcom/bykv/vk/openvk/preload/a/e;->h:I

    iput v0, p0, Lcom/bykv/vk/openvk/preload/a/e;->i:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bykv/vk/openvk/preload/a/e;->j:Z

    return-void
.end method


# virtual methods
.method public final a()Lcom/bykv/vk/openvk/preload/a/d;
    .locals 9

    new-instance v6, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/a/e;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/a/e;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x3

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/a/e;->e:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {v6}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/a/e;->f:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    invoke-interface {v6, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/a/e;->g:Ljava/lang/String;

    iget v1, p0, Lcom/bykv/vk/openvk/preload/a/e;->h:I

    iget v2, p0, Lcom/bykv/vk/openvk/preload/a/e;->i:I

    const-class v3, Ljava/sql/Date;

    const-class v4, Ljava/sql/Timestamp;

    const-class v5, Ljava/util/Date;

    if-eqz v0, :cond_0

    const-string v7, ""

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    new-instance v1, Lcom/bykv/vk/openvk/preload/a/a;

    invoke-direct {v1, v5, v0}, Lcom/bykv/vk/openvk/preload/a/a;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    new-instance v2, Lcom/bykv/vk/openvk/preload/a/a;

    invoke-direct {v2, v4, v0}, Lcom/bykv/vk/openvk/preload/a/a;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    new-instance v7, Lcom/bykv/vk/openvk/preload/a/a;

    invoke-direct {v7, v3, v0}, Lcom/bykv/vk/openvk/preload/a/a;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-eq v1, v0, :cond_1

    if-eq v2, v0, :cond_1

    new-instance v0, Lcom/bykv/vk/openvk/preload/a/a;

    invoke-direct {v0, v5, v1, v2}, Lcom/bykv/vk/openvk/preload/a/a;-><init>(Ljava/lang/Class;II)V

    new-instance v7, Lcom/bykv/vk/openvk/preload/a/a;

    invoke-direct {v7, v4, v1, v2}, Lcom/bykv/vk/openvk/preload/a/a;-><init>(Ljava/lang/Class;II)V

    new-instance v8, Lcom/bykv/vk/openvk/preload/a/a;

    invoke-direct {v8, v3, v1, v2}, Lcom/bykv/vk/openvk/preload/a/a;-><init>(Ljava/lang/Class;II)V

    move-object v1, v0

    move-object v2, v7

    move-object v7, v8

    :goto_0
    invoke-static {v5, v1}, Lcom/bykv/vk/openvk/preload/a/b/a/m;->a(Ljava/lang/Class;Lcom/bykv/vk/openvk/preload/a/r;)Lcom/bykv/vk/openvk/preload/a/s;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v4, v2}, Lcom/bykv/vk/openvk/preload/a/b/a/m;->a(Ljava/lang/Class;Lcom/bykv/vk/openvk/preload/a/r;)Lcom/bykv/vk/openvk/preload/a/s;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v3, v7}, Lcom/bykv/vk/openvk/preload/a/b/a/m;->a(Ljava/lang/Class;Lcom/bykv/vk/openvk/preload/a/r;)Lcom/bykv/vk/openvk/preload/a/s;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    new-instance v7, Lcom/bykv/vk/openvk/preload/a/d;

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/a/e;->a:Lcom/bykv/vk/openvk/preload/a/b/c;

    iget-object v2, p0, Lcom/bykv/vk/openvk/preload/a/e;->c:Lcom/bykv/vk/openvk/preload/a/c;

    iget-object v3, p0, Lcom/bykv/vk/openvk/preload/a/e;->d:Ljava/util/Map;

    iget-boolean v4, p0, Lcom/bykv/vk/openvk/preload/a/e;->j:Z

    iget-object v5, p0, Lcom/bykv/vk/openvk/preload/a/e;->b:Lcom/bykv/vk/openvk/preload/a/q;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/bykv/vk/openvk/preload/a/d;-><init>(Lcom/bykv/vk/openvk/preload/a/b/c;Lcom/bykv/vk/openvk/preload/a/c;Ljava/util/Map;ZLcom/bykv/vk/openvk/preload/a/q;Ljava/util/List;)V

    return-object v7
.end method

.method public final a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/bykv/vk/openvk/preload/a/e;
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/bykv/vk/openvk/preload/falconx/a/a;->a(Z)V

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/a/e;->e:Ljava/util/List;

    invoke-static {p1}, Lcom/bykv/vk/openvk/preload/a/c/a;->a(Ljava/lang/reflect/Type;)Lcom/bykv/vk/openvk/preload/a/c/a;

    move-result-object p1

    check-cast p2, Lcom/bykv/vk/openvk/preload/a/r;

    invoke-static {p1, p2}, Lcom/bykv/vk/openvk/preload/a/b/a/m;->a(Lcom/bykv/vk/openvk/preload/a/c/a;Lcom/bykv/vk/openvk/preload/a/r;)Lcom/bykv/vk/openvk/preload/a/s;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
