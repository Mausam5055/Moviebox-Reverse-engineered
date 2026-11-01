.class final Lcom/alibaba/fastjson/util/TypeUtils$f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/fastjson/util/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/util/TypeUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;)Ljava/lang/Void;
    .locals 6

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Ljava/sql/Time;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Ljava/sql/Date;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-class v2, Ljava/sql/Timestamp;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    :goto_0
    if-ge v3, v0, :cond_1

    aget-object v2, v1, v3

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/2addr v3, v4

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/util/TypeUtils$f;->a(Ljava/util/Map;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method
