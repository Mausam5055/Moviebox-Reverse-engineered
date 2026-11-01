.class public final Landroidx/media3/container/g$k;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/container/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "k"
.end annotation


# instance fields
.field public final a:Landroidx/media3/container/g$b;

.field public final b:Lcom/google/common/collect/ImmutableList;

.field public final c:Landroidx/media3/container/g$d;

.field public final d:Landroidx/media3/container/g$f;

.field public final e:Landroidx/media3/container/g$j;


# direct methods
.method public constructor <init>(Landroidx/media3/container/g$b;Ljava/util/List;Landroidx/media3/container/g$d;Landroidx/media3/container/g$f;Landroidx/media3/container/g$j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/container/g$k;->a:Landroidx/media3/container/g$b;

    if-eqz p2, :cond_0

    invoke-static {p2}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Landroidx/media3/container/g$k;->b:Lcom/google/common/collect/ImmutableList;

    iput-object p3, p0, Landroidx/media3/container/g$k;->c:Landroidx/media3/container/g$d;

    iput-object p4, p0, Landroidx/media3/container/g$k;->d:Landroidx/media3/container/g$f;

    iput-object p5, p0, Landroidx/media3/container/g$k;->e:Landroidx/media3/container/g$j;

    return-void
.end method
