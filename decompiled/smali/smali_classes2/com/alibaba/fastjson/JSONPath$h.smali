.class Lcom/alibaba/fastjson/JSONPath$h;
.super Lcom/alibaba/fastjson/JSONPath$u;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/JSONPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "h"
.end annotation


# instance fields
.field private final f:J

.field private final g:J

.field private final h:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZJJZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/alibaba/fastjson/JSONPath$u;-><init>(Ljava/lang/String;Z)V

    iput-wide p3, p0, Lcom/alibaba/fastjson/JSONPath$h;->f:J

    iput-wide p5, p0, Lcom/alibaba/fastjson/JSONPath$h;->g:J

    iput-boolean p7, p0, Lcom/alibaba/fastjson/JSONPath$h;->h:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1, p2, p4}, Lcom/alibaba/fastjson/JSONPath$u;->b(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    instance-of p2, p1, Ljava/lang/Number;

    if-eqz p2, :cond_1

    check-cast p1, Ljava/lang/Number;

    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->D0(Ljava/lang/Number;)J

    move-result-wide p1

    iget-wide p3, p0, Lcom/alibaba/fastjson/JSONPath$h;->f:J

    cmp-long p3, p1, p3

    if-ltz p3, :cond_1

    iget-wide p3, p0, Lcom/alibaba/fastjson/JSONPath$h;->g:J

    cmp-long p1, p1, p3

    if-gtz p1, :cond_1

    iget-boolean p1, p0, Lcom/alibaba/fastjson/JSONPath$h;->h:Z

    xor-int/lit8 p1, p1, 0x1

    return p1

    :cond_1
    iget-boolean p1, p0, Lcom/alibaba/fastjson/JSONPath$h;->h:Z

    return p1
.end method
