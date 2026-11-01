.class public Lb7/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb7/a$b;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:Ljava/lang/String;

.field private e:D

.field private f:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lb7/a;->a:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Lb7/a;->b:I

    const/4 v1, 0x0

    iput v1, p0, Lb7/a;->c:I

    iput-object v0, p0, Lb7/a;->d:Ljava/lang/String;

    iput-boolean v1, p0, Lb7/a;->f:Z

    return-void
.end method

.method synthetic constructor <init>(Lb7/a$a;)V
    .locals 0

    invoke-direct {p0}, Lb7/a;-><init>()V

    return-void
.end method

.method public static a()Lb7/a$b;
    .locals 1

    new-instance v0, Lb7/a$b;

    invoke-direct {v0}, Lb7/a$b;-><init>()V

    return-object v0
.end method


# virtual methods
.method public b()D
    .locals 2

    iget-wide v0, p0, Lb7/a;->e:D

    return-wide v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lb7/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lb7/a;->b:I

    return v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lb7/a;->c:I

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lb7/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lb7/a;->f:Z

    return v0
.end method

.method public h(D)V
    .locals 0

    iput-wide p1, p0, Lb7/a;->e:D

    return-void
.end method

.method public i(Z)V
    .locals 0

    iput-boolean p1, p0, Lb7/a;->f:Z

    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lb7/a;->a:Ljava/lang/String;

    return-void
.end method

.method public k(I)V
    .locals 0

    iput p1, p0, Lb7/a;->b:I

    return-void
.end method

.method public l(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lb7/a;->d:Ljava/lang/String;

    return-void
.end method
