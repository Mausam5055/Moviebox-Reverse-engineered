.class public final Lgp/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:J

.field private e:J

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-wide v0, p0, Lgp/a;->d:J

    return-wide v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lgp/a;->g:I

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lgp/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final d()J
    .locals 2

    iget-wide v0, p0, Lgp/a;->e:J

    return-wide v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lgp/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final f()I
    .locals 1

    iget v0, p0, Lgp/a;->f:I

    return v0
.end method

.method public final g(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lgp/a;->c:Ljava/lang/String;

    return-void
.end method

.method public final h(J)V
    .locals 0

    iput-wide p1, p0, Lgp/a;->d:J

    return-void
.end method

.method public final i(I)V
    .locals 0

    iput p1, p0, Lgp/a;->g:I

    return-void
.end method

.method public final j(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lgp/a;->a:Ljava/lang/String;

    return-void
.end method

.method public final k(J)V
    .locals 0

    iput-wide p1, p0, Lgp/a;->e:J

    return-void
.end method

.method public final l(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lgp/a;->b:Ljava/lang/String;

    return-void
.end method

.method public final m(I)V
    .locals 0

    iput p1, p0, Lgp/a;->f:I

    return-void
.end method
