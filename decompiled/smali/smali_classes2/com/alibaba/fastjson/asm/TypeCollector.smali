.class public Lcom/alibaba/fastjson/asm/TypeCollector;
.super Ljava/lang/Object;


# static fields
.field private static e:Ljava/lang/String;

.field private static final f:Ljava/util/Map;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:[Ljava/lang/Class;

.field protected c:Lcom/alibaba/fastjson/asm/g;

.field protected d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lx4/d;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/asm/TypeCollector;->e:Ljava/lang/String;

    new-instance v0, Lcom/alibaba/fastjson/asm/TypeCollector$1;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/TypeCollector$1;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/asm/TypeCollector;->f:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/fastjson/asm/TypeCollector;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/alibaba/fastjson/asm/TypeCollector;->b:[Ljava/lang/Class;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/alibaba/fastjson/asm/TypeCollector;->c:Lcom/alibaba/fastjson/asm/g;

    return-void
.end method

.method private a(Lcom/alibaba/fastjson/asm/j;Ljava/lang/String;)Z
    .locals 3

    invoke-virtual {p1}, Lcom/alibaba/fastjson/asm/j;->c()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    const-string v1, "[]"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/alibaba/fastjson/asm/TypeCollector;->f:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    const/16 v1, 0x4c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x3b

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public b()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/alibaba/fastjson/asm/TypeCollector;->c:Lcom/alibaba/fastjson/asm/g;

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/alibaba/fastjson/asm/g;->e:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/alibaba/fastjson/asm/g;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alibaba/fastjson/asm/TypeCollector;->d:Z

    return v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/alibaba/fastjson/asm/TypeCollector;->e:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/alibaba/fastjson/asm/TypeCollector;->d:Z

    :cond_0
    return-void
.end method

.method protected e(ILjava/lang/String;Ljava/lang/String;)Lcom/alibaba/fastjson/asm/g;
    .locals 6

    iget-object v0, p0, Lcom/alibaba/fastjson/asm/TypeCollector;->c:Lcom/alibaba/fastjson/asm/g;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/TypeCollector;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    return-object v1

    :cond_1
    invoke-static {p3}, Lcom/alibaba/fastjson/asm/j;->a(Ljava/lang/String;)[Lcom/alibaba/fastjson/asm/j;

    move-result-object p2

    array-length p3, p2

    const/4 v0, 0x0

    move v2, v0

    move v3, v2

    :goto_0
    if-ge v2, p3, :cond_4

    aget-object v4, p2, v2

    invoke-virtual {v4}, Lcom/alibaba/fastjson/asm/j;->c()Ljava/lang/String;

    move-result-object v4

    const-string v5, "long"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "double"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    array-length p3, p2

    iget-object v2, p0, Lcom/alibaba/fastjson/asm/TypeCollector;->b:[Ljava/lang/Class;

    array-length v2, v2

    if-eq p3, v2, :cond_5

    return-object v1

    :cond_5
    :goto_1
    array-length p3, p2

    if-ge v0, p3, :cond_7

    aget-object p3, p2, v0

    iget-object v2, p0, Lcom/alibaba/fastjson/asm/TypeCollector;->b:[Ljava/lang/Class;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p3, v2}, Lcom/alibaba/fastjson/asm/TypeCollector;->a(Lcom/alibaba/fastjson/asm/j;Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_6

    return-object v1

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    new-instance p3, Lcom/alibaba/fastjson/asm/g;

    invoke-static {p1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    array-length p2, p2

    add-int/2addr p2, v3

    invoke-direct {p3, p1, p2}, Lcom/alibaba/fastjson/asm/g;-><init>(II)V

    iput-object p3, p0, Lcom/alibaba/fastjson/asm/TypeCollector;->c:Lcom/alibaba/fastjson/asm/g;

    return-object p3
.end method
