.class final Lcom/tencent/tinker/android/dex/j$k;
.super Ljava/util/AbstractList;

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tinker/android/dex/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "k"
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/tinker/android/dex/j;


# direct methods
.method private constructor <init>(Lcom/tencent/tinker/android/dex/j;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tinker/android/dex/j$k;->a:Lcom/tencent/tinker/android/dex/j;

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/tinker/android/dex/j;Lcom/tencent/tinker/android/dex/j$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/tinker/android/dex/j$k;-><init>(Lcom/tencent/tinker/android/dex/j;)V

    return-void
.end method


# virtual methods
.method public a(I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/j$k;->a:Lcom/tencent/tinker/android/dex/j;

    invoke-static {v0}, Lcom/tencent/tinker/android/dex/j;->c(Lcom/tencent/tinker/android/dex/j;)Lcom/tencent/tinker/android/dex/j$i;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tinker/android/dex/j$k;->a:Lcom/tencent/tinker/android/dex/j;

    invoke-virtual {v1, p1}, Lcom/tencent/tinker/android/dex/j;->g(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/tencent/tinker/android/dex/j$i;->a(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/tencent/tinker/android/dex/j$k;->a(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/j$k;->a:Lcom/tencent/tinker/android/dex/j;

    invoke-static {v0}, Lcom/tencent/tinker/android/dex/j;->a(Lcom/tencent/tinker/android/dex/j;)Lcom/tencent/tinker/android/dex/v;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/tinker/android/dex/v;->c:Lcom/tencent/tinker/android/dex/v$a;

    iget v0, v0, Lcom/tencent/tinker/android/dex/v$a;->c:I

    return v0
.end method
