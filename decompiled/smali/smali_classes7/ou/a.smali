.class public final Lou/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lou/a$b;
    }
.end annotation


# static fields
.field private static volatile s:Lou/a;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:J

.field private final d:I

.field private final e:J

.field private final f:I

.field private final g:J

.field private final h:J

.field private final i:Ljava/lang/String;

.field private final j:J

.field private final k:Ljava/lang/String;

.field private final l:J

.field private final m:J

.field private final n:Z

.field private final o:Z

.field private final p:Ljava/lang/String;

.field private final q:Ljava/lang/String;

.field private final r:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lou/a$b;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lou/a$b;->a(Lou/a$b;)I

    move-result v0

    iput v0, p0, Lou/a;->a:I

    invoke-static {p1}, Lou/a$b;->b(Lou/a$b;)I

    move-result v0

    iput v0, p0, Lou/a;->b:I

    invoke-static {p1}, Lou/a$b;->k(Lou/a$b;)J

    move-result-wide v0

    iput-wide v0, p0, Lou/a;->c:J

    invoke-static {p1}, Lou/a$b;->l(Lou/a$b;)I

    move-result v0

    iput v0, p0, Lou/a;->d:I

    invoke-static {p1}, Lou/a$b;->m(Lou/a$b;)J

    move-result-wide v0

    iput-wide v0, p0, Lou/a;->e:J

    invoke-static {p1}, Lou/a$b;->n(Lou/a$b;)I

    move-result v0

    iput v0, p0, Lou/a;->f:I

    invoke-static {p1}, Lou/a$b;->o(Lou/a$b;)J

    move-result-wide v0

    iput-wide v0, p0, Lou/a;->g:J

    invoke-static {p1}, Lou/a$b;->p(Lou/a$b;)J

    move-result-wide v0

    iput-wide v0, p0, Lou/a;->h:J

    invoke-static {p1}, Lou/a$b;->q(Lou/a$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lou/a;->i:Ljava/lang/String;

    invoke-static {p1}, Lou/a$b;->r(Lou/a$b;)J

    move-result-wide v0

    iput-wide v0, p0, Lou/a;->j:J

    invoke-static {p1}, Lou/a$b;->c(Lou/a$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lou/a;->k:Ljava/lang/String;

    invoke-static {p1}, Lou/a$b;->d(Lou/a$b;)J

    move-result-wide v0

    iput-wide v0, p0, Lou/a;->l:J

    invoke-static {p1}, Lou/a$b;->e(Lou/a$b;)J

    move-result-wide v0

    iput-wide v0, p0, Lou/a;->m:J

    invoke-static {p1}, Lou/a$b;->f(Lou/a$b;)Z

    move-result v0

    iput-boolean v0, p0, Lou/a;->n:Z

    invoke-static {p1}, Lou/a$b;->g(Lou/a$b;)Z

    move-result v0

    iput-boolean v0, p0, Lou/a;->o:Z

    invoke-static {p1}, Lou/a$b;->h(Lou/a$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lou/a;->p:Ljava/lang/String;

    invoke-static {p1}, Lou/a$b;->i(Lou/a$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lou/a;->q:Ljava/lang/String;

    invoke-static {p1}, Lou/a$b;->j(Lou/a$b;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lou/a;->r:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lou/a$b;Lou/a$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lou/a;-><init>(Lou/a$b;)V

    return-void
.end method

.method public static H(Lou/a;)V
    .locals 0

    if-eqz p0, :cond_0

    sput-object p0, Lou/a;->s:Lou/a;

    :cond_0
    return-void
.end method

.method static synthetic a(Lou/a;)I
    .locals 0

    iget p0, p0, Lou/a;->a:I

    return p0
.end method

.method static synthetic b(Lou/a;)I
    .locals 0

    iget p0, p0, Lou/a;->b:I

    return p0
.end method

.method static synthetic c(Lou/a;)J
    .locals 2

    iget-wide v0, p0, Lou/a;->c:J

    return-wide v0
.end method

.method static synthetic d(Lou/a;)I
    .locals 0

    iget p0, p0, Lou/a;->d:I

    return p0
.end method

.method static synthetic e(Lou/a;)J
    .locals 2

    iget-wide v0, p0, Lou/a;->e:J

    return-wide v0
.end method

.method static synthetic f(Lou/a;)I
    .locals 0

    iget p0, p0, Lou/a;->f:I

    return p0
.end method

.method static synthetic g(Lou/a;)J
    .locals 2

    iget-wide v0, p0, Lou/a;->g:J

    return-wide v0
.end method

.method static synthetic h(Lou/a;)J
    .locals 2

    iget-wide v0, p0, Lou/a;->h:J

    return-wide v0
.end method

.method static synthetic i(Lou/a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lou/a;->i:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic j(Lou/a;)J
    .locals 2

    iget-wide v0, p0, Lou/a;->j:J

    return-wide v0
.end method

.method static synthetic k(Lou/a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lou/a;->k:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic l(Lou/a;)J
    .locals 2

    iget-wide v0, p0, Lou/a;->l:J

    return-wide v0
.end method

.method static synthetic m(Lou/a;)J
    .locals 2

    iget-wide v0, p0, Lou/a;->m:J

    return-wide v0
.end method

.method static synthetic n(Lou/a;)Z
    .locals 0

    iget-boolean p0, p0, Lou/a;->n:Z

    return p0
.end method

.method static synthetic o(Lou/a;)Z
    .locals 0

    iget-boolean p0, p0, Lou/a;->o:Z

    return p0
.end method

.method static synthetic p(Lou/a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lou/a;->p:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic q(Lou/a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lou/a;->q:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic r(Lou/a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lou/a;->r:Ljava/lang/String;

    return-object p0
.end method

.method public static s()Lou/a;
    .locals 2

    sget-object v0, Lou/a;->s:Lou/a;

    if-nez v0, :cond_1

    const-class v1, Lou/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lou/a;->s:Lou/a;

    if-nez v0, :cond_0

    new-instance v0, Lou/a$b;

    invoke-direct {v0}, Lou/a$b;-><init>()V

    invoke-virtual {v0}, Lou/a$b;->s()Lou/a;

    move-result-object v0

    sput-object v0, Lou/a;->s:Lou/a;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_2
    return-object v0
.end method


# virtual methods
.method public A()I
    .locals 1

    iget v0, p0, Lou/a;->b:I

    return v0
.end method

.method public B()J
    .locals 2

    iget-wide v0, p0, Lou/a;->h:J

    return-wide v0
.end method

.method public C()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lou/a;->i:Ljava/lang/String;

    return-object v0
.end method

.method public D()J
    .locals 2

    iget-wide v0, p0, Lou/a;->j:J

    return-wide v0
.end method

.method public E()J
    .locals 2

    iget-wide v0, p0, Lou/a;->c:J

    return-wide v0
.end method

.method public F()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lou/a;->q:Ljava/lang/String;

    return-object v0
.end method

.method public G()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lou/a;->k:Ljava/lang/String;

    return-object v0
.end method

.method public I()Z
    .locals 1

    iget-boolean v0, p0, Lou/a;->n:Z

    return v0
.end method

.method public J()Z
    .locals 1

    iget-boolean v0, p0, Lou/a;->o:Z

    return v0
.end method

.method public t()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lou/a;->p:Ljava/lang/String;

    return-object v0
.end method

.method public u()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lou/a;->r:Ljava/lang/String;

    return-object v0
.end method

.method public v()I
    .locals 1

    iget v0, p0, Lou/a;->f:I

    return v0
.end method

.method public w()J
    .locals 2

    iget-wide v0, p0, Lou/a;->g:J

    return-wide v0
.end method

.method public x()I
    .locals 1

    iget v0, p0, Lou/a;->d:I

    return v0
.end method

.method public y()J
    .locals 2

    iget-wide v0, p0, Lou/a;->e:J

    return-wide v0
.end method

.method public z()I
    .locals 1

    iget v0, p0, Lou/a;->a:I

    return v0
.end method
