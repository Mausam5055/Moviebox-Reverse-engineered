.class Landroidx/datastore/preferences/protobuf/j1;
.super Landroidx/datastore/preferences/protobuf/h1;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/h1;-><init>()V

    return-void
.end method


# virtual methods
.method A(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/i1;
    .locals 0

    check-cast p1, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    iget-object p1, p1, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->unknownFields:Landroidx/datastore/preferences/protobuf/i1;

    return-object p1
.end method

.method B(Landroidx/datastore/preferences/protobuf/i1;)I
    .locals 0

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/i1;->d()I

    move-result p1

    return p1
.end method

.method C(Landroidx/datastore/preferences/protobuf/i1;)I
    .locals 0

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/i1;->e()I

    move-result p1

    return p1
.end method

.method D(Landroidx/datastore/preferences/protobuf/i1;Landroidx/datastore/preferences/protobuf/i1;)Landroidx/datastore/preferences/protobuf/i1;
    .locals 1

    invoke-static {}, Landroidx/datastore/preferences/protobuf/i1;->c()Landroidx/datastore/preferences/protobuf/i1;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroidx/datastore/preferences/protobuf/i1;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    invoke-static {}, Landroidx/datastore/preferences/protobuf/i1;->c()Landroidx/datastore/preferences/protobuf/i1;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/i1;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1, p2}, Landroidx/datastore/preferences/protobuf/i1;->j(Landroidx/datastore/preferences/protobuf/i1;Landroidx/datastore/preferences/protobuf/i1;)Landroidx/datastore/preferences/protobuf/i1;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p1, p2}, Landroidx/datastore/preferences/protobuf/i1;->i(Landroidx/datastore/preferences/protobuf/i1;)Landroidx/datastore/preferences/protobuf/i1;

    move-result-object p1

    return-object p1
.end method

.method E()Landroidx/datastore/preferences/protobuf/i1;
    .locals 1

    invoke-static {}, Landroidx/datastore/preferences/protobuf/i1;->k()Landroidx/datastore/preferences/protobuf/i1;

    move-result-object v0

    return-object v0
.end method

