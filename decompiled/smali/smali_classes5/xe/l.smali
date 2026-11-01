.class public Lxe/l;
.super Lxe/g;


# direct methods
.method public constructor <init>(Lcom/google/zxing/i;)V
    .locals 0

    invoke-direct {p0, p1}, Lxe/g;-><init>(Lcom/google/zxing/i;)V

    return-void
.end method


# virtual methods
.method protected e(Lcom/google/zxing/e;)Lcom/google/zxing/b;
    .locals 2

    new-instance v0, Lcom/google/zxing/b;

    new-instance v1, Lid/l;

    invoke-virtual {p1}, Lcom/google/zxing/e;->e()Lcom/google/zxing/e;

    move-result-object p1

    invoke-direct {v1, p1}, Lid/l;-><init>(Lcom/google/zxing/e;)V

    invoke-direct {v0, v1}, Lcom/google/zxing/b;-><init>(Lcom/google/zxing/a;)V

    return-object v0
.end method
