.class Lcom/bytedance/sdk/component/Sj/Jcg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/Sj/zR$Sj;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/Sj/Jcg$Sj;
    }
.end annotation


# instance fields
.field private final Dq:Z

.field private final EjP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/component/Sj/EjP$sP;",
            ">;"
        }
    .end annotation
.end field

.field private final HiB:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/Sj/uvD;",
            ">;"
        }
    .end annotation
.end field

.field private final Jcg:Lcom/bytedance/sdk/component/Sj/Fmk;

.field private final Sj:Lcom/bytedance/sdk/component/Sj/Dq;

.field private final TEQ:Lcom/bytedance/sdk/component/Sj/Sj;

.field private final TKC:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/component/Sj/sP;",
            ">;"
        }
    .end annotation
.end field

.field private final sP:Lcom/bytedance/sdk/component/Sj/sU;

.field private final uA:Z

.field private final vS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/bytedance/sdk/component/Sj/EjP;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/Sj/TEQ;Lcom/bytedance/sdk/component/Sj/Sj;Lcom/bytedance/sdk/component/Sj/dx;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/Sj/Jcg;->TKC:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/Sj/Jcg;->EjP:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/Sj/Jcg;->HiB:Ljava/util/List;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/Sj/Jcg;->vS:Ljava/util/Set;

    iput-object p2, p0, Lcom/bytedance/sdk/component/Sj/Jcg;->TEQ:Lcom/bytedance/sdk/component/Sj/Sj;

    iget-object p2, p1, Lcom/bytedance/sdk/component/Sj/TEQ;->EjP:Lcom/bytedance/sdk/component/Sj/Dq;

    iput-object p2, p0, Lcom/bytedance/sdk/component/Sj/Jcg;->Sj:Lcom/bytedance/sdk/component/Sj/Dq;

    new-instance p2, Lcom/bytedance/sdk/component/Sj/sU;

    iget-object v0, p1, Lcom/bytedance/sdk/component/Sj/TEQ;->aa:Ljava/util/Set;

    iget-object v1, p1, Lcom/bytedance/sdk/component/Sj/TEQ;->Fmk:Ljava/util/Set;

    invoke-direct {p2, p3, v0, v1}, Lcom/bytedance/sdk/component/Sj/sU;-><init>(Lcom/bytedance/sdk/component/Sj/dx;Ljava/util/Set;Ljava/util/Set;)V

    iput-object p2, p0, Lcom/bytedance/sdk/component/Sj/Jcg;->sP:Lcom/bytedance/sdk/component/Sj/sU;

    invoke-virtual {p2, p0}, Lcom/bytedance/sdk/component/Sj/sU;->Sj(Lcom/bytedance/sdk/component/Sj/zR$Sj;)V

    iget-object p3, p1, Lcom/bytedance/sdk/component/Sj/TEQ;->uvD:Lcom/bytedance/sdk/component/Sj/Ym$Sj;

    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/component/Sj/sU;->Sj(Lcom/bytedance/sdk/component/Sj/Ym$Sj;)V

    iget-object p2, p1, Lcom/bytedance/sdk/component/Sj/TEQ;->uA:Lcom/bytedance/sdk/component/Sj/Fmk;

    iput-object p2, p0, Lcom/bytedance/sdk/component/Sj/Jcg;->Jcg:Lcom/bytedance/sdk/component/Sj/Fmk;

    iget-boolean p2, p1, Lcom/bytedance/sdk/component/Sj/TEQ;->Dq:Z

    iput-boolean p2, p0, Lcom/bytedance/sdk/component/Sj/Jcg;->Dq:Z

    iget-boolean p1, p1, Lcom/bytedance/sdk/component/Sj/TEQ;->Zq:Z

    iput-boolean p1, p0, Lcom/bytedance/sdk/component/Sj/Jcg;->uA:Z

    return-void
.end method

