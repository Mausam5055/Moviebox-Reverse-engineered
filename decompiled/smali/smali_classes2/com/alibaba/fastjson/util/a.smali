.class public Lcom/alibaba/fastjson/util/a;
.super Ljava/lang/ClassLoader;


# static fields
.field private static a:Ljava/security/ProtectionDomain;

.field private static b:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/util/a;->b:Ljava/util/Map;

    new-instance v0, Lcom/alibaba/fastjson/util/a$a;

    invoke-direct {v0}, Lcom/alibaba/fastjson/util/a$a;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/ProtectionDomain;

    sput-object v0, Lcom/alibaba/fastjson/util/a;->a:Ljava/security/ProtectionDomain;

    const/16 v0, 0x38

    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Lcom/alibaba/fastjson/a;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Lcom/alibaba/fastjson/JSONObject;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-class v2, Lcom/alibaba/fastjson/JSONArray;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-class v2, Lcom/alibaba/fastjson/JSONPath;

    const/4 v5, 0x3

    aput-object v2, v1, v5

    const-class v2, Lcom/alibaba/fastjson/b;

    const/4 v5, 0x4

    aput-object v2, v1, v5

    const-class v2, Lcom/alibaba/fastjson/JSONException;

    const/4 v5, 0x5

    aput-object v2, v1, v5

    const-class v2, Lcom/alibaba/fastjson/JSONPathException;

    const/4 v5, 0x6

    aput-object v2, v1, v5

    const-class v2, Lcom/alibaba/fastjson/d;

    const/4 v5, 0x7

    aput-object v2, v1, v5

    const-class v2, Lcom/alibaba/fastjson/e;

    const/16 v5, 0x8

    aput-object v2, v1, v5

    const-class v2, Lcom/alibaba/fastjson/f;

    const/16 v5, 0x9

    aput-object v2, v1, v5

    const-class v2, Lcom/alibaba/fastjson/g;

    const/16 v5, 0xa

    aput-object v2, v1, v5

    const-class v2, Lcom/alibaba/fastjson/util/d;

    const/16 v5, 0xb

    aput-object v2, v1, v5

    const-class v2, Lcom/alibaba/fastjson/util/TypeUtils;

    const/16 v5, 0xc

    aput-object v2, v1, v5

    const-class v2, Lcom/alibaba/fastjson/util/f;

    const/16 v5, 0xd

    aput-object v2, v1, v5

    const-class v2, Lcom/alibaba/fastjson/util/g;

    const/16 v5, 0xe

    aput-object v2, v1, v5

    const-class v2, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;

    const/16 v5, 0xf

    aput-object v2, v1, v5

    const-class v2, Lcom/alibaba/fastjson/util/h;

    const/16 v5, 0x10

    aput-object v2, v1, v5

    const-class v2, La5/z0;

    const/16 v5, 0x11

    aput-object v2, v1, v5

    const-class v2, La5/p0;

    const/16 v5, 0x12

    aput-object v2, v1, v5

    const-class v2, La5/i1;

    const/16 v5, 0x13

    aput-object v2, v1, v5

    const-class v2, La5/f1;

    const/16 v5, 0x14

    aput-object v2, v1, v5

    const-class v2, La5/o0;

    const/16 v5, 0x15

    aput-object v2, v1, v5

    const-class v2, La5/j1;

    const/16 v5, 0x16

    aput-object v2, v1, v5

    const-class v2, La5/h1;

    const/16 v5, 0x17

    aput-object v2, v1, v5

    const-class v2, La5/s0;

    const/16 v5, 0x18

    aput-object v2, v1, v5

    const-class v2, La5/r0;

    const/16 v5, 0x19

    aput-object v2, v1, v5

    const-class v2, La5/b0;

    const/16 v5, 0x1a

    aput-object v2, v1, v5

    const-class v2, La5/i;

    const/16 v5, 0x1b

    aput-object v2, v1, v5

    const-class v2, La5/q;

    const/16 v5, 0x1c

    aput-object v2, v1, v5

    const-class v2, La5/x0;

    const/16 v5, 0x1d

    aput-object v2, v1, v5

    const-class v2, La5/b1;

    const/16 v5, 0x1e

    aput-object v2, v1, v5

    const-class v2, La5/c1;

    const/16 v5, 0x1f

    aput-object v2, v1, v5

    const-class v2, La5/m1;

    const/16 v5, 0x20

    aput-object v2, v1, v5

    const-class v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/16 v5, 0x21

    aput-object v2, v1, v5

    const-class v2, La5/a0;

    const/16 v5, 0x22

    aput-object v2, v1, v5

    const-class v2, La5/e1;

    const/16 v5, 0x23

    aput-object v2, v1, v5

    const-class v2, La5/g1;

    const/16 v5, 0x24

    aput-object v2, v1, v5

    const-class v2, Lz4/o;

    const/16 v5, 0x25

    aput-object v2, v1, v5

    const-class v2, Ly4/h;

    const/16 v5, 0x26

    aput-object v2, v1, v5

    const-class v2, Ly4/a;

    const/16 v5, 0x27

    aput-object v2, v1, v5

    const-class v2, Ly4/b;

    const/16 v5, 0x28

    aput-object v2, v1, v5

    const-class v2, Ly4/c;

    const/16 v5, 0x29

    aput-object v2, v1, v5

    const-class v2, Ly4/g;

    const/16 v5, 0x2a

    aput-object v2, v1, v5

    const-class v2, Ly4/f;

    const/16 v5, 0x2b

    aput-object v2, v1, v5

    const-class v2, Ly4/i;

    const/16 v5, 0x2c

    aput-object v2, v1, v5

    const-class v2, Lcom/alibaba/fastjson/parser/Feature;

    const/16 v5, 0x2d

    aput-object v2, v1, v5

    const-class v2, Ly4/e;

    const/16 v5, 0x2e

    aput-object v2, v1, v5

    const-class v2, Ly4/d;

    const/16 v5, 0x2f

    aput-object v2, v1, v5

    const-class v2, Lz4/d;

    const/16 v5, 0x30

    aput-object v2, v1, v5

    const-class v2, Lz4/b2;

    const/16 v5, 0x31

    aput-object v2, v1, v5

    const-class v2, Lz4/j;

    const/16 v5, 0x32

    aput-object v2, v1, v5

    const-class v2, Lz4/i;

    const/16 v5, 0x33

    aput-object v2, v1, v5

    const-class v2, Lz4/k;

    const/16 v5, 0x34

    aput-object v2, v1, v5

    const-class v2, La5/p;

    const/16 v5, 0x35

    aput-object v2, v1, v5

    const-class v2, Lz4/l;

    const/16 v5, 0x36

    aput-object v2, v1, v5

    const-class v2, Lz4/f;

    const/16 v5, 0x37

    aput-object v2, v1, v5

    :goto_0
    if-ge v3, v0, :cond_0

    aget-object v2, v1, v3

    sget-object v5, Lcom/alibaba/fastjson/util/a;->b:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/2addr v3, v4

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/alibaba/fastjson/util/a;->b()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/ClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/ClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    return-void
.end method

.method static b()Ljava/lang/ClassLoader;
    .locals 3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Lcom/alibaba/fastjson/a;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;[BII)Ljava/lang/Class;
    .locals 6

    sget-object v5, Lcom/alibaba/fastjson/util/a;->a:Ljava/security/ProtectionDomain;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Ljava/lang/ClassLoader;->defineClass(Ljava/lang/String;[BIILjava/security/ProtectionDomain;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/Class;)Z
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    move-object v1, p0

    :goto_0
    if-eqz v1, :cond_2

    if-ne v1, p1, :cond_1

    return v0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method protected loadClass(Ljava/lang/String;Z)Ljava/lang/Class;
    .locals 1

    sget-object v0, Lcom/alibaba/fastjson/util/a;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method
