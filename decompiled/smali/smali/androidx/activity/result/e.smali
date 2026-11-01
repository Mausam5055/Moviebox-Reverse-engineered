.class public final Landroidx/activity/result/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/activity/result/e$a;
    }
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

    iput-object v0, p0, Landroidx/activity/result/e;->a:Lf/g$f;

    sget-object v0, Lf/e;->b:Lf/e$a;

    invoke-virtual {v0}, Lf/e$a;->a()I

    move-result v0

    iput v0, p0, Landroidx/activity/result/e;->b:I

    sget-object v0, Lf/g$b$a;->a:Lf/g$b$a;

    iput-object v0, p0, Landroidx/activity/result/e;->d:Lf/g$b;

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-wide v0, p0, Landroidx/activity/result/e;->f:J

    return-wide v0
.end method

.method public final b()Lf/g$b;
    .locals 1

    iget-object v0, p0, Landroidx/activity/result/e;->d:Lf/g$b;

    return-object v0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Landroidx/activity/result/e;->b:I

    return v0
.end method

.method public final d()Lf/g$f;
    .locals 1

    iget-object v0, p0, Landroidx/activity/result/e;->a:Lf/g$f;

    return-object v0
.end method

.method public final e()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/activity/result/e;->e:Z

    return v0
.end method

.method public final f()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/activity/result/e;->c:Z

    return v0
.end method

.method public final g(J)V
    .locals 0

    iput-wide p1, p0, Landroidx/activity/result/e;->f:J

    return-void
.end method

.method public final h(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/activity/result/e;->e:Z

    return-void
.end method

.method public final i(Lf/g$b;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/activity/result/e;->d:Lf/g$b;

    return-void
.end method

.method public final j(I)V
    .locals 0

    iput p1, p0, Landroidx/activity/result/e;->b:I

    return-void
.end method

.method public final k(Lf/g$f;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/activity/result/e;->a:Lf/g$f;

    return-void
.end method

.method public final l(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/activity/result/e;->c:Z

    return-void
.end method
