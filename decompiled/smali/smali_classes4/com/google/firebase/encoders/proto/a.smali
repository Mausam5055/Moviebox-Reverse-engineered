.class public final Lcom/google/firebase/encoders/proto/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/encoders/proto/a$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Lcom/google/firebase/encoders/proto/Protobuf$IntEncoding;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/firebase/encoders/proto/Protobuf$IntEncoding;->DEFAULT:Lcom/google/firebase/encoders/proto/Protobuf$IntEncoding;

    iput-object v0, p0, Lcom/google/firebase/encoders/proto/a;->b:Lcom/google/firebase/encoders/proto/Protobuf$IntEncoding;

    return-void
.end method

.method public static b()Lcom/google/firebase/encoders/proto/a;
    .locals 1

    new-instance v0, Lcom/google/firebase/encoders/proto/a;

    invoke-direct {v0}, Lcom/google/firebase/encoders/proto/a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/google/firebase/encoders/proto/Protobuf;
    .locals 3

    new-instance v0, Lcom/google/firebase/encoders/proto/a$a;

    iget v1, p0, Lcom/google/firebase/encoders/proto/a;->a:I

    iget-object v2, p0, Lcom/google/firebase/encoders/proto/a;->b:Lcom/google/firebase/encoders/proto/Protobuf$IntEncoding;

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/encoders/proto/a$a;-><init>(ILcom/google/firebase/encoders/proto/Protobuf$IntEncoding;)V

    return-object v0
.end method

.method public c(I)Lcom/google/firebase/encoders/proto/a;
    .locals 0

    iput p1, p0, Lcom/google/firebase/encoders/proto/a;->a:I

    return-object p0
.end method