.method private Sj(Lcom/bytedance/sdk/component/Sj/uvD;Lcom/bytedance/sdk/component/Sj/EjP;Lcom/bytedance/sdk/component/Sj/vS;)Lcom/bytedance/sdk/component/Sj/Jcg$Sj;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/Sj/Jcg;->vS:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p1, Lcom/bytedance/sdk/component/Sj/uvD;->HiB:Ljava/lang/String;

    invoke-direct {p0, v0, p2}, Lcom/bytedance/sdk/component/Sj/Jcg;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/component/Sj/sP;)Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/component/Sj/Jcg$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/bytedance/sdk/component/Sj/Jcg$1;-><init>(Lcom/bytedance/sdk/component/Sj/Jcg;Lcom/bytedance/sdk/component/Sj/uvD;Lcom/bytedance/sdk/component/Sj/EjP;)V

    invoke-virtual {p2, v0, p3, v1}, Lcom/bytedance/sdk/component/Sj/EjP;->Sj(Ljava/lang/Object;Lcom/bytedance/sdk/component/Sj/vS;Lcom/bytedance/sdk/component/Sj/EjP$Sj;)V

    new-instance p1, Lcom/bytedance/sdk/component/Sj/Jcg$Sj;

    invoke-static {}, Lcom/bytedance/sdk/component/Sj/kF;->Sj()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    const/4 v0, 0x0

    invoke-direct {p1, v0, p2, p3}, Lcom/bytedance/sdk/component/Sj/Jcg$Sj;-><init>(ZLjava/lang/String;Lcom/bytedance/sdk/component/Sj/Jcg$1;)V

    return-object p1
.end method

.method private Sj(Lcom/bytedance/sdk/component/Sj/uvD;Lcom/bytedance/sdk/component/Sj/HiB;Lcom/bytedance/sdk/component/Sj/vS;)Lcom/bytedance/sdk/component/Sj/Jcg$Sj;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p1, p1, Lcom/bytedance/sdk/component/Sj/uvD;->HiB:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/component/Sj/Jcg;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/component/Sj/sP;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1, p3}, Lcom/bytedance/sdk/component/Sj/HiB;->Sj(Ljava/lang/Object;Lcom/bytedance/sdk/component/Sj/vS;)Ljava/lang/Object;

    move-result-object p1

    new-instance p2, Lcom/bytedance/sdk/component/Sj/Jcg$Sj;

    iget-object p3, p0, Lcom/bytedance/sdk/component/Sj/Jcg;->Sj:Lcom/bytedance/sdk/component/Sj/Dq;

    invoke-virtual {p3, p1}, Lcom/bytedance/sdk/component/Sj/Dq;->Sj(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/component/Sj/kF;->Sj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    const/4 v0, 0x1

    invoke-direct {p2, v0, p1, p3}, Lcom/bytedance/sdk/component/Sj/Jcg$Sj;-><init>(ZLjava/lang/String;Lcom/bytedance/sdk/component/Sj/Jcg$1;)V

    return-object p2
.end method

.method private Sj(Lcom/bytedance/sdk/component/Sj/uvD;Lcom/bytedance/sdk/component/Sj/TKC;Lcom/bytedance/sdk/component/Sj/ib;)Lcom/bytedance/sdk/component/Sj/Jcg$Sj;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance p2, Lcom/bytedance/sdk/component/Sj/RiZ;

    iget-object v0, p1, Lcom/bytedance/sdk/component/Sj/uvD;->EjP:Ljava/lang/String;

    new-instance v1, Lcom/bytedance/sdk/component/Sj/Jcg$2;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/component/Sj/Jcg$2;-><init>(Lcom/bytedance/sdk/component/Sj/Jcg;Lcom/bytedance/sdk/component/Sj/uvD;)V

    invoke-direct {p2, v0, p3, v1}, Lcom/bytedance/sdk/component/Sj/RiZ;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/component/Sj/ib;Lcom/bytedance/sdk/component/Sj/RiZ$Sj;)V

    new-instance p1, Lcom/bytedance/sdk/component/Sj/Jcg$Sj;

    invoke-static {}, Lcom/bytedance/sdk/component/Sj/kF;->Sj()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    const/4 v0, 0x0

    invoke-direct {p1, v0, p2, p3}, Lcom/bytedance/sdk/component/Sj/Jcg$Sj;-><init>(ZLjava/lang/String;Lcom/bytedance/sdk/component/Sj/Jcg$1;)V

    return-object p1
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/component/Sj/Jcg;)Lcom/bytedance/sdk/component/Sj/Sj;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/component/Sj/Jcg;->TEQ:Lcom/bytedance/sdk/component/Sj/Sj;

    return-object p0
