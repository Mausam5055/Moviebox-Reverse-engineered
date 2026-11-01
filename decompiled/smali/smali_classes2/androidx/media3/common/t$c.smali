.class public final Landroidx/media3/common/t$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/net/Uri;

.field private c:Ljava/lang/String;

.field private d:Landroidx/media3/common/t$d$a;

.field private e:Landroidx/media3/common/t$f$a;

.field private f:Ljava/util/List;

.field private g:Ljava/lang/String;

.field private h:Lcom/google/common/collect/ImmutableList;

.field private i:Ljava/lang/Object;

.field private j:J

.field private k:Landroidx/media3/common/v;

.field private l:Landroidx/media3/common/t$g$a;

.field private m:Landroidx/media3/common/t$i;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/media3/common/t$d$a;

    invoke-direct {v0}, Landroidx/media3/common/t$d$a;-><init>()V

    iput-object v0, p0, Landroidx/media3/common/t$c;->d:Landroidx/media3/common/t$d$a;

    new-instance v0, Landroidx/media3/common/t$f$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/media3/common/t$f$a;-><init>(Landroidx/media3/common/t$a;)V

    iput-object v0, p0, Landroidx/media3/common/t$c;->e:Landroidx/media3/common/t$f$a;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/t$c;->f:Ljava/util/List;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/t$c;->h:Lcom/google/common/collect/ImmutableList;

    new-instance v0, Landroidx/media3/common/t$g$a;

    invoke-direct {v0}, Landroidx/media3/common/t$g$a;-><init>()V

    iput-object v0, p0, Landroidx/media3/common/t$c;->l:Landroidx/media3/common/t$g$a;

    sget-object v0, Landroidx/media3/common/t$i;->d:Landroidx/media3/common/t$i;

    iput-object v0, p0, Landroidx/media3/common/t$c;->m:Landroidx/media3/common/t$i;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/common/t$c;->j:J

    return-void
.end method

.method private constructor <init>(Landroidx/media3/common/t;)V
    .locals 2

    invoke-direct {p0}, Landroidx/media3/common/t$c;-><init>()V

    iget-object v0, p1, Landroidx/media3/common/t;->f:Landroidx/media3/common/t$d;

    invoke-virtual {v0}, Landroidx/media3/common/t$d;->a()Landroidx/media3/common/t$d$a;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/t$c;->d:Landroidx/media3/common/t$d$a;

    iget-object v0, p1, Landroidx/media3/common/t;->a:Ljava/lang/String;

    iput-object v0, p0, Landroidx/media3/common/t$c;->a:Ljava/lang/String;

    iget-object v0, p1, Landroidx/media3/common/t;->e:Landroidx/media3/common/v;

    iput-object v0, p0, Landroidx/media3/common/t$c;->k:Landroidx/media3/common/v;

    iget-object v0, p1, Landroidx/media3/common/t;->d:Landroidx/media3/common/t$g;

    invoke-virtual {v0}, Landroidx/media3/common/t$g;->a()Landroidx/media3/common/t$g$a;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/t$c;->l:Landroidx/media3/common/t$g$a;

    iget-object v0, p1, Landroidx/media3/common/t;->h:Landroidx/media3/common/t$i;

    iput-object v0, p0, Landroidx/media3/common/t$c;->m:Landroidx/media3/common/t$i;

    iget-object p1, p1, Landroidx/media3/common/t;->b:Landroidx/media3/common/t$h;

    if-eqz p1, :cond_1

    iget-object v0, p1, Landroidx/media3/common/t$h;->e:Ljava/lang/String;

    iput-object v0, p0, Landroidx/media3/common/t$c;->g:Ljava/lang/String;

    iget-object v0, p1, Landroidx/media3/common/t$h;->b:Ljava/lang/String;

    iput-object v0, p0, Landroidx/media3/common/t$c;->c:Ljava/lang/String;

    iget-object v0, p1, Landroidx/media3/common/t$h;->a:Landroid/net/Uri;

    iput-object v0, p0, Landroidx/media3/common/t$c;->b:Landroid/net/Uri;

    iget-object v0, p1, Landroidx/media3/common/t$h;->d:Ljava/util/List;

    iput-object v0, p0, Landroidx/media3/common/t$c;->f:Ljava/util/List;

    iget-object v0, p1, Landroidx/media3/common/t$h;->f:Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Landroidx/media3/common/t$c;->h:Lcom/google/common/collect/ImmutableList;

    iget-object v0, p1, Landroidx/media3/common/t$h;->h:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/media3/common/t$c;->i:Ljava/lang/Object;

    iget-object v0, p1, Landroidx/media3/common/t$h;->c:Landroidx/media3/common/t$f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/media3/common/t$f;->b()Landroidx/media3/common/t$f$a;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/media3/common/t$f$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/media3/common/t$f$a;-><init>(Landroidx/media3/common/t$a;)V

    :goto_0
    iput-object v0, p0, Landroidx/media3/common/t$c;->e:Landroidx/media3/common/t$f$a;

    iget-wide v0, p1, Landroidx/media3/common/t$h;->i:J

    iput-wide v0, p0, Landroidx/media3/common/t$c;->j:J

    :cond_1
    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/common/t;Landroidx/media3/common/t$a;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/common/t$c;-><init>(Landroidx/media3/common/t;)V

    return-void
