.class Lz4/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz4/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private final b:Ljava/util/Map;

.field private final c:Ljava/lang/Class;

.field private final d:Lcom/alibaba/fastjson/util/h;

.field private final e:Ljava/lang/String;

.field private f:[Lcom/alibaba/fastjson/util/d;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ly4/h;Lcom/alibaba/fastjson/util/h;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, -0x1

    iput p2, p0, Lz4/a$a;->a:I

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lz4/a$a;->b:Ljava/util/Map;

    iput-object p1, p0, Lz4/a$a;->e:Ljava/lang/String;

    iget-object p1, p3, Lcom/alibaba/fastjson/util/h;->a:Ljava/lang/Class;

    iput-object p1, p0, Lz4/a$a;->c:Ljava/lang/Class;

    iput p4, p0, Lz4/a$a;->a:I

    iput-object p3, p0, Lz4/a$a;->d:Lcom/alibaba/fastjson/util/h;

    iget-object p1, p3, Lcom/alibaba/fastjson/util/h;->h:[Lcom/alibaba/fastjson/util/d;

    iput-object p1, p0, Lz4/a$a;->f:[Lcom/alibaba/fastjson/util/d;

    return-void
.end method

.method static synthetic a(Lz4/a$a;)Lcom/alibaba/fastjson/util/h;
    .locals 0

    iget-object p0, p0, Lz4/a$a;->d:Lcom/alibaba/fastjson/util/h;

    return-object p0
.end method

.method static synthetic b(Lz4/a$a;)I
    .locals 0

    iget p0, p0, Lz4/a$a;->a:I

    return p0
.end method

.method static synthetic c(Lz4/a$a;)[Lcom/alibaba/fastjson/util/d;
    .locals 0

    iget-object p0, p0, Lz4/a$a;->f:[Lcom/alibaba/fastjson/util/d;

    return-object p0
.end method

.method static synthetic d(Lz4/a$a;[Lcom/alibaba/fastjson/util/d;)[Lcom/alibaba/fastjson/util/d;
    .locals 0

    iput-object p1, p0, Lz4/a$a;->f:[Lcom/alibaba/fastjson/util/d;

    return-object p1
.end method

.method static synthetic e(Lz4/a$a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lz4/a$a;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Lz4/a$a;)Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, Lz4/a$a;->c:Ljava/lang/Class;

    return-object p0
.end method


# virtual methods
.method public g(Lcom/alibaba/fastjson/util/d;)Ljava/lang/String;
    .locals 3

    iget-object v0, p1, Lcom/alibaba/fastjson/util/d;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lz4/a$a;->j(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "_asm_deser__"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcom/alibaba/fastjson/util/d;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/alibaba/fastjson/util/d;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->K(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public h(Lcom/alibaba/fastjson/util/d;)Ljava/lang/String;
    .locals 3

    iget-object v0, p1, Lcom/alibaba/fastjson/util/d;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lz4/a$a;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcom/alibaba/fastjson/util/d;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_asm_prefix__"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "asm_field_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/alibaba/fastjson/util/d;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->K(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public i()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lz4/a$a;->d:Lcom/alibaba/fastjson/util/h;

    iget-object v0, v0, Lcom/alibaba/fastjson/util/h;->b:Ljava/lang/Class;

    if-nez v0, :cond_0

    iget-object v0, p0, Lz4/a$a;->c:Ljava/lang/Class;

    :cond_0
    return-object v0
.end method

.method j(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v2}, Lcom/alibaba/fastjson/util/f;->g(C)Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    :cond_0
    invoke-static {v2}, Lcom/alibaba/fastjson/util/f;->k(C)Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public k(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lz4/a$a;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lz4/a$a;->b:Ljava/util/Map;

    iget v1, p0, Lz4/a$a;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lz4/a$a;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lz4/a$a;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public l(Ljava/lang/String;I)I
    .locals 2

    iget-object v0, p0, Lz4/a$a;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lz4/a$a;->b:Ljava/util/Map;

    iget v1, p0, Lz4/a$a;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lz4/a$a;->a:I

    add-int/2addr v0, p2

    iput v0, p0, Lz4/a$a;->a:I

    :cond_0
    iget-object p2, p0, Lz4/a$a;->b:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public m(Lcom/alibaba/fastjson/util/d;)I
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcom/alibaba/fastjson/util/d;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_asm"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lz4/a$a;->k(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public n(Lcom/alibaba/fastjson/util/d;I)I
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcom/alibaba/fastjson/util/d;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_asm"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lz4/a$a;->l(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method
