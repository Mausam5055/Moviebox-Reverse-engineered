.class public La5/g1;
.super Ljava/lang/Object;


# static fields
.field public static final j:La5/g1;

.field private static k:Z

.field private static l:Z

.field private static m:Z

.field private static n:Z

.field private static o:Z

.field private static p:Z


# instance fields
.field private a:Z

.field private b:La5/a;

.field protected c:Ljava/lang/String;

.field public d:Lcom/alibaba/fastjson/PropertyNamingStrategy;

.field private final e:Lcom/alibaba/fastjson/util/g;

.field private final f:Lcom/alibaba/fastjson/util/g;

.field private final g:Z

.field private h:[J

.field private i:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, La5/g1;

    invoke-direct {v0}, La5/g1;-><init>()V

    sput-object v0, La5/g1;->j:La5/g1;

    const/4 v0, 0x0

    sput-boolean v0, La5/g1;->k:Z

    sput-boolean v0, La5/g1;->l:Z

    sput-boolean v0, La5/g1;->m:Z

    sput-boolean v0, La5/g1;->n:Z

    sput-boolean v0, La5/g1;->o:Z

    sput-boolean v0, La5/g1;->p:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x2000

    invoke-direct {p0, v0}, La5/g1;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, La5/g1;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/alibaba/fastjson/util/b;->b:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, La5/g1;->a:Z

    sget-object v0, Lcom/alibaba/fastjson/a;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    iput-object v0, p0, La5/g1;->c:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    iput-object v0, p0, La5/g1;->h:[J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, La5/g1;->i:Ljava/util/List;

    iput-boolean p2, p0, La5/g1;->g:Z

    new-instance p2, Lcom/alibaba/fastjson/util/g;

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson/util/g;-><init>(I)V

    iput-object p2, p0, La5/g1;->e:Lcom/alibaba/fastjson/util/g;

    new-instance p1, Lcom/alibaba/fastjson/util/g;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/util/g;-><init>(I)V

    iput-object p1, p0, La5/g1;->f:Lcom/alibaba/fastjson/util/g;

    :try_start_0
    iget-boolean p1, p0, La5/g1;->a:Z

    if-eqz p1, :cond_0

    new-instance p1, La5/a;

    invoke-direct {p1}, La5/a;-><init>()V

    iput-object p1, p0, La5/g1;->b:La5/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 p1, 0x0

    iput-boolean p1, p0, La5/g1;->a:Z

    :cond_0
    :goto_0
    invoke-direct {p0}, La5/g1;->j()V

    return-void

    nop

    :array_0
    .array-data 8
        0x39ce554cca9aab53L    # 2.991084746524151E-30
        0x3db5c2961aadf5f3L    # 1.9790698305390406E-11
    .end array-data
.end method

.method private final a(La5/f1;)La5/p0;
    .locals 4

    iget-object v0, p0, La5/g1;->b:La5/a;

    invoke-virtual {v0, p1}, La5/a;->z(La5/f1;)La5/p0;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p1, La5/p0;->k:[La5/g0;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-object v2, v2, v1

    iget-object v2, v2, La5/g0;->a:Lcom/alibaba/fastjson/util/d;

    iget-object v2, v2, Lcom/alibaba/fastjson/util/d;->e:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->isEnum()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v2}, La5/g1;->h(Ljava/lang/Class;)La5/z0;

    move-result-object v2

    instance-of v2, v2, La5/e0;

    if-nez v2, :cond_0

    iput-boolean v0, p1, La5/i1;->i:Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method private static f(Ljava/lang/Class;)Ljava/lang/reflect/Member;
    .locals 10

    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v5, v2

    move v4, v3

    :goto_0
    const-class v6, Lx4/b;

    if-ge v4, v1, :cond_3

    aget-object v7, v0, v4

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v8

    const-class v9, Ljava/lang/Void;

    if-ne v8, v9, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v7, v6}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Lx4/b;

    if-eqz v6, :cond_2

    if-eqz v5, :cond_1

    return-object v2

    :cond_1
    move-object v5, v7

    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object p0

    array-length v0, p0

    :goto_2
    if-ge v3, v0, :cond_6

    aget-object v1, p0, v3

    invoke-virtual {v1, v6}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lx4/b;

    if-eqz v4, :cond_5

    if-eqz v5, :cond_4

    return-object v2

    :cond_4
    move-object v5, v1

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    return-object v5
.end method

.method public static g()La5/g1;
    .locals 1

    sget-object v0, La5/g1;->j:La5/g1;

    return-object v0
.end method

.method private j()V
    .locals 3

    const-class v0, Ljava/lang/Boolean;

    sget-object v1, La5/t;->a:La5/t;

    invoke-virtual {p0, v0, v1}, La5/g1;->k(Ljava/lang/reflect/Type;La5/z0;)Z

    const-class v0, Ljava/lang/Character;

    sget-object v1, La5/x;->a:La5/x;

    invoke-virtual {p0, v0, v1}, La5/g1;->k(Ljava/lang/reflect/Type;La5/z0;)Z

    const-class v0, Ljava/lang/Byte;

    sget-object v1, La5/j0;->a:La5/j0;

    invoke-virtual {p0, v0, v1}, La5/g1;->k(Ljava/lang/reflect/Type;La5/z0;)Z

    const-class v0, Ljava/lang/Short;

    sget-object v1, La5/j0;->a:La5/j0;

    invoke-virtual {p0, v0, v1}, La5/g1;->k(Ljava/lang/reflect/Type;La5/z0;)Z

    const-class v0, Ljava/lang/Integer;

    sget-object v1, La5/j0;->a:La5/j0;

    invoke-virtual {p0, v0, v1}, La5/g1;->k(Ljava/lang/reflect/Type;La5/z0;)Z

    const-class v0, Ljava/lang/Long;

    sget-object v1, La5/u0;->a:La5/u0;

    invoke-virtual {p0, v0, v1}, La5/g1;->k(Ljava/lang/reflect/Type;La5/z0;)Z

    const-class v0, Ljava/lang/Float;

    sget-object v1, La5/h0;->b:La5/h0;

    invoke-virtual {p0, v0, v1}, La5/g1;->k(Ljava/lang/reflect/Type;La5/z0;)Z

    const-class v0, Ljava/lang/Double;

    sget-object v1, La5/d0;->b:La5/d0;

    invoke-virtual {p0, v0, v1}, La5/g1;->k(Ljava/lang/reflect/Type;La5/z0;)Z

    const-class v0, Ljava/math/BigDecimal;

    sget-object v1, La5/r;->c:La5/r;

    invoke-virtual {p0, v0, v1}, La5/g1;->k(Ljava/lang/reflect/Type;La5/z0;)Z

    const-class v0, Ljava/math/BigInteger;

    sget-object v1, La5/s;->c:La5/s;

    invoke-virtual {p0, v0, v1}, La5/g1;->k(Ljava/lang/reflect/Type;La5/z0;)Z

    const-class v0, Ljava/lang/String;

    sget-object v1, La5/k1;->a:La5/k1;

    invoke-virtual {p0, v0, v1}, La5/g1;->k(Ljava/lang/reflect/Type;La5/z0;)Z

    const-class v0, [B

    sget-object v1, La5/a1;->a:La5/a1;

    invoke-virtual {p0, v0, v1}, La5/g1;->k(Ljava/lang/reflect/Type;La5/z0;)Z

    const-class v0, [S

    sget-object v1, La5/a1;->a:La5/a1;

    invoke-virtual {p0, v0, v1}, La5/g1;->k(Ljava/lang/reflect/Type;La5/z0;)Z

    const-class v0, [I

    sget-object v1, La5/a1;->a:La5/a1;

    invoke-virtual {p0, v0, v1}, La5/g1;->k(Ljava/lang/reflect/Type;La5/z0;)Z

    const-class v0, [J

    sget-object v1, La5/a1;->a:La5/a1;

    invoke-virtual {p0, v0, v1}, La5/g1;->k(Ljava/lang/reflect/Type;La5/z0;)Z

    const-class v0, [F

    sget-object v1, La5/a1;->a:La5/a1;

    invoke-virtual {p0, v0, v1}, La5/g1;->k(Ljava/lang/reflect/Type;La5/z0;)Z

    const-class v0, [D

    sget-object v1, La5/a1;->a:La5/a1;

    invoke-virtual {p0, v0, v1}, La5/g1;->k(Ljava/lang/reflect/Type;La5/z0;)Z

    const-class v0, [Z

    sget-object v1, La5/a1;->a:La5/a1;

    invoke-virtual {p0, v0, v1}, La5/g1;->k(Ljava/lang/reflect/Type;La5/z0;)Z

    const-class v0, [C

    sget-object v1, La5/a1;->a:La5/a1;

    invoke-virtual {p0, v0, v1}, La5/g1;->k(Ljava/lang/reflect/Type;La5/z0;)Z

    const-class v0, [Ljava/lang/Object;

    sget-object v1, La5/y0;->a:La5/y0;

    invoke-virtual {p0, v0, v1}, La5/g1;->k(Ljava/lang/reflect/Type;La5/z0;)Z

    sget-object v0, La5/w0;->b:La5/w0;

    const-class v1, Ljava/lang/Class;

    invoke-virtual {p0, v1, v0}, La5/g1;->k(Ljava/lang/reflect/Type;La5/z0;)Z

    const-class v1, Ljava/text/SimpleDateFormat;

    invoke-virtual {p0, v1, v0}, La5/g1;->k(Ljava/lang/reflect/Type;La5/z0;)Z

    new-instance v1, La5/w0;

    invoke-direct {v1}, La5/w0;-><init>()V

    const-class v2, Ljava/util/Currency;

    invoke-virtual {p0, v2, v1}, La5/g1;->k(Ljava/lang/reflect/Type;La5/z0;)Z

    const-class v1, Ljava/util/TimeZone;

    invoke-virtual {p0, v1, v0}, La5/g1;->k(Ljava/lang/reflect/Type;La5/z0;)Z

    const-class v1, Ljava/net/InetAddress;

    invoke-virtual {p0, v1, v0}, La5/g1;->k(Ljava/lang/reflect/Type;La5/z0;)Z

    const-class v1, Ljava/net/Inet4Address;

    invoke-virtual {p0, v1, v0}, La5/g1;->k(Ljava/lang/reflect/Type;La5/z0;)Z

    const-class v1, Ljava/net/Inet6Address;

    invoke-virtual {p0, v1, v0}, La5/g1;->k(Ljava/lang/reflect/Type;La5/z0;)Z

    const-class v1, Ljava/net/InetSocketAddress;

    invoke-virtual {p0, v1, v0}, La5/g1;->k(Ljava/lang/reflect/Type;La5/z0;)Z

    const-class v1, Ljava/io/File;

    invoke-virtual {p0, v1, v0}, La5/g1;->k(Ljava/lang/reflect/Type;La5/z0;)Z

    sget-object v0, La5/k;->a:La5/k;

    const-class v1, Ljava/lang/Appendable;

    invoke-virtual {p0, v1, v0}, La5/g1;->k(Ljava/lang/reflect/Type;La5/z0;)Z

    const-class v1, Ljava/lang/StringBuffer;

    invoke-virtual {p0, v1, v0}, La5/g1;->k(Ljava/lang/reflect/Type;La5/z0;)Z

    const-class v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1, v0}, La5/g1;->k(Ljava/lang/reflect/Type;La5/z0;)Z

    sget-object v0, La5/l1;->a:La5/l1;

    const-class v1, Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1, v0}, La5/g1;->k(Ljava/lang/reflect/Type;La5/z0;)Z

    const-class v1, Ljava/util/regex/Pattern;

    invoke-virtual {p0, v1, v0}, La5/g1;->k(Ljava/lang/reflect/Type;La5/z0;)Z

    const-class v1, Ljava/util/Locale;

    invoke-virtual {p0, v1, v0}, La5/g1;->k(Ljava/lang/reflect/Type;La5/z0;)Z

    const-class v1, Ljava/net/URI;

    invoke-virtual {p0, v1, v0}, La5/g1;->k(Ljava/lang/reflect/Type;La5/z0;)Z

    const-class v1, Ljava/net/URL;

    invoke-virtual {p0, v1, v0}, La5/g1;->k(Ljava/lang/reflect/Type;La5/z0;)Z

    const-class v1, Ljava/util/UUID;

    invoke-virtual {p0, v1, v0}, La5/g1;->k(Ljava/lang/reflect/Type;La5/z0;)Z

    sget-object v0, La5/m;->a:La5/m;

    const-class v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v1, v0}, La5/g1;->k(Ljava/lang/reflect/Type;La5/z0;)Z

    const-class v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0, v1, v0}, La5/g1;->k(Ljava/lang/reflect/Type;La5/z0;)Z

    const-class v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0, v1, v0}, La5/g1;->k(Ljava/lang/reflect/Type;La5/z0;)Z

    sget-object v1, La5/d1;->a:La5/d1;

    const-class v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0, v2, v1}, La5/g1;->k(Ljava/lang/reflect/Type;La5/z0;)Z

    const-class v2, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    invoke-virtual {p0, v2, v0}, La5/g1;->k(Ljava/lang/reflect/Type;La5/z0;)Z

    const-class v2, Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-virtual {p0, v2, v0}, La5/g1;->k(Ljava/lang/reflect/Type;La5/z0;)Z

    const-class v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0, v0, v1}, La5/g1;->k(Ljava/lang/reflect/Type;La5/z0;)Z

    const-class v0, Ljava/lang/ref/SoftReference;

    invoke-virtual {p0, v0, v1}, La5/g1;->k(Ljava/lang/reflect/Type;La5/z0;)Z

    const-class v0, Ljava/util/LinkedList;

    sget-object v1, La5/z;->a:La5/z;

    invoke-virtual {p0, v0, v1}, La5/g1;->k(Ljava/lang/reflect/Type;La5/z0;)Z

    return-void
.end method


# virtual methods
.method public b(La5/f1;)La5/z0;
    .locals 14

    iget-object v0, p1, La5/f1;->d:Lx4/d;

    iget-boolean v1, p0, La5/g1;->a:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-boolean v1, p0, La5/g1;->g:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const-class v3, Ljava/lang/Void;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Lx4/d;->serializer()Ljava/lang/Class;

    move-result-object v4

    if-eq v4, v3, :cond_1

    :try_start_0
    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, La5/z0;

    if-eqz v5, :cond_1

    check-cast v4, La5/z0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v4

    :catchall_0
    :cond_1
    invoke-interface {v0}, Lx4/d;->asm()Z

    move-result v4

    if-nez v4, :cond_2

    move v1, v2

    :cond_2
    if-eqz v1, :cond_5

    invoke-interface {v0}, Lx4/d;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v4

    array-length v5, v4

    move v6, v2

    :goto_1
    if-ge v6, v5, :cond_5

    aget-object v7, v4, v6

    sget-object v8, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNonStringValueAsString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    if-eq v8, v7, :cond_4

    sget-object v8, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingToString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    if-eq v8, v7, :cond_4

    sget-object v8, Lcom/alibaba/fastjson/serializer/SerializerFeature;->NotWriteDefaultValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    if-eq v8, v7, :cond_4

    sget-object v8, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserCompatible:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    if-ne v8, v7, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    move v1, v2

    :cond_5
    if-eqz v1, :cond_6

    invoke-interface {v0}, Lx4/d;->serialzeFilters()[Ljava/lang/Class;

    move-result-object v0

    array-length v0, v0

    if-eqz v0, :cond_6

    move v1, v2

    :cond_6
    iget-object v0, p1, La5/f1;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v4

    if-nez v4, :cond_7

    new-instance v0, La5/p0;

    invoke-direct {v0, p1}, La5/p0;-><init>(La5/f1;)V

    return-object v0

    :cond_7
    if-eqz v1, :cond_8

    iget-object v4, p0, La5/g1;->b:La5/a;

    iget-object v4, v4, La5/a;->a:Lcom/alibaba/fastjson/util/a;

    invoke-virtual {v4, v0}, Lcom/alibaba/fastjson/util/a;->c(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_9

    :cond_8
    const-class v4, Ljava/io/Serializable;

    if-eq v0, v4, :cond_9

    const-class v4, Ljava/lang/Object;

    if-ne v0, v4, :cond_a

    :cond_9
    move v1, v2

    :cond_a
    if-eqz v1, :cond_b

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/fastjson/util/b;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b

    move v1, v2

    :cond_b
    if-eqz v1, :cond_c

    iget-object v4, p1, La5/f1;->a:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->isInterface()Z

    move-result v4

    if-eqz v4, :cond_c

    move v1, v2

    :cond_c
    if-eqz v1, :cond_18

    iget-object v4, p1, La5/f1;->e:[Lcom/alibaba/fastjson/util/d;

    array-length v5, v4

    move v6, v2

    :goto_3
    if-ge v6, v5, :cond_18

    aget-object v7, v4, v6

    iget-object v8, v7, Lcom/alibaba/fastjson/util/d;->c:Ljava/lang/reflect/Field;

    if-eqz v8, :cond_d

    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    iget-object v9, v7, Lcom/alibaba/fastjson/util/d;->e:Ljava/lang/Class;

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d

    goto/16 :goto_7

    :cond_d
    iget-object v8, v7, Lcom/alibaba/fastjson/util/d;->b:Ljava/lang/reflect/Method;

    if-eqz v8, :cond_e

    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v9

    iget-object v10, v7, Lcom/alibaba/fastjson/util/d;->e:Ljava/lang/Class;

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_e

    goto/16 :goto_7

    :cond_e
    iget-object v9, v7, Lcom/alibaba/fastjson/util/d;->e:Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Class;->isEnum()Z

    move-result v9

    if-eqz v9, :cond_f

    iget-object v9, v7, Lcom/alibaba/fastjson/util/d;->e:Ljava/lang/Class;

    invoke-virtual {p0, v9}, La5/g1;->d(Ljava/lang/reflect/Type;)La5/z0;

    move-result-object v9

    sget-object v10, La5/e0;->b:La5/e0;

    if-eq v9, v10, :cond_f

    goto/16 :goto_7

    :cond_f
    invoke-virtual {v7}, Lcom/alibaba/fastjson/util/d;->e()Lx4/b;

    move-result-object v9

    if-nez v9, :cond_10

    goto/16 :goto_6

    :cond_10
    invoke-interface {v9}, Lx4/b;->format()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_11

    iget-object v7, v7, Lcom/alibaba/fastjson/util/d;->e:Ljava/lang/Class;

    const-class v11, Ljava/lang/String;

    if-ne v7, v11, :cond_19

    const-string v7, "trim"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_19

    :cond_11
    invoke-interface {v9}, Lx4/b;->name()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/alibaba/fastjson/util/b;->a(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_19

    invoke-interface {v9}, Lx4/b;->jsonDirect()Z

    move-result v7

    if-nez v7, :cond_19

    invoke-interface {v9}, Lx4/b;->serializeUsing()Ljava/lang/Class;

    move-result-object v7

    if-ne v7, v3, :cond_19

    invoke-interface {v9}, Lx4/b;->unwrapped()Z

    move-result v7

    if-eqz v7, :cond_12

    goto :goto_7

    :cond_12
    invoke-interface {v9}, Lx4/b;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v7

    array-length v10, v7

    move v11, v2

    :goto_4
    if-ge v11, v10, :cond_15

    aget-object v12, v7, v11

    sget-object v13, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNonStringValueAsString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    if-eq v13, v12, :cond_14

    sget-object v13, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingToString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    if-eq v13, v12, :cond_14

    sget-object v13, Lcom/alibaba/fastjson/serializer/SerializerFeature;->NotWriteDefaultValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    if-eq v13, v12, :cond_14

    sget-object v13, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserCompatible:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    if-eq v13, v12, :cond_14

    sget-object v13, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    if-ne v13, v12, :cond_13

    goto :goto_5

    :cond_13
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_14
    :goto_5
    move v1, v2

    :cond_15
    invoke-static {v8}, Lcom/alibaba/fastjson/util/TypeUtils;->n0(Ljava/lang/reflect/Method;)Z

    move-result v7

    if-nez v7, :cond_19

    invoke-static {v8}, Lcom/alibaba/fastjson/util/TypeUtils;->m0(Ljava/lang/reflect/Method;)Z

    move-result v7

    if-eqz v7, :cond_16

    goto :goto_7

    :cond_16
    invoke-interface {v9}, Lx4/b;->defaultValue()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_17

    const-string v7, ""

    invoke-interface {v9}, Lx4/b;->defaultValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_17

    goto :goto_7

    :cond_17
    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    :cond_18
    move v2, v1

    :cond_19
    :goto_7
    if-eqz v2, :cond_1b

    :try_start_1
    invoke-direct {p0, p1}, La5/g1;->a(La5/f1;)La5/p0;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassFormatError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_1b

    return-object v0

    :catchall_1
    move-exception p1

    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create asm serializer error, verson 1.2.83, class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Metaspace"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1a

    goto :goto_8

    :cond_1a
    throw v0

    :catch_1
    :cond_1b
    :goto_8
    new-instance v0, La5/p0;

    invoke-direct {v0, p1}, La5/p0;-><init>(La5/f1;)V

    return-object v0
.end method

.method public final c(Ljava/lang/Class;)La5/z0;
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->J(Ljava/lang/String;)J

    move-result-wide v1

    iget-object v3, p0, La5/g1;->h:[J

    invoke-static {v3, v1, v2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v1

    if-gez v1, :cond_1

    iget-object v0, p0, La5/g1;->d:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    iget-boolean v1, p0, La5/g1;->g:Z

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->d(Ljava/lang/Class;Ljava/util/Map;Lcom/alibaba/fastjson/PropertyNamingStrategy;Z)La5/f1;

    move-result-object v0

    iget-object v1, v0, La5/f1;->e:[Lcom/alibaba/fastjson/util/d;

    array-length v1, v1

    if-nez v1, :cond_0

    const-class v1, Ljava/lang/Iterable;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, La5/w0;->b:La5/w0;

    return-object p1

    :cond_0
    invoke-virtual {p0, v0}, La5/g1;->b(La5/f1;)La5/z0;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not support class : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final d(Ljava/lang/reflect/Type;)La5/z0;
    .locals 2

    invoke-static {p1}, Lcom/alibaba/fastjson/a;->getMixInAnnotations(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, La5/g1;->e:Lcom/alibaba/fastjson/util/g;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, La5/z0;

    return-object p1

    :cond_0
    iget-object v1, p0, La5/g1;->f:Lcom/alibaba/fastjson/util/g;

    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson/util/g;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, La5/z0;

    return-object p1
.end method

.method protected e()La5/z0;
    .locals 1

    sget-object v0, La5/e0;->b:La5/e0;

    return-object v0
.end method

.method public h(Ljava/lang/Class;)La5/z0;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, La5/g1;->i(Ljava/lang/Class;Z)La5/z0;

    move-result-object p1

    return-object p1
.end method

.method public i(Ljava/lang/Class;Z)La5/z0;
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "java.util.concurrent.atomic.DoubleAdder"

    const-string v3, "java.util.concurrent.atomic.LongAdder"

    const/4 v4, 0x1

    const-class v5, La5/n;

    invoke-virtual/range {p0 .. p1}, La5/g1;->d(Ljava/lang/reflect/Type;)La5/z0;

    move-result-object v6

    if-eqz v6, :cond_0

    return-object v6

    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alibaba/fastjson/util/l;->a(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_1
    invoke-virtual/range {p0 .. p1}, La5/g1;->d(Ljava/lang/reflect/Type;)La5/z0;

    move-result-object v6

    if-nez v6, :cond_3

    const-class v7, Lcom/alibaba/fastjson/a;

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    if-eq v7, v8, :cond_3

    :try_start_1
    invoke-static {v5, v7}, Lcom/alibaba/fastjson/util/l;->a(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    :cond_2
    invoke-virtual/range {p0 .. p1}, La5/g1;->d(Ljava/lang/reflect/Type;)La5/z0;

    move-result-object v6

    :cond_3
    iget-object v5, v0, La5/g1;->i:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x0

    if-nez v7, :cond_3e

    if-nez v6, :cond_3d

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-class v7, Ljava/util/Map;

    invoke-virtual {v7, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_4

    sget-object v2, La5/v0;->j:La5/v0;

    invoke-virtual {v0, v1, v2}, La5/g1;->k(Ljava/lang/reflect/Type;La5/z0;)Z

    :goto_2
    move-object v6, v2

    goto/16 :goto_11

    :cond_4
    const-class v7, Ljava/util/List;

    invoke-virtual {v7, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_5

    sget-object v2, La5/t0;->a:La5/t0;

    invoke-virtual {v0, v1, v2}, La5/g1;->k(Ljava/lang/reflect/Type;La5/z0;)Z

    goto :goto_2

    :cond_5
    const-class v7, Ljava/util/Collection;

    invoke-virtual {v7, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_6

    sget-object v2, La5/z;->a:La5/z;

    invoke-virtual {v0, v1, v2}, La5/g1;->k(Ljava/lang/reflect/Type;La5/z0;)Z

    goto :goto_2

    :cond_6
    const-class v7, Ljava/util/Date;

    invoke-virtual {v7, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_7

    sget-object v2, La5/c0;->a:La5/c0;

    invoke-virtual {v0, v1, v2}, La5/g1;->k(Ljava/lang/reflect/Type;La5/z0;)Z

    goto :goto_2

    :cond_7
    const-class v7, Lcom/alibaba/fastjson/b;

    invoke-virtual {v7, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_8

    sget-object v2, La5/k0;->a:La5/k0;

    invoke-virtual {v0, v1, v2}, La5/g1;->k(Ljava/lang/reflect/Type;La5/z0;)Z

    goto :goto_2

    :cond_8
    const-class v7, La5/m0;

    invoke-virtual {v7, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_9

    sget-object v2, La5/n0;->a:La5/n0;

    invoke-virtual {v0, v1, v2}, La5/g1;->k(Ljava/lang/reflect/Type;La5/z0;)Z

    goto :goto_2

    :cond_9
    const-class v7, Lcom/alibaba/fastjson/e;

    invoke-virtual {v7, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_a

    sget-object v2, La5/w0;->b:La5/w0;

    invoke-virtual {v0, v1, v2}, La5/g1;->k(Ljava/lang/reflect/Type;La5/z0;)Z

    goto :goto_2

    :cond_a
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->isEnum()Z

    move-result v7

    const-class v9, Lx4/d;

    if-eqz v7, :cond_10

    invoke-static/range {p1 .. p1}, Lcom/alibaba/fastjson/a;->getMixInAnnotations(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    if-eqz v2, :cond_b

    invoke-static {v2, v9}, Lcom/alibaba/fastjson/util/TypeUtils;->N(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lx4/d;

    goto :goto_3

    :cond_b
    invoke-static {v1, v9}, Lcom/alibaba/fastjson/util/TypeUtils;->N(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lx4/d;

    :goto_3
    if-eqz v3, :cond_c

    invoke-interface {v3}, Lx4/d;->serializeEnumAsJavaBean()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual/range {p0 .. p1}, La5/g1;->c(Ljava/lang/Class;)La5/z0;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, La5/g1;->k(Ljava/lang/reflect/Type;La5/z0;)Z

    goto/16 :goto_2

    :cond_c
    if-eqz v2, :cond_d

    invoke-static {v2}, La5/g1;->f(Ljava/lang/Class;)Ljava/lang/reflect/Member;

    move-result-object v2

    if-eqz v2, :cond_e

    :try_start_2
    instance-of v3, v2, Ljava/lang/reflect/Method;

    if-eqz v3, :cond_e

    check-cast v2, Ljava/lang/reflect/Method;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :cond_d
    invoke-static/range {p1 .. p1}, La5/g1;->f(Ljava/lang/Class;)Ljava/lang/reflect/Member;

    move-result-object v8

    :catch_2
    :cond_e
    :goto_4
    if-eqz v8, :cond_f

    new-instance v2, La5/e0;

    invoke-direct {v2, v8}, La5/e0;-><init>(Ljava/lang/reflect/Member;)V

    invoke-virtual {v0, v1, v2}, La5/g1;->k(Ljava/lang/reflect/Type;La5/z0;)Z

    goto/16 :goto_2

    :cond_f
    invoke-virtual/range {p0 .. p0}, La5/g1;->e()La5/z0;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, La5/g1;->k(Ljava/lang/reflect/Type;La5/z0;)Z

    goto/16 :goto_2

    :cond_10
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v7

    if-eqz v7, :cond_12

    invoke-virtual {v7}, Ljava/lang/Class;->isEnum()Z

    move-result v10

    if-eqz v10, :cond_12

    invoke-static {v7, v9}, Lcom/alibaba/fastjson/util/TypeUtils;->N(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lx4/d;

    if-eqz v2, :cond_11

    invoke-interface {v2}, Lx4/d;->serializeEnumAsJavaBean()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual/range {p0 .. p1}, La5/g1;->c(Ljava/lang/Class;)La5/z0;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, La5/g1;->k(Ljava/lang/reflect/Type;La5/z0;)Z

    goto/16 :goto_2

    :cond_11
    invoke-virtual/range {p0 .. p0}, La5/g1;->e()La5/z0;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, La5/g1;->k(Ljava/lang/reflect/Type;La5/z0;)Z

    goto/16 :goto_2

    :cond_12
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->isArray()Z

    move-result v7

    if-eqz v7, :cond_13

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, La5/g1;->h(Ljava/lang/Class;)La5/z0;

    move-result-object v3

    new-instance v4, La5/l;

    invoke-direct {v4, v2, v3}, La5/l;-><init>(Ljava/lang/Class;La5/z0;)V

    invoke-virtual {v0, v1, v4}, La5/g1;->k(Ljava/lang/reflect/Type;La5/z0;)Z

    move-object v6, v4

    goto/16 :goto_11

    :cond_13
    const-class v7, Ljava/lang/Throwable;

    invoke-virtual {v7, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_14

    iget-object v2, v0, La5/g1;->d:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    invoke-static {v1, v8, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->c(Ljava/lang/Class;Ljava/util/Map;Lcom/alibaba/fastjson/PropertyNamingStrategy;)La5/f1;

    move-result-object v2

    iget v3, v2, La5/f1;->g:I

    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v4, v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v3, v4

    iput v3, v2, La5/f1;->g:I

    new-instance v3, La5/p0;

    invoke-direct {v3, v2}, La5/p0;-><init>(La5/f1;)V

    invoke-virtual {v0, v1, v3}, La5/g1;->k(Ljava/lang/reflect/Type;La5/z0;)Z

    move-object v6, v3

    goto/16 :goto_11

    :cond_14
    const-class v7, Ljava/util/TimeZone;

    invoke-virtual {v7, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-nez v7, :cond_3b

    const-class v7, Ljava/util/Map$Entry;

    invoke-virtual {v7, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_15

    goto/16 :goto_10

    :cond_15
    const-class v7, Ljava/lang/Appendable;

    invoke-virtual {v7, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_16

    sget-object v2, La5/k;->a:La5/k;

    invoke-virtual {v0, v1, v2}, La5/g1;->k(Ljava/lang/reflect/Type;La5/z0;)Z

    goto/16 :goto_2

    :cond_16
    const-class v7, Ljava/nio/charset/Charset;

    invoke-virtual {v7, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_17

    sget-object v2, La5/l1;->a:La5/l1;

    invoke-virtual {v0, v1, v2}, La5/g1;->k(Ljava/lang/reflect/Type;La5/z0;)Z

    goto/16 :goto_2

    :cond_17
    const-class v7, Ljava/util/Enumeration;

    invoke-virtual {v7, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_18

    sget-object v2, La5/f0;->a:La5/f0;

    invoke-virtual {v0, v1, v2}, La5/g1;->k(Ljava/lang/reflect/Type;La5/z0;)Z

    goto/16 :goto_2

    :cond_18
    const-class v7, Ljava/util/Calendar;

    invoke-virtual {v7, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-nez v7, :cond_3a

    const-class v7, Ljavax/xml/datatype/XMLGregorianCalendar;

    invoke-virtual {v7, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_19

    goto/16 :goto_f

    :cond_19
    invoke-static/range {p1 .. p1}, Lcom/alibaba/fastjson/util/TypeUtils;->o0(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_1a

    sget-object v2, La5/y;->a:La5/y;

    invoke-virtual {v0, v1, v2}, La5/g1;->k(Ljava/lang/reflect/Type;La5/z0;)Z

    goto/16 :goto_2

    :cond_1a
    invoke-static/range {p1 .. p1}, Lcom/alibaba/fastjson/util/TypeUtils;->w0(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_1b

    sget-object v2, La5/l1;->a:La5/l1;

    invoke-virtual {v0, v1, v2}, La5/g1;->k(Ljava/lang/reflect/Type;La5/z0;)Z

    goto/16 :goto_2

    :cond_1b
    const-class v7, Ljava/util/Iterator;

    invoke-virtual {v7, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_1c

    sget-object v2, La5/w0;->b:La5/w0;

    invoke-virtual {v0, v1, v2}, La5/g1;->k(Ljava/lang/reflect/Type;La5/z0;)Z

    goto/16 :goto_2

    :cond_1c
    const-class v7, Lorg/w3c/dom/Node;

    invoke-virtual {v7, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_1d

    sget-object v2, La5/w0;->b:La5/w0;

    invoke-virtual {v0, v1, v2}, La5/g1;->k(Ljava/lang/reflect/Type;La5/z0;)Z

    goto/16 :goto_2

    :cond_1d
    const-string v7, "java.awt."

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    const/4 v9, 0x4

    const/4 v10, 0x0

    if-eqz v7, :cond_1f

    invoke-static/range {p1 .. p1}, La5/o;->j(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_1f

    sget-boolean v7, La5/g1;->k:Z

    if-nez v7, :cond_1f

    :try_start_3
    const-string v7, "java.awt.Color"

    const-string v11, "java.awt.Font"

    const-string v12, "java.awt.Point"

    const-string v13, "java.awt.Rectangle"

    filled-new-array {v7, v11, v12, v13}, [Ljava/lang/String;

    move-result-object v7

    move v11, v10

    :goto_5
    if-ge v11, v9, :cond_1f

    aget-object v12, v7, v11

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1e

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    sget-object v6, La5/o;->a:La5/o;

    invoke-virtual {v0, v7, v6}, La5/g1;->k(Ljava/lang/reflect/Type;La5/z0;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-object v6

    :cond_1e
    add-int/2addr v11, v4

    goto :goto_5

    :catchall_0
    sput-boolean v4, La5/g1;->k:Z

    :cond_1f
    sget-boolean v7, La5/g1;->l:Z

    const/16 v11, 0xb

    const/4 v12, 0x2

    if-nez v7, :cond_26

    const-string v7, "java.time."

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    const-string v13, "java.util.Optional"

    if-nez v7, :cond_20

    invoke-virtual {v5, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_20

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_20

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_26

    :cond_20
    :try_start_4
    const-string v14, "java.time.LocalDateTime"

    const-string v15, "java.time.LocalDate"

    const-string v16, "java.time.LocalTime"

    const-string v17, "java.time.ZonedDateTime"

    const-string v18, "java.time.OffsetDateTime"

    const-string v19, "java.time.OffsetTime"

    const-string v20, "java.time.ZoneOffset"

    const-string v21, "java.time.ZoneRegion"

    const-string v22, "java.time.Period"

    const-string v23, "java.time.Duration"

    const-string v24, "java.time.Instant"

    filled-new-array/range {v14 .. v24}, [Ljava/lang/String;

    move-result-object v7

    move v14, v10

    :goto_6
    if-ge v14, v11, :cond_22

    aget-object v15, v7, v14

    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_21

    invoke-static {v15}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sget-object v6, Lz4/y1;->a:Lz4/y1;

    invoke-virtual {v0, v2, v6}, La5/g1;->k(Ljava/lang/reflect/Type;La5/z0;)Z

    return-object v6

    :cond_21
    add-int/2addr v14, v4

    goto :goto_6

    :cond_22
    const-string v7, "java.util.OptionalDouble"

    const-string v14, "java.util.OptionalInt"

    const-string v15, "java.util.OptionalLong"

    filled-new-array {v13, v7, v14, v15}, [Ljava/lang/String;

    move-result-object v7

    move v13, v10

    :goto_7
    if-ge v13, v9, :cond_24

    aget-object v14, v7, v13

    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_23

    invoke-static {v14}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sget-object v6, Lz4/d3;->a:Lz4/d3;

    invoke-virtual {v0, v2, v6}, La5/g1;->k(Ljava/lang/reflect/Type;La5/z0;)Z

    return-object v6

    :cond_23
    add-int/2addr v13, v4

    goto :goto_7

    :cond_24
    filled-new-array {v3, v2}, [Ljava/lang/String;

    move-result-object v2

    move v3, v10

    :goto_8
    if-ge v3, v12, :cond_26

    aget-object v7, v2, v3

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_25

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sget-object v6, La5/h;->a:La5/h;

    invoke-virtual {v0, v2, v6}, La5/g1;->k(Ljava/lang/reflect/Type;La5/z0;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-object v6

    :cond_25
    add-int/2addr v3, v4

    goto :goto_8

    :catchall_1
    sput-boolean v4, La5/g1;->l:Z

    :cond_26
    sget-boolean v2, La5/g1;->m:Z

    if-nez v2, :cond_28

    const-string v2, "oracle.sql."

    invoke-virtual {v5, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_28

    :try_start_5
    const-string v2, "oracle.sql.DATE"

    const-string v3, "oracle.sql.TIMESTAMP"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    move v3, v10

    :goto_9
    if-ge v3, v12, :cond_28

    aget-object v7, v2, v3

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_27

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sget-object v6, La5/c0;->a:La5/c0;

    invoke-virtual {v0, v2, v6}, La5/g1;->k(Ljava/lang/reflect/Type;La5/z0;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    return-object v6

    :cond_27
    add-int/2addr v3, v4

    goto :goto_9

    :catchall_2
    sput-boolean v4, La5/g1;->m:Z

    :cond_28
    sget-boolean v2, La5/g1;->n:Z

    if-nez v2, :cond_29

    const-string v2, "springfox.documentation.spring.web.json.Json"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    :try_start_6
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sget-object v6, Le5/a;->a:Le5/a;

    invoke-virtual {v0, v2, v6}, La5/g1;->k(Ljava/lang/reflect/Type;La5/z0;)Z
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_3

    return-object v6

    :catch_3
    sput-boolean v4, La5/g1;->n:Z

    :cond_29
    sget-boolean v2, La5/g1;->o:Z

    if-nez v2, :cond_2b

    const-string v2, "com.google.common.collect."

    invoke-virtual {v5, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2b

    :try_start_7
    const-string v2, "com.google.common.collect.HashMultimap"

    const-string v3, "com.google.common.collect.LinkedListMultimap"

    const-string v7, "com.google.common.collect.LinkedHashMultimap"

    const-string v9, "com.google.common.collect.ArrayListMultimap"

    const-string v13, "com.google.common.collect.TreeMultimap"

    filled-new-array {v2, v3, v7, v9, v13}, [Ljava/lang/String;

    move-result-object v2

    move v3, v10

    :goto_a
    const/4 v7, 0x5

    if-ge v3, v7, :cond_2b

    aget-object v7, v2, v3

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2a

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sget-object v6, La5/i0;->a:La5/i0;

    invoke-virtual {v0, v2, v6}, La5/g1;->k(Ljava/lang/reflect/Type;La5/z0;)Z
    :try_end_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_7} :catch_4

    return-object v6

    :cond_2a
    add-int/2addr v3, v4

    goto :goto_a

    :catch_4
    sput-boolean v4, La5/g1;->o:Z

    :cond_2b
    const-string v2, "net.sf.json.JSONNull"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    sget-object v2, La5/w0;->b:La5/w0;

    invoke-virtual {v0, v1, v2}, La5/g1;->k(Ljava/lang/reflect/Type;La5/z0;)Z

    return-object v2

    :cond_2c
    const-string v2, "org.json.JSONObject"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    sget-object v2, La5/l0;->a:La5/l0;

    invoke-virtual {v0, v1, v2}, La5/g1;->k(Ljava/lang/reflect/Type;La5/z0;)Z

    return-object v2

    :cond_2d
    sget-boolean v2, La5/g1;->p:Z

    if-nez v2, :cond_2f

    const-string v2, "org.joda."

    invoke-virtual {v5, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2f

    :try_start_8
    const-string v13, "org.joda.time.LocalDate"

    const-string v14, "org.joda.time.LocalDateTime"

    const-string v15, "org.joda.time.LocalTime"

    const-string v16, "org.joda.time.Instant"

    const-string v17, "org.joda.time.DateTime"

    const-string v18, "org.joda.time.Period"

    const-string v19, "org.joda.time.Duration"

    const-string v20, "org.joda.time.DateTimeZone"

    const-string v21, "org.joda.time.UTCDateTimeZone"

    const-string v22, "org.joda.time.tz.CachedDateTimeZone"

    const-string v23, "org.joda.time.tz.FixedDateTimeZone"

    filled-new-array/range {v13 .. v23}, [Ljava/lang/String;

    move-result-object v2

    move v3, v10

    :goto_b
    if-ge v3, v11, :cond_2f

    aget-object v7, v2, v3

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2e

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sget-object v6, La5/q0;->a:La5/q0;

    invoke-virtual {v0, v2, v6}, La5/g1;->k(Ljava/lang/reflect/Type;La5/z0;)Z
    :try_end_8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_8} :catch_5

    return-object v6

    :cond_2e
    add-int/2addr v3, v4

    goto :goto_b

    :catch_5
    sput-boolean v4, La5/g1;->p:Z

    :cond_2f
    const-string v2, "java.nio.HeapByteBuffer"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    sget-object v2, La5/u;->a:La5/u;

    invoke-virtual {v0, v1, v2}, La5/g1;->k(Ljava/lang/reflect/Type;La5/z0;)Z

    return-object v2

    :cond_30
    const-string v2, "org.javamoney.moneta.Money"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    sget-object v2, Ld5/a;->a:Ld5/a;

    invoke-virtual {v0, v1, v2}, La5/g1;->k(Ljava/lang/reflect/Type;La5/z0;)Z

    return-object v2

    :cond_31
    const-string v2, "com.google.protobuf.Descriptors$FieldDescriptor"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    sget-object v2, La5/l1;->a:La5/l1;

    invoke-virtual {v0, v1, v2}, La5/g1;->k(Ljava/lang/reflect/Type;La5/z0;)Z

    return-object v2

    :cond_32
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v2

    array-length v3, v2

    if-ne v3, v4, :cond_33

    aget-object v3, v2, v10

    invoke-virtual {v3}, Ljava/lang/Class;->isAnnotation()Z

    move-result v3

    if-eqz v3, :cond_33

    sget-object v2, La5/j;->e:La5/j;

    invoke-virtual {v0, v1, v2}, La5/g1;->k(Ljava/lang/reflect/Type;La5/z0;)Z

    sget-object v1, La5/j;->e:La5/j;

    return-object v1

    :cond_33
    invoke-static/range {p1 .. p1}, Lcom/alibaba/fastjson/util/TypeUtils;->x0(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, La5/g1;->h(Ljava/lang/Class;)La5/z0;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, La5/g1;->k(Ljava/lang/reflect/Type;La5/z0;)Z

    return-object v2

    :cond_34
    invoke-static/range {p1 .. p1}, Ljava/lang/reflect/Proxy;->isProxyClass(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_39

    array-length v3, v2

    if-ne v3, v12, :cond_35

    aget-object v8, v2, v4

    goto :goto_e

    :cond_35
    array-length v3, v2

    move-object v5, v8

    :goto_c
    if-ge v10, v3, :cond_38

    aget-object v7, v2, v10

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v11, "org.springframework.aop."

    invoke-virtual {v9, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_36

    goto :goto_d

    :cond_36
    if-eqz v5, :cond_37

    goto :goto_e

    :cond_37
    move-object v5, v7

    :goto_d
    add-int/2addr v10, v4

    goto :goto_c

    :cond_38
    move-object v8, v5

    :goto_e
    if-eqz v8, :cond_39

    invoke-virtual {v0, v8}, La5/g1;->h(Ljava/lang/Class;)La5/z0;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, La5/g1;->k(Ljava/lang/reflect/Type;La5/z0;)Z

    return-object v2

    :cond_39
    if-eqz p2, :cond_3c

    invoke-virtual/range {p0 .. p1}, La5/g1;->c(Ljava/lang/Class;)La5/z0;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, La5/g1;->k(Ljava/lang/reflect/Type;La5/z0;)Z

    goto/16 :goto_2

    :cond_3a
    :goto_f
    sget-object v2, La5/v;->b:La5/v;

    invoke-virtual {v0, v1, v2}, La5/g1;->k(Ljava/lang/reflect/Type;La5/z0;)Z

    goto/16 :goto_2

    :cond_3b
    :goto_10
    sget-object v2, La5/w0;->b:La5/w0;

    invoke-virtual {v0, v1, v2}, La5/g1;->k(Ljava/lang/reflect/Type;La5/z0;)Z

    goto/16 :goto_2

    :cond_3c
    :goto_11
    if-nez v6, :cond_3d

    invoke-virtual/range {p0 .. p1}, La5/g1;->d(Ljava/lang/reflect/Type;)La5/z0;

    move-result-object v6

    :cond_3d
    return-object v6

    :cond_3e
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    throw v8
.end method

.method public k(Ljava/lang/reflect/Type;La5/z0;)Z
    .locals 3

    invoke-static {p1}, Lcom/alibaba/fastjson/a;->getMixInAnnotations(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, La5/g1;->f:Lcom/alibaba/fastjson/util/g;

    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/util/g;

    if-nez v1, :cond_0

    new-instance v1, Lcom/alibaba/fastjson/util/g;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/util/g;-><init>(I)V

    iget-object v2, p0, La5/g1;->f:Lcom/alibaba/fastjson/util/g;

    invoke-virtual {v2, p1, v1}, Lcom/alibaba/fastjson/util/g;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {v1, v0, p2}, Lcom/alibaba/fastjson/util/g;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    iget-object v0, p0, La5/g1;->e:Lcom/alibaba/fastjson/util/g;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson/util/g;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public l(Z)V
    .locals 1

    sget-boolean v0, Lcom/alibaba/fastjson/util/b;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, La5/g1;->a:Z

    return-void
.end method
