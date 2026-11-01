.class La5/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La5/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field static h:I = 0x6

.field static i:I = 0x7

.field static j:I = 0x8


# instance fields
.field private final a:[Lcom/alibaba/fastjson/util/d;

.field private final b:Ljava/lang/String;

.field private final c:La5/f1;

.field private final d:Z

.field private e:Ljava/util/Map;

.field private f:I

.field private final g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>([Lcom/alibaba/fastjson/util/d;La5/f1;Ljava/lang/String;ZZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, La5/a$a;->e:Ljava/util/Map;

    const/16 v0, 0x9

    iput v0, p0, La5/a$a;->f:I

    iput-object p1, p0, La5/a$a;->a:[Lcom/alibaba/fastjson/util/d;

    iput-object p3, p0, La5/a$a;->b:Ljava/lang/String;

    iput-object p2, p0, La5/a$a;->c:La5/f1;

    iput-boolean p4, p0, La5/a$a;->d:Z

    if-nez p5, :cond_1

    iget-object p1, p2, La5/f1;->a:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, La5/a$a;->g:Z

    return-void
.end method

.method static synthetic a(La5/a$a;)Z
    .locals 0

    iget-boolean p0, p0, La5/a$a;->d:Z

    return p0
.end method

.method static synthetic b(La5/a$a;)I
    .locals 0

    iget p0, p0, La5/a$a;->f:I

    return p0
.end method

.method static synthetic c(La5/a$a;)Z
    .locals 0

    iget-boolean p0, p0, La5/a$a;->g:Z

    return p0
.end method

.method static synthetic d(La5/a$a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, La5/a$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(La5/a$a;)La5/f1;
    .locals 0

    iget-object p0, p0, La5/a$a;->c:La5/f1;

    return-object p0
.end method


# virtual methods
.method public f(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, La5/a$a;->a:[Lcom/alibaba/fastjson/util/d;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, La5/a$a;->a:[Lcom/alibaba/fastjson/util/d;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/alibaba/fastjson/util/d;->a:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_1
    return v1
.end method

.method public g(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, La5/a$a;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    iget-object v0, p0, La5/a$a;->e:Ljava/util/Map;

    iget v1, p0, La5/a$a;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, La5/a$a;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, La5/a$a;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public h(Ljava/lang/String;I)I
    .locals 2

    iget-object v0, p0, La5/a$a;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    iget-object v0, p0, La5/a$a;->e:Ljava/util/Map;

    iget v1, p0, La5/a$a;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, La5/a$a;->f:I

    add-int/2addr v0, p2

    iput v0, p0, La5/a$a;->f:I

    :cond_0
    iget-object p2, p0, La5/a$a;->e:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method
