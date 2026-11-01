.class public Ly00/c;
.super Lorg/apache/tools/ant/types/t;


# static fields
.field private static final j:Lorg/apache/tools/ant/util/d;

.field private static final k:I


# instance fields
.field private h:Ljava/io/File;

.field private i:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lorg/apache/tools/ant/util/d;->k()Lorg/apache/tools/ant/util/d;

    move-result-object v0

    sput-object v0, Ly00/c;->j:Lorg/apache/tools/ant/util/d;

    const-string v0, "null file"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/types/t;->g([B)I

    move-result v0

    sput v0, Ly00/c;->k:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/tools/ant/types/t;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/tools/ant/types/t;-><init>()V

    sget-object v0, Ly00/c;->j:Lorg/apache/tools/ant/util/d;

    invoke-virtual {v0, p1, p2}, Lorg/apache/tools/ant/util/d;->q(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    invoke-virtual {p0, p2}, Ly00/c;->u(Ljava/io/File;)V

    invoke-virtual {p0, p1}, Ly00/c;->t(Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/e;->isReference()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/e;->getCheckedRef()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly00/c;

    invoke-virtual {v0}, Ly00/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 2

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/e;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/e;->getCheckedRef()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    invoke-interface {v0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p0, p1}, Ly00/c;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    check-cast p1, Ly00/c;

    invoke-virtual {p0}, Ly00/c;->r()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 p1, -0x1

    return p1

    :cond_2
    invoke-virtual {p1}, Ly00/c;->r()Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    invoke-virtual {v0, p1}, Ljava/io/File;->compareTo(Ljava/io/File;)I

    move-result p1

    return p1

    :cond_4
    invoke-super {p0, p1}, Lorg/apache/tools/ant/types/t;->compareTo(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public e()Ljava/io/InputStream;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/e;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/e;->getCheckedRef()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/t;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/t;->e()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Ly00/c;->s()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :goto_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/e;->isReference()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/e;->getCheckedRef()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    :cond_2
    check-cast p1, Ly00/c;

    invoke-virtual {p0}, Ly00/c;->r()Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_4

    invoke-virtual {p1}, Ly00/c;->r()Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Ly00/c;->r()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1}, Ly00/c;->r()Ljava/io/File;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0
.end method

.method public f()J
    .locals 2

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/e;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/e;->getCheckedRef()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/t;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/t;->f()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ly00/c;->s()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/e;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/e;->getCheckedRef()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/t;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/t;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ly00/c;->q()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ly00/c;->s()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v1, Ly00/c;->j:Lorg/apache/tools/ant/util/d;

    invoke-virtual {p0}, Ly00/c;->s()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/apache/tools/ant/util/d;->p(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/e;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/e;->getCheckedRef()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0

    :cond_0
    sget v0, Lorg/apache/tools/ant/types/t;->f:I

    invoke-virtual {p0}, Ly00/c;->r()Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_1

    sget v1, Ly00/c;->k:I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ly00/c;->r()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->hashCode()I

    move-result v1

    :goto_0
    mul-int/2addr v0, v1

    return v0
.end method

.method public i()J
    .locals 2

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/e;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/e;->getCheckedRef()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/t;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/t;->i()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ly00/c;->s()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public j()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/e;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/e;->getCheckedRef()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/t;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/t;->j()Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ly00/c;->s()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public k()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/e;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/e;->getCheckedRef()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/t;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/t;->k()Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ly00/c;->s()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public q()Ljava/io/File;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/e;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/e;->getCheckedRef()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly00/c;

    invoke-virtual {v0}, Ly00/c;->q()Ljava/io/File;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ly00/c;->i:Ljava/io/File;

    :goto_0
    return-object v0
.end method

.method public r()Ljava/io/File;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/e;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/e;->getCheckedRef()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly00/c;

    invoke-virtual {v0}, Ly00/c;->r()Ljava/io/File;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ly00/c;->h:Ljava/io/File;

    :goto_0
    return-object v0
.end method

.method protected s()Ljava/io/File;
    .locals 2

    invoke-virtual {p0}, Ly00/c;->r()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ly00/c;->r()Ljava/io/File;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "file attribute is null!"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setRefid(Lorg/apache/tools/ant/types/r;)V
    .locals 1

    iget-object v0, p0, Ly00/c;->h:Ljava/io/File;

    if-nez v0, :cond_0

    iget-object v0, p0, Ly00/c;->i:Ljava/io/File;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lorg/apache/tools/ant/types/t;->setRefid(Lorg/apache/tools/ant/types/r;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/e;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1
.end method

.method public t(Ljava/io/File;)V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/e;->checkAttributesAllowed()V

    iput-object p1, p0, Ly00/c;->i:Ljava/io/File;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/e;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/e;->getCheckedRef()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Ly00/c;->h:Ljava/io/File;

    if-nez v0, :cond_1

    const-string v0, "(unbound file resource)"

    return-object v0

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ly00/c;->j:Lorg/apache/tools/ant/util/d;

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/util/d;->o(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(Ljava/io/File;)V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/e;->checkAttributesAllowed()V

    iput-object p1, p0, Ly00/c;->h:Ljava/io/File;

    return-void
.end method
