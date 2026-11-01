.class public final Lcom/tencent/tinker/android/dex/w;
.super Lcom/tencent/tinker/android/dex/v$a$a;


# static fields
.field public static final c:Lcom/tencent/tinker/android/dex/w;


# instance fields
.field public b:[S


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/tencent/tinker/android/dex/w;

    const/4 v1, 0x0

    sget-object v2, Lcom/tencent/tinker/android/dex/j;->n:[S

    invoke-direct {v0, v1, v2}, Lcom/tencent/tinker/android/dex/w;-><init>(I[S)V

    sput-object v0, Lcom/tencent/tinker/android/dex/w;->c:Lcom/tencent/tinker/android/dex/w;

    return-void
.end method

.method public constructor <init>(I[S)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/tinker/android/dex/v$a$a;-><init>(I)V

    iput-object p2, p0, Lcom/tencent/tinker/android/dex/w;->b:[S

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/tinker/android/dex/w;)I
    .locals 1

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/w;->b:[S

    iget-object p1, p1, Lcom/tencent/tinker/android/dex/w;->b:[S

    invoke-static {v0, p1}, Lgf/c;->f([S[S)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/tencent/tinker/android/dex/w;

    invoke-virtual {p0, p1}, Lcom/tencent/tinker/android/dex/w;->a(Lcom/tencent/tinker/android/dex/w;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/tencent/tinker/android/dex/w;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/tencent/tinker/android/dex/w;

    invoke-virtual {p0, p1}, Lcom/tencent/tinker/android/dex/w;->a(Lcom/tencent/tinker/android/dex/w;)I

    move-result p1

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/w;->b:[S

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([S)I

    move-result v0

    return v0
.end method
