.class public Lcom/tencent/tinker/android/dex/e;
.super Lcom/tencent/tinker/android/dex/v$a$a;


# instance fields
.field public b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/tinker/android/dex/v$a$a;-><init>(I)V

    iput p2, p0, Lcom/tencent/tinker/android/dex/e;->b:I

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/tinker/android/dex/e;)I
    .locals 1

    iget v0, p0, Lcom/tencent/tinker/android/dex/e;->b:I

    iget p1, p1, Lcom/tencent/tinker/android/dex/e;->b:I

    invoke-static {v0, p1}, Lgf/c;->h(II)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/tencent/tinker/android/dex/e;

    invoke-virtual {p0, p1}, Lcom/tencent/tinker/android/dex/e;->a(Lcom/tencent/tinker/android/dex/e;)I

    move-result p1

    return p1
.end method
