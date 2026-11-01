.class Lcom/alibaba/fastjson/JSONPath$c0;
.super Lcom/alibaba/fastjson/JSONPath$u;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/JSONPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c0"
.end annotation


# instance fields
.field private final f:[Ljava/lang/String;

.field private final g:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z[Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/alibaba/fastjson/JSONPath$u;-><init>(Ljava/lang/String;Z)V

    iput-object p3, p0, Lcom/alibaba/fastjson/JSONPath$c0;->f:[Ljava/lang/String;

    iput-boolean p4, p0, Lcom/alibaba/fastjson/JSONPath$c0;->g:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0, p1, p2, p4}, Lcom/alibaba/fastjson/JSONPath$u;->b(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object p2, p0, Lcom/alibaba/fastjson/JSONPath$c0;->f:[Ljava/lang/String;

    array-length p3, p2

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p3, :cond_2

    aget-object v0, p2, p4

    if-ne v0, p1, :cond_0

    iget-boolean p1, p0, Lcom/alibaba/fastjson/JSONPath$c0;->g:Z

    xor-int/lit8 p1, p1, 0x1

    return p1

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean p1, p0, Lcom/alibaba/fastjson/JSONPath$c0;->g:Z

    xor-int/lit8 p1, p1, 0x1

    return p1

    :cond_1
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_2
    iget-boolean p1, p0, Lcom/alibaba/fastjson/JSONPath$c0;->g:Z

    return p1
.end method
