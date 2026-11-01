.class public final Landroidx/activity/result/e$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/activity/result/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Lf/g$f;

.field private b:I

.field private c:Z

.field private d:Lf/g$b;

.field private e:Z

.field private f:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lf/g$c;->a:Lf/g$c;

    iput-object v0, p0, Landroidx/activity/result/e$a;->a:Lf/g$f;

    sget-object v0, Lf/e;->b:Lf/e$a;

    invoke-virtual {v0}, Lf/e$a;->a()I

    move-result v0

    iput v0, p0, Landroidx/activity/result/e$a;->b:I

    sget-object v0, Lf/g$b$a;->a:Lf/g$b$a;

    iput-object v0, p0, Landroidx/activity/result/e$a;->d:Lf/g$b;

    return-void
.end method


# virtual methods
.method public final a()Landroidx/activity/result/e;
    .locals 3

    new-instance v0, Landroidx/activity/result/e;

    invoke-direct {v0}, Landroidx/activity/result/e;-><init>()V

    iget-object v1, p0, Landroidx/activity/result/e$a;->a:Lf/g$f;

    invoke-virtual {v0, v1}, Landroidx/activity/result/e;->k(Lf/g$f;)V

    iget v1, p0, Landroidx/activity/result/e$a;->b:I

    invoke-virtual {v0, v1}, Landroidx/activity/result/e;->j(I)V

    iget-boolean v1, p0, Landroidx/activity/result/e$a;->c:Z

    invoke-virtual {v0, v1}, Landroidx/activity/result/e;->l(Z)V

    iget-object v1, p0, Landroidx/activity/result/e$a;->d:Lf/g$b;

    invoke-virtual {v0, v1}, Landroidx/activity/result/e;->i(Lf/g$b;)V

    iget-boolean v1, p0, Landroidx/activity/result/e$a;->e:Z

    invoke-virtual {v0, v1}, Landroidx/activity/result/e;->h(Z)V

    iget-wide v1, p0, Landroidx/activity/result/e$a;->f:J

    invoke-virtual {v0, v1, v2}, Landroidx/activity/result/e;->g(J)V

    return-object v0
.end method

.method public final b(Lf/g$b;)Landroidx/activity/result/e$a;
    .locals 1

    const-string v0, "defaultTab"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/activity/result/e$a;->d:Lf/g$b;

    return-object p0
.end method

.method public final c(I)Landroidx/activity/result/e$a;
    .locals 0

    iput p1, p0, Landroidx/activity/result/e$a;->b:I

    return-object p0
.end method

.method public final d(Lf/g$f;)Landroidx/activity/result/e$a;
    .locals 1

    const-string v0, "mediaType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/activity/result/e$a;->a:Lf/g$f;

    return-object p0
.end method

.method public final e(Z)Landroidx/activity/result/e$a;
    .locals 0

    iput-boolean p1, p0, Landroidx/activity/result/e$a;->c:Z

    return-object p0
.end method
