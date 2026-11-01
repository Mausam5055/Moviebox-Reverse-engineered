.class public Ly4/g;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/Object;

.field public final b:Ly4/g;

.field public final c:Ljava/lang/Object;

.field public final d:I

.field public e:Ljava/lang/reflect/Type;

.field private transient f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ly4/g;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly4/g;->b:Ly4/g;

    iput-object p2, p0, Ly4/g;->a:Ljava/lang/Object;

    iput-object p3, p0, Ly4/g;->c:Ljava/lang/Object;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget p1, p1, Ly4/g;->d:I

    add-int/lit8 p1, p1, 0x1

    :goto_0
    iput p1, p0, Ly4/g;->d:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Ly4/g;->f:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p0, Ly4/g;->b:Ly4/g;

    if-nez v0, :cond_0

    const-string v0, "$"

    iput-object v0, p0, Ly4/g;->f:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ly4/g;->c:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ly4/g;->b:Ly4/g;

    invoke-virtual {v1}, Ly4/g;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ly4/g;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ly4/g;->f:Ljava/lang/String;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ly4/g;->b:Ly4/g;

    invoke-virtual {v1}, Ly4/g;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ly4/g;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ly4/g;->f:Ljava/lang/String;

    :cond_2
    :goto_0
    iget-object v0, p0, Ly4/g;->f:Ljava/lang/String;

    return-object v0
.end method
