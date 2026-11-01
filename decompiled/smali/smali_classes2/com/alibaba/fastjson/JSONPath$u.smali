.class abstract Lcom/alibaba/fastjson/JSONPath$u;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/fastjson/JSONPath$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/JSONPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "u"
.end annotation


# static fields
.field static e:J


# instance fields
.field protected final a:Ljava/lang/String;

.field protected final b:J

.field protected final c:Z

.field protected d:Lcom/alibaba/fastjson/JSONPath$a0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "type"

    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->J(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/alibaba/fastjson/JSONPath$u;->e:J

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Z)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/fastjson/JSONPath$u;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->J(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/fastjson/JSONPath$u;->b:J

    iput-boolean p2, p0, Lcom/alibaba/fastjson/JSONPath$u;->c:Z

    if-eqz p2, :cond_2

    sget-wide v2, Lcom/alibaba/fastjson/JSONPath$u;->e:J

    cmp-long p2, v0, v2

    if-nez p2, :cond_0

    sget-object p1, Lcom/alibaba/fastjson/JSONPath$e0;->a:Lcom/alibaba/fastjson/JSONPath$e0;

    iput-object p1, p0, Lcom/alibaba/fastjson/JSONPath$u;->d:Lcom/alibaba/fastjson/JSONPath$a0;

    goto :goto_0

    :cond_0
    const-wide v2, 0x4dea9618e618ae3cL    # 2.239892812106928E67

    cmp-long p2, v0, v2

    if-nez p2, :cond_1

    sget-object p1, Lcom/alibaba/fastjson/JSONPath$b0;->a:Lcom/alibaba/fastjson/JSONPath$b0;

    iput-object p1, p0, Lcom/alibaba/fastjson/JSONPath$u;->d:Lcom/alibaba/fastjson/JSONPath$a0;

    goto :goto_0

    :cond_1
    new-instance p2, Lcom/alibaba/fastjson/JSONPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unsupported funciton : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method protected b(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$u;->d:Lcom/alibaba/fastjson/JSONPath$a0;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/alibaba/fastjson/JSONPath$a0;->a(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p2, p0, Lcom/alibaba/fastjson/JSONPath$u;->a:Ljava/lang/String;

    iget-wide v0, p0, Lcom/alibaba/fastjson/JSONPath$u;->b:J

    invoke-virtual {p1, p3, p2, v0, v1}, Lcom/alibaba/fastjson/JSONPath;->j(Ljava/lang/Object;Ljava/lang/String;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
