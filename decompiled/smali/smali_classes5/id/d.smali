.class public final Lid/d;
.super Ljava/lang/Object;


# instance fields
.field private final a:[B

.field private b:I

.field private final c:Ljava/lang/String;

.field private final d:Ljava/util/List;

.field private final e:Ljava/lang/String;

.field private f:Ljava/lang/Integer;

.field private g:Ljava/lang/Integer;

.field private h:Ljava/lang/Object;

.field private final i:I

.field private final j:I

.field private final k:I


# direct methods
.method public constructor <init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 8

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v7}, Lid/d;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;III)V

    return-void
.end method

.method public constructor <init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;I)V
    .locals 8

    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lid/d;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;III)V

    return-void
.end method

.method public constructor <init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lid/d;->a:[B

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    array-length p1, p1

    mul-int/lit8 p1, p1, 0x8

    :goto_0
    iput p1, p0, Lid/d;->b:I

    iput-object p2, p0, Lid/d;->c:Ljava/lang/String;

    iput-object p3, p0, Lid/d;->d:Ljava/util/List;

    iput-object p4, p0, Lid/d;->e:Ljava/lang/String;

    iput p6, p0, Lid/d;->i:I

    iput p5, p0, Lid/d;->j:I

    iput p7, p0, Lid/d;->k:I

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lid/d;->d:Ljava/util/List;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lid/d;->e:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lid/d;->g:Ljava/lang/Integer;

    return-object v0
.end method

.method public d()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lid/d;->f:Ljava/lang/Integer;

    return-object v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lid/d;->b:I

    return v0
.end method

.method public f()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lid/d;->h:Ljava/lang/Object;

    return-object v0
.end method

.method public g()[B
    .locals 1

    iget-object v0, p0, Lid/d;->a:[B

    return-object v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lid/d;->i:I

    return v0
.end method

.method public i()I
    .locals 1

    iget v0, p0, Lid/d;->j:I

    return v0
.end method

.method public j()I
    .locals 1

    iget v0, p0, Lid/d;->k:I

    return v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lid/d;->c:Ljava/lang/String;

    return-object v0
.end method

.method public l()Z
    .locals 1

    iget v0, p0, Lid/d;->i:I

    if-ltz v0, :cond_0

    iget v0, p0, Lid/d;->j:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public m(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lid/d;->g:Ljava/lang/Integer;

    return-void
.end method

.method public n(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lid/d;->f:Ljava/lang/Integer;

    return-void
.end method

.method public o(I)V
    .locals 0

    iput p1, p0, Lid/d;->b:I

    return-void
.end method

.method public p(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lid/d;->h:Ljava/lang/Object;

    return-void
.end method
