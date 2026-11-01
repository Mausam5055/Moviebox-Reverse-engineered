.class abstract Lcom/google/zxing/aztec/encoder/f;
.super Ljava/lang/Object;


# static fields
.field static final b:Lcom/google/zxing/aztec/encoder/f;


# instance fields
.field private final a:Lcom/google/zxing/aztec/encoder/f;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/zxing/aztec/encoder/d;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/zxing/aztec/encoder/d;-><init>(Lcom/google/zxing/aztec/encoder/f;II)V

    sput-object v0, Lcom/google/zxing/aztec/encoder/f;->b:Lcom/google/zxing/aztec/encoder/f;

    return-void
.end method

.method constructor <init>(Lcom/google/zxing/aztec/encoder/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/zxing/aztec/encoder/f;->a:Lcom/google/zxing/aztec/encoder/f;

    return-void
.end method


# virtual methods
.method final a(II)Lcom/google/zxing/aztec/encoder/f;
    .locals 1

    new-instance v0, Lcom/google/zxing/aztec/encoder/d;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/zxing/aztec/encoder/d;-><init>(Lcom/google/zxing/aztec/encoder/f;II)V

    return-object v0
.end method

.method final b(II)Lcom/google/zxing/aztec/encoder/f;
    .locals 1

    new-instance v0, Lcom/google/zxing/aztec/encoder/b;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/zxing/aztec/encoder/b;-><init>(Lcom/google/zxing/aztec/encoder/f;II)V

    return-object v0
.end method

.method abstract c(Lid/a;[B)V
.end method

.method final d()Lcom/google/zxing/aztec/encoder/f;
    .locals 1

    iget-object v0, p0, Lcom/google/zxing/aztec/encoder/f;->a:Lcom/google/zxing/aztec/encoder/f;

    return-object v0
.end method
