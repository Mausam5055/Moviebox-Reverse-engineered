.class public Lcom/tencent/tinker/android/dex/u;
.super Lcom/tencent/tinker/android/dex/v$a$a;


# instance fields
.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/tinker/android/dex/v$a$a;-><init>(I)V

    iput-object p2, p0, Lcom/tencent/tinker/android/dex/u;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/tinker/android/dex/u;)I
    .locals 1

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/u;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/tencent/tinker/android/dex/u;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/tencent/tinker/android/dex/u;

    invoke-virtual {p0, p1}, Lcom/tencent/tinker/android/dex/u;->a(Lcom/tencent/tinker/android/dex/u;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/tencent/tinker/android/dex/u;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/tencent/tinker/android/dex/u;

    invoke-virtual {p0, p1}, Lcom/tencent/tinker/android/dex/u;->a(Lcom/tencent/tinker/android/dex/u;)I

    move-result p1

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/u;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
