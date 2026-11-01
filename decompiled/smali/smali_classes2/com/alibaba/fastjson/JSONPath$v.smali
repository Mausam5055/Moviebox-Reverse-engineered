.class Lcom/alibaba/fastjson/JSONPath$v;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/fastjson/JSONPath$a0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/JSONPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "v"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:J

.field private final c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/fastjson/JSONPath$v;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->J(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/fastjson/JSONPath$v;->b:J

    iput-boolean p2, p0, Lcom/alibaba/fastjson/JSONPath$v;->c:Z

    return-void
.end method

.method static synthetic b(Lcom/alibaba/fastjson/JSONPath$v;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/alibaba/fastjson/JSONPath$v;->c:Z

    return p0
.end method

.method static synthetic c(Lcom/alibaba/fastjson/JSONPath$v;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/fastjson/JSONPath$v;->a:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-boolean p2, p0, Lcom/alibaba/fastjson/JSONPath$v;->c:Z

    if-eqz p2, :cond_0

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$v;->a:Ljava/lang/String;

    invoke-virtual {p1, p3, v0, p2}, Lcom/alibaba/fastjson/JSONPath;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/util/List;)V

    return-object p2

    :cond_0
    iget-object p2, p0, Lcom/alibaba/fastjson/JSONPath$v;->a:Ljava/lang/String;

    iget-wide v0, p0, Lcom/alibaba/fastjson/JSONPath$v;->b:J

    invoke-virtual {p1, p3, p2, v0, v1}, Lcom/alibaba/fastjson/JSONPath;->j(Ljava/lang/Object;Ljava/lang/String;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
