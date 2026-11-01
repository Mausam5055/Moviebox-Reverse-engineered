.class final Lcom/alibaba/fastjson/util/AntiCollisionHashMap$c;
.super Lcom/alibaba/fastjson/util/AntiCollisionHashMap$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/util/AntiCollisionHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field final synthetic f:Lcom/alibaba/fastjson/util/AntiCollisionHashMap;


# direct methods
.method private constructor <init>(Lcom/alibaba/fastjson/util/AntiCollisionHashMap;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$c;->f:Lcom/alibaba/fastjson/util/AntiCollisionHashMap;

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$e;-><init>(Lcom/alibaba/fastjson/util/AntiCollisionHashMap;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/fastjson/util/AntiCollisionHashMap;Lcom/alibaba/fastjson/util/AntiCollisionHashMap$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$c;-><init>(Lcom/alibaba/fastjson/util/AntiCollisionHashMap;)V

    return-void
.end method


# virtual methods
.method public b()Ljava/util/Map$Entry;
    .locals 1

    invoke-virtual {p0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$e;->a()Lcom/alibaba/fastjson/util/AntiCollisionHashMap$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$c;->b()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
