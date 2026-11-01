.class Lcom/alibaba/fastjson/JSONPath$j;
.super Lcom/alibaba/fastjson/JSONPath$u;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/JSONPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "j"
.end annotation


# instance fields
.field private final f:[Ljava/lang/Long;

.field private final g:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z[Ljava/lang/Long;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/alibaba/fastjson/JSONPath$u;-><init>(Ljava/lang/String;Z)V

    iput-object p3, p0, Lcom/alibaba/fastjson/JSONPath$j;->f:[Ljava/lang/Long;

    iput-boolean p4, p0, Lcom/alibaba/fastjson/JSONPath$j;->g:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3

    invoke-virtual {p0, p1, p2, p4}, Lcom/alibaba/fastjson/JSONPath$u;->b(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/alibaba/fastjson/JSONPath$j;->f:[Ljava/lang/Long;

    array-length p3, p1

    :goto_0
    if-ge p2, p3, :cond_1

    aget-object p4, p1, p2

    if-nez p4, :cond_0

    iget-boolean p1, p0, Lcom/alibaba/fastjson/JSONPath$j;->g:Z

    xor-int/lit8 p1, p1, 0x1

    return p1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    iget-boolean p1, p0, Lcom/alibaba/fastjson/JSONPath$j;->g:Z

    return p1

    :cond_2
    instance-of p3, p1, Ljava/lang/Number;

    if-eqz p3, :cond_5

    check-cast p1, Ljava/lang/Number;

    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->D0(Ljava/lang/Number;)J

    move-result-wide p3

    iget-object p1, p0, Lcom/alibaba/fastjson/JSONPath$j;->f:[Ljava/lang/Long;

    array-length v0, p1

    :goto_1
    if-ge p2, v0, :cond_5

    aget-object v1, p1, p2

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, v1, p3

    if-nez v1, :cond_4

    iget-boolean p1, p0, Lcom/alibaba/fastjson/JSONPath$j;->g:Z

    xor-int/lit8 p1, p1, 0x1

    return p1

    :cond_4
    :goto_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_5
    iget-boolean p1, p0, Lcom/alibaba/fastjson/JSONPath$j;->g:Z

    return p1
.end method