.end method


# virtual methods
.method public a()Landroidx/media3/common/t;
    .locals 23

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/media3/common/t$c;->e:Landroidx/media3/common/t$f$a;

    invoke-static {v1}, Landroidx/media3/common/t$f$a;->e(Landroidx/media3/common/t$f$a;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroidx/media3/common/t$c;->e:Landroidx/media3/common/t$f$a;

    invoke-static {v1}, Landroidx/media3/common/t$f$a;->f(Landroidx/media3/common/t$f$a;)Ljava/util/UUID;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Landroidx/media3/common/util/a;->g(Z)V

    iget-object v3, v0, Landroidx/media3/common/t$c;->b:Landroid/net/Uri;

    const/4 v1, 0x0

    if-eqz v3, :cond_3

    new-instance v14, Landroidx/media3/common/t$h;

    iget-object v4, v0, Landroidx/media3/common/t$c;->c:Ljava/lang/String;

    iget-object v2, v0, Landroidx/media3/common/t$c;->e:Landroidx/media3/common/t$f$a;

    invoke-static {v2}, Landroidx/media3/common/t$f$a;->f(Landroidx/media3/common/t$f$a;)Ljava/util/UUID;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v1, v0, Landroidx/media3/common/t$c;->e:Landroidx/media3/common/t$f$a;

    invoke-virtual {v1}, Landroidx/media3/common/t$f$a;->i()Landroidx/media3/common/t$f;

    move-result-object v1

    :cond_2
    move-object v5, v1

    iget-object v7, v0, Landroidx/media3/common/t$c;->f:Ljava/util/List;

    iget-object v8, v0, Landroidx/media3/common/t$c;->g:Ljava/lang/String;

    iget-object v9, v0, Landroidx/media3/common/t$c;->h:Lcom/google/common/collect/ImmutableList;

    iget-object v10, v0, Landroidx/media3/common/t$c;->i:Ljava/lang/Object;

    iget-wide v11, v0, Landroidx/media3/common/t$c;->j:J

    const/4 v13, 0x0

    const/4 v6, 0x0

    move-object v2, v14

    invoke-direct/range {v2 .. v13}, Landroidx/media3/common/t$h;-><init>(Landroid/net/Uri;Ljava/lang/String;Landroidx/media3/common/t$f;Landroidx/media3/common/t$b;Ljava/util/List;Ljava/lang/String;Lcom/google/common/collect/ImmutableList;Ljava/lang/Object;JLandroidx/media3/common/t$a;)V

    move-object/from16 v18, v14

    goto :goto_2

    :cond_3
    move-object/from16 v18, v1

    :goto_2
    new-instance v1, Landroidx/media3/common/t;

    iget-object v2, v0, Landroidx/media3/common/t$c;->a:Ljava/lang/String;

    if-eqz v2, :cond_4

    :goto_3
    move-object/from16 v16, v2

    goto :goto_4

    :cond_4
    const-string v2, ""

    goto :goto_3

    :goto_4
    iget-object v2, v0, Landroidx/media3/common/t$c;->d:Landroidx/media3/common/t$d$a;

    invoke-virtual {v2}, Landroidx/media3/common/t$d$a;->g()Landroidx/media3/common/t$e;

    move-result-object v17

    iget-object v2, v0, Landroidx/media3/common/t$c;->l:Landroidx/media3/common/t$g$a;

    invoke-virtual {v2}, Landroidx/media3/common/t$g$a;->f()Landroidx/media3/common/t$g;

    move-result-object v19

    iget-object v2, v0, Landroidx/media3/common/t$c;->k:Landroidx/media3/common/v;

    if-eqz v2, :cond_5

    :goto_5
    move-object/from16 v20, v2

    goto :goto_6

    :cond_5
    sget-object v2, Landroidx/media3/common/v;->I:Landroidx/media3/common/v;

    goto :goto_5

    :goto_6
    iget-object v2, v0, Landroidx/media3/common/t$c;->m:Landroidx/media3/common/t$i;

    const/16 v22, 0x0

    move-object v15, v1

    move-object/from16 v21, v2

    invoke-direct/range {v15 .. v22}, Landroidx/media3/common/t;-><init>(Ljava/lang/String;Landroidx/media3/common/t$e;Landroidx/media3/common/t$h;Landroidx/media3/common/t$g;Landroidx/media3/common/v;Landroidx/media3/common/t$i;Landroidx/media3/common/t$a;)V

    return-object v1
.end method

.method public b(Ljava/lang/String;)Landroidx/media3/common/t$c;
    .locals 0

    iput-object p1, p0, Landroidx/media3/common/t$c;->g:Ljava/lang/String;

    return-object p0
.end method

.method public c(Landroidx/media3/common/t$g;)Landroidx/media3/common/t$c;
    .locals 0

    invoke-virtual {p1}, Landroidx/media3/common/t$g;->a()Landroidx/media3/common/t$g$a;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/common/t$c;->l:Landroidx/media3/common/t$g$a;

    return-object p0
.end method

.method public d(Ljava/lang/String;)Landroidx/media3/common/t$c;
    .locals 0

    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Landroidx/media3/common/t$c;->a:Ljava/lang/String;

    return-object p0
.end method

.method public e(Ljava/lang/String;)Landroidx/media3/common/t$c;
    .locals 0

    iput-object p1, p0, Landroidx/media3/common/t$c;->c:Ljava/lang/String;

    return-object p0
.end method

.method public f(Ljava/util/List;)Landroidx/media3/common/t$c;
    .locals 1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Landroidx/media3/common/t$c;->f:Ljava/util/List;

    return-object p0
.end method

.method public g(Ljava/util/List;)Landroidx/media3/common/t$c;
    .locals 0

    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/common/t$c;->h:Lcom/google/common/collect/ImmutableList;

    return-object p0
.end method

.method public h(Ljava/lang/Object;)Landroidx/media3/common/t$c;
    .locals 0

    iput-object p1, p0, Landroidx/media3/common/t$c;->i:Ljava/lang/Object;

    return-object p0
.end method

.method public i(Landroid/net/Uri;)Landroidx/media3/common/t$c;
    .locals 0

    iput-object p1, p0, Landroidx/media3/common/t$c;->b:Landroid/net/Uri;

    return-object p0
.end method

.method public j(Ljava/lang/String;)Landroidx/media3/common/t$c;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/media3/common/t$c;->i(Landroid/net/Uri;)Landroidx/media3/common/t$c;

    move-result-object p1

    return-object p1
.end method
