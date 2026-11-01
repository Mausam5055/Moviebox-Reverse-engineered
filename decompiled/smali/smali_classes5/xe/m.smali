.class public Lxe/m;
.super Lxe/g;


# instance fields
.field private c:Z


# direct methods
.method public constructor <init>(Lcom/google/zxing/i;)V
    .locals 0

    invoke-direct {p0, p1}, Lxe/g;-><init>(Lcom/google/zxing/i;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lxe/m;->c:Z

    return-void
.end method


# virtual methods
.method protected e(Lcom/google/zxing/e;)Lcom/google/zxing/b;
    .locals 2

    iget-boolean v0, p0, Lxe/m;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lxe/m;->c:Z

    new-instance v0, Lcom/google/zxing/b;

    new-instance v1, Lid/l;

    invoke-virtual {p1}, Lcom/google/zxing/e;->e()Lcom/google/zxing/e;

    move-result-object p1

    invoke-direct {v1, p1}, Lid/l;-><init>(Lcom/google/zxing/e;)V

    invoke-direct {v0, v1}, Lcom/google/zxing/b;-><init>(Lcom/google/zxing/a;)V

    return-object v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lxe/m;->c:Z

    new-instance v0, Lcom/google/zxing/b;

    new-instance v1, Lid/l;

    invoke-direct {v1, p1}, Lid/l;-><init>(Lcom/google/zxing/e;)V

    invoke-direct {v0, v1}, Lcom/google/zxing/b;-><init>(Lcom/google/zxing/a;)V

    return-object v0
.end method
