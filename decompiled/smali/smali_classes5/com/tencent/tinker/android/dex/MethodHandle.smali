.class public Lcom/tencent/tinker/android/dex/MethodHandle;
.super Lcom/tencent/tinker/android/dex/v$a$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tinker/android/dex/MethodHandle$MethodHandleType;
    }
.end annotation


# instance fields
.field public b:Lcom/tencent/tinker/android/dex/MethodHandle$MethodHandleType;

.field public c:I

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>(ILcom/tencent/tinker/android/dex/MethodHandle$MethodHandleType;III)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/tinker/android/dex/v$a$a;-><init>(I)V

    iput-object p2, p0, Lcom/tencent/tinker/android/dex/MethodHandle;->b:Lcom/tencent/tinker/android/dex/MethodHandle$MethodHandleType;

    iput p3, p0, Lcom/tencent/tinker/android/dex/MethodHandle;->c:I

    iput p4, p0, Lcom/tencent/tinker/android/dex/MethodHandle;->d:I

    iput p5, p0, Lcom/tencent/tinker/android/dex/MethodHandle;->e:I

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/tinker/android/dex/MethodHandle;)I
    .locals 2

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/MethodHandle;->b:Lcom/tencent/tinker/android/dex/MethodHandle$MethodHandleType;

    iget-object v1, p1, Lcom/tencent/tinker/android/dex/MethodHandle;->b:Lcom/tencent/tinker/android/dex/MethodHandle$MethodHandleType;

    if-eq v0, v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result p1

    return p1

    :cond_0
    iget v0, p0, Lcom/tencent/tinker/android/dex/MethodHandle;->d:I

    iget p1, p1, Lcom/tencent/tinker/android/dex/MethodHandle;->d:I

    invoke-static {v0, p1}, Lgf/c;->h(II)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/tencent/tinker/android/dex/MethodHandle;

    invoke-virtual {p0, p1}, Lcom/tencent/tinker/android/dex/MethodHandle;->a(Lcom/tencent/tinker/android/dex/MethodHandle;)I

    move-result p1

    return p1
.end method
