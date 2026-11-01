.class public Lw4/b;
.super Ljava/lang/Object;


# instance fields
.field private a:F

.field private b:F

.field private c:Ljava/lang/Object;

.field private d:Ljava/lang/Object;

.field private e:F

.field private f:F

.field private g:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()F
    .locals 1

    iget v0, p0, Lw4/b;->b:F

    return v0
.end method

.method public b()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lw4/b;->d:Ljava/lang/Object;

    return-object v0
.end method

.method public c()F
    .locals 1

    iget v0, p0, Lw4/b;->f:F

    return v0
.end method

.method public d()F
    .locals 1

    iget v0, p0, Lw4/b;->e:F

    return v0
.end method

.method public e()F
    .locals 1

    iget v0, p0, Lw4/b;->g:F

    return v0
.end method

.method public f()F
    .locals 1

    iget v0, p0, Lw4/b;->a:F

    return v0
.end method

.method public g()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lw4/b;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public h(FFLjava/lang/Object;Ljava/lang/Object;FFF)Lw4/b;
    .locals 0

    iput p1, p0, Lw4/b;->a:F

    iput p2, p0, Lw4/b;->b:F

    iput-object p3, p0, Lw4/b;->c:Ljava/lang/Object;

    iput-object p4, p0, Lw4/b;->d:Ljava/lang/Object;

    iput p5, p0, Lw4/b;->e:F

    iput p6, p0, Lw4/b;->f:F

    iput p7, p0, Lw4/b;->g:F

    return-object p0
.end method
