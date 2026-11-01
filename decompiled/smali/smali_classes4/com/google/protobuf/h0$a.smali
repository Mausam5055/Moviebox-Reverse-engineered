.class Lcom/google/protobuf/h0$a;
.super Ljava/util/AbstractList;

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/h0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final list:Lcom/google/protobuf/h0;


# direct methods
.method constructor <init>(Lcom/google/protobuf/h0;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lcom/google/protobuf/h0$a;->list:Lcom/google/protobuf/h0;

    return-void
.end method


# virtual methods
.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0

    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/h0$a;->add(I[B)V

    return-void
.end method

.method public add(I[B)V
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/h0$a;->list:Lcom/google/protobuf/h0;

    invoke-static {v0, p1, p2}, Lcom/google/protobuf/h0;->access$200(Lcom/google/protobuf/h0;I[B)V

    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return-void
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/h0$a;->get(I)[B

    move-result-object p1

    return-object p1
.end method

.method public get(I)[B
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/h0$a;->list:Lcom/google/protobuf/h0;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/h0;->getByteArray(I)[B

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/h0$a;->remove(I)[B

    move-result-object p1

    return-object p1
.end method

.method public remove(I)[B
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/h0$a;->list:Lcom/google/protobuf/h0;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/h0;->remove(I)Ljava/lang/String;

    move-result-object p1

    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    invoke-static {p1}, Lcom/google/protobuf/h0;->access$100(Ljava/lang/Object;)[B

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/h0$a;->set(I[B)[B

    move-result-object p1

    return-object p1
.end method

.method public set(I[B)[B
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/h0$a;->list:Lcom/google/protobuf/h0;

    invoke-static {v0, p1, p2}, Lcom/google/protobuf/h0;->access$000(Lcom/google/protobuf/h0;I[B)Ljava/lang/Object;

    move-result-object p1

    iget p2, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Ljava/util/AbstractList;->modCount:I

    invoke-static {p1}, Lcom/google/protobuf/h0;->access$100(Ljava/lang/Object;)[B

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/h0$a;->list:Lcom/google/protobuf/h0;

    invoke-virtual {v0}, Lcom/google/protobuf/h0;->size()I

    move-result v0

    return v0
.end method
