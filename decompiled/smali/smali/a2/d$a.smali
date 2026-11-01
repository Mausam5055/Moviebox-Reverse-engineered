.class public final La2/d$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La2/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "a"
.end annotation


# instance fields
.field public final a:Landroidx/media3/common/r;

.field public final b:Lcom/google/common/collect/ImmutableList;

.field public final c:La2/k;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/util/ArrayList;

.field public final f:Ljava/util/ArrayList;

.field public final g:J

.field public final h:Ljava/util/List;

.field public final i:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroidx/media3/common/r;Ljava/util/List;La2/k;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/List;Ljava/util/List;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La2/d$a;->a:Landroidx/media3/common/r;

    invoke-static {p2}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, La2/d$a;->b:Lcom/google/common/collect/ImmutableList;

    iput-object p3, p0, La2/d$a;->c:La2/k;

    iput-object p4, p0, La2/d$a;->d:Ljava/lang/String;

    iput-object p5, p0, La2/d$a;->e:Ljava/util/ArrayList;

    iput-object p6, p0, La2/d$a;->f:Ljava/util/ArrayList;

    iput-object p7, p0, La2/d$a;->h:Ljava/util/List;

    iput-object p8, p0, La2/d$a;->i:Ljava/util/List;

    iput-wide p9, p0, La2/d$a;->g:J

    return-void
.end method
