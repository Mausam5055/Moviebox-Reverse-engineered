.class public final Lyh/b;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/tn/tranpay/bean/QueryOrderResultContent;

.field private final b:Lcom/tn/tranpay/bean/QueryStatus;


# direct methods
.method public constructor <init>(Lcom/tn/tranpay/bean/QueryOrderResultContent;Lcom/tn/tranpay/bean/QueryStatus;)V
    .locals 1

    const-string v0, "status"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyh/b;->a:Lcom/tn/tranpay/bean/QueryOrderResultContent;

    iput-object p2, p0, Lyh/b;->b:Lcom/tn/tranpay/bean/QueryStatus;

    return-void
.end method


# virtual methods
.method public final a()Lcom/tn/tranpay/bean/QueryOrderResultContent;
    .locals 1

    iget-object v0, p0, Lyh/b;->a:Lcom/tn/tranpay/bean/QueryOrderResultContent;

    return-object v0
.end method

.method public final b()Lcom/tn/tranpay/bean/QueryStatus;
    .locals 1

    iget-object v0, p0, Lyh/b;->b:Lcom/tn/tranpay/bean/QueryStatus;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lyh/b;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lyh/b;

    iget-object v1, p0, Lyh/b;->a:Lcom/tn/tranpay/bean/QueryOrderResultContent;

    iget-object v3, p1, Lyh/b;->a:Lcom/tn/tranpay/bean/QueryOrderResultContent;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lyh/b;->b:Lcom/tn/tranpay/bean/QueryStatus;

    iget-object p1, p1, Lyh/b;->b:Lcom/tn/tranpay/bean/QueryStatus;

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lyh/b;->a:Lcom/tn/tranpay/bean/QueryOrderResultContent;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lyh/b;->b:Lcom/tn/tranpay/bean/QueryStatus;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lyh/b;->a:Lcom/tn/tranpay/bean/QueryOrderResultContent;

    iget-object v1, p0, Lyh/b;->b:Lcom/tn/tranpay/bean/QueryStatus;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "QueryOrderResult(content="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", status="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
