.class public Lc8/a;
.super Ljava/lang/Object;

# interfaces
.implements Lf8/a;


# instance fields
.field private a:Lf8/b;


# direct methods
.method public constructor <init>(Lf8/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc8/a;->a:Lf8/b;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b(Ljava/io/File;)Z
    .locals 1

    iget-object v0, p0, Lc8/a;->a:Lf8/b;

    invoke-interface {v0, p1}, Lf8/b;->b(Ljava/io/File;)Z

    move-result p1

    return p1
.end method

.method public c(Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".bak"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
