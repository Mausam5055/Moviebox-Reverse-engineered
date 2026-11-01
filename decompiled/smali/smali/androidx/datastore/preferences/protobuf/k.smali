.class final Landroidx/datastore/preferences/protobuf/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/datastore/preferences/protobuf/Writer;


# instance fields
.field private final a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;


# direct methods
.method private constructor <init>(Landroidx/datastore/preferences/protobuf/CodedOutputStream;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "output"

    invoke-static {p1, v0}, Landroidx/datastore/preferences/protobuf/w;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    iput-object p0, p1, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->a:Landroidx/datastore/preferences/protobuf/k;

    return-void
.end method

.method private A(ILandroidx/datastore/preferences/protobuf/f0;Z)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    iget-object p3, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->T0(II)V

    move p1, v0

    move p3, p1

    :goto_0
    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/f0;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-virtual {p2, p1}, Landroidx/datastore/preferences/protobuf/f0;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->z(J)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    invoke-virtual {p1, p3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->V0(I)V

    :goto_1
    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/f0;->size()I

    move-result p1

    if-ge v0, p1, :cond_2

    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    invoke-virtual {p2, v0}, Landroidx/datastore/preferences/protobuf/f0;->getLong(I)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->E0(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/f0;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    iget-object p3, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    invoke-virtual {p2, v0}, Landroidx/datastore/preferences/protobuf/f0;->getLong(I)J

    move-result-wide v1

    invoke-virtual {p3, p1, v1, v2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->D0(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method private B(ILjava/util/List;Z)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    iget-object p3, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->T0(II)V

    move p1, v0

    move p3, p1

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->z(J)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    invoke-virtual {p1, p3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->V0(I)V

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_2

    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->E0(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    iget-object p3, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p3, p1, v1, v2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->D0(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method private C(ILjava/lang/Object;)V
    .locals 1

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->R0(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    check-cast p2, Landroidx/datastore/preferences/protobuf/ByteString;

    invoke-virtual {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->l0(ILandroidx/datastore/preferences/protobuf/ByteString;)V

    :goto_0
    return-void
.end method

.method private D(ILandroidx/datastore/preferences/protobuf/v;Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    iget-object p3, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->T0(II)V

    move p1, v0

    move p3, p1

    :goto_0
    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/v;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-virtual {p2, p1}, Landroidx/datastore/preferences/protobuf/v;->getInt(I)I

    move-result v1

    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->J(I)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    invoke-virtual {p1, p3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->V0(I)V

    :goto_1
    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/v;->size()I

    move-result p1

    if-ge v0, p1, :cond_2

    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    invoke-virtual {p2, v0}, Landroidx/datastore/preferences/protobuf/v;->getInt(I)I

    move-result p3

    invoke-virtual {p1, p3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->K0(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/v;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    iget-object p3, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    invoke-virtual {p2, v0}, Landroidx/datastore/preferences/protobuf/v;->getInt(I)I

    move-result v1

    invoke-virtual {p3, p1, v1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->J0(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method private E(ILjava/util/List;Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    iget-object p3, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->T0(II)V

    move p1, v0

    move p3, p1

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->J(I)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    invoke-virtual {p1, p3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->V0(I)V

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_2

    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, p3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->K0(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    iget-object p3, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p3, p1, v1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->J0(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method private F(ILandroidx/datastore/preferences/protobuf/f0;Z)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    iget-object p3, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->T0(II)V

    move p1, v0

    move p3, p1

    :goto_0
    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/f0;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-virtual {p2, p1}, Landroidx/datastore/preferences/protobuf/f0;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->L(J)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    invoke-virtual {p1, p3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->V0(I)V

    :goto_1
    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/f0;->size()I

    move-result p1

    if-ge v0, p1, :cond_2

    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    invoke-virtual {p2, v0}, Landroidx/datastore/preferences/protobuf/f0;->getLong(I)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->M0(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/f0;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    iget-object p3, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    invoke-virtual {p2, v0}, Landroidx/datastore/preferences/protobuf/f0;->getLong(I)J

    move-result-wide v1

    invoke-virtual {p3, p1, v1, v2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->L0(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method private G(ILjava/util/List;Z)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    iget-object p3, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->T0(II)V

    move p1, v0

    move p3, p1

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->L(J)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    invoke-virtual {p1, p3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->V0(I)V

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_2

    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->M0(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    iget-object p3, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p3, p1, v1, v2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->L0(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method private H(ILandroidx/datastore/preferences/protobuf/v;Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    iget-object p3, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->T0(II)V

    move p1, v0

    move p3, p1

    :goto_0
    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/v;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-virtual {p2, p1}, Landroidx/datastore/preferences/protobuf/v;->getInt(I)I

    move-result v1

    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->N(I)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    invoke-virtual {p1, p3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->V0(I)V

    :goto_1
    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/v;->size()I

    move-result p1

    if-ge v0, p1, :cond_2

    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    invoke-virtual {p2, v0}, Landroidx/datastore/preferences/protobuf/v;->getInt(I)I

    move-result p3

    invoke-virtual {p1, p3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->O0(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/v;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    iget-object p3, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    invoke-virtual {p2, v0}, Landroidx/datastore/preferences/protobuf/v;->getInt(I)I

    move-result v1

    invoke-virtual {p3, p1, v1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->N0(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method private J(ILandroidx/datastore/preferences/protobuf/f0;Z)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    iget-object p3, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->T0(II)V

    move p1, v0

    move p3, p1

    :goto_0
    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/f0;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-virtual {p2, p1}, Landroidx/datastore/preferences/protobuf/f0;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->P(J)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    invoke-virtual {p1, p3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->V0(I)V

    :goto_1
    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/f0;->size()I

    move-result p1

    if-ge v0, p1, :cond_2

    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    invoke-virtual {p2, v0}, Landroidx/datastore/preferences/protobuf/f0;->getLong(I)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->Q0(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/f0;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    iget-object p3, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    invoke-virtual {p2, v0}, Landroidx/datastore/preferences/protobuf/f0;->getLong(I)J

    move-result-wide v1

    invoke-virtual {p3, p1, v1, v2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->P0(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method private K(ILjava/util/List;Z)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    iget-object p3, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->T0(II)V

    move p1, v0

    move p3, p1

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->P(J)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    invoke-virtual {p1, p3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->V0(I)V

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_2

    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->Q0(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    iget-object p3, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p3, p1, v1, v2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->P0(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method private L(ILandroidx/datastore/preferences/protobuf/v;Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    iget-object p3, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->T0(II)V

    move p1, v0

    move p3, p1

    :goto_0
    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/v;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-virtual {p2, p1}, Landroidx/datastore/preferences/protobuf/v;->getInt(I)I

    move-result v1

    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->U(I)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    invoke-virtual {p1, p3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->V0(I)V

    :goto_1
    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/v;->size()I

    move-result p1

    if-ge v0, p1, :cond_2

    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    invoke-virtual {p2, v0}, Landroidx/datastore/preferences/protobuf/v;->getInt(I)I

    move-result p3

    invoke-virtual {p1, p3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->V0(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/v;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    iget-object p3, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    invoke-virtual {p2, v0}, Landroidx/datastore/preferences/protobuf/v;->getInt(I)I

    move-result v1

    invoke-virtual {p3, p1, v1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->U0(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method private N(ILandroidx/datastore/preferences/protobuf/f0;Z)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    iget-object p3, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->T0(II)V

    move p1, v0

    move p3, p1

    :goto_0
    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/f0;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-virtual {p2, p1}, Landroidx/datastore/preferences/protobuf/f0;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->W(J)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    invoke-virtual {p1, p3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->V0(I)V

    :goto_1
    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/f0;->size()I

    move-result p1

    if-ge v0, p1, :cond_2

    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    invoke-virtual {p2, v0}, Landroidx/datastore/preferences/protobuf/f0;->getLong(I)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->X0(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/f0;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    iget-object p3, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    invoke-virtual {p2, v0}, Landroidx/datastore/preferences/protobuf/f0;->getLong(I)J

    move-result-wide v1

    invoke-virtual {p3, p1, v1, v2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->W0(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method private O(ILjava/util/List;Z)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    iget-object p3, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->T0(II)V

    move p1, v0

    move p3, p1

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->W(J)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    invoke-virtual {p1, p3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->V0(I)V

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_2

    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->X0(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    iget-object p3, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p3, p1, v1, v2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->W0(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public static g(Landroidx/datastore/preferences/protobuf/CodedOutputStream;)Landroidx/datastore/preferences/protobuf/k;
    .locals 1

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->a:Landroidx/datastore/preferences/protobuf/k;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Landroidx/datastore/preferences/protobuf/k;

    invoke-direct {v0, p0}, Landroidx/datastore/preferences/protobuf/k;-><init>(Landroidx/datastore/preferences/protobuf/CodedOutputStream;)V

    return-object v0
.end method

.method private h(ILandroidx/datastore/preferences/protobuf/f;Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    iget-object p3, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->T0(II)V

    move p1, v0

    move p3, p1

    :goto_0
    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/f;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-virtual {p2, p1}, Landroidx/datastore/preferences/protobuf/f;->getBoolean(I)Z

    move-result v1

    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->f(Z)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    invoke-virtual {p1, p3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->V0(I)V

    :goto_1
    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/f;->size()I

    move-result p1

    if-ge v0, p1, :cond_2

    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    invoke-virtual {p2, v0}, Landroidx/datastore/preferences/protobuf/f;->getBoolean(I)Z

    move-result p3

    invoke-virtual {p1, p3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->i0(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/f;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    iget-object p3, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    invoke-virtual {p2, v0}, Landroidx/datastore/preferences/protobuf/f;->getBoolean(I)Z

    move-result v1

    invoke-virtual {p3, p1, v1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->h0(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method private i(ILjava/util/List;Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    iget-object p3, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->T0(II)V

    move p1, v0

    move p3, p1

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->f(Z)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    invoke-virtual {p1, p3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->V0(I)V

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_2

    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-virtual {p1, p3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->i0(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    iget-object p3, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p3, p1, v1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->h0(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method private j(IZLjava/lang/Object;Landroidx/datastore/preferences/protobuf/h0$a;)V
    .locals 2

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->T0(II)V

    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p4, v0, p3}, Landroidx/datastore/preferences/protobuf/h0;->b(Landroidx/datastore/preferences/protobuf/h0$a;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->V0(I)V

    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p1, p4, p2, p3}, Landroidx/datastore/preferences/protobuf/h0;->e(Landroidx/datastore/preferences/protobuf/CodedOutputStream;Landroidx/datastore/preferences/protobuf/h0$a;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private k(ILandroidx/datastore/preferences/protobuf/h0$a;Ljava/util/Map;)V
    .locals 7

    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result v0

    new-array v1, v0, [I

    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v6, v4, 0x1

    aput v5, v1, v4

    move v4, v6

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/util/Arrays;->sort([I)V

    :goto_1
    if-ge v3, v0, :cond_1

    aget v2, v1, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    const/4 v6, 0x2

    invoke-virtual {v5, p1, v6}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->T0(II)V

    iget-object v5, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p2, v6, v4}, Landroidx/datastore/preferences/protobuf/h0;->b(Landroidx/datastore/preferences/protobuf/h0$a;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->V0(I)V

    iget-object v5, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v5, p2, v2, v4}, Landroidx/datastore/preferences/protobuf/h0;->e(Landroidx/datastore/preferences/protobuf/CodedOutputStream;Landroidx/datastore/preferences/protobuf/h0$a;Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private l(ILandroidx/datastore/preferences/protobuf/h0$a;Ljava/util/Map;)V
    .locals 8

    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result v0

    new-array v1, v0, [J

    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    add-int/lit8 v7, v4, 0x1

    aput-wide v5, v1, v4

    move v4, v7

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/util/Arrays;->sort([J)V

    :goto_1
    if-ge v3, v0, :cond_1

    aget-wide v4, v1, v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iget-object v6, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    const/4 v7, 0x2

    invoke-virtual {v6, p1, v7}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->T0(II)V

    iget-object v6, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {p2, v7, v2}, Landroidx/datastore/preferences/protobuf/h0;->b(Landroidx/datastore/preferences/protobuf/h0$a;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->V0(I)V

    iget-object v6, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v6, p2, v4, v2}, Landroidx/datastore/preferences/protobuf/h0;->e(Landroidx/datastore/preferences/protobuf/CodedOutputStream;Landroidx/datastore/preferences/protobuf/h0$a;Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private m(ILandroidx/datastore/preferences/protobuf/h0$a;Ljava/util/Map;)V
    .locals 2

    sget-object v0, Landroidx/datastore/preferences/protobuf/k$a;->a:[I

    iget-object v1, p2, Landroidx/datastore/preferences/protobuf/h0$a;->a:Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "does not support key type: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Landroidx/datastore/preferences/protobuf/h0$a;->a:Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/k;->n(ILandroidx/datastore/preferences/protobuf/h0$a;Ljava/util/Map;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/k;->l(ILandroidx/datastore/preferences/protobuf/h0$a;Ljava/util/Map;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/k;->k(ILandroidx/datastore/preferences/protobuf/h0$a;Ljava/util/Map;)V

    goto :goto_0

    :pswitch_3
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, p2}, Landroidx/datastore/preferences/protobuf/k;->j(IZLjava/lang/Object;Landroidx/datastore/preferences/protobuf/h0$a;)V

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p3, p2}, Landroidx/datastore/preferences/protobuf/k;->j(IZLjava/lang/Object;Landroidx/datastore/preferences/protobuf/h0$a;)V

    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private n(ILandroidx/datastore/preferences/protobuf/h0$a;Ljava/util/Map;)V
    .locals 7

    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result v0

    new-array v1, v0, [Ljava/lang/String;

    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    add-int/lit8 v6, v4, 0x1

    aput-object v5, v1, v4

    move v4, v6

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    :goto_1
    if-ge v3, v0, :cond_1

    aget-object v2, v1, v3

    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    const/4 v6, 0x2

    invoke-virtual {v5, p1, v6}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->T0(II)V

    iget-object v5, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    invoke-static {p2, v2, v4}, Landroidx/datastore/preferences/protobuf/h0;->b(Landroidx/datastore/preferences/protobuf/h0$a;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->V0(I)V

    iget-object v5, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    invoke-static {v5, p2, v2, v4}, Landroidx/datastore/preferences/protobuf/h0;->e(Landroidx/datastore/preferences/protobuf/CodedOutputStream;Landroidx/datastore/preferences/protobuf/h0$a;Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private o(ILandroidx/datastore/preferences/protobuf/l;Z)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    iget-object p3, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->T0(II)V

    move p1, v0

    move p3, p1

    :goto_0
    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/l;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-virtual {p2, p1}, Landroidx/datastore/preferences/protobuf/l;->getDouble(I)D

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->k(D)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    invoke-virtual {p1, p3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->V0(I)V

    :goto_1
    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/l;->size()I

    move-result p1

    if-ge v0, p1, :cond_2

    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    invoke-virtual {p2, v0}, Landroidx/datastore/preferences/protobuf/l;->getDouble(I)D

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->o0(D)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/l;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    iget-object p3, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    invoke-virtual {p2, v0}, Landroidx/datastore/preferences/protobuf/l;->getDouble(I)D

    move-result-wide v1

    invoke-virtual {p3, p1, v1, v2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->n0(ID)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method private p(ILjava/util/List;Z)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    iget-object p3, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->T0(II)V

    move p1, v0

    move p3, p1

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->k(D)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    invoke-virtual {p1, p3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->V0(I)V

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_2

    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->o0(D)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    iget-object p3, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p3, p1, v1, v2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->n0(ID)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method private q(ILandroidx/datastore/preferences/protobuf/v;Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    iget-object p3, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->T0(II)V

    move p1, v0

    move p3, p1

    :goto_0
    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/v;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-virtual {p2, p1}, Landroidx/datastore/preferences/protobuf/v;->getInt(I)I

    move-result v1

    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->m(I)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    invoke-virtual {p1, p3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->V0(I)V

    :goto_1
    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/v;->size()I

    move-result p1

    if-ge v0, p1, :cond_2

    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    invoke-virtual {p2, v0}, Landroidx/datastore/preferences/protobuf/v;->getInt(I)I

    move-result p3

    invoke-virtual {p1, p3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->q0(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/v;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    iget-object p3, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    invoke-virtual {p2, v0}, Landroidx/datastore/preferences/protobuf/v;->getInt(I)I

    move-result v1

    invoke-virtual {p3, p1, v1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->p0(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method private r(ILjava/util/List;Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    iget-object p3, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->T0(II)V

    move p1, v0

    move p3, p1

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->m(I)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    invoke-virtual {p1, p3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->V0(I)V

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_2

    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, p3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->q0(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    iget-object p3, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p3, p1, v1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->p0(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method private s(ILandroidx/datastore/preferences/protobuf/v;Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    iget-object p3, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->T0(II)V

    move p1, v0

    move p3, p1

    :goto_0
    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/v;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-virtual {p2, p1}, Landroidx/datastore/preferences/protobuf/v;->getInt(I)I

    move-result v1

    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->o(I)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    invoke-virtual {p1, p3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->V0(I)V

    :goto_1
    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/v;->size()I

    move-result p1

    if-ge v0, p1, :cond_2

    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    invoke-virtual {p2, v0}, Landroidx/datastore/preferences/protobuf/v;->getInt(I)I

    move-result p3

    invoke-virtual {p1, p3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->s0(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/v;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    iget-object p3, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    invoke-virtual {p2, v0}, Landroidx/datastore/preferences/protobuf/v;->getInt(I)I

    move-result v1

    invoke-virtual {p3, p1, v1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->r0(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method private t(ILjava/util/List;Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    iget-object p3, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->T0(II)V

    move p1, v0

    move p3, p1

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->o(I)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    invoke-virtual {p1, p3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->V0(I)V

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_2

    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, p3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->s0(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    iget-object p3, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p3, p1, v1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->r0(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method private u(ILandroidx/datastore/preferences/protobuf/f0;Z)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    iget-object p3, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->T0(II)V

    move p1, v0

    move p3, p1

    :goto_0
    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/f0;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-virtual {p2, p1}, Landroidx/datastore/preferences/protobuf/f0;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->q(J)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    invoke-virtual {p1, p3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->V0(I)V

    :goto_1
    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/f0;->size()I

    move-result p1

    if-ge v0, p1, :cond_2

    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    invoke-virtual {p2, v0}, Landroidx/datastore/preferences/protobuf/f0;->getLong(I)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->u0(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/f0;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    iget-object p3, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    invoke-virtual {p2, v0}, Landroidx/datastore/preferences/protobuf/f0;->getLong(I)J

    move-result-wide v1

    invoke-virtual {p3, p1, v1, v2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->t0(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method private v(ILjava/util/List;Z)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    iget-object p3, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->T0(II)V

    move p1, v0

    move p3, p1

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->q(J)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    invoke-virtual {p1, p3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->V0(I)V

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_2

    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->u0(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    iget-object p3, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p3, p1, v1, v2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->t0(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method private w(ILandroidx/datastore/preferences/protobuf/t;Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    iget-object p3, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->T0(II)V

    move p1, v0

    move p3, p1

    :goto_0
    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/t;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-virtual {p2, p1}, Landroidx/datastore/preferences/protobuf/t;->getFloat(I)F

    move-result v1

    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->s(F)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    invoke-virtual {p1, p3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->V0(I)V

    :goto_1
    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/t;->size()I

    move-result p1

    if-ge v0, p1, :cond_2

    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    invoke-virtual {p2, v0}, Landroidx/datastore/preferences/protobuf/t;->getFloat(I)F

    move-result p3

    invoke-virtual {p1, p3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->w0(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/t;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    iget-object p3, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    invoke-virtual {p2, v0}, Landroidx/datastore/preferences/protobuf/t;->getFloat(I)F

    move-result v1

    invoke-virtual {p3, p1, v1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->v0(IF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method private x(ILjava/util/List;Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    iget-object p3, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->T0(II)V

    move p1, v0

    move p3, p1

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->s(F)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    invoke-virtual {p1, p3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->V0(I)V

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_2

    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    invoke-virtual {p1, p3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->w0(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    iget-object p3, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p3, p1, v1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->v0(IF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method private y(ILandroidx/datastore/preferences/protobuf/v;Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    iget-object p3, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->T0(II)V

    move p1, v0

    move p3, p1

    :goto_0
    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/v;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-virtual {p2, p1}, Landroidx/datastore/preferences/protobuf/v;->getInt(I)I

    move-result v1

    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->x(I)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    invoke-virtual {p1, p3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->V0(I)V

    :goto_1
    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/v;->size()I

    move-result p1

    if-ge v0, p1, :cond_2

    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    invoke-virtual {p2, v0}, Landroidx/datastore/preferences/protobuf/v;->getInt(I)I

    move-result p3

    invoke-virtual {p1, p3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->C0(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/v;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    iget-object p3, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    invoke-virtual {p2, v0}, Landroidx/datastore/preferences/protobuf/v;->getInt(I)I

    move-result v1

    invoke-virtual {p3, p1, v1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->B0(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method private z(ILjava/util/List;Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    iget-object p3, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->T0(II)V

    move p1, v0

    move p3, p1

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->x(I)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    invoke-virtual {p1, p3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->V0(I)V

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_2

    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, p3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->C0(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    iget-object p3, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p3, p1, v1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->B0(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method


# virtual methods
.method public I(ILjava/util/List;Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    iget-object p3, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->T0(II)V

    move p1, v0

    move p3, p1

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->N(I)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    invoke-virtual {p1, p3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->V0(I)V

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_2

    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, p3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->O0(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    iget-object p3, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p3, p1, v1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->N0(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public M(ILjava/util/List;Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    iget-object p3, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->T0(II)V

    move p1, v0

    move p3, p1

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->U(I)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    invoke-virtual {p1, p3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->V0(I)V

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_2

    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, p3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->V0(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    iget-object p3, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p3, p1, v1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->U0(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public a(ILjava/util/List;Landroidx/datastore/preferences/protobuf/b1;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p1, v1, p3}, Landroidx/datastore/preferences/protobuf/k;->e(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/b1;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(ILandroidx/datastore/preferences/protobuf/ByteString;)V
    .locals 1

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    invoke-virtual {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->l0(ILandroidx/datastore/preferences/protobuf/ByteString;)V

    return-void
.end method

.method public c(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/b1;)V
    .locals 1

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    check-cast p2, Landroidx/datastore/preferences/protobuf/n0;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->F0(ILandroidx/datastore/preferences/protobuf/n0;Landroidx/datastore/preferences/protobuf/b1;)V

    return-void
.end method

.method public d(ILandroidx/datastore/preferences/protobuf/h0$a;Ljava/util/Map;)V
    .locals 4

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->b0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/k;->m(ILandroidx/datastore/preferences/protobuf/h0$a;Ljava/util/Map;)V

    return-void

    :cond_0
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    const/4 v2, 0x2

    invoke-virtual {v1, p1, v2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->T0(II)V

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v2, v3}, Landroidx/datastore/preferences/protobuf/h0;->b(Landroidx/datastore/preferences/protobuf/h0$a;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->V0(I)V

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, p2, v2, v0}, Landroidx/datastore/preferences/protobuf/h0;->e(Landroidx/datastore/preferences/protobuf/CodedOutputStream;Landroidx/datastore/preferences/protobuf/h0$a;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public e(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/b1;)V
    .locals 1

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    check-cast p2, Landroidx/datastore/preferences/protobuf/n0;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->y0(ILandroidx/datastore/preferences/protobuf/n0;Landroidx/datastore/preferences/protobuf/b1;)V

    return-void
.end method

.method public f(ILjava/util/List;Landroidx/datastore/preferences/protobuf/b1;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p1, v1, p3}, Landroidx/datastore/preferences/protobuf/k;->c(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/b1;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public fieldOrder()Landroidx/datastore/preferences/protobuf/Writer$FieldOrder;
    .locals 1

    sget-object v0, Landroidx/datastore/preferences/protobuf/Writer$FieldOrder;->ASCENDING:Landroidx/datastore/preferences/protobuf/Writer$FieldOrder;

    return-object v0
.end method

.method public writeBool(IZ)V
    .locals 1

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    invoke-virtual {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->h0(IZ)V

    return-void
.end method

.method public writeBoolList(ILjava/util/List;Z)V
    .locals 1

    instance-of v0, p2, Landroidx/datastore/preferences/protobuf/f;

    if-eqz v0, :cond_0

    check-cast p2, Landroidx/datastore/preferences/protobuf/f;

    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/k;->h(ILandroidx/datastore/preferences/protobuf/f;Z)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/k;->i(ILjava/util/List;Z)V

    :goto_0
    return-void
.end method

.method public writeBytesList(ILjava/util/List;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/datastore/preferences/protobuf/ByteString;

    invoke-virtual {v1, p1, v2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->l0(ILandroidx/datastore/preferences/protobuf/ByteString;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public writeDouble(ID)V
    .locals 1

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->n0(ID)V

    return-void
.end method

.method public writeDoubleList(ILjava/util/List;Z)V
    .locals 1

    instance-of v0, p2, Landroidx/datastore/preferences/protobuf/l;

    if-eqz v0, :cond_0

    check-cast p2, Landroidx/datastore/preferences/protobuf/l;

    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/k;->o(ILandroidx/datastore/preferences/protobuf/l;Z)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/k;->p(ILjava/util/List;Z)V

    :goto_0
    return-void
.end method

.method public writeEndGroup(I)V
    .locals 2

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->T0(II)V

    return-void
.end method

.method public writeEnum(II)V
    .locals 1

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    invoke-virtual {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->p0(II)V

    return-void
.end method

.method public writeEnumList(ILjava/util/List;Z)V
    .locals 1

    instance-of v0, p2, Landroidx/datastore/preferences/protobuf/v;

    if-eqz v0, :cond_0

    check-cast p2, Landroidx/datastore/preferences/protobuf/v;

    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/k;->q(ILandroidx/datastore/preferences/protobuf/v;Z)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/k;->r(ILjava/util/List;Z)V

    :goto_0
    return-void
.end method

.method public writeFixed32(II)V
    .locals 1

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    invoke-virtual {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->r0(II)V

    return-void
.end method

.method public writeFixed32List(ILjava/util/List;Z)V
    .locals 1

    instance-of v0, p2, Landroidx/datastore/preferences/protobuf/v;

    if-eqz v0, :cond_0

    check-cast p2, Landroidx/datastore/preferences/protobuf/v;

    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/k;->s(ILandroidx/datastore/preferences/protobuf/v;Z)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/k;->t(ILjava/util/List;Z)V

    :goto_0
    return-void
.end method

.method public writeFixed64(IJ)V
    .locals 1

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->t0(IJ)V

    return-void
.end method

.method public writeFixed64List(ILjava/util/List;Z)V
    .locals 1

    instance-of v0, p2, Landroidx/datastore/preferences/protobuf/f0;

    if-eqz v0, :cond_0

    check-cast p2, Landroidx/datastore/preferences/protobuf/f0;

    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/k;->u(ILandroidx/datastore/preferences/protobuf/f0;Z)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/k;->v(ILjava/util/List;Z)V

    :goto_0
    return-void
.end method

.method public writeFloat(IF)V
    .locals 1

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    invoke-virtual {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->v0(IF)V

    return-void
.end method

.method public writeFloatList(ILjava/util/List;Z)V
    .locals 1

    instance-of v0, p2, Landroidx/datastore/preferences/protobuf/t;

    if-eqz v0, :cond_0

    check-cast p2, Landroidx/datastore/preferences/protobuf/t;

    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/k;->w(ILandroidx/datastore/preferences/protobuf/t;Z)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/k;->x(ILjava/util/List;Z)V

    :goto_0
    return-void
.end method

.method public writeInt32(II)V
    .locals 1

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    invoke-virtual {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->B0(II)V

    return-void
.end method

.method public writeInt32List(ILjava/util/List;Z)V
    .locals 1

    instance-of v0, p2, Landroidx/datastore/preferences/protobuf/v;

    if-eqz v0, :cond_0

    check-cast p2, Landroidx/datastore/preferences/protobuf/v;

    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/k;->y(ILandroidx/datastore/preferences/protobuf/v;Z)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/k;->z(ILjava/util/List;Z)V

    :goto_0
    return-void
.end method

.method public writeInt64(IJ)V
    .locals 1

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->D0(IJ)V

    return-void
.end method

.method public writeInt64List(ILjava/util/List;Z)V
    .locals 1

    instance-of v0, p2, Landroidx/datastore/preferences/protobuf/f0;

    if-eqz v0, :cond_0

    check-cast p2, Landroidx/datastore/preferences/protobuf/f0;

    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/k;->A(ILandroidx/datastore/preferences/protobuf/f0;Z)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/k;->B(ILjava/util/List;Z)V

    :goto_0
    return-void
.end method

.method public final writeMessageSetItem(ILjava/lang/Object;)V
    .locals 1

    instance-of v0, p2, Landroidx/datastore/preferences/protobuf/ByteString;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    check-cast p2, Landroidx/datastore/preferences/protobuf/ByteString;

    invoke-virtual {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->I0(ILandroidx/datastore/preferences/protobuf/ByteString;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    check-cast p2, Landroidx/datastore/preferences/protobuf/n0;

    invoke-virtual {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->H0(ILandroidx/datastore/preferences/protobuf/n0;)V

    :goto_0
    return-void
.end method

.method public writeSFixed32(II)V
    .locals 1

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    invoke-virtual {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->J0(II)V

    return-void
.end method

.method public writeSFixed32List(ILjava/util/List;Z)V
    .locals 1

    instance-of v0, p2, Landroidx/datastore/preferences/protobuf/v;

    if-eqz v0, :cond_0

    check-cast p2, Landroidx/datastore/preferences/protobuf/v;

    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/k;->D(ILandroidx/datastore/preferences/protobuf/v;Z)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/k;->E(ILjava/util/List;Z)V

    :goto_0
    return-void
.end method

.method public writeSFixed64(IJ)V
    .locals 1

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->L0(IJ)V

    return-void
.end method

.method public writeSFixed64List(ILjava/util/List;Z)V
    .locals 1

    instance-of v0, p2, Landroidx/datastore/preferences/protobuf/f0;

    if-eqz v0, :cond_0

    check-cast p2, Landroidx/datastore/preferences/protobuf/f0;

    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/k;->F(ILandroidx/datastore/preferences/protobuf/f0;Z)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/k;->G(ILjava/util/List;Z)V

    :goto_0
    return-void
.end method

.method public writeSInt32(II)V
    .locals 1

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    invoke-virtual {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->N0(II)V

    return-void
.end method

.method public writeSInt32List(ILjava/util/List;Z)V
    .locals 1

    instance-of v0, p2, Landroidx/datastore/preferences/protobuf/v;

    if-eqz v0, :cond_0

    check-cast p2, Landroidx/datastore/preferences/protobuf/v;

    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/k;->H(ILandroidx/datastore/preferences/protobuf/v;Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/k;->I(ILjava/util/List;Z)V

    :goto_0
    return-void
.end method

.method public writeSInt64(IJ)V
    .locals 1

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->P0(IJ)V

    return-void
.end method

.method public writeSInt64List(ILjava/util/List;Z)V
    .locals 1

    instance-of v0, p2, Landroidx/datastore/preferences/protobuf/f0;

    if-eqz v0, :cond_0

    check-cast p2, Landroidx/datastore/preferences/protobuf/f0;

    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/k;->J(ILandroidx/datastore/preferences/protobuf/f0;Z)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/k;->K(ILjava/util/List;Z)V

    :goto_0
    return-void
.end method

.method public writeStartGroup(I)V
    .locals 2

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->T0(II)V

    return-void
.end method

.method public writeString(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    invoke-virtual {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->R0(ILjava/lang/String;)V

    return-void
.end method

.method public writeStringList(ILjava/util/List;)V
    .locals 3

    instance-of v0, p2, Landroidx/datastore/preferences/protobuf/b0;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroidx/datastore/preferences/protobuf/b0;

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {v0, v1}, Landroidx/datastore/preferences/protobuf/b0;->getRaw(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Landroidx/datastore/preferences/protobuf/k;->C(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, p1, v2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->R0(ILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public writeUInt32(II)V
    .locals 1

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    invoke-virtual {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->U0(II)V

    return-void
.end method

.method public writeUInt32List(ILjava/util/List;Z)V
    .locals 1

    instance-of v0, p2, Landroidx/datastore/preferences/protobuf/v;

    if-eqz v0, :cond_0

    check-cast p2, Landroidx/datastore/preferences/protobuf/v;

    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/k;->L(ILandroidx/datastore/preferences/protobuf/v;Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/k;->M(ILjava/util/List;Z)V

    :goto_0
    return-void
.end method

.method public writeUInt64(IJ)V
    .locals 1

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->W0(IJ)V

    return-void
.end method

.method public writeUInt64List(ILjava/util/List;Z)V
    .locals 1

    instance-of v0, p2, Landroidx/datastore/preferences/protobuf/f0;

    if-eqz v0, :cond_0

    check-cast p2, Landroidx/datastore/preferences/protobuf/f0;

    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/k;->N(ILandroidx/datastore/preferences/protobuf/f0;Z)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/k;->O(ILjava/util/List;Z)V

    :goto_0
    return-void
.end method
