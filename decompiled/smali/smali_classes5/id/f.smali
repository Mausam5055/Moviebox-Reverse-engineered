.class public Lid/f;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lid/b;

.field private final b:[Lcom/google/zxing/k;


# direct methods
.method public constructor <init>(Lid/b;[Lcom/google/zxing/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lid/f;->a:Lid/b;

    iput-object p2, p0, Lid/f;->b:[Lcom/google/zxing/k;

    return-void
.end method


# virtual methods
.method public final a()Lid/b;
    .locals 1

    iget-object v0, p0, Lid/f;->a:Lid/b;

    return-object v0
.end method

.method public final b()[Lcom/google/zxing/k;
    .locals 1

    iget-object v0, p0, Lid/f;->b:[Lcom/google/zxing/k;

    return-object v0
.end method
