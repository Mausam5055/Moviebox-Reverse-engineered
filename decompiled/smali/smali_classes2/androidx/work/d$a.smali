.class public final Landroidx/work/d$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Landroidx/work/impl/utils/v;

.field private d:Landroidx/work/NetworkType;

.field private e:Z

.field private f:Z

.field private g:J

.field private h:J

.field private i:Ljava/util/Set;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/work/impl/utils/v;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Landroidx/work/impl/utils/v;-><init>(Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Landroidx/work/d$a;->c:Landroidx/work/impl/utils/v;

    sget-object v0, Landroidx/work/NetworkType;->NOT_REQUIRED:Landroidx/work/NetworkType;

    iput-object v0, p0, Landroidx/work/d$a;->d:Landroidx/work/NetworkType;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/work/d$a;->g:J

    iput-wide v0, p0, Landroidx/work/d$a;->h:J

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Landroidx/work/d$a;->i:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final a()Landroidx/work/d;
    .locals 15

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroidx/work/d$a;->i:Ljava/util/Set;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->W0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    iget-wide v1, p0, Landroidx/work/d$a;->g:J

    iget-wide v3, p0, Landroidx/work/d$a;->h:J

    move-object v14, v0

    move-wide v10, v1

    move-wide v12, v3

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/collections/SetsKt;->f()Ljava/util/Set;

    move-result-object v0

    const-wide/16 v1, -0x1

    move-object v14, v0

    move-wide v10, v1

    move-wide v12, v10

    :goto_0
    iget-object v4, p0, Landroidx/work/d$a;->c:Landroidx/work/impl/utils/v;

    iget-object v5, p0, Landroidx/work/d$a;->d:Landroidx/work/NetworkType;

    iget-boolean v6, p0, Landroidx/work/d$a;->a:Z

    iget-boolean v7, p0, Landroidx/work/d$a;->b:Z

    iget-boolean v8, p0, Landroidx/work/d$a;->e:Z

    iget-boolean v9, p0, Landroidx/work/d$a;->f:Z

    new-instance v0, Landroidx/work/d;

    move-object v3, v0

    invoke-direct/range {v3 .. v14}, Landroidx/work/d;-><init>(Landroidx/work/impl/utils/v;Landroidx/work/NetworkType;ZZZZJJLjava/util/Set;)V

    return-object v0
.end method

.method public final b(Landroidx/work/NetworkType;)Landroidx/work/d$a;
    .locals 2

    const-string v0, "networkType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/work/d$a;->d:Landroidx/work/NetworkType;

    new-instance p1, Landroidx/work/impl/utils/v;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1, v0}, Landroidx/work/impl/utils/v;-><init>(Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Landroidx/work/d$a;->c:Landroidx/work/impl/utils/v;

    return-object p0
.end method
