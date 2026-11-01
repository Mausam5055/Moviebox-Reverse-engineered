.class public final Lx9/k$b;
.super Lx9/k$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx9/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field final j:Ljava/util/List;


# direct methods
.method public constructor <init>(Lx9/i;JJJJLjava/util/List;JLjava/util/List;JJ)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-object/from16 v10, p10

    move-wide/from16 v11, p11

    move-wide/from16 v13, p14

    move-wide/from16 v15, p16

    invoke-direct/range {v0 .. v16}, Lx9/k$a;-><init>(Lx9/i;JJJJLjava/util/List;JJJ)V

    move-object/from16 v1, p13

    iput-object v1, v0, Lx9/k$b;->j:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public g(J)J
    .locals 0

    iget-object p1, p0, Lx9/k$b;->j:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    int-to-long p1, p1

    return-wide p1
.end method

.method public k(Lx9/j;J)Lx9/i;
    .locals 2

    iget-object p1, p0, Lx9/k$b;->j:Ljava/util/List;

    iget-wide v0, p0, Lx9/k$a;->d:J

    sub-long/2addr p2, v0

    long-to-int p2, p2

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lx9/i;

    return-object p1
.end method

.method public l()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
