.class Lcom/alibaba/fastjson/JSONPath$g0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/fastjson/JSONPath$a0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/JSONPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "g0"
.end annotation


# static fields
.field public static final c:Lcom/alibaba/fastjson/JSONPath$g0;

.field public static final d:Lcom/alibaba/fastjson/JSONPath$g0;

.field public static final e:Lcom/alibaba/fastjson/JSONPath$g0;


# instance fields
.field private a:Z

.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/alibaba/fastjson/JSONPath$g0;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/alibaba/fastjson/JSONPath$g0;-><init>(ZZ)V

    sput-object v0, Lcom/alibaba/fastjson/JSONPath$g0;->c:Lcom/alibaba/fastjson/JSONPath$g0;

    new-instance v0, Lcom/alibaba/fastjson/JSONPath$g0;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcom/alibaba/fastjson/JSONPath$g0;-><init>(ZZ)V

    sput-object v0, Lcom/alibaba/fastjson/JSONPath$g0;->d:Lcom/alibaba/fastjson/JSONPath$g0;

    new-instance v0, Lcom/alibaba/fastjson/JSONPath$g0;

    invoke-direct {v0, v2, v2}, Lcom/alibaba/fastjson/JSONPath$g0;-><init>(ZZ)V

    sput-object v0, Lcom/alibaba/fastjson/JSONPath$g0;->e:Lcom/alibaba/fastjson/JSONPath$g0;

    return-void
.end method

.method private constructor <init>(ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/alibaba/fastjson/JSONPath$g0;->a:Z

    iput-boolean p2, p0, Lcom/alibaba/fastjson/JSONPath$g0;->b:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-boolean p2, p0, Lcom/alibaba/fastjson/JSONPath$g0;->a:Z

    if-nez p2, :cond_0

    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson/JSONPath;->k(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, p3, p2}, Lcom/alibaba/fastjson/JSONPath;->c(Ljava/lang/Object;Ljava/util/List;)V

    return-object p2
.end method
