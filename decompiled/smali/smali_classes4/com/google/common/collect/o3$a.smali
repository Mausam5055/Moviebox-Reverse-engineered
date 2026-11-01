.class Lcom/google/common/collect/o3$a;
.super Lcom/google/common/collect/Multisets$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/o3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/lang/Object;

.field b:I

.field final synthetic c:Lcom/google/common/collect/o3;


# direct methods
.method constructor <init>(Lcom/google/common/collect/o3;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/o3$a;->c:Lcom/google/common/collect/o3;

    invoke-direct {p0}, Lcom/google/common/collect/Multisets$b;-><init>()V

    iget-object p1, p1, Lcom/google/common/collect/o3;->a:[Ljava/lang/Object;

    aget-object p1, p1, p2

    iput-object p1, p0, Lcom/google/common/collect/o3$a;->a:Ljava/lang/Object;

    iput p2, p0, Lcom/google/common/collect/o3$a;->b:I

    return-void
.end method


# virtual methods
.method a()V
    .locals 3

    iget v0, p0, Lcom/google/common/collect/o3$a;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/common/collect/o3$a;->c:Lcom/google/common/collect/o3;

    invoke-virtual {v1}, Lcom/google/common/collect/o3;->C()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/o3$a;->a:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/common/collect/o3$a;->c:Lcom/google/common/collect/o3;

    iget-object v1, v1, Lcom/google/common/collect/o3;->a:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/o3$a;->b:I

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcom/google/common/base/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/o3$a;->c:Lcom/google/common/collect/o3;

    iget-object v1, p0, Lcom/google/common/collect/o3$a;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/o3;->m(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/o3$a;->b:I

    :cond_1
    return-void
.end method

.method public getCount()I
    .locals 2

    invoke-virtual {p0}, Lcom/google/common/collect/o3$a;->a()V

    iget v0, p0, Lcom/google/common/collect/o3$a;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/o3$a;->c:Lcom/google/common/collect/o3;

    iget-object v1, v1, Lcom/google/common/collect/o3;->b:[I

    aget v0, v1, v0

    :goto_0
    return v0
.end method

.method public getElement()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/o3$a;->a:Ljava/lang/Object;

    return-object v0
.end method
