.class abstract Landroidx/datastore/preferences/protobuf/k1;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/datastore/preferences/protobuf/k1$b;,
        Landroidx/datastore/preferences/protobuf/k1$c;,
        Landroidx/datastore/preferences/protobuf/k1$d;,
        Landroidx/datastore/preferences/protobuf/k1$e;
    }
.end annotation


# static fields
.field private static final a:Lsun/misc/Unsafe;

.field private static final b:Ljava/lang/Class;

.field private static final c:Z

.field private static final d:Z

.field private static final e:Landroidx/datastore/preferences/protobuf/k1$e;

.field private static final f:Z

.field private static final g:Z

.field static final h:J

.field private static final i:J

.field private static final j:J

.field private static final k:J

.field private static final l:J

.field private static final m:J

.field private static final n:J

.field private static final o:J

.field private static final p:J

.field private static final q:J

.field private static final r:J

.field private static final s:J

.field private static final t:J

.field private static final u:J

.field private static final v:I

.field static final w:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    invoke-static {}, Landroidx/datastore/preferences/protobuf/k1;->H()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Landroidx/datastore/preferences/protobuf/k1;->a:Lsun/misc/Unsafe;

    invoke-static {}, Landroidx/datastore/preferences/protobuf/d;->b()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Landroidx/datastore/preferences/protobuf/k1;->b:Ljava/lang/Class;

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/k1;->q(Ljava/lang/Class;)Z

    move-result v0

    sput-boolean v0, Landroidx/datastore/preferences/protobuf/k1;->c:Z

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/k1;->q(Ljava/lang/Class;)Z

    move-result v0

    sput-boolean v0, Landroidx/datastore/preferences/protobuf/k1;->d:Z

    invoke-static {}, Landroidx/datastore/preferences/protobuf/k1;->F()Landroidx/datastore/preferences/protobuf/k1$e;

    move-result-object v0

    sput-object v0, Landroidx/datastore/preferences/protobuf/k1;->e:Landroidx/datastore/preferences/protobuf/k1$e;

    invoke-static {}, Landroidx/datastore/preferences/protobuf/k1;->Y()Z

    move-result v0

    sput-boolean v0, Landroidx/datastore/preferences/protobuf/k1;->f:Z

    invoke-static {}, Landroidx/datastore/preferences/protobuf/k1;->X()Z

    move-result v0

    sput-boolean v0, Landroidx/datastore/preferences/protobuf/k1;->g:Z

    const-class v0, [B

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/k1;->m(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Landroidx/datastore/preferences/protobuf/k1;->h:J

    const-class v2, [Z

    invoke-static {v2}, Landroidx/datastore/preferences/protobuf/k1;->m(Ljava/lang/Class;)I

    move-result v3

    int-to-long v3, v3

    sput-wide v3, Landroidx/datastore/preferences/protobuf/k1;->i:J

    invoke-static {v2}, Landroidx/datastore/preferences/protobuf/k1;->n(Ljava/lang/Class;)I

    move-result v2

    int-to-long v2, v2

    sput-wide v2, Landroidx/datastore/preferences/protobuf/k1;->j:J

    const-class v2, [I

    invoke-static {v2}, Landroidx/datastore/preferences/protobuf/k1;->m(Ljava/lang/Class;)I

    move-result v3

    int-to-long v3, v3

    sput-wide v3, Landroidx/datastore/preferences/protobuf/k1;->k:J

    invoke-static {v2}, Landroidx/datastore/preferences/protobuf/k1;->n(Ljava/lang/Class;)I

    move-result v2

    int-to-long v2, v2

    sput-wide v2, Landroidx/datastore/preferences/protobuf/k1;->l:J

    const-class v2, [J

    invoke-static {v2}, Landroidx/datastore/preferences/protobuf/k1;->m(Ljava/lang/Class;)I

    move-result v3

    int-to-long v3, v3

    sput-wide v3, Landroidx/datastore/preferences/protobuf/k1;->m:J

    invoke-static {v2}, Landroidx/datastore/preferences/protobuf/k1;->n(Ljava/lang/Class;)I

    move-result v2

    int-to-long v2, v2

    sput-wide v2, Landroidx/datastore/preferences/protobuf/k1;->n:J

    const-class v2, [F

    invoke-static {v2}, Landroidx/datastore/preferences/protobuf/k1;->m(Ljava/lang/Class;)I

    move-result v3

    int-to-long v3, v3

    sput-wide v3, Landroidx/datastore/preferences/protobuf/k1;->o:J

    invoke-static {v2}, Landroidx/datastore/preferences/protobuf/k1;->n(Ljava/lang/Class;)I

    move-result v2

    int-to-long v2, v2

    sput-wide v2, Landroidx/datastore/preferences/protobuf/k1;->p:J

    const-class v2, [D

    invoke-static {v2}, Landroidx/datastore/preferences/protobuf/k1;->m(Ljava/lang/Class;)I

    move-result v3

    int-to-long v3, v3

    sput-wide v3, Landroidx/datastore/preferences/protobuf/k1;->q:J

    invoke-static {v2}, Landroidx/datastore/preferences/protobuf/k1;->n(Ljava/lang/Class;)I

    move-result v2

    int-to-long v2, v2

    sput-wide v2, Landroidx/datastore/preferences/protobuf/k1;->r:J

    const-class v2, [Ljava/lang/Object;

    invoke-static {v2}, Landroidx/datastore/preferences/protobuf/k1;->m(Ljava/lang/Class;)I

    move-result v3

    int-to-long v3, v3

    sput-wide v3, Landroidx/datastore/preferences/protobuf/k1;->s:J

    invoke-static {v2}, Landroidx/datastore/preferences/protobuf/k1;->n(Ljava/lang/Class;)I

    move-result v2

    int-to-long v2, v2

    sput-wide v2, Landroidx/datastore/preferences/protobuf/k1;->t:J

    invoke-static {}, Landroidx/datastore/preferences/protobuf/k1;->o()Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-static {v2}, Landroidx/datastore/preferences/protobuf/k1;->s(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Landroidx/datastore/preferences/protobuf/k1;->u:J

    const-wide/16 v2, 0x7

    and-long/2addr v0, v2

    long-to-int v0, v0

    sput v0, Landroidx/datastore/preferences/protobuf/k1;->v:I

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroidx/datastore/preferences/protobuf/k1;->w:Z

    return-void
.end method

.method static A(Ljava/lang/Object;J)D
    .locals 1

    sget-object v0, Landroidx/datastore/preferences/protobuf/k1;->e:Landroidx/datastore/preferences/protobuf/k1$e;

    invoke-virtual {v0, p0, p1, p2}, Landroidx/datastore/preferences/protobuf/k1$e;->g(Ljava/lang/Object;J)D

    move-result-wide p0

    return-wide p0
.end method

.method static B(Ljava/lang/Object;J)F
    .locals 1

    sget-object v0, Landroidx/datastore/preferences/protobuf/k1;->e:Landroidx/datastore/preferences/protobuf/k1$e;

    invoke-virtual {v0, p0, p1, p2}, Landroidx/datastore/preferences/protobuf/k1$e;->h(Ljava/lang/Object;J)F

    move-result p0

    return p0
.end method

.method static C(Ljava/lang/Object;J)I
    .locals 1

    sget-object v0, Landroidx/datastore/preferences/protobuf/k1;->e:Landroidx/datastore/preferences/protobuf/k1$e;

    invoke-virtual {v0, p0, p1, p2}, Landroidx/datastore/preferences/protobuf/k1$e;->i(Ljava/lang/Object;J)I

    move-result p0

    return p0
.end method

.method static D(J)J
    .locals 1

    sget-object v0, Landroidx/datastore/preferences/protobuf/k1;->e:Landroidx/datastore/preferences/protobuf/k1$e;

    invoke-virtual {v0, p0, p1}, Landroidx/datastore/preferences/protobuf/k1$e;->j(J)J

    move-result-wide p0

    return-wide p0
.end method

.method static E(Ljava/lang/Object;J)J
    .locals 1

    sget-object v0, Landroidx/datastore/preferences/protobuf/k1;->e:Landroidx/datastore/preferences/protobuf/k1$e;

    invoke-virtual {v0, p0, p1, p2}, Landroidx/datastore/preferences/protobuf/k1$e;->k(Ljava/lang/Object;J)J

    move-result-wide p0

    return-wide p0
.end method

.method private static F()Landroidx/datastore/preferences/protobuf/k1$e;
    .locals 3

    sget-object v0, Landroidx/datastore/preferences/protobuf/k1;->a:Lsun/misc/Unsafe;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {}, Landroidx/datastore/preferences/protobuf/d;->c()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-boolean v2, Landroidx/datastore/preferences/protobuf/k1;->c:Z

    if-eqz v2, :cond_1

    new-instance v1, Landroidx/datastore/preferences/protobuf/k1$c;

    invoke-direct {v1, v0}, Landroidx/datastore/preferences/protobuf/k1$c;-><init>(Lsun/misc/Unsafe;)V

    return-object v1

    :cond_1
    sget-boolean v2, Landroidx/datastore/preferences/protobuf/k1;->d:Z

    if-eqz v2, :cond_2

    new-instance v1, Landroidx/datastore/preferences/protobuf/k1$b;

    invoke-direct {v1, v0}, Landroidx/datastore/preferences/protobuf/k1$b;-><init>(Lsun/misc/Unsafe;)V

    :cond_2
    return-object v1

    :cond_3
    new-instance v1, Landroidx/datastore/preferences/protobuf/k1$d;

    invoke-direct {v1, v0}, Landroidx/datastore/preferences/protobuf/k1$d;-><init>(Lsun/misc/Unsafe;)V

    return-object v1
.end method

.method static G(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 1

    sget-object v0, Landroidx/datastore/preferences/protobuf/k1;->e:Landroidx/datastore/preferences/protobuf/k1$e;

    invoke-virtual {v0, p0, p1, p2}, Landroidx/datastore/preferences/protobuf/k1$e;->l(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static H()Lsun/misc/Unsafe;
    .locals 1

    :try_start_0
    new-instance v0, Landroidx/datastore/preferences/protobuf/k1$a;

    invoke-direct {v0}, Landroidx/datastore/preferences/protobuf/k1$a;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/Unsafe;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method static I()Z
    .locals 1

    sget-boolean v0, Landroidx/datastore/preferences/protobuf/k1;->g:Z

    return v0
.end method

.method static J()Z
    .locals 1

    sget-boolean v0, Landroidx/datastore/preferences/protobuf/k1;->f:Z

    return v0
.end method

.method private static K(Ljava/lang/Throwable;)V
    .locals 4

    const-class v0, Landroidx/datastore/preferences/protobuf/k1;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "platform method missing - proto runtime falling back to safer methods: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return-void
.end method

.method static L(Ljava/lang/reflect/Field;)J
    .locals 2

    sget-object v0, Landroidx/datastore/preferences/protobuf/k1;->e:Landroidx/datastore/preferences/protobuf/k1$e;

    invoke-virtual {v0, p0}, Landroidx/datastore/preferences/protobuf/k1$e;->m(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    return-wide v0
.end method

.method static M(Ljava/lang/Object;JZ)V
    .locals 1

    sget-object v0, Landroidx/datastore/preferences/protobuf/k1;->e:Landroidx/datastore/preferences/protobuf/k1$e;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/k1$e;->n(Ljava/lang/Object;JZ)V

    return-void
.end method

.method private static N(Ljava/lang/Object;JZ)V
    .locals 0

    int-to-byte p3, p3

    invoke-static {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/k1;->Q(Ljava/lang/Object;JB)V

    return-void
.end method

.method private static O(Ljava/lang/Object;JZ)V
    .locals 0

    int-to-byte p3, p3

    invoke-static {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/k1;->R(Ljava/lang/Object;JB)V

    return-void
.end method

.method static P([BJB)V
    .locals 3

    sget-object v0, Landroidx/datastore/preferences/protobuf/k1;->e:Landroidx/datastore/preferences/protobuf/k1$e;

    sget-wide v1, Landroidx/datastore/preferences/protobuf/k1;->h:J

    add-long/2addr v1, p1

    invoke-virtual {v0, p0, v1, v2, p3}, Landroidx/datastore/preferences/protobuf/k1$e;->o(Ljava/lang/Object;JB)V

    return-void
.end method

.method private static Q(Ljava/lang/Object;JB)V
    .locals 4

    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    invoke-static {p0, v0, v1}, Landroidx/datastore/preferences/protobuf/k1;->C(Ljava/lang/Object;J)I

    move-result v2

    long-to-int p1, p1

    not-int p1, p1

    and-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x3

    const/16 p2, 0xff

    shl-int v3, p2, p1

    not-int v3, v3

    and-int/2addr v2, v3

    and-int/2addr p2, p3

    shl-int p1, p2, p1

    or-int/2addr p1, v2

    invoke-static {p0, v0, v1, p1}, Landroidx/datastore/preferences/protobuf/k1;->U(Ljava/lang/Object;JI)V

    return-void
.end method

.method private static R(Ljava/lang/Object;JB)V
    .locals 4

    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    invoke-static {p0, v0, v1}, Landroidx/datastore/preferences/protobuf/k1;->C(Ljava/lang/Object;J)I

    move-result v2

    long-to-int p1, p1

    and-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x3

    const/16 p2, 0xff

    shl-int v3, p2, p1

    not-int v3, v3

    and-int/2addr v2, v3

    and-int/2addr p2, p3

    shl-int p1, p2, p1

    or-int/2addr p1, v2

    invoke-static {p0, v0, v1, p1}, Landroidx/datastore/preferences/protobuf/k1;->U(Ljava/lang/Object;JI)V

    return-void
.end method

.method static S(Ljava/lang/Object;JD)V
    .locals 6

    sget-object v0, Landroidx/datastore/preferences/protobuf/k1;->e:Landroidx/datastore/preferences/protobuf/k1$e;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/k1$e;->p(Ljava/lang/Object;JD)V

    return-void
.end method

.method static T(Ljava/lang/Object;JF)V
    .locals 1

    sget-object v0, Landroidx/datastore/preferences/protobuf/k1;->e:Landroidx/datastore/preferences/protobuf/k1$e;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/k1$e;->q(Ljava/lang/Object;JF)V

    return-void
.end method

.method static U(Ljava/lang/Object;JI)V
    .locals 1

    sget-object v0, Landroidx/datastore/preferences/protobuf/k1;->e:Landroidx/datastore/preferences/protobuf/k1$e;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/k1$e;->r(Ljava/lang/Object;JI)V

    return-void
.end method

.method static V(Ljava/lang/Object;JJ)V
    .locals 6

    sget-object v0, Landroidx/datastore/preferences/protobuf/k1;->e:Landroidx/datastore/preferences/protobuf/k1$e;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/k1$e;->s(Ljava/lang/Object;JJ)V

    return-void
.end method

.method static W(Ljava/lang/Object;JLjava/lang/Object;)V
    .locals 1

    sget-object v0, Landroidx/datastore/preferences/protobuf/k1;->e:Landroidx/datastore/preferences/protobuf/k1$e;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/k1$e;->t(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method private static X()Z
    .locals 1

    sget-object v0, Landroidx/datastore/preferences/protobuf/k1;->e:Landroidx/datastore/preferences/protobuf/k1$e;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/k1$e;->u()Z

    move-result v0

    return v0
.end method

.method private static Y()Z
    .locals 1

    sget-object v0, Landroidx/datastore/preferences/protobuf/k1;->e:Landroidx/datastore/preferences/protobuf/k1$e;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/k1$e;->v()Z

    move-result v0

    return v0
.end method

.method static synthetic a(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/k1;->K(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic b()Ljava/lang/reflect/Field;
    .locals 1

    invoke-static {}, Landroidx/datastore/preferences/protobuf/k1;->o()Ljava/lang/reflect/Field;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Ljava/lang/Object;J)B
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/k1;->y(Ljava/lang/Object;J)B

    move-result p0

    return p0
.end method

.method static synthetic d(Ljava/lang/Object;J)B
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/k1;->z(Ljava/lang/Object;J)B

    move-result p0

    return p0
.end method

.method static synthetic e(Ljava/lang/Object;JB)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/k1;->Q(Ljava/lang/Object;JB)V

    return-void
.end method

.method static synthetic f(Ljava/lang/Object;JB)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/k1;->R(Ljava/lang/Object;JB)V

    return-void
.end method

.method static synthetic g(Ljava/lang/Object;J)Z
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/k1;->u(Ljava/lang/Object;J)Z

    move-result p0

    return p0
.end method

.method static synthetic h(Ljava/lang/Object;J)Z
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/k1;->v(Ljava/lang/Object;J)Z

    move-result p0

    return p0
.end method

.method static synthetic i(Ljava/lang/Object;JZ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/k1;->N(Ljava/lang/Object;JZ)V

    return-void
.end method

.method static synthetic j(Ljava/lang/Object;JZ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/k1;->O(Ljava/lang/Object;JZ)V

    return-void
.end method

.method static k(Ljava/nio/ByteBuffer;)J
    .locals 3

    sget-object v0, Landroidx/datastore/preferences/protobuf/k1;->e:Landroidx/datastore/preferences/protobuf/k1$e;

    sget-wide v1, Landroidx/datastore/preferences/protobuf/k1;->u:J

    invoke-virtual {v0, p0, v1, v2}, Landroidx/datastore/preferences/protobuf/k1$e;->k(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method static l(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    :try_start_0
    sget-object v0, Landroidx/datastore/preferences/protobuf/k1;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->allocateInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static m(Ljava/lang/Class;)I
    .locals 1

    sget-boolean v0, Landroidx/datastore/preferences/protobuf/k1;->g:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroidx/datastore/preferences/protobuf/k1;->e:Landroidx/datastore/preferences/protobuf/k1$e;

    invoke-virtual {v0, p0}, Landroidx/datastore/preferences/protobuf/k1$e;->a(Ljava/lang/Class;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method private static n(Ljava/lang/Class;)I
    .locals 1

    sget-boolean v0, Landroidx/datastore/preferences/protobuf/k1;->g:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroidx/datastore/preferences/protobuf/k1;->e:Landroidx/datastore/preferences/protobuf/k1$e;

    invoke-virtual {v0, p0}, Landroidx/datastore/preferences/protobuf/k1$e;->b(Ljava/lang/Class;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method private static o()Ljava/lang/reflect/Field;
    .locals 3

    invoke-static {}, Landroidx/datastore/preferences/protobuf/d;->c()Z

    move-result v0

    const-class v1, Ljava/nio/Buffer;

    if-eqz v0, :cond_0

    const-string v0, "effectiveDirectAddress"

    invoke-static {v1, v0}, Landroidx/datastore/preferences/protobuf/k1;->r(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "address"

    invoke-static {v1, v0}, Landroidx/datastore/preferences/protobuf/k1;->r(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method static p(J[BJJ)V
    .locals 8

    sget-object v0, Landroidx/datastore/preferences/protobuf/k1;->e:Landroidx/datastore/preferences/protobuf/k1$e;

    move-wide v1, p0

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v0 .. v7}, Landroidx/datastore/preferences/protobuf/k1$e;->c(J[BJJ)V

    return-void
.end method

.method static q(Ljava/lang/Class;)Z
    .locals 11

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const-class v4, [B

    invoke-static {}, Landroidx/datastore/preferences/protobuf/d;->c()Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_0

    return v6

    :cond_0
    :try_start_0
    sget-object v5, Landroidx/datastore/preferences/protobuf/k1;->b:Ljava/lang/Class;

    const-string v7, "peekLong"

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-array v9, v2, [Ljava/lang/Class;

    aput-object p0, v9, v6

    aput-object v8, v9, v3

    invoke-virtual {v5, v7, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v7, "pokeLong"

    new-array v9, v1, [Ljava/lang/Class;

    aput-object p0, v9, v6

    sget-object v10, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v3

    aput-object v8, v9, v2

    invoke-virtual {v5, v7, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v7, "pokeInt"

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-array v10, v1, [Ljava/lang/Class;

    aput-object p0, v10, v6

    aput-object v9, v10, v3

    aput-object v8, v10, v2

    invoke-virtual {v5, v7, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v7, "peekInt"

    new-array v10, v2, [Ljava/lang/Class;

    aput-object p0, v10, v6

    aput-object v8, v10, v3

    invoke-virtual {v5, v7, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v7, "pokeByte"

    new-array v8, v2, [Ljava/lang/Class;

    aput-object p0, v8, v6

    sget-object v10, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v3

    invoke-virtual {v5, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v7, "peekByte"

    new-array v8, v3, [Ljava/lang/Class;

    aput-object p0, v8, v6

    invoke-virtual {v5, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v7, "pokeByteArray"

    new-array v8, v0, [Ljava/lang/Class;

    aput-object p0, v8, v6

    aput-object v4, v8, v3

    aput-object v9, v8, v2

    aput-object v9, v8, v1

    invoke-virtual {v5, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v7, "peekByteArray"

    new-array v0, v0, [Ljava/lang/Class;

    aput-object p0, v0, v6

    aput-object v4, v0, v3

    aput-object v9, v0, v2

    aput-object v9, v0, v1

    invoke-virtual {v5, v7, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    :catchall_0
    return v6
.end method

.method private static r(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 0

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static s(Ljava/lang/reflect/Field;)J
    .locals 2

    if-eqz p0, :cond_1

    sget-object v0, Landroidx/datastore/preferences/protobuf/k1;->e:Landroidx/datastore/preferences/protobuf/k1$e;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p0}, Landroidx/datastore/preferences/protobuf/k1$e;->m(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    goto :goto_1

    :cond_1
    :goto_0
    const-wide/16 v0, -0x1

    :goto_1
    return-wide v0
.end method

.method static t(Ljava/lang/Object;J)Z
    .locals 1

    sget-object v0, Landroidx/datastore/preferences/protobuf/k1;->e:Landroidx/datastore/preferences/protobuf/k1$e;

    invoke-virtual {v0, p0, p1, p2}, Landroidx/datastore/preferences/protobuf/k1$e;->d(Ljava/lang/Object;J)Z

    move-result p0

    return p0
.end method

.method private static u(Ljava/lang/Object;J)Z
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/k1;->y(Ljava/lang/Object;J)B

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static v(Ljava/lang/Object;J)Z
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/k1;->z(Ljava/lang/Object;J)B

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static w(J)B
    .locals 1

    sget-object v0, Landroidx/datastore/preferences/protobuf/k1;->e:Landroidx/datastore/preferences/protobuf/k1$e;

    invoke-virtual {v0, p0, p1}, Landroidx/datastore/preferences/protobuf/k1$e;->e(J)B

    move-result p0

    return p0
.end method

.method static x([BJ)B
    .locals 3

    sget-object v0, Landroidx/datastore/preferences/protobuf/k1;->e:Landroidx/datastore/preferences/protobuf/k1$e;

    sget-wide v1, Landroidx/datastore/preferences/protobuf/k1;->h:J

    add-long/2addr v1, p1

    invoke-virtual {v0, p0, v1, v2}, Landroidx/datastore/preferences/protobuf/k1$e;->f(Ljava/lang/Object;J)B

    move-result p0

    return p0
.end method

.method private static y(Ljava/lang/Object;J)B
    .locals 2

    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    invoke-static {p0, v0, v1}, Landroidx/datastore/preferences/protobuf/k1;->C(Ljava/lang/Object;J)I

    move-result p0

    not-long p1, p1

    const-wide/16 v0, 0x3

    and-long/2addr p1, v0

    const/4 v0, 0x3

    shl-long/2addr p1, v0

    long-to-int p1, p1

    ushr-int/2addr p0, p1

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    return p0
.end method

.method private static z(Ljava/lang/Object;J)B
    .locals 2

    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    invoke-static {p0, v0, v1}, Landroidx/datastore/preferences/protobuf/k1;->C(Ljava/lang/Object;J)I

    move-result p0

    const-wide/16 v0, 0x3

    and-long/2addr p1, v0

    const/4 v0, 0x3

    shl-long/2addr p1, v0

    long-to-int p1, p1

    ushr-int/2addr p0, p1

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    return p0
.end method
