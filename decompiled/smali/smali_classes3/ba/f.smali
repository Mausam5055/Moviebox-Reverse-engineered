.class public final Lba/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/k;


# static fields
.field public static final b:Lba/f;

.field public static final c:Lcom/google/android/exoplayer2/k$a;


# instance fields
.field public final a:Lcom/google/common/collect/ImmutableList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lba/f;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-direct {v0, v1}, Lba/f;-><init>(Ljava/util/List;)V

    sput-object v0, Lba/f;->b:Lba/f;

    new-instance v0, Lba/e;

    invoke-direct {v0}, Lba/e;-><init>()V

    sput-object v0, Lba/f;->c:Lcom/google/android/exoplayer2/k$a;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lba/f;->a:Lcom/google/common/collect/ImmutableList;

    return-void
.end method

.method public static synthetic a(Landroid/os/Bundle;)Lba/f;
    .locals 0

    invoke-static {p0}, Lba/f;->c(Landroid/os/Bundle;)Lba/f;

    move-result-object p0

    return-object p0
.end method

.method private static b(Ljava/util/List;)Lcom/google/common/collect/ImmutableList;
    .locals 3

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$a;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lba/b;

    iget-object v2, v2, Lba/b;->d:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lba/b;

    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableList$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$a;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$a;->n()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method private static final c(Landroid/os/Bundle;)Lba/f;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lba/f;->d(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object v0, Lba/b;->s:Lcom/google/android/exoplayer2/k$a;

    invoke-static {v0, p0}, Lcom/google/android/exoplayer2/util/d;->b(Lcom/google/android/exoplayer2/k$a;Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    :goto_0
    new-instance v0, Lba/f;

    invoke-direct {v0, p0}, Lba/f;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method private static d(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x24

    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public toBundle()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Lba/f;->d(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lba/f;->a:Lcom/google/common/collect/ImmutableList;

    invoke-static {v2}, Lba/f;->b(Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/d;->d(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object v0
.end method