.end method

.method private Sj(Ljava/lang/String;Lcom/bytedance/sdk/component/Sj/sP;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/Sj/Jcg;->Sj:Lcom/bytedance/sdk/component/Sj/Dq;

    invoke-static {p2}, Lcom/bytedance/sdk/component/Sj/Jcg;->Sj(Ljava/lang/Object;)[Ljava/lang/reflect/Type;

    move-result-object p2

    const/4 v1, 0x0

    aget-object p2, p2, v1

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/component/Sj/Dq;->Sj(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private static Sj(Ljava/lang/Object;)[Ljava/lang/reflect/Type;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object p0

    if-eqz p0, :cond_0

    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Method is not parameterized?!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic TKC(Lcom/bytedance/sdk/component/Sj/Jcg;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/component/Sj/Jcg;->vS:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic sP(Lcom/bytedance/sdk/component/Sj/Jcg;)Lcom/bytedance/sdk/component/Sj/Dq;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/component/Sj/Jcg;->Sj:Lcom/bytedance/sdk/component/Sj/Dq;

    return-object p0
.end method

.method private sP(Ljava/lang/String;Lcom/bytedance/sdk/component/Sj/sP;)Lcom/bytedance/sdk/component/Sj/ib;
    .locals 2

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/Sj/Jcg;->uA:Z

    if-eqz v0, :cond_0

    sget-object p1, Lcom/bytedance/sdk/component/Sj/ib;->TKC:Lcom/bytedance/sdk/component/Sj/ib;

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/Sj/Jcg;->sP:Lcom/bytedance/sdk/component/Sj/sU;

    iget-boolean v1, p0, Lcom/bytedance/sdk/component/Sj/Jcg;->Dq:Z

    invoke-virtual {v0, v1, p1, p2}, Lcom/bytedance/sdk/component/Sj/sU;->Sj(ZLjava/lang/String;Lcom/bytedance/sdk/component/Sj/sP;)Lcom/bytedance/sdk/component/Sj/ib;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method Sj(Lcom/bytedance/sdk/component/Sj/uvD;Lcom/bytedance/sdk/component/Sj/vS;)Lcom/bytedance/sdk/component/Sj/Jcg$Sj;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/Sj/Jcg;->TKC:Ljava/util/Map;

    iget-object v1, p1, Lcom/bytedance/sdk/component/Sj/uvD;->EjP:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/Sj/sP;

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v3, p2, Lcom/bytedance/sdk/component/Sj/vS;->sP:Ljava/lang/String;

    invoke-direct {p0, v3, v0}, Lcom/bytedance/sdk/component/Sj/Jcg;->sP(Ljava/lang/String;Lcom/bytedance/sdk/component/Sj/sP;)Lcom/bytedance/sdk/component/Sj/ib;

    move-result-object v3

    iput-object v3, p2, Lcom/bytedance/sdk/component/Sj/vS;->EjP:Lcom/bytedance/sdk/component/Sj/ib;

    if-eqz v3, :cond_1

    instance-of v4, v0, Lcom/bytedance/sdk/component/Sj/HiB;

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    check-cast v0, Lcom/bytedance/sdk/component/Sj/HiB;

    invoke-direct {p0, p1, v0, p2}, Lcom/bytedance/sdk/component/Sj/Jcg;->Sj(Lcom/bytedance/sdk/component/Sj/uvD;Lcom/bytedance/sdk/component/Sj/HiB;Lcom/bytedance/sdk/component/Sj/vS;)Lcom/bytedance/sdk/component/Sj/Jcg$Sj;

    move-result-object p1

    return-object p1

    :cond_0
    instance-of v4, v0, Lcom/bytedance/sdk/component/Sj/TKC;

    if-eqz v4, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    check-cast v0, Lcom/bytedance/sdk/component/Sj/TKC;

    invoke-direct {p0, p1, v0, v3}, Lcom/bytedance/sdk/component/Sj/Jcg;->Sj(Lcom/bytedance/sdk/component/Sj/uvD;Lcom/bytedance/sdk/component/Sj/TKC;Lcom/bytedance/sdk/component/Sj/ib;)Lcom/bytedance/sdk/component/Sj/Jcg$Sj;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    new-instance p2, Lcom/bytedance/sdk/component/Sj/TzV;

    invoke-direct {p2, v2}, Lcom/bytedance/sdk/component/Sj/TzV;-><init>(I)V

    throw p2

    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/component/Sj/Jcg;->EjP:Ljava/util/Map;

    iget-object v3, p1, Lcom/bytedance/sdk/component/Sj/uvD;->EjP:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/Sj/EjP$sP;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/bytedance/sdk/component/Sj/EjP$sP;->Sj()Lcom/bytedance/sdk/component/Sj/EjP;

    move-result-object v0

    iget-object v3, p1, Lcom/bytedance/sdk/component/Sj/uvD;->EjP:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/component/Sj/sP;->Sj(Ljava/lang/String;)V

    iget-object v3, p2, Lcom/bytedance/sdk/component/Sj/vS;->sP:Ljava/lang/String;

    invoke-direct {p0, v3, v0}, Lcom/bytedance/sdk/component/Sj/Jcg;->sP(Ljava/lang/String;Lcom/bytedance/sdk/component/Sj/sP;)Lcom/bytedance/sdk/component/Sj/ib;

    move-result-object v3

    iput-object v3, p2, Lcom/bytedance/sdk/component/Sj/vS;->EjP:Lcom/bytedance/sdk/component/Sj/ib;

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    invoke-direct {p0, p1, v0, p2}, Lcom/bytedance/sdk/component/Sj/Jcg;->Sj(Lcom/bytedance/sdk/component/Sj/uvD;Lcom/bytedance/sdk/component/Sj/EjP;Lcom/bytedance/sdk/component/Sj/vS;)Lcom/bytedance/sdk/component/Sj/Jcg$Sj;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/Sj/EjP;->EjP()V

    new-instance p2, Lcom/bytedance/sdk/component/Sj/TzV;

    invoke-direct {p2, v2}, Lcom/bytedance/sdk/component/Sj/TzV;-><init>(I)V

    throw p2
    :try_end_0
    .catch Lcom/bytedance/sdk/component/Sj/dx$Sj; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    return-object v1

    :catch_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    iget-object p2, p0, Lcom/bytedance/sdk/component/Sj/Jcg;->HiB:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/bytedance/sdk/component/Sj/Jcg$Sj;

    const/4 p2, 0x0

    invoke-static {}, Lcom/bytedance/sdk/component/Sj/kF;->Sj()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p2, v0, v1}, Lcom/bytedance/sdk/component/Sj/Jcg$Sj;-><init>(ZLjava/lang/String;Lcom/bytedance/sdk/component/Sj/Jcg$1;)V

    return-object p1
.end method

.method Sj()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/Sj/Jcg;->vS:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/component/Sj/EjP;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/Sj/EjP;->HiB()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/Sj/Jcg;->vS:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/bytedance/sdk/component/Sj/Jcg;->TKC:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/bytedance/sdk/component/Sj/Jcg;->EjP:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/bytedance/sdk/component/Sj/Jcg;->sP:Lcom/bytedance/sdk/component/Sj/sU;

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/component/Sj/sU;->sP(Lcom/bytedance/sdk/component/Sj/zR$Sj;)V

    return-void
.end method

.method Sj(Ljava/lang/String;Lcom/bytedance/sdk/component/Sj/EjP$sP;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/Sj/Jcg;->EjP:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method Sj(Ljava/lang/String;Lcom/bytedance/sdk/component/Sj/HiB;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/component/Sj/HiB<",
            "**>;)V"
        }
    .end annotation

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/component/Sj/sP;->Sj(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/Sj/Jcg;->TKC:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
