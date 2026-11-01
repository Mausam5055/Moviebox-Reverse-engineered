.class public final Lg2/f;
.super Ljava/lang/Object;

# interfaces
.implements Lg2/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;Ljava/util/List;)Landroidx/media3/exoplayer/source/f0;
    .locals 1

    new-instance v0, Lg2/d;

    invoke-direct {v0, p1, p2}, Lg2/d;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public b()Landroidx/media3/exoplayer/source/f0;
    .locals 3

    new-instance v0, Lg2/d;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lg2/d;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method