.method F(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/i1;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/j1;->G(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/i1;)V

    return-void
.end method

.method G(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/i1;)V
    .locals 0

    check-cast p1, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    iput-object p2, p1, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->unknownFields:Landroidx/datastore/preferences/protobuf/i1;

    return-void
.end method

.method H(Landroidx/datastore/preferences/protobuf/i1;)Landroidx/datastore/preferences/protobuf/i1;
    .locals 0

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/i1;->h()V

    return-object p1
.end method

.method I(Landroidx/datastore/preferences/protobuf/i1;Landroidx/datastore/preferences/protobuf/Writer;)V
    .locals 0

    invoke-virtual {p1, p2}, Landroidx/datastore/preferences/protobuf/i1;->p(Landroidx/datastore/preferences/protobuf/Writer;)V

    return-void
.end method

.method J(Landroidx/datastore/preferences/protobuf/i1;Landroidx/datastore/preferences/protobuf/Writer;)V
    .locals 0

    invoke-virtual {p1, p2}, Landroidx/datastore/preferences/protobuf/i1;->r(Landroidx/datastore/preferences/protobuf/Writer;)V

    return-void
.end method

.method bridge synthetic a(Ljava/lang/Object;II)V
    .locals 0

    check-cast p1, Landroidx/datastore/preferences/protobuf/i1;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/j1;->u(Landroidx/datastore/preferences/protobuf/i1;II)V

    return-void
.end method

.method bridge synthetic b(Ljava/lang/Object;IJ)V
    .locals 0

    check-cast p1, Landroidx/datastore/preferences/protobuf/i1;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/datastore/preferences/protobuf/j1;->v(Landroidx/datastore/preferences/protobuf/i1;IJ)V

    return-void
.end method

.method bridge synthetic c(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    check-cast p1, Landroidx/datastore/preferences/protobuf/i1;

    check-cast p3, Landroidx/datastore/preferences/protobuf/i1;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/j1;->w(Landroidx/datastore/preferences/protobuf/i1;ILandroidx/datastore/preferences/protobuf/i1;)V

    return-void
.end method

.method bridge synthetic d(Ljava/lang/Object;ILandroidx/datastore/preferences/protobuf/ByteString;)V
    .locals 0

    check-cast p1, Landroidx/datastore/preferences/protobuf/i1;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/j1;->x(Landroidx/datastore/preferences/protobuf/i1;ILandroidx/datastore/preferences/protobuf/ByteString;)V

    return-void
.end method

.method bridge synthetic e(Ljava/lang/Object;IJ)V
    .locals 0

    check-cast p1, Landroidx/datastore/preferences/protobuf/i1;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/datastore/preferences/protobuf/j1;->y(Landroidx/datastore/preferences/protobuf/i1;IJ)V

    return-void
.end method

.method bridge synthetic f(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/j1;->z(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/i1;

    move-result-object p1

    return-object p1
.end method

.method bridge synthetic g(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/j1;->A(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/i1;

    move-result-object p1

    return-object p1
.end method

.method bridge synthetic h(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroidx/datastore/preferences/protobuf/i1;

    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/j1;->B(Landroidx/datastore/preferences/protobuf/i1;)I

    move-result p1

    return p1
.end method

.method bridge synthetic i(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroidx/datastore/preferences/protobuf/i1;

    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/j1;->C(Landroidx/datastore/preferences/protobuf/i1;)I

    move-result p1

    return p1
.end method

.method j(Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/j1;->A(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/i1;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/i1;->h()V

    return-void
.end method

.method bridge synthetic k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/datastore/preferences/protobuf/i1;

    check-cast p2, Landroidx/datastore/preferences/protobuf/i1;

    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/j1;->D(Landroidx/datastore/preferences/protobuf/i1;Landroidx/datastore/preferences/protobuf/i1;)Landroidx/datastore/preferences/protobuf/i1;

    move-result-object p1

    return-object p1
.end method

.method bridge synthetic n()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/j1;->E()Landroidx/datastore/preferences/protobuf/i1;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic o(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Landroidx/datastore/preferences/protobuf/i1;

    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/j1;->F(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/i1;)V

    return-void
.end method

.method bridge synthetic p(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Landroidx/datastore/preferences/protobuf/i1;

    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/j1;->G(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/i1;)V

    return-void
.end method

.method q(Landroidx/datastore/preferences/protobuf/a1;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method bridge synthetic r(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/datastore/preferences/protobuf/i1;

    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/j1;->H(Landroidx/datastore/preferences/protobuf/i1;)Landroidx/datastore/preferences/protobuf/i1;

    move-result-object p1

    return-object p1
.end method

.method bridge synthetic s(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/Writer;)V
    .locals 0

    check-cast p1, Landroidx/datastore/preferences/protobuf/i1;

    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/j1;->I(Landroidx/datastore/preferences/protobuf/i1;Landroidx/datastore/preferences/protobuf/Writer;)V

    return-void
.end method

.method bridge synthetic t(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/Writer;)V
    .locals 0

    check-cast p1, Landroidx/datastore/preferences/protobuf/i1;

    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/j1;->J(Landroidx/datastore/preferences/protobuf/i1;Landroidx/datastore/preferences/protobuf/Writer;)V

    return-void
.end method

.method u(Landroidx/datastore/preferences/protobuf/i1;II)V
    .locals 1

    const/4 v0, 0x5

    invoke-static {p2, v0}, Landroidx/datastore/preferences/protobuf/WireFormat;->c(II)I

    move-result p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroidx/datastore/preferences/protobuf/i1;->n(ILjava/lang/Object;)V

    return-void
.end method

.method v(Landroidx/datastore/preferences/protobuf/i1;IJ)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p2, v0}, Landroidx/datastore/preferences/protobuf/WireFormat;->c(II)I

    move-result p2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroidx/datastore/preferences/protobuf/i1;->n(ILjava/lang/Object;)V

    return-void
.end method

.method w(Landroidx/datastore/preferences/protobuf/i1;ILandroidx/datastore/preferences/protobuf/i1;)V
    .locals 1

    const/4 v0, 0x3

    invoke-static {p2, v0}, Landroidx/datastore/preferences/protobuf/WireFormat;->c(II)I

    move-result p2

    invoke-virtual {p1, p2, p3}, Landroidx/datastore/preferences/protobuf/i1;->n(ILjava/lang/Object;)V

    return-void
.end method

.method x(Landroidx/datastore/preferences/protobuf/i1;ILandroidx/datastore/preferences/protobuf/ByteString;)V
    .locals 1

    const/4 v0, 0x2

    invoke-static {p2, v0}, Landroidx/datastore/preferences/protobuf/WireFormat;->c(II)I

    move-result p2

    invoke-virtual {p1, p2, p3}, Landroidx/datastore/preferences/protobuf/i1;->n(ILjava/lang/Object;)V

    return-void
.end method

.method y(Landroidx/datastore/preferences/protobuf/i1;IJ)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p2, v0}, Landroidx/datastore/preferences/protobuf/WireFormat;->c(II)I

    move-result p2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroidx/datastore/preferences/protobuf/i1;->n(ILjava/lang/Object;)V

    return-void
.end method

.method z(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/i1;
    .locals 2

    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/j1;->A(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/i1;

    move-result-object v0

    invoke-static {}, Landroidx/datastore/preferences/protobuf/i1;->c()Landroidx/datastore/preferences/protobuf/i1;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static {}, Landroidx/datastore/preferences/protobuf/i1;->k()Landroidx/datastore/preferences/protobuf/i1;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroidx/datastore/preferences/protobuf/j1;->G(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/i1;)V

    :cond_0
    return-object v0
.end method
