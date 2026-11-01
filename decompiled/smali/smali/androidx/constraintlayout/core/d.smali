.class public Landroidx/constraintlayout/core/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/d$a;,
        Landroidx/constraintlayout/core/d$b;
    }
.end annotation


# static fields
.field public static r:Z = false

.field public static s:Z = true

.field public static t:Z = true

.field public static u:Z = true

.field public static v:Z = false

.field private static w:I = 0x3e8

.field public static x:Landroidx/constraintlayout/core/e;

.field public static y:J

.field public static z:J


# instance fields
.field public a:Z

.field b:I

.field private c:Ljava/util/HashMap;

.field private d:Landroidx/constraintlayout/core/d$a;

.field private e:I

.field private f:I

.field g:[Landroidx/constraintlayout/core/b;

.field public h:Z

.field public i:Z

.field private j:[Z

.field k:I

.field l:I

.field private m:I

.field final n:Landroidx/constraintlayout/core/c;

.field private o:[Landroidx/constraintlayout/core/SolverVariable;

.field private p:I

.field private q:Landroidx/constraintlayout/core/d$a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/constraintlayout/core/d;->a:Z

    iput v0, p0, Landroidx/constraintlayout/core/d;->b:I

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/constraintlayout/core/d;->c:Ljava/util/HashMap;

    const/16 v2, 0x20

    iput v2, p0, Landroidx/constraintlayout/core/d;->e:I

    iput v2, p0, Landroidx/constraintlayout/core/d;->f:I

    iput-object v1, p0, Landroidx/constraintlayout/core/d;->g:[Landroidx/constraintlayout/core/b;

    iput-boolean v0, p0, Landroidx/constraintlayout/core/d;->h:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/core/d;->i:Z

    new-array v1, v2, [Z

    iput-object v1, p0, Landroidx/constraintlayout/core/d;->j:[Z

    const/4 v1, 0x1

    iput v1, p0, Landroidx/constraintlayout/core/d;->k:I

    iput v0, p0, Landroidx/constraintlayout/core/d;->l:I

    iput v2, p0, Landroidx/constraintlayout/core/d;->m:I

    sget v1, Landroidx/constraintlayout/core/d;->w:I

    new-array v1, v1, [Landroidx/constraintlayout/core/SolverVariable;

    iput-object v1, p0, Landroidx/constraintlayout/core/d;->o:[Landroidx/constraintlayout/core/SolverVariable;

    iput v0, p0, Landroidx/constraintlayout/core/d;->p:I

    new-array v0, v2, [Landroidx/constraintlayout/core/b;

    iput-object v0, p0, Landroidx/constraintlayout/core/d;->g:[Landroidx/constraintlayout/core/b;

    invoke-direct {p0}, Landroidx/constraintlayout/core/d;->D()V

    new-instance v0, Landroidx/constraintlayout/core/c;

    invoke-direct {v0}, Landroidx/constraintlayout/core/c;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/d;->n:Landroidx/constraintlayout/core/c;

    new-instance v1, Landroidx/constraintlayout/core/PriorityGoalRow;

    invoke-direct {v1, v0}, Landroidx/constraintlayout/core/PriorityGoalRow;-><init>(Landroidx/constraintlayout/core/c;)V

    iput-object v1, p0, Landroidx/constraintlayout/core/d;->d:Landroidx/constraintlayout/core/d$a;

    sget-boolean v1, Landroidx/constraintlayout/core/d;->v:Z

    if-eqz v1, :cond_0

    new-instance v1, Landroidx/constraintlayout/core/d$b;

    invoke-direct {v1, p0, v0}, Landroidx/constraintlayout/core/d$b;-><init>(Landroidx/constraintlayout/core/d;Landroidx/constraintlayout/core/c;)V

    iput-object v1, p0, Landroidx/constraintlayout/core/d;->q:Landroidx/constraintlayout/core/d$a;

    goto :goto_0

    :cond_0
    new-instance v1, Landroidx/constraintlayout/core/b;

    invoke-direct {v1, v0}, Landroidx/constraintlayout/core/b;-><init>(Landroidx/constraintlayout/core/c;)V

    iput-object v1, p0, Landroidx/constraintlayout/core/d;->q:Landroidx/constraintlayout/core/d$a;

    :goto_0
    return-void
.end method

.method private final C(Landroidx/constraintlayout/core/d$a;Z)I
    .locals 12

    sget-object p2, Landroidx/constraintlayout/core/d;->x:Landroidx/constraintlayout/core/e;

    const-wide/16 v0, 0x1

    if-eqz p2, :cond_0

    iget-wide v2, p2, Landroidx/constraintlayout/core/e;->h:J

    add-long/2addr v2, v0

    iput-wide v2, p2, Landroidx/constraintlayout/core/e;->h:J

    :cond_0
    const/4 p2, 0x0

    move v2, p2

    :goto_0
    iget v3, p0, Landroidx/constraintlayout/core/d;->k:I

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Landroidx/constraintlayout/core/d;->j:[Z

    aput-boolean p2, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v2, p2

    move v3, v2

    :cond_2
    :goto_1
    if-nez v2, :cond_e

    sget-object v4, Landroidx/constraintlayout/core/d;->x:Landroidx/constraintlayout/core/e;

    if-eqz v4, :cond_3

    iget-wide v5, v4, Landroidx/constraintlayout/core/e;->i:J

    add-long/2addr v5, v0

    iput-wide v5, v4, Landroidx/constraintlayout/core/e;->i:J

    :cond_3
    add-int/lit8 v3, v3, 0x1

    iget v4, p0, Landroidx/constraintlayout/core/d;->k:I

    mul-int/lit8 v4, v4, 0x2

    if-lt v3, v4, :cond_4

    return v3

    :cond_4
    invoke-interface {p1}, Landroidx/constraintlayout/core/d$a;->getKey()Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_5

    iget-object v4, p0, Landroidx/constraintlayout/core/d;->j:[Z

    invoke-interface {p1}, Landroidx/constraintlayout/core/d$a;->getKey()Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v6

    iget v6, v6, Landroidx/constraintlayout/core/SolverVariable;->c:I

    aput-boolean v5, v4, v6

    :cond_5
    iget-object v4, p0, Landroidx/constraintlayout/core/d;->j:[Z

    invoke-interface {p1, p0, v4}, Landroidx/constraintlayout/core/d$a;->b(Landroidx/constraintlayout/core/d;[Z)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v4

    if-eqz v4, :cond_7

    iget-object v6, p0, Landroidx/constraintlayout/core/d;->j:[Z

    iget v7, v4, Landroidx/constraintlayout/core/SolverVariable;->c:I

    aget-boolean v8, v6, v7

    if-eqz v8, :cond_6

    return v3

    :cond_6
    aput-boolean v5, v6, v7

    :cond_7
    if-eqz v4, :cond_d

    const/4 v5, -0x1

    const v6, 0x7f7fffff    # Float.MAX_VALUE

    move v7, p2

    move v8, v5

    :goto_2
    iget v9, p0, Landroidx/constraintlayout/core/d;->l:I

    if-ge v7, v9, :cond_b

    iget-object v9, p0, Landroidx/constraintlayout/core/d;->g:[Landroidx/constraintlayout/core/b;

    aget-object v9, v9, v7

    iget-object v10, v9, Landroidx/constraintlayout/core/b;->a:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v10, v10, Landroidx/constraintlayout/core/SolverVariable;->j:Landroidx/constraintlayout/core/SolverVariable$Type;

    sget-object v11, Landroidx/constraintlayout/core/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/core/SolverVariable$Type;

    if-ne v10, v11, :cond_8

    goto :goto_3

    :cond_8
    iget-boolean v10, v9, Landroidx/constraintlayout/core/b;->f:Z

    if-eqz v10, :cond_9

    goto :goto_3

    :cond_9
    invoke-virtual {v9, v4}, Landroidx/constraintlayout/core/b;->t(Landroidx/constraintlayout/core/SolverVariable;)Z

    move-result v10

    if-eqz v10, :cond_a

    iget-object v10, v9, Landroidx/constraintlayout/core/b;->e:Landroidx/constraintlayout/core/b$a;

    invoke-interface {v10, v4}, Landroidx/constraintlayout/core/b$a;->i(Landroidx/constraintlayout/core/SolverVariable;)F

    move-result v10

    const/4 v11, 0x0

    cmpg-float v11, v10, v11

    if-gez v11, :cond_a

    iget v9, v9, Landroidx/constraintlayout/core/b;->b:F

    neg-float v9, v9

    div-float/2addr v9, v10

    cmpg-float v10, v9, v6

    if-gez v10, :cond_a

    move v8, v7

    move v6, v9

    :cond_a
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_b
    if-le v8, v5, :cond_2

    iget-object v6, p0, Landroidx/constraintlayout/core/d;->g:[Landroidx/constraintlayout/core/b;

    aget-object v6, v6, v8

    iget-object v7, v6, Landroidx/constraintlayout/core/b;->a:Landroidx/constraintlayout/core/SolverVariable;

    iput v5, v7, Landroidx/constraintlayout/core/SolverVariable;->d:I

    sget-object v5, Landroidx/constraintlayout/core/d;->x:Landroidx/constraintlayout/core/e;

    if-eqz v5, :cond_c

    iget-wide v9, v5, Landroidx/constraintlayout/core/e;->j:J

    add-long/2addr v9, v0

    iput-wide v9, v5, Landroidx/constraintlayout/core/e;->j:J

    :cond_c
    invoke-virtual {v6, v4}, Landroidx/constraintlayout/core/b;->x(Landroidx/constraintlayout/core/SolverVariable;)V

    iget-object v4, v6, Landroidx/constraintlayout/core/b;->a:Landroidx/constraintlayout/core/SolverVariable;

    iput v8, v4, Landroidx/constraintlayout/core/SolverVariable;->d:I

    invoke-virtual {v4, p0, v6}, Landroidx/constraintlayout/core/SolverVariable;->i(Landroidx/constraintlayout/core/d;Landroidx/constraintlayout/core/b;)V

    goto/16 :goto_1

    :cond_d
    move v2, v5

    goto/16 :goto_1

    :cond_e
    return v3
.end method

.method private D()V
    .locals 4

    sget-boolean v0, Landroidx/constraintlayout/core/d;->v:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    :goto_0
    iget v0, p0, Landroidx/constraintlayout/core/d;->l:I

    if-ge v2, v0, :cond_3

    iget-object v0, p0, Landroidx/constraintlayout/core/d;->g:[Landroidx/constraintlayout/core/b;

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v3, p0, Landroidx/constraintlayout/core/d;->n:Landroidx/constraintlayout/core/c;

    iget-object v3, v3, Landroidx/constraintlayout/core/c;->a:Landroidx/constraintlayout/core/f;

    invoke-interface {v3, v0}, Landroidx/constraintlayout/core/f;->release(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/core/d;->g:[Landroidx/constraintlayout/core/b;

    aput-object v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget v0, p0, Landroidx/constraintlayout/core/d;->l:I

    if-ge v2, v0, :cond_3

    iget-object v0, p0, Landroidx/constraintlayout/core/d;->g:[Landroidx/constraintlayout/core/b;

    aget-object v0, v0, v2

    if-eqz v0, :cond_2

    iget-object v3, p0, Landroidx/constraintlayout/core/d;->n:Landroidx/constraintlayout/core/c;

    iget-object v3, v3, Landroidx/constraintlayout/core/c;->b:Landroidx/constraintlayout/core/f;

    invoke-interface {v3, v0}, Landroidx/constraintlayout/core/f;->release(Ljava/lang/Object;)Z

    :cond_2
    iget-object v0, p0, Landroidx/constraintlayout/core/d;->g:[Landroidx/constraintlayout/core/b;

    aput-object v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private a(Landroidx/constraintlayout/core/SolverVariable$Type;Ljava/lang/String;)Landroidx/constraintlayout/core/SolverVariable;
    .locals 2

    iget-object v0, p0, Landroidx/constraintlayout/core/d;->n:Landroidx/constraintlayout/core/c;

    iget-object v0, v0, Landroidx/constraintlayout/core/c;->c:Landroidx/constraintlayout/core/f;

    invoke-interface {v0}, Landroidx/constraintlayout/core/f;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/SolverVariable;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/constraintlayout/core/SolverVariable;

    invoke-direct {v0, p1, p2}, Landroidx/constraintlayout/core/SolverVariable;-><init>(Landroidx/constraintlayout/core/SolverVariable$Type;Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/core/SolverVariable;->h(Landroidx/constraintlayout/core/SolverVariable$Type;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/constraintlayout/core/SolverVariable;->f()V

    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/core/SolverVariable;->h(Landroidx/constraintlayout/core/SolverVariable$Type;Ljava/lang/String;)V

    :goto_0
    iget p1, p0, Landroidx/constraintlayout/core/d;->p:I

    sget p2, Landroidx/constraintlayout/core/d;->w:I

    if-lt p1, p2, :cond_1

    mul-int/lit8 p2, p2, 0x2

    sput p2, Landroidx/constraintlayout/core/d;->w:I

    iget-object p1, p0, Landroidx/constraintlayout/core/d;->o:[Landroidx/constraintlayout/core/SolverVariable;

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroidx/constraintlayout/core/SolverVariable;

    iput-object p1, p0, Landroidx/constraintlayout/core/d;->o:[Landroidx/constraintlayout/core/SolverVariable;

    :cond_1
    iget-object p1, p0, Landroidx/constraintlayout/core/d;->o:[Landroidx/constraintlayout/core/SolverVariable;

    iget p2, p0, Landroidx/constraintlayout/core/d;->p:I

    add-int/lit8 v1, p2, 0x1

    iput v1, p0, Landroidx/constraintlayout/core/d;->p:I

    aput-object v0, p1, p2

    return-object v0
.end method

.method private final l(Landroidx/constraintlayout/core/b;)V
    .locals 7

    sget-boolean v0, Landroidx/constraintlayout/core/d;->t:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Landroidx/constraintlayout/core/b;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroidx/constraintlayout/core/b;->a:Landroidx/constraintlayout/core/SolverVariable;

    iget p1, p1, Landroidx/constraintlayout/core/b;->b:F

    invoke-virtual {v0, p0, p1}, Landroidx/constraintlayout/core/SolverVariable;->g(Landroidx/constraintlayout/core/d;F)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/core/d;->g:[Landroidx/constraintlayout/core/b;

    iget v1, p0, Landroidx/constraintlayout/core/d;->l:I

    aput-object p1, v0, v1

    iget-object v0, p1, Landroidx/constraintlayout/core/b;->a:Landroidx/constraintlayout/core/SolverVariable;

    iput v1, v0, Landroidx/constraintlayout/core/SolverVariable;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/constraintlayout/core/d;->l:I

    invoke-virtual {v0, p0, p1}, Landroidx/constraintlayout/core/SolverVariable;->i(Landroidx/constraintlayout/core/d;Landroidx/constraintlayout/core/b;)V

    :goto_0
    sget-boolean p1, Landroidx/constraintlayout/core/d;->t:Z

    if-eqz p1, :cond_8

    iget-boolean p1, p0, Landroidx/constraintlayout/core/d;->a:Z

    if-eqz p1, :cond_8

    const/4 p1, 0x0

    move v0, p1

    :goto_1
    iget v1, p0, Landroidx/constraintlayout/core/d;->l:I

    if-ge v0, v1, :cond_7

    iget-object v1, p0, Landroidx/constraintlayout/core/d;->g:[Landroidx/constraintlayout/core/b;

    aget-object v1, v1, v0

    if-nez v1, :cond_1

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "WTF"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Landroidx/constraintlayout/core/d;->g:[Landroidx/constraintlayout/core/b;

    aget-object v1, v1, v0

    if-eqz v1, :cond_6

    iget-boolean v2, v1, Landroidx/constraintlayout/core/b;->f:Z

    if-eqz v2, :cond_6

    iget-object v2, v1, Landroidx/constraintlayout/core/b;->a:Landroidx/constraintlayout/core/SolverVariable;

    iget v3, v1, Landroidx/constraintlayout/core/b;->b:F

    invoke-virtual {v2, p0, v3}, Landroidx/constraintlayout/core/SolverVariable;->g(Landroidx/constraintlayout/core/d;F)V

    sget-boolean v2, Landroidx/constraintlayout/core/d;->v:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/constraintlayout/core/d;->n:Landroidx/constraintlayout/core/c;

    iget-object v2, v2, Landroidx/constraintlayout/core/c;->a:Landroidx/constraintlayout/core/f;

    invoke-interface {v2, v1}, Landroidx/constraintlayout/core/f;->release(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    iget-object v2, p0, Landroidx/constraintlayout/core/d;->n:Landroidx/constraintlayout/core/c;

    iget-object v2, v2, Landroidx/constraintlayout/core/c;->b:Landroidx/constraintlayout/core/f;

    invoke-interface {v2, v1}, Landroidx/constraintlayout/core/f;->release(Ljava/lang/Object;)Z

    :goto_2
    iget-object v1, p0, Landroidx/constraintlayout/core/d;->g:[Landroidx/constraintlayout/core/b;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v1, v0, 0x1

    move v3, v1

    :goto_3
    iget v4, p0, Landroidx/constraintlayout/core/d;->l:I

    if-ge v1, v4, :cond_4

    iget-object v3, p0, Landroidx/constraintlayout/core/d;->g:[Landroidx/constraintlayout/core/b;

    add-int/lit8 v4, v1, -0x1

    aget-object v5, v3, v1

    aput-object v5, v3, v4

    iget-object v3, v5, Landroidx/constraintlayout/core/b;->a:Landroidx/constraintlayout/core/SolverVariable;

    iget v5, v3, Landroidx/constraintlayout/core/SolverVariable;->d:I

    if-ne v5, v1, :cond_3

    iput v4, v3, Landroidx/constraintlayout/core/SolverVariable;->d:I

    :cond_3
    add-int/lit8 v3, v1, 0x1

    move v6, v3

    move v3, v1

    move v1, v6

    goto :goto_3

    :cond_4
    if-ge v3, v4, :cond_5

    iget-object v1, p0, Landroidx/constraintlayout/core/d;->g:[Landroidx/constraintlayout/core/b;

    aput-object v2, v1, v3

    :cond_5
    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Landroidx/constraintlayout/core/d;->l:I

    add-int/lit8 v0, v0, -0x1

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    iput-boolean p1, p0, Landroidx/constraintlayout/core/d;->a:Z

    :cond_8
    return-void
.end method

.method private n()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroidx/constraintlayout/core/d;->l:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroidx/constraintlayout/core/d;->g:[Landroidx/constraintlayout/core/b;

    aget-object v1, v1, v0

    iget-object v2, v1, Landroidx/constraintlayout/core/b;->a:Landroidx/constraintlayout/core/SolverVariable;

    iget v1, v1, Landroidx/constraintlayout/core/b;->b:F

    iput v1, v2, Landroidx/constraintlayout/core/SolverVariable;->f:F

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static s(Landroidx/constraintlayout/core/d;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;F)Landroidx/constraintlayout/core/b;
    .locals 0

    invoke-virtual {p0}, Landroidx/constraintlayout/core/d;->r()Landroidx/constraintlayout/core/b;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Landroidx/constraintlayout/core/b;->j(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;F)Landroidx/constraintlayout/core/b;

    move-result-object p0

    return-object p0
.end method

.method private u(Landroidx/constraintlayout/core/d$a;)I
    .locals 19

    move-object/from16 v0, p0

    const/4 v2, 0x0

    :goto_0
    iget v3, v0, Landroidx/constraintlayout/core/d;->l:I

    if-ge v2, v3, :cond_16

    iget-object v3, v0, Landroidx/constraintlayout/core/d;->g:[Landroidx/constraintlayout/core/b;

    aget-object v3, v3, v2

    iget-object v4, v3, Landroidx/constraintlayout/core/b;->a:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v4, v4, Landroidx/constraintlayout/core/SolverVariable;->j:Landroidx/constraintlayout/core/SolverVariable$Type;

    sget-object v5, Landroidx/constraintlayout/core/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/core/SolverVariable$Type;

    if-ne v4, v5, :cond_0

    goto/16 :goto_b

    :cond_0
    iget v3, v3, Landroidx/constraintlayout/core/b;->b:F

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_15

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_1
    :goto_1
    if-nez v2, :cond_14

    sget-object v5, Landroidx/constraintlayout/core/d;->x:Landroidx/constraintlayout/core/e;

    const-wide/16 v6, 0x1

    if-eqz v5, :cond_2

    iget-wide v8, v5, Landroidx/constraintlayout/core/e;->k:J

    add-long/2addr v8, v6

    iput-wide v8, v5, Landroidx/constraintlayout/core/e;->k:J

    :cond_2
    add-int/lit8 v3, v3, 0x1

    const v8, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/4 v12, 0x0

    :goto_2
    iget v13, v0, Landroidx/constraintlayout/core/d;->l:I

    const/4 v14, 0x1

    if-ge v9, v13, :cond_11

    iget-object v13, v0, Landroidx/constraintlayout/core/d;->g:[Landroidx/constraintlayout/core/b;

    aget-object v13, v13, v9

    iget-object v15, v13, Landroidx/constraintlayout/core/b;->a:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v15, v15, Landroidx/constraintlayout/core/SolverVariable;->j:Landroidx/constraintlayout/core/SolverVariable$Type;

    sget-object v1, Landroidx/constraintlayout/core/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/core/SolverVariable$Type;

    if-ne v15, v1, :cond_3

    goto/16 :goto_9

    :cond_3
    iget-boolean v1, v13, Landroidx/constraintlayout/core/b;->f:Z

    if-eqz v1, :cond_4

    goto/16 :goto_9

    :cond_4
    iget v1, v13, Landroidx/constraintlayout/core/b;->b:F

    cmpg-float v1, v1, v4

    if-gez v1, :cond_10

    sget-boolean v1, Landroidx/constraintlayout/core/d;->u:Z

    const/16 v15, 0x9

    if-eqz v1, :cond_a

    iget-object v1, v13, Landroidx/constraintlayout/core/b;->e:Landroidx/constraintlayout/core/b$a;

    invoke-interface {v1}, Landroidx/constraintlayout/core/b$a;->getCurrentSize()I

    move-result v1

    const/4 v14, 0x0

    :goto_3
    if-ge v14, v1, :cond_10

    iget-object v6, v13, Landroidx/constraintlayout/core/b;->e:Landroidx/constraintlayout/core/b$a;

    invoke-interface {v6, v14}, Landroidx/constraintlayout/core/b$a;->b(I)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v6

    iget-object v7, v13, Landroidx/constraintlayout/core/b;->e:Landroidx/constraintlayout/core/b$a;

    invoke-interface {v7, v6}, Landroidx/constraintlayout/core/b$a;->i(Landroidx/constraintlayout/core/SolverVariable;)F

    move-result v7

    cmpg-float v16, v7, v4

    if-gtz v16, :cond_5

    goto :goto_5

    :cond_5
    const/4 v5, 0x0

    :goto_4
    if-ge v5, v15, :cond_9

    iget-object v15, v6, Landroidx/constraintlayout/core/SolverVariable;->h:[F

    aget v15, v15, v5

    div-float/2addr v15, v7

    cmpg-float v18, v15, v8

    if-gez v18, :cond_6

    if-eq v5, v12, :cond_7

    :cond_6
    if-le v5, v12, :cond_8

    :cond_7
    iget v8, v6, Landroidx/constraintlayout/core/SolverVariable;->c:I

    move v12, v5

    move v11, v8

    move v10, v9

    move v8, v15

    :cond_8
    add-int/lit8 v5, v5, 0x1

    const/16 v15, 0x9

    goto :goto_4

    :cond_9
    :goto_5
    add-int/lit8 v14, v14, 0x1

    const-wide/16 v6, 0x1

    const/16 v15, 0x9

    goto :goto_3

    :cond_a
    :goto_6
    iget v1, v0, Landroidx/constraintlayout/core/d;->k:I

    if-ge v14, v1, :cond_10

    iget-object v1, v0, Landroidx/constraintlayout/core/d;->n:Landroidx/constraintlayout/core/c;

    iget-object v1, v1, Landroidx/constraintlayout/core/c;->d:[Landroidx/constraintlayout/core/SolverVariable;

    aget-object v1, v1, v14

    iget-object v5, v13, Landroidx/constraintlayout/core/b;->e:Landroidx/constraintlayout/core/b$a;

    invoke-interface {v5, v1}, Landroidx/constraintlayout/core/b$a;->i(Landroidx/constraintlayout/core/SolverVariable;)F

    move-result v5

    cmpg-float v6, v5, v4

    if-gtz v6, :cond_b

    const/16 v6, 0x9

    goto :goto_8

    :cond_b
    const/16 v6, 0x9

    const/4 v7, 0x0

    :goto_7
    if-ge v7, v6, :cond_f

    iget-object v15, v1, Landroidx/constraintlayout/core/SolverVariable;->h:[F

    aget v15, v15, v7

    div-float/2addr v15, v5

    cmpg-float v17, v15, v8

    if-gez v17, :cond_c

    if-eq v7, v12, :cond_d

    :cond_c
    if-le v7, v12, :cond_e

    :cond_d
    move v12, v7

    move v10, v9

    move v11, v14

    move v8, v15

    :cond_e
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :cond_f
    :goto_8
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    :cond_10
    :goto_9
    add-int/lit8 v9, v9, 0x1

    const-wide/16 v6, 0x1

    goto/16 :goto_2

    :cond_11
    const/4 v1, -0x1

    if-eq v10, v1, :cond_13

    iget-object v5, v0, Landroidx/constraintlayout/core/d;->g:[Landroidx/constraintlayout/core/b;

    aget-object v5, v5, v10

    iget-object v6, v5, Landroidx/constraintlayout/core/b;->a:Landroidx/constraintlayout/core/SolverVariable;

    iput v1, v6, Landroidx/constraintlayout/core/SolverVariable;->d:I

    sget-object v1, Landroidx/constraintlayout/core/d;->x:Landroidx/constraintlayout/core/e;

    if-eqz v1, :cond_12

    iget-wide v6, v1, Landroidx/constraintlayout/core/e;->j:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, v1, Landroidx/constraintlayout/core/e;->j:J

    :cond_12
    iget-object v1, v0, Landroidx/constraintlayout/core/d;->n:Landroidx/constraintlayout/core/c;

    iget-object v1, v1, Landroidx/constraintlayout/core/c;->d:[Landroidx/constraintlayout/core/SolverVariable;

    aget-object v1, v1, v11

    invoke-virtual {v5, v1}, Landroidx/constraintlayout/core/b;->x(Landroidx/constraintlayout/core/SolverVariable;)V

    iget-object v1, v5, Landroidx/constraintlayout/core/b;->a:Landroidx/constraintlayout/core/SolverVariable;

    iput v10, v1, Landroidx/constraintlayout/core/SolverVariable;->d:I

    invoke-virtual {v1, v0, v5}, Landroidx/constraintlayout/core/SolverVariable;->i(Landroidx/constraintlayout/core/d;Landroidx/constraintlayout/core/b;)V

    goto :goto_a

    :cond_13
    move v2, v14

    :goto_a
    iget v1, v0, Landroidx/constraintlayout/core/d;->k:I

    div-int/lit8 v1, v1, 0x2

    if-le v3, v1, :cond_1

    move v2, v14

    goto/16 :goto_1

    :cond_14
    move v1, v3

    goto :goto_c

    :cond_15
    :goto_b
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_16
    const/4 v1, 0x0

    :goto_c
    return v1
.end method

.method public static x()Landroidx/constraintlayout/core/e;
    .locals 1

    sget-object v0, Landroidx/constraintlayout/core/d;->x:Landroidx/constraintlayout/core/e;

    return-object v0
.end method

.method private z()V
    .locals 6

    iget v0, p0, Landroidx/constraintlayout/core/d;->e:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroidx/constraintlayout/core/d;->e:I

    iget-object v1, p0, Landroidx/constraintlayout/core/d;->g:[Landroidx/constraintlayout/core/b;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/constraintlayout/core/b;

    iput-object v0, p0, Landroidx/constraintlayout/core/d;->g:[Landroidx/constraintlayout/core/b;

    iget-object v0, p0, Landroidx/constraintlayout/core/d;->n:Landroidx/constraintlayout/core/c;

    iget-object v1, v0, Landroidx/constraintlayout/core/c;->d:[Landroidx/constraintlayout/core/SolverVariable;

    iget v2, p0, Landroidx/constraintlayout/core/d;->e:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroidx/constraintlayout/core/SolverVariable;

    iput-object v1, v0, Landroidx/constraintlayout/core/c;->d:[Landroidx/constraintlayout/core/SolverVariable;

    iget v0, p0, Landroidx/constraintlayout/core/d;->e:I

    new-array v1, v0, [Z

    iput-object v1, p0, Landroidx/constraintlayout/core/d;->j:[Z

    iput v0, p0, Landroidx/constraintlayout/core/d;->f:I

    iput v0, p0, Landroidx/constraintlayout/core/d;->m:I

    sget-object v1, Landroidx/constraintlayout/core/d;->x:Landroidx/constraintlayout/core/e;

    if-eqz v1, :cond_0

    iget-wide v2, v1, Landroidx/constraintlayout/core/e;->d:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v1, Landroidx/constraintlayout/core/e;->d:J

    iget-wide v2, v1, Landroidx/constraintlayout/core/e;->o:J

    int-to-long v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, v1, Landroidx/constraintlayout/core/e;->o:J

    sget-object v0, Landroidx/constraintlayout/core/d;->x:Landroidx/constraintlayout/core/e;

    iget-wide v1, v0, Landroidx/constraintlayout/core/e;->o:J

    iput-wide v1, v0, Landroidx/constraintlayout/core/e;->y:J

    :cond_0
    return-void
.end method


# virtual methods
.method public A()V
    .locals 5

    sget-object v0, Landroidx/constraintlayout/core/d;->x:Landroidx/constraintlayout/core/e;

    const-wide/16 v1, 0x1

    if-eqz v0, :cond_0

    iget-wide v3, v0, Landroidx/constraintlayout/core/e;->e:J

    add-long/2addr v3, v1

    iput-wide v3, v0, Landroidx/constraintlayout/core/e;->e:J

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/core/d;->d:Landroidx/constraintlayout/core/d$a;

    invoke-interface {v0}, Landroidx/constraintlayout/core/d$a;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroidx/constraintlayout/core/d;->n()V

    return-void

    :cond_1
    iget-boolean v0, p0, Landroidx/constraintlayout/core/d;->h:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Landroidx/constraintlayout/core/d;->i:Z

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroidx/constraintlayout/core/d;->d:Landroidx/constraintlayout/core/d$a;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/d;->B(Landroidx/constraintlayout/core/d$a;)V

    goto :goto_2

    :cond_3
    :goto_0
    sget-object v0, Landroidx/constraintlayout/core/d;->x:Landroidx/constraintlayout/core/e;

    if-eqz v0, :cond_4

    iget-wide v3, v0, Landroidx/constraintlayout/core/e;->q:J

    add-long/2addr v3, v1

    iput-wide v3, v0, Landroidx/constraintlayout/core/e;->q:J

    :cond_4
    const/4 v0, 0x0

    :goto_1
    iget v3, p0, Landroidx/constraintlayout/core/d;->l:I

    if-ge v0, v3, :cond_6

    iget-object v3, p0, Landroidx/constraintlayout/core/d;->g:[Landroidx/constraintlayout/core/b;

    aget-object v3, v3, v0

    iget-boolean v3, v3, Landroidx/constraintlayout/core/b;->f:Z

    if-nez v3, :cond_5

    iget-object v0, p0, Landroidx/constraintlayout/core/d;->d:Landroidx/constraintlayout/core/d$a;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/d;->B(Landroidx/constraintlayout/core/d$a;)V

    goto :goto_2

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    sget-object v0, Landroidx/constraintlayout/core/d;->x:Landroidx/constraintlayout/core/e;

    if-eqz v0, :cond_7

    iget-wide v3, v0, Landroidx/constraintlayout/core/e;->p:J

    add-long/2addr v3, v1

    iput-wide v3, v0, Landroidx/constraintlayout/core/e;->p:J

    :cond_7
    invoke-direct {p0}, Landroidx/constraintlayout/core/d;->n()V

    :goto_2
    return-void
.end method

.method B(Landroidx/constraintlayout/core/d$a;)V
    .locals 5

    sget-object v0, Landroidx/constraintlayout/core/d;->x:Landroidx/constraintlayout/core/e;

    if-eqz v0, :cond_0

    iget-wide v1, v0, Landroidx/constraintlayout/core/e;->t:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroidx/constraintlayout/core/e;->t:J

    iget-wide v1, v0, Landroidx/constraintlayout/core/e;->u:J

    iget v3, p0, Landroidx/constraintlayout/core/d;->k:I

    int-to-long v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/constraintlayout/core/e;->u:J

    sget-object v0, Landroidx/constraintlayout/core/d;->x:Landroidx/constraintlayout/core/e;

    iget-wide v1, v0, Landroidx/constraintlayout/core/e;->v:J

    iget v3, p0, Landroidx/constraintlayout/core/d;->l:I

    int-to-long v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/constraintlayout/core/e;->v:J

    :cond_0
    invoke-direct {p0, p1}, Landroidx/constraintlayout/core/d;->u(Landroidx/constraintlayout/core/d$a;)I

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/constraintlayout/core/d;->C(Landroidx/constraintlayout/core/d$a;Z)I

    invoke-direct {p0}, Landroidx/constraintlayout/core/d;->n()V

    return-void
.end method

.method public E()V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Landroidx/constraintlayout/core/d;->n:Landroidx/constraintlayout/core/c;

    iget-object v3, v2, Landroidx/constraintlayout/core/c;->d:[Landroidx/constraintlayout/core/SolverVariable;

    array-length v4, v3

    if-ge v1, v4, :cond_1

    aget-object v2, v3, v1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroidx/constraintlayout/core/SolverVariable;->f()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, v2, Landroidx/constraintlayout/core/c;->c:Landroidx/constraintlayout/core/f;

    iget-object v2, p0, Landroidx/constraintlayout/core/d;->o:[Landroidx/constraintlayout/core/SolverVariable;

    iget v3, p0, Landroidx/constraintlayout/core/d;->p:I

    invoke-interface {v1, v2, v3}, Landroidx/constraintlayout/core/f;->a([Ljava/lang/Object;I)V

    iput v0, p0, Landroidx/constraintlayout/core/d;->p:I

    iget-object v1, p0, Landroidx/constraintlayout/core/d;->n:Landroidx/constraintlayout/core/c;

    iget-object v1, v1, Landroidx/constraintlayout/core/c;->d:[Landroidx/constraintlayout/core/SolverVariable;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Landroidx/constraintlayout/core/d;->c:Ljava/util/HashMap;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    :cond_2
    iput v0, p0, Landroidx/constraintlayout/core/d;->b:I

    iget-object v1, p0, Landroidx/constraintlayout/core/d;->d:Landroidx/constraintlayout/core/d$a;

    invoke-interface {v1}, Landroidx/constraintlayout/core/d$a;->clear()V

    const/4 v1, 0x1

    iput v1, p0, Landroidx/constraintlayout/core/d;->k:I

    move v1, v0

    :goto_1
    iget v2, p0, Landroidx/constraintlayout/core/d;->l:I

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Landroidx/constraintlayout/core/d;->g:[Landroidx/constraintlayout/core/b;

    aget-object v2, v2, v1

    if-eqz v2, :cond_3

    iput-boolean v0, v2, Landroidx/constraintlayout/core/b;->c:Z

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Landroidx/constraintlayout/core/d;->D()V

    iput v0, p0, Landroidx/constraintlayout/core/d;->l:I

    sget-boolean v0, Landroidx/constraintlayout/core/d;->v:Z

    if-eqz v0, :cond_5

    new-instance v0, Landroidx/constraintlayout/core/d$b;

    iget-object v1, p0, Landroidx/constraintlayout/core/d;->n:Landroidx/constraintlayout/core/c;

    invoke-direct {v0, p0, v1}, Landroidx/constraintlayout/core/d$b;-><init>(Landroidx/constraintlayout/core/d;Landroidx/constraintlayout/core/c;)V

    iput-object v0, p0, Landroidx/constraintlayout/core/d;->q:Landroidx/constraintlayout/core/d$a;

    goto :goto_2

    :cond_5
    new-instance v0, Landroidx/constraintlayout/core/b;

    iget-object v1, p0, Landroidx/constraintlayout/core/d;->n:Landroidx/constraintlayout/core/c;

    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/b;-><init>(Landroidx/constraintlayout/core/c;)V

    iput-object v0, p0, Landroidx/constraintlayout/core/d;->q:Landroidx/constraintlayout/core/d$a;

    :goto_2
    return-void
.end method

.method public b(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintWidget;FI)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->q(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroidx/constraintlayout/core/d;->q(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v6

    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->q(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroidx/constraintlayout/core/d;->q(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v8

    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->q(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroidx/constraintlayout/core/d;->q(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v13

    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->q(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/d;->q(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v9

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->q(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/d;->q(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v1

    invoke-virtual {v2, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->q(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/constraintlayout/core/d;->q(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v10

    invoke-virtual {v2, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->q(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/constraintlayout/core/d;->q(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v3

    invoke-virtual {v2, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->q(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/d;->q(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/d;->r()Landroidx/constraintlayout/core/b;

    move-result-object v2

    move/from16 v4, p3

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    move/from16 v7, p4

    move-object/from16 p1, v3

    move-wide/from16 p2, v4

    int-to-double v3, v7

    mul-double/2addr v14, v3

    double-to-float v12, v14

    move-object v7, v2

    invoke-virtual/range {v7 .. v12}, Landroidx/constraintlayout/core/b;->q(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;F)Landroidx/constraintlayout/core/b;

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/d;->d(Landroidx/constraintlayout/core/b;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/d;->r()Landroidx/constraintlayout/core/b;

    move-result-object v2

    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double/2addr v7, v3

    double-to-float v10, v7

    move-object v5, v2

    move-object v7, v13

    move-object v8, v1

    move-object/from16 v9, p1

    invoke-virtual/range {v5 .. v10}, Landroidx/constraintlayout/core/b;->q(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;F)Landroidx/constraintlayout/core/b;

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/d;->d(Landroidx/constraintlayout/core/b;)V

    return-void
.end method

.method public c(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;IFLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V
    .locals 11

    move-object v0, p0

    move/from16 v1, p8

    invoke-virtual {p0}, Landroidx/constraintlayout/core/d;->r()Landroidx/constraintlayout/core/b;

    move-result-object v10

    move-object v2, v10

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-virtual/range {v2 .. v9}, Landroidx/constraintlayout/core/b;->h(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;IFLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;I)Landroidx/constraintlayout/core/b;

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    invoke-virtual {v10, p0, v1}, Landroidx/constraintlayout/core/b;->d(Landroidx/constraintlayout/core/d;I)Landroidx/constraintlayout/core/b;

    :cond_0
    invoke-virtual {p0, v10}, Landroidx/constraintlayout/core/d;->d(Landroidx/constraintlayout/core/b;)V

    return-void
.end method

.method public d(Landroidx/constraintlayout/core/b;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object v0, Landroidx/constraintlayout/core/d;->x:Landroidx/constraintlayout/core/e;

    const-wide/16 v1, 0x1

    if-eqz v0, :cond_1

    iget-wide v3, v0, Landroidx/constraintlayout/core/e;->f:J

    add-long/2addr v3, v1

    iput-wide v3, v0, Landroidx/constraintlayout/core/e;->f:J

    iget-boolean v3, p1, Landroidx/constraintlayout/core/b;->f:Z

    if-eqz v3, :cond_1

    iget-wide v3, v0, Landroidx/constraintlayout/core/e;->g:J

    add-long/2addr v3, v1

    iput-wide v3, v0, Landroidx/constraintlayout/core/e;->g:J

    :cond_1
    iget v0, p0, Landroidx/constraintlayout/core/d;->l:I

    const/4 v3, 0x1

    add-int/2addr v0, v3

    iget v4, p0, Landroidx/constraintlayout/core/d;->m:I

    if-ge v0, v4, :cond_2

    iget v0, p0, Landroidx/constraintlayout/core/d;->k:I

    add-int/2addr v0, v3

    iget v4, p0, Landroidx/constraintlayout/core/d;->f:I

    if-lt v0, v4, :cond_3

    :cond_2
    invoke-direct {p0}, Landroidx/constraintlayout/core/d;->z()V

    :cond_3
    iget-boolean v0, p1, Landroidx/constraintlayout/core/b;->f:Z

    const/4 v4, 0x0

    if-nez v0, :cond_c

    invoke-virtual {p1, p0}, Landroidx/constraintlayout/core/b;->D(Landroidx/constraintlayout/core/d;)V

    invoke-virtual {p1}, Landroidx/constraintlayout/core/b;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    :cond_4
    invoke-virtual {p1}, Landroidx/constraintlayout/core/b;->r()V

    invoke-virtual {p1, p0}, Landroidx/constraintlayout/core/b;->f(Landroidx/constraintlayout/core/d;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Landroidx/constraintlayout/core/d;->p()Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v0

    iput-object v0, p1, Landroidx/constraintlayout/core/b;->a:Landroidx/constraintlayout/core/SolverVariable;

    iget v5, p0, Landroidx/constraintlayout/core/d;->l:I

    invoke-direct {p0, p1}, Landroidx/constraintlayout/core/d;->l(Landroidx/constraintlayout/core/b;)V

    iget v6, p0, Landroidx/constraintlayout/core/d;->l:I

    add-int/2addr v5, v3

    if-ne v6, v5, :cond_9

    iget-object v4, p0, Landroidx/constraintlayout/core/d;->q:Landroidx/constraintlayout/core/d$a;

    invoke-interface {v4, p1}, Landroidx/constraintlayout/core/d$a;->a(Landroidx/constraintlayout/core/d$a;)V

    iget-object v4, p0, Landroidx/constraintlayout/core/d;->q:Landroidx/constraintlayout/core/d$a;

    invoke-direct {p0, v4, v3}, Landroidx/constraintlayout/core/d;->C(Landroidx/constraintlayout/core/d$a;Z)I

    iget v4, v0, Landroidx/constraintlayout/core/SolverVariable;->d:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_a

    iget-object v4, p1, Landroidx/constraintlayout/core/b;->a:Landroidx/constraintlayout/core/SolverVariable;

    if-ne v4, v0, :cond_6

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/b;->v(Landroidx/constraintlayout/core/SolverVariable;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v0

    if-eqz v0, :cond_6

    sget-object v4, Landroidx/constraintlayout/core/d;->x:Landroidx/constraintlayout/core/e;

    if-eqz v4, :cond_5

    iget-wide v5, v4, Landroidx/constraintlayout/core/e;->j:J

    add-long/2addr v5, v1

    iput-wide v5, v4, Landroidx/constraintlayout/core/e;->j:J

    :cond_5
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/b;->x(Landroidx/constraintlayout/core/SolverVariable;)V

    :cond_6
    iget-boolean v0, p1, Landroidx/constraintlayout/core/b;->f:Z

    if-nez v0, :cond_7

    iget-object v0, p1, Landroidx/constraintlayout/core/b;->a:Landroidx/constraintlayout/core/SolverVariable;

    invoke-virtual {v0, p0, p1}, Landroidx/constraintlayout/core/SolverVariable;->i(Landroidx/constraintlayout/core/d;Landroidx/constraintlayout/core/b;)V

    :cond_7
    sget-boolean v0, Landroidx/constraintlayout/core/d;->v:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroidx/constraintlayout/core/d;->n:Landroidx/constraintlayout/core/c;

    iget-object v0, v0, Landroidx/constraintlayout/core/c;->a:Landroidx/constraintlayout/core/f;

    invoke-interface {v0, p1}, Landroidx/constraintlayout/core/f;->release(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_8
    iget-object v0, p0, Landroidx/constraintlayout/core/d;->n:Landroidx/constraintlayout/core/c;

    iget-object v0, v0, Landroidx/constraintlayout/core/c;->b:Landroidx/constraintlayout/core/f;

    invoke-interface {v0, p1}, Landroidx/constraintlayout/core/f;->release(Ljava/lang/Object;)Z

    :goto_0
    iget v0, p0, Landroidx/constraintlayout/core/d;->l:I

    sub-int/2addr v0, v3

    iput v0, p0, Landroidx/constraintlayout/core/d;->l:I

    goto :goto_1

    :cond_9
    move v3, v4

    :cond_a
    :goto_1
    invoke-virtual {p1}, Landroidx/constraintlayout/core/b;->s()Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    move v4, v3

    :cond_c
    if-nez v4, :cond_d

    invoke-direct {p0, p1}, Landroidx/constraintlayout/core/d;->l(Landroidx/constraintlayout/core/b;)V

    :cond_d
    return-void
.end method

.method public e(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/b;
    .locals 3

    sget-boolean v0, Landroidx/constraintlayout/core/d;->s:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    if-ne p4, v1, :cond_0

    iget-boolean v0, p2, Landroidx/constraintlayout/core/SolverVariable;->g:Z

    if-eqz v0, :cond_0

    iget v0, p1, Landroidx/constraintlayout/core/SolverVariable;->d:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    iget p2, p2, Landroidx/constraintlayout/core/SolverVariable;->f:F

    int-to-float p3, p3

    add-float/2addr p2, p3

    invoke-virtual {p1, p0, p2}, Landroidx/constraintlayout/core/SolverVariable;->g(Landroidx/constraintlayout/core/d;F)V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p0}, Landroidx/constraintlayout/core/d;->r()Landroidx/constraintlayout/core/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroidx/constraintlayout/core/b;->n(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;I)Landroidx/constraintlayout/core/b;

    if-eq p4, v1, :cond_1

    invoke-virtual {v0, p0, p4}, Landroidx/constraintlayout/core/b;->d(Landroidx/constraintlayout/core/d;I)Landroidx/constraintlayout/core/b;

    :cond_1
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/d;->d(Landroidx/constraintlayout/core/b;)V

    return-object v0
.end method

.method public f(Landroidx/constraintlayout/core/SolverVariable;I)V
    .locals 5

    sget-boolean v0, Landroidx/constraintlayout/core/d;->s:Z

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget v0, p1, Landroidx/constraintlayout/core/SolverVariable;->d:I

    if-ne v0, v1, :cond_2

    int-to-float p2, p2

    invoke-virtual {p1, p0, p2}, Landroidx/constraintlayout/core/SolverVariable;->g(Landroidx/constraintlayout/core/d;F)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroidx/constraintlayout/core/d;->b:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroidx/constraintlayout/core/d;->n:Landroidx/constraintlayout/core/c;

    iget-object v1, v1, Landroidx/constraintlayout/core/c;->d:[Landroidx/constraintlayout/core/SolverVariable;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-boolean v3, v1, Landroidx/constraintlayout/core/SolverVariable;->n:Z

    if-eqz v3, :cond_0

    iget v3, v1, Landroidx/constraintlayout/core/SolverVariable;->o:I

    iget v4, p1, Landroidx/constraintlayout/core/SolverVariable;->c:I

    if-ne v3, v4, :cond_0

    iget v3, v1, Landroidx/constraintlayout/core/SolverVariable;->p:F

    add-float/2addr v3, p2

    invoke-virtual {v1, p0, v3}, Landroidx/constraintlayout/core/SolverVariable;->g(Landroidx/constraintlayout/core/d;F)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    iget v0, p1, Landroidx/constraintlayout/core/SolverVariable;->d:I

    if-eq v0, v1, :cond_5

    iget-object v1, p0, Landroidx/constraintlayout/core/d;->g:[Landroidx/constraintlayout/core/b;

    aget-object v0, v1, v0

    iget-boolean v1, v0, Landroidx/constraintlayout/core/b;->f:Z

    if-eqz v1, :cond_3

    int-to-float p1, p2

    iput p1, v0, Landroidx/constraintlayout/core/b;->b:F

    goto :goto_1

    :cond_3
    iget-object v1, v0, Landroidx/constraintlayout/core/b;->e:Landroidx/constraintlayout/core/b$a;

    invoke-interface {v1}, Landroidx/constraintlayout/core/b$a;->getCurrentSize()I

    move-result v1

    if-nez v1, :cond_4

    iput-boolean v2, v0, Landroidx/constraintlayout/core/b;->f:Z

    int-to-float p1, p2

    iput p1, v0, Landroidx/constraintlayout/core/b;->b:F

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Landroidx/constraintlayout/core/d;->r()Landroidx/constraintlayout/core/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/core/b;->m(Landroidx/constraintlayout/core/SolverVariable;I)Landroidx/constraintlayout/core/b;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/d;->d(Landroidx/constraintlayout/core/b;)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Landroidx/constraintlayout/core/d;->r()Landroidx/constraintlayout/core/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/core/b;->i(Landroidx/constraintlayout/core/SolverVariable;I)Landroidx/constraintlayout/core/b;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/d;->d(Landroidx/constraintlayout/core/b;)V

    :goto_1
    return-void
.end method

.method public g(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;IZ)V
    .locals 2

    invoke-virtual {p0}, Landroidx/constraintlayout/core/d;->r()Landroidx/constraintlayout/core/b;

    move-result-object p4

    invoke-virtual {p0}, Landroidx/constraintlayout/core/d;->t()Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroidx/constraintlayout/core/SolverVariable;->e:I

    invoke-virtual {p4, p1, p2, v0, p3}, Landroidx/constraintlayout/core/b;->o(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;I)Landroidx/constraintlayout/core/b;

    invoke-virtual {p0, p4}, Landroidx/constraintlayout/core/d;->d(Landroidx/constraintlayout/core/b;)V

    return-void
.end method

.method public h(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V
    .locals 3

    invoke-virtual {p0}, Landroidx/constraintlayout/core/d;->r()Landroidx/constraintlayout/core/b;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/constraintlayout/core/d;->t()Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v1

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/core/SolverVariable;->e:I

    invoke-virtual {v0, p1, p2, v1, p3}, Landroidx/constraintlayout/core/b;->o(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;I)Landroidx/constraintlayout/core/b;

    const/16 p1, 0x8

    if-eq p4, p1, :cond_0

    iget-object p1, v0, Landroidx/constraintlayout/core/b;->e:Landroidx/constraintlayout/core/b$a;

    invoke-interface {p1, v1}, Landroidx/constraintlayout/core/b$a;->i(Landroidx/constraintlayout/core/SolverVariable;)F

    move-result p1

    const/high16 p2, -0x40800000    # -1.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    invoke-virtual {p0, v0, p1, p4}, Landroidx/constraintlayout/core/d;->m(Landroidx/constraintlayout/core/b;II)V

    :cond_0
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/d;->d(Landroidx/constraintlayout/core/b;)V

    return-void
.end method

.method public i(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;IZ)V
    .locals 2

    invoke-virtual {p0}, Landroidx/constraintlayout/core/d;->r()Landroidx/constraintlayout/core/b;

    move-result-object p4

    invoke-virtual {p0}, Landroidx/constraintlayout/core/d;->t()Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroidx/constraintlayout/core/SolverVariable;->e:I

    invoke-virtual {p4, p1, p2, v0, p3}, Landroidx/constraintlayout/core/b;->p(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;I)Landroidx/constraintlayout/core/b;

    invoke-virtual {p0, p4}, Landroidx/constraintlayout/core/d;->d(Landroidx/constraintlayout/core/b;)V

    return-void
.end method

.method public j(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V
    .locals 3

    invoke-virtual {p0}, Landroidx/constraintlayout/core/d;->r()Landroidx/constraintlayout/core/b;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/constraintlayout/core/d;->t()Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v1

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/core/SolverVariable;->e:I

    invoke-virtual {v0, p1, p2, v1, p3}, Landroidx/constraintlayout/core/b;->p(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;I)Landroidx/constraintlayout/core/b;

    const/16 p1, 0x8

    if-eq p4, p1, :cond_0

    iget-object p1, v0, Landroidx/constraintlayout/core/b;->e:Landroidx/constraintlayout/core/b$a;

    invoke-interface {p1, v1}, Landroidx/constraintlayout/core/b$a;->i(Landroidx/constraintlayout/core/SolverVariable;)F

    move-result p1

    const/high16 p2, -0x40800000    # -1.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    invoke-virtual {p0, v0, p1, p4}, Landroidx/constraintlayout/core/d;->m(Landroidx/constraintlayout/core/b;II)V

    :cond_0
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/d;->d(Landroidx/constraintlayout/core/b;)V

    return-void
.end method

.method public k(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;FI)V
    .locals 7

    invoke-virtual {p0}, Landroidx/constraintlayout/core/d;->r()Landroidx/constraintlayout/core/b;

    move-result-object v6

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/core/b;->k(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;F)Landroidx/constraintlayout/core/b;

    const/16 p1, 0x8

    if-eq p6, p1, :cond_0

    invoke-virtual {v6, p0, p6}, Landroidx/constraintlayout/core/b;->d(Landroidx/constraintlayout/core/d;I)Landroidx/constraintlayout/core/b;

    :cond_0
    invoke-virtual {p0, v6}, Landroidx/constraintlayout/core/d;->d(Landroidx/constraintlayout/core/b;)V

    return-void
.end method

.method m(Landroidx/constraintlayout/core/b;II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p3, v0}, Landroidx/constraintlayout/core/d;->o(ILjava/lang/String;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object p3

    invoke-virtual {p1, p3, p2}, Landroidx/constraintlayout/core/b;->e(Landroidx/constraintlayout/core/SolverVariable;I)Landroidx/constraintlayout/core/b;

    return-void
.end method

.method public o(ILjava/lang/String;)Landroidx/constraintlayout/core/SolverVariable;
    .locals 5

    sget-object v0, Landroidx/constraintlayout/core/d;->x:Landroidx/constraintlayout/core/e;

    if-eqz v0, :cond_0

    iget-wide v1, v0, Landroidx/constraintlayout/core/e;->l:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroidx/constraintlayout/core/e;->l:J

    :cond_0
    iget v0, p0, Landroidx/constraintlayout/core/d;->k:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroidx/constraintlayout/core/d;->f:I

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Landroidx/constraintlayout/core/d;->z()V

    :cond_1
    sget-object v0, Landroidx/constraintlayout/core/SolverVariable$Type;->ERROR:Landroidx/constraintlayout/core/SolverVariable$Type;

    invoke-direct {p0, v0, p2}, Landroidx/constraintlayout/core/d;->a(Landroidx/constraintlayout/core/SolverVariable$Type;Ljava/lang/String;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object p2

    iget v0, p0, Landroidx/constraintlayout/core/d;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/constraintlayout/core/d;->b:I

    iget v1, p0, Landroidx/constraintlayout/core/d;->k:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/constraintlayout/core/d;->k:I

    iput v0, p2, Landroidx/constraintlayout/core/SolverVariable;->c:I

    iput p1, p2, Landroidx/constraintlayout/core/SolverVariable;->e:I

    iget-object p1, p0, Landroidx/constraintlayout/core/d;->n:Landroidx/constraintlayout/core/c;

    iget-object p1, p1, Landroidx/constraintlayout/core/c;->d:[Landroidx/constraintlayout/core/SolverVariable;

    aput-object p2, p1, v0

    iget-object p1, p0, Landroidx/constraintlayout/core/d;->d:Landroidx/constraintlayout/core/d$a;

    invoke-interface {p1, p2}, Landroidx/constraintlayout/core/d$a;->c(Landroidx/constraintlayout/core/SolverVariable;)V

    return-object p2
.end method

.method public p()Landroidx/constraintlayout/core/SolverVariable;
    .locals 5

    sget-object v0, Landroidx/constraintlayout/core/d;->x:Landroidx/constraintlayout/core/e;

    if-eqz v0, :cond_0

    iget-wide v1, v0, Landroidx/constraintlayout/core/e;->n:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroidx/constraintlayout/core/e;->n:J

    :cond_0
    iget v0, p0, Landroidx/constraintlayout/core/d;->k:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroidx/constraintlayout/core/d;->f:I

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Landroidx/constraintlayout/core/d;->z()V

    :cond_1
    sget-object v0, Landroidx/constraintlayout/core/SolverVariable$Type;->SLACK:Landroidx/constraintlayout/core/SolverVariable$Type;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/core/d;->a(Landroidx/constraintlayout/core/SolverVariable$Type;Ljava/lang/String;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v0

    iget v1, p0, Landroidx/constraintlayout/core/d;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/constraintlayout/core/d;->b:I

    iget v2, p0, Landroidx/constraintlayout/core/d;->k:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroidx/constraintlayout/core/d;->k:I

    iput v1, v0, Landroidx/constraintlayout/core/SolverVariable;->c:I

    iget-object v2, p0, Landroidx/constraintlayout/core/d;->n:Landroidx/constraintlayout/core/c;

    iget-object v2, v2, Landroidx/constraintlayout/core/c;->d:[Landroidx/constraintlayout/core/SolverVariable;

    aput-object v0, v2, v1

    return-object v0
.end method

.method public q(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget v1, p0, Landroidx/constraintlayout/core/d;->k:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Landroidx/constraintlayout/core/d;->f:I

    if-lt v1, v2, :cond_1

    invoke-direct {p0}, Landroidx/constraintlayout/core/d;->z()V

    :cond_1
    instance-of v1, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v1, :cond_5

    check-cast p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i()Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/constraintlayout/core/d;->n:Landroidx/constraintlayout/core/c;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->s(Landroidx/constraintlayout/core/c;)V

    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i()Landroidx/constraintlayout/core/SolverVariable;

    move-result-object p1

    move-object v0, p1

    :cond_2
    iget p1, v0, Landroidx/constraintlayout/core/SolverVariable;->c:I

    const/4 v1, -0x1

    if-eq p1, v1, :cond_3

    iget v2, p0, Landroidx/constraintlayout/core/d;->b:I

    if-gt p1, v2, :cond_3

    iget-object v2, p0, Landroidx/constraintlayout/core/d;->n:Landroidx/constraintlayout/core/c;

    iget-object v2, v2, Landroidx/constraintlayout/core/c;->d:[Landroidx/constraintlayout/core/SolverVariable;

    aget-object v2, v2, p1

    if-nez v2, :cond_5

    :cond_3
    if-eq p1, v1, :cond_4

    invoke-virtual {v0}, Landroidx/constraintlayout/core/SolverVariable;->f()V

    :cond_4
    iget p1, p0, Landroidx/constraintlayout/core/d;->b:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/constraintlayout/core/d;->b:I

    iget v1, p0, Landroidx/constraintlayout/core/d;->k:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/constraintlayout/core/d;->k:I

    iput p1, v0, Landroidx/constraintlayout/core/SolverVariable;->c:I

    sget-object v1, Landroidx/constraintlayout/core/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/core/SolverVariable$Type;

    iput-object v1, v0, Landroidx/constraintlayout/core/SolverVariable;->j:Landroidx/constraintlayout/core/SolverVariable$Type;

    iget-object v1, p0, Landroidx/constraintlayout/core/d;->n:Landroidx/constraintlayout/core/c;

    iget-object v1, v1, Landroidx/constraintlayout/core/c;->d:[Landroidx/constraintlayout/core/SolverVariable;

    aput-object v0, v1, p1

    :cond_5
    return-object v0
.end method

.method public r()Landroidx/constraintlayout/core/b;
    .locals 5

    sget-boolean v0, Landroidx/constraintlayout/core/d;->v:Z

    const-wide/16 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/constraintlayout/core/d;->n:Landroidx/constraintlayout/core/c;

    iget-object v0, v0, Landroidx/constraintlayout/core/c;->a:Landroidx/constraintlayout/core/f;

    invoke-interface {v0}, Landroidx/constraintlayout/core/f;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/b;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/constraintlayout/core/d$b;

    iget-object v3, p0, Landroidx/constraintlayout/core/d;->n:Landroidx/constraintlayout/core/c;

    invoke-direct {v0, p0, v3}, Landroidx/constraintlayout/core/d$b;-><init>(Landroidx/constraintlayout/core/d;Landroidx/constraintlayout/core/c;)V

    sget-wide v3, Landroidx/constraintlayout/core/d;->z:J

    add-long/2addr v3, v1

    sput-wide v3, Landroidx/constraintlayout/core/d;->z:J

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/constraintlayout/core/b;->y()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/core/d;->n:Landroidx/constraintlayout/core/c;

    iget-object v0, v0, Landroidx/constraintlayout/core/c;->b:Landroidx/constraintlayout/core/f;

    invoke-interface {v0}, Landroidx/constraintlayout/core/f;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/b;

    if-nez v0, :cond_2

    new-instance v0, Landroidx/constraintlayout/core/b;

    iget-object v3, p0, Landroidx/constraintlayout/core/d;->n:Landroidx/constraintlayout/core/c;

    invoke-direct {v0, v3}, Landroidx/constraintlayout/core/b;-><init>(Landroidx/constraintlayout/core/c;)V

    sget-wide v3, Landroidx/constraintlayout/core/d;->y:J

    add-long/2addr v3, v1

    sput-wide v3, Landroidx/constraintlayout/core/d;->y:J

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroidx/constraintlayout/core/b;->y()V

    :goto_0
    invoke-static {}, Landroidx/constraintlayout/core/SolverVariable;->d()V

    return-object v0
.end method

.method public t()Landroidx/constraintlayout/core/SolverVariable;
    .locals 5

    sget-object v0, Landroidx/constraintlayout/core/d;->x:Landroidx/constraintlayout/core/e;

    if-eqz v0, :cond_0

    iget-wide v1, v0, Landroidx/constraintlayout/core/e;->m:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroidx/constraintlayout/core/e;->m:J

    :cond_0
    iget v0, p0, Landroidx/constraintlayout/core/d;->k:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroidx/constraintlayout/core/d;->f:I

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Landroidx/constraintlayout/core/d;->z()V

    :cond_1
    sget-object v0, Landroidx/constraintlayout/core/SolverVariable$Type;->SLACK:Landroidx/constraintlayout/core/SolverVariable$Type;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/core/d;->a(Landroidx/constraintlayout/core/SolverVariable$Type;Ljava/lang/String;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v0

    iget v1, p0, Landroidx/constraintlayout/core/d;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/constraintlayout/core/d;->b:I

    iget v2, p0, Landroidx/constraintlayout/core/d;->k:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroidx/constraintlayout/core/d;->k:I

    iput v1, v0, Landroidx/constraintlayout/core/SolverVariable;->c:I

    iget-object v2, p0, Landroidx/constraintlayout/core/d;->n:Landroidx/constraintlayout/core/c;

    iget-object v2, v2, Landroidx/constraintlayout/core/c;->d:[Landroidx/constraintlayout/core/SolverVariable;

    aput-object v0, v2, v1

    return-object v0
.end method

.method public v(Landroidx/constraintlayout/core/e;)V
    .locals 0

    sput-object p1, Landroidx/constraintlayout/core/d;->x:Landroidx/constraintlayout/core/e;

    return-void
.end method

.method public w()Landroidx/constraintlayout/core/c;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/core/d;->n:Landroidx/constraintlayout/core/c;

    return-object v0
.end method

.method public y(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i()Landroidx/constraintlayout/core/SolverVariable;

    move-result-object p1

    if-eqz p1, :cond_0

    iget p1, p1, Landroidx/constraintlayout/core/SolverVariable;->f:F

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
