.class public interface abstract Lcom/google/protobuf/i0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/protobuf/f1;


# virtual methods
.method public abstract add(Lcom/google/protobuf/ByteString;)V
.end method

.method public abstract add([B)V
.end method

.method public abstract addAllByteArray(Ljava/util/Collection;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "[B>;)Z"
        }
    .end annotation
.end method

.method public abstract addAllByteString(Ljava/util/Collection;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/google/protobuf/ByteString;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract asByteArrayList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end method

.method public abstract synthetic asByteStringList()Ljava/util/List;
.end method

.method public abstract getByteArray(I)[B
.end method

.method public abstract getByteString(I)Lcom/google/protobuf/ByteString;
.end method

.method public abstract getRaw(I)Ljava/lang/Object;
.end method

.method public abstract getUnderlyingElements()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract getUnmodifiableView()Lcom/google/protobuf/i0;
.end method

.method public abstract mergeFrom(Lcom/google/protobuf/i0;)V
.end method

.method public abstract set(ILcom/google/protobuf/ByteString;)V
.end method

.method public abstract set(I[B)V
.end method
