.class public Lcom/tencent/tinker/android/dex/h$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tinker/android/dex/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:[I

.field public b:[I

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>([I[III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/tinker/android/dex/h$a;->a:[I

    iput-object p2, p0, Lcom/tencent/tinker/android/dex/h$a;->b:[I

    iput p3, p0, Lcom/tencent/tinker/android/dex/h$a;->c:I

    iput p4, p0, Lcom/tencent/tinker/android/dex/h$a;->d:I

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/tinker/android/dex/h$a;)I
    .locals 2

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/h$a;->a:[I

    iget-object v1, p1, Lcom/tencent/tinker/android/dex/h$a;->a:[I

    invoke-static {v0, v1}, Lgf/c;->b([I[I)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tinker/android/dex/h$a;->b:[I

    iget-object v1, p1, Lcom/tencent/tinker/android/dex/h$a;->b:[I

    invoke-static {v0, v1}, Lgf/c;->b([I[I)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    :cond_1
    iget v0, p0, Lcom/tencent/tinker/android/dex/h$a;->c:I

    iget p1, p1, Lcom/tencent/tinker/android/dex/h$a;->c:I

    invoke-static {v0, p1}, Lgf/c;->c(II)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/tencent/tinker/android/dex/h$a;

    invoke-virtual {p0, p1}, Lcom/tencent/tinker/android/dex/h$a;->a(Lcom/tencent/tinker/android/dex/h$a;)I

    move-result p1

    return p1
.end method
