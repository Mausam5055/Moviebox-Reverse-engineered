.class public abstract Landroidx/datastore/preferences/protobuf/CodedOutputStream;
.super Landroidx/datastore/preferences/protobuf/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/datastore/preferences/protobuf/CodedOutputStream$d;,
        Landroidx/datastore/preferences/protobuf/CodedOutputStream$b;,
        Landroidx/datastore/preferences/protobuf/CodedOutputStream$c;,
        Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutOfSpaceException;
    }
.end annotation


# static fields
.field private static final c:Ljava/util/logging/Logger;

.field private static final d:Z


# instance fields
.field a:Landroidx/datastore/preferences/protobuf/k;

.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->c:Ljava/util/logging/Logger;

    invoke-static {}, Landroidx/datastore/preferences/protobuf/k1;->I()Z

    move-result v0

    sput-boolean v0, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->d:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/h;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/datastore/preferences/protobuf/CodedOutputStream$a;)V
    .locals 0

    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;-><init>()V

    return-void
.end method

.method public static A(ILandroidx/datastore/preferences/protobuf/a0;)I
    .locals 0

    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->S(I)I

    move-result p0

    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->B(Landroidx/datastore/preferences/protobuf/a0;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static B(Landroidx/datastore/preferences/protobuf/a0;)I
    .locals 0

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/a0;->b()I

    move-result p0

    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->C(I)I

    move-result p0

    return p0
.end method

.method static C(I)I
    .locals 1

    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->U(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method static D(ILandroidx/datastore/preferences/protobuf/n0;Landroidx/datastore/preferences/protobuf/b1;)I
    .locals 0

    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->S(I)I

    move-result p0

    invoke-static {p1, p2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->F(Landroidx/datastore/preferences/protobuf/n0;Landroidx/datastore/preferences/protobuf/b1;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static E(Landroidx/datastore/preferences/protobuf/n0;)I
    .locals 0

    invoke-interface {p0}, Landroidx/datastore/preferences/protobuf/n0;->getSerializedSize()I

    move-result p0

    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->C(I)I

    move-result p0

    return p0
.end method

.method static F(Landroidx/datastore/preferences/protobuf/n0;Landroidx/datastore/preferences/protobuf/b1;)I
    .locals 0

    check-cast p0, Landroidx/datastore/preferences/protobuf/a;

    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/a;->d(Landroidx/datastore/preferences/protobuf/b1;)I

    move-result p0

    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->C(I)I

    move-result p0

    return p0
.end method

.method static G(I)I
    .locals 1

    const/16 v0, 0x1000

    if-le p0, v0, :cond_0

    return v0

    :cond_0
    return p0
.end method

.method public static H(ILandroidx/datastore/preferences/protobuf/ByteString;)I
    .locals 2

    const/4 v0, 0x1

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->S(I)I

    move-result v0

    const/4 v1, 0x2

    mul-int/2addr v0, v1

    invoke-static {v1, p0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->T(II)I

    move-result p0

    add-int/2addr v0, p0

    const/4 p0, 0x3

    invoke-static {p0, p1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->h(ILandroidx/datastore/preferences/protobuf/ByteString;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public static I(II)I
    .locals 0

    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->S(I)I

    move-result p0

    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->J(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static J(I)I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public static K(IJ)I
    .locals 0

    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->S(I)I

    move-result p0

    invoke-static {p1, p2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->L(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static L(J)I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method

.method public static M(II)I
    .locals 0

    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->S(I)I

    move-result p0

    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->N(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static N(I)I
    .locals 0

    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->X(I)I

    move-result p0

    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->U(I)I

    move-result p0

    return p0
.end method

.method public static O(IJ)I
    .locals 0

    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->S(I)I

    move-result p0

    invoke-static {p1, p2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->P(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static P(J)I
    .locals 0

    invoke-static {p0, p1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->Y(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->W(J)I

    move-result p0

    return p0
.end method

.method public static Q(ILjava/lang/String;)I
    .locals 0

    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->S(I)I

    move-result p0

    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->R(Ljava/lang/String;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static R(Ljava/lang/String;)I
    .locals 1

    :try_start_0
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/Utf8;->j(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroidx/datastore/preferences/protobuf/Utf8$UnpairedSurrogateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Landroidx/datastore/preferences/protobuf/w;->b:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    array-length p0, p0

    :goto_0
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->C(I)I

    move-result p0

    return p0
.end method

.method public static S(I)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroidx/datastore/preferences/protobuf/WireFormat;->c(II)I

    move-result p0

    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->U(I)I

    move-result p0

    return p0
.end method

.method public static T(II)I
    .locals 0

    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->S(I)I

    move-result p0

    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->U(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static U(I)I
    .locals 0

    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p0

    mul-int/lit8 p0, p0, 0x9

    rsub-int p0, p0, 0x160

    ushr-int/lit8 p0, p0, 0x6

    return p0
.end method

.method public static V(IJ)I
    .locals 0

    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->S(I)I

    move-result p0

    invoke-static {p1, p2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->W(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static W(J)I
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result p0

    mul-int/lit8 p0, p0, 0x9

    rsub-int p0, p0, 0x280

    ushr-int/lit8 p0, p0, 0x6

    return p0
.end method

.method public static X(I)I
    .locals 1

    shl-int/lit8 v0, p0, 0x1

    shr-int/lit8 p0, p0, 0x1f

    xor-int/2addr p0, v0

    return p0
.end method

.method public static Y(J)J
    .locals 3

    const/4 v0, 0x1

    shl-long v0, p0, v0

    const/16 v2, 0x3f

    shr-long/2addr p0, v2

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method static synthetic c()Z
    .locals 1

    sget-boolean v0, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->d:Z

    return v0
.end method

.method public static c0(Ljava/io/OutputStream;I)Landroidx/datastore/preferences/protobuf/CodedOutputStream;
    .locals 1

    new-instance v0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$d;

    invoke-direct {v0, p0, p1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$d;-><init>(Ljava/io/OutputStream;I)V

    return-object v0
.end method

.method public static d0([B)Landroidx/datastore/preferences/protobuf/CodedOutputStream;
    .locals 2

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->e0([BII)Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    move-result-object p0

    return-object p0
.end method

.method public static e(IZ)I
    .locals 0

    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->S(I)I

    move-result p0

    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->f(Z)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static e0([BII)Landroidx/datastore/preferences/protobuf/CodedOutputStream;
    .locals 1

    new-instance v0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$c;

    invoke-direct {v0, p0, p1, p2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$c;-><init>([BII)V

    return-object v0
.end method

.method public static f(Z)I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static g([B)I
    .locals 0

    array-length p0, p0

    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->C(I)I

    move-result p0

    return p0
.end method

.method public static h(ILandroidx/datastore/preferences/protobuf/ByteString;)I
    .locals 0

    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->S(I)I

    move-result p0

    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->i(Landroidx/datastore/preferences/protobuf/ByteString;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static i(Landroidx/datastore/preferences/protobuf/ByteString;)I
    .locals 0

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/ByteString;->size()I

    move-result p0

    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->C(I)I

    move-result p0

    return p0
.end method

.method public static j(ID)I
    .locals 0

    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->S(I)I

    move-result p0

    invoke-static {p1, p2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->k(D)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static k(D)I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method

.method public static l(II)I
    .locals 0

    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->S(I)I

    move-result p0

    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->m(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static m(I)I
    .locals 0

    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->x(I)I

    move-result p0

    return p0
.end method

.method public static n(II)I
    .locals 0

    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->S(I)I

    move-result p0

    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->o(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static o(I)I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public static p(IJ)I
    .locals 0

    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->S(I)I

    move-result p0

    invoke-static {p1, p2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->q(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static q(J)I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method

.method public static r(IF)I
    .locals 0

    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->S(I)I

    move-result p0

    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->s(F)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static s(F)I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method static t(ILandroidx/datastore/preferences/protobuf/n0;Landroidx/datastore/preferences/protobuf/b1;)I
    .locals 0

    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->S(I)I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    invoke-static {p1, p2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->v(Landroidx/datastore/preferences/protobuf/n0;Landroidx/datastore/preferences/protobuf/b1;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static u(Landroidx/datastore/preferences/protobuf/n0;)I
    .locals 0

    invoke-interface {p0}, Landroidx/datastore/preferences/protobuf/n0;->getSerializedSize()I

    move-result p0

    return p0
.end method

.method static v(Landroidx/datastore/preferences/protobuf/n0;Landroidx/datastore/preferences/protobuf/b1;)I
    .locals 0

    check-cast p0, Landroidx/datastore/preferences/protobuf/a;

    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/a;->d(Landroidx/datastore/preferences/protobuf/b1;)I

    move-result p0

    return p0
.end method

.method public static w(II)I
    .locals 0

    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->S(I)I

    move-result p0

    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->x(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static x(I)I
    .locals 2

    int-to-long v0, p0

    invoke-static {v0, v1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->W(J)I

    move-result p0

    return p0
.end method

.method public static y(IJ)I
    .locals 0

    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->S(I)I

    move-result p0

    invoke-static {p1, p2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->z(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static z(J)I
    .locals 0

    invoke-static {p0, p1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->W(J)I

    move-result p0

    return p0
.end method


# virtual methods
.method final A0(Landroidx/datastore/preferences/protobuf/n0;Landroidx/datastore/preferences/protobuf/b1;)V
    .locals 1

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->a:Landroidx/datastore/preferences/protobuf/k;

    invoke-interface {p2, p1, v0}, Landroidx/datastore/preferences/protobuf/b1;->b(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/Writer;)V

    return-void
.end method

.method public abstract B0(II)V
.end method

.method public abstract C0(I)V
.end method

.method public final D0(IJ)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->W0(IJ)V

    return-void
.end method

.method public final E0(J)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->X0(J)V

    return-void
.end method

.method abstract F0(ILandroidx/datastore/preferences/protobuf/n0;Landroidx/datastore/preferences/protobuf/b1;)V
.end method

.method public abstract G0(Landroidx/datastore/preferences/protobuf/n0;)V
.end method

.method public abstract H0(ILandroidx/datastore/preferences/protobuf/n0;)V
.end method

.method public abstract I0(ILandroidx/datastore/preferences/protobuf/ByteString;)V
.end method

.method public final J0(II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->r0(II)V

    return-void
.end method

.method public final K0(I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->s0(I)V

    return-void
.end method

.method public final L0(IJ)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->t0(IJ)V

    return-void
.end method

.method public final M0(J)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->u0(J)V

    return-void
.end method

.method public final N0(II)V
    .locals 0

    invoke-static {p2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->X(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->U0(II)V

    return-void
.end method

.method public final O0(I)V
    .locals 0

    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->X(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->V0(I)V

    return-void
.end method

.method public final P0(IJ)V
    .locals 0

    invoke-static {p2, p3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->Y(J)J

    move-result-wide p2

    invoke-virtual {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->W0(IJ)V

    return-void
.end method

.method public final Q0(J)V
    .locals 0

    invoke-static {p1, p2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->Y(J)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->X0(J)V

    return-void
.end method

.method public abstract R0(ILjava/lang/String;)V
.end method

.method public abstract S0(Ljava/lang/String;)V
.end method

.method public abstract T0(II)V
.end method

.method public abstract U0(II)V
.end method

.method public abstract V0(I)V
.end method

.method public abstract W0(IJ)V
.end method

.method public abstract X0(J)V
.end method

.method public abstract Z()V
.end method

.method final a0(Ljava/lang/String;Landroidx/datastore/preferences/protobuf/Utf8$UnpairedSurrogateException;)V
    .locals 3

    sget-object v0, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->c:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!"

    invoke-virtual {v0, v1, v2, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p2, Landroidx/datastore/preferences/protobuf/w;->b:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    :try_start_0
    array-length p2, p1

    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->V0(I)V

    array-length p2, p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->b([BII)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutOfSpaceException;

    invoke-direct {p2, p1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public abstract b([BII)V
.end method

.method b0()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->b:Z

    return v0
.end method

.method public final d()V
    .locals 2

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->f0()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did not write as much data as expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract f0()I
.end method

.method public abstract g0(B)V
.end method

.method public abstract h0(IZ)V
.end method

.method public final i0(Z)V
    .locals 0

    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->g0(B)V

    return-void
.end method

.method public final j0([B)V
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->k0([BII)V

    return-void
.end method

.method abstract k0([BII)V
.end method

.method public abstract l0(ILandroidx/datastore/preferences/protobuf/ByteString;)V
.end method

.method public abstract m0(Landroidx/datastore/preferences/protobuf/ByteString;)V
.end method

.method public final n0(ID)V
    .locals 0

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p2

    invoke-virtual {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->t0(IJ)V

    return-void
.end method

.method public final o0(D)V
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->u0(J)V

    return-void
.end method

.method public final p0(II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->B0(II)V

    return-void
.end method

.method public final q0(I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->C0(I)V

    return-void
.end method

.method public abstract r0(II)V
.end method

.method public abstract s0(I)V
.end method

.method public abstract t0(IJ)V
.end method

.method public abstract u0(J)V
.end method

.method public final v0(IF)V
    .locals 0

    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->r0(II)V

    return-void
.end method

.method public final w0(F)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->s0(I)V

    return-void
.end method

.method public final x0(ILandroidx/datastore/preferences/protobuf/n0;)V
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->T0(II)V

    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->z0(Landroidx/datastore/preferences/protobuf/n0;)V

    const/4 p2, 0x4

    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->T0(II)V

    return-void
.end method

.method final y0(ILandroidx/datastore/preferences/protobuf/n0;Landroidx/datastore/preferences/protobuf/b1;)V
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->T0(II)V

    invoke-virtual {p0, p2, p3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->A0(Landroidx/datastore/preferences/protobuf/n0;Landroidx/datastore/preferences/protobuf/b1;)V

    const/4 p2, 0x4

    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->T0(II)V

    return-void
.end method

.method public final z0(Landroidx/datastore/preferences/protobuf/n0;)V
    .locals 0

    invoke-interface {p1, p0}, Landroidx/datastore/preferences/protobuf/n0;->a(Landroidx/datastore/preferences/protobuf/CodedOutputStream;)V

    return-void
.end method
