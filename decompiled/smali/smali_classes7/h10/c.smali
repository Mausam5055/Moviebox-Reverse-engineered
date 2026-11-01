.class public Lh10/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh10/c$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field private b:[B

.field c:Lh10/c;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh10/c;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method final a(Lh10/x;)I
    .locals 6

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lh10/c;->b(Lh10/x;[BIII)I

    move-result p1

    return p1
.end method

.method final b(Lh10/x;[BIII)I
    .locals 9

    iget-object v6, p1, Lh10/x;->a:Lh10/g;

    const/4 v0, 0x0

    move-object v8, p0

    move v7, v0

    :goto_0
    if-eqz v8, :cond_0

    iget-object v0, v8, Lh10/c;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lh10/x;->D(Ljava/lang/String;)I

    move-object v0, v8

    move-object v1, v6

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lh10/c;->h(Lh10/g;[BIII)Lh10/d;

    move-result-object v0

    iget v0, v0, Lh10/d;->b:I

    add-int/lit8 v0, v0, 0x6

    add-int/2addr v7, v0

    iget-object v8, v8, Lh10/c;->c:Lh10/c;

    goto :goto_0

    :cond_0
    return v7
.end method

.method final c()I
    .locals 2

    const/4 v0, 0x0

    move-object v1, p0

    :goto_0
    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, v1, Lh10/c;->c:Lh10/c;

    goto :goto_0

    :cond_0
    return v0
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method final e(Lh10/x;Lh10/d;)V
    .locals 7

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lh10/c;->f(Lh10/x;[BIIILh10/d;)V

    return-void
.end method

.method final f(Lh10/x;[BIIILh10/d;)V
    .locals 8

    iget-object v6, p1, Lh10/x;->a:Lh10/g;

    move-object v7, p0

    :goto_0
    if-eqz v7, :cond_0

    move-object v0, v7

    move-object v1, v6

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lh10/c;->h(Lh10/g;[BIII)Lh10/d;

    move-result-object v0

    iget-object v1, v7, Lh10/c;->a:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lh10/x;->D(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p6, v1}, Lh10/d;->k(I)Lh10/d;

    move-result-object v1

    iget v2, v0, Lh10/d;->b:I

    invoke-virtual {v1, v2}, Lh10/d;->i(I)Lh10/d;

    iget-object v1, v0, Lh10/d;->a:[B

    const/4 v2, 0x0

    iget v0, v0, Lh10/d;->b:I

    invoke-virtual {p6, v1, v2, v0}, Lh10/d;->h([BII)Lh10/d;

    iget-object v7, v7, Lh10/c;->c:Lh10/c;

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected g(Lh10/e;II[CI[Lh10/q;)Lh10/c;
    .locals 0

    new-instance p4, Lh10/c;

    iget-object p5, p0, Lh10/c;->a:Ljava/lang/String;

    invoke-direct {p4, p5}, Lh10/c;-><init>(Ljava/lang/String;)V

    new-array p5, p3, [B

    iput-object p5, p4, Lh10/c;->b:[B

    iget-object p1, p1, Lh10/e;->a:[B

    const/4 p6, 0x0

    invoke-static {p1, p2, p5, p6, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p4
.end method

.method protected h(Lh10/g;[BIII)Lh10/d;
    .locals 0

    new-instance p1, Lh10/d;

    iget-object p2, p0, Lh10/c;->b:[B

    invoke-direct {p1, p2}, Lh10/d;-><init>([B)V

    return-object p1
.end method
