.class public final Ltd/c;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:J

.field private i:J

.field private j:I

.field private k:[I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Ltd/c;->d:I

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Ltd/c;->h:J

    iput-wide v1, p0, Ltd/c;->i:J

    iput v0, p0, Ltd/c;->j:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltd/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Ltd/c;->c:Z

    return v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ltd/c;->f:Ljava/lang/String;

    return-void
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Ltd/c;->j:I

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ltd/c;->b:Ljava/lang/String;

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ltd/c;->g:Ljava/lang/String;

    return-void
.end method

.method public g(J)V
    .locals 0

    iput-wide p1, p0, Ltd/c;->h:J

    return-void
.end method

.method public h(Z)V
    .locals 0

    iput-boolean p1, p0, Ltd/c;->c:Z

    return-void
.end method

.method public i([I)V
    .locals 0

    iput-object p1, p0, Ltd/c;->k:[I

    return-void
.end method

.method public j(I)V
    .locals 0

    iput p1, p0, Ltd/c;->d:I

    return-void
.end method

.method public k(I)V
    .locals 0

    iput p1, p0, Ltd/c;->a:I

    return-void
.end method

.method public l(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ltd/c;->e:Ljava/lang/String;

    return-void
.end method

.method public m(J)V
    .locals 0

    iput-wide p1, p0, Ltd/c;->i:J

    return-void
.end method
