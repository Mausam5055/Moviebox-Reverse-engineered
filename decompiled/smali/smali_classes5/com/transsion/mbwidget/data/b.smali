.class public final Lcom/transsion/mbwidget/data/b;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:Lcom/transsion/moviedetailapi/bean/Subject;


# direct methods
.method public constructor <init>(ILcom/transsion/moviedetailapi/bean/Subject;)V
    .locals 1

    const-string v0, "subject"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/transsion/mbwidget/data/b;->a:I

    iput-object p2, p0, Lcom/transsion/mbwidget/data/b;->b:Lcom/transsion/moviedetailapi/bean/Subject;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/transsion/mbwidget/data/b;->a:I

    return v0
.end method

.method public final b()Lcom/transsion/moviedetailapi/bean/Subject;
    .locals 1

    iget-object v0, p0, Lcom/transsion/mbwidget/data/b;->b:Lcom/transsion/moviedetailapi/bean/Subject;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsion/mbwidget/data/b;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/mbwidget/data/b;

    iget v1, p0, Lcom/transsion/mbwidget/data/b;->a:I

    iget v3, p1, Lcom/transsion/mbwidget/data/b;->a:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/transsion/mbwidget/data/b;->b:Lcom/transsion/moviedetailapi/bean/Subject;

    iget-object p1, p1, Lcom/transsion/mbwidget/data/b;->b:Lcom/transsion/moviedetailapi/bean/Subject;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/transsion/mbwidget/data/b;->a:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/mbwidget/data/b;->b:Lcom/transsion/moviedetailapi/bean/Subject;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lcom/transsion/mbwidget/data/b;->a:I

    iget-object v1, p0, Lcom/transsion/mbwidget/data/b;->b:Lcom/transsion/moviedetailapi/bean/Subject;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ShowItem(position="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", subject="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
