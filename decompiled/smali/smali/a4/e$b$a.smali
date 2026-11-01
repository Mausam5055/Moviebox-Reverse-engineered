.class public La4/e$b$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La4/e$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:La4/e$a;

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La4/e$b$a;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Z)La4/e$b$a;
    .locals 0

    iput-boolean p1, p0, La4/e$b$a;->e:Z

    return-object p0
.end method

.method public b()La4/e$b;
    .locals 7

    iget-object v3, p0, La4/e$b$a;->c:La4/e$a;

    if-eqz v3, :cond_2

    iget-boolean v0, p0, La4/e$b$a;->d:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, La4/e$b$a;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must set a non-null database name to a configuration that uses the no backup directory."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    new-instance v6, La4/e$b;

    iget-object v1, p0, La4/e$b$a;->a:Landroid/content/Context;

    iget-object v2, p0, La4/e$b$a;->b:Ljava/lang/String;

    iget-boolean v4, p0, La4/e$b$a;->d:Z

    iget-boolean v5, p0, La4/e$b$a;->e:Z

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, La4/e$b;-><init>(Landroid/content/Context;Ljava/lang/String;La4/e$a;ZZ)V

    return-object v6

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must set a callback to create the configuration."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c(La4/e$a;)La4/e$b$a;
    .locals 1

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, La4/e$b$a;->c:La4/e$a;

    return-object p0
.end method

.method public d(Ljava/lang/String;)La4/e$b$a;
    .locals 0

    iput-object p1, p0, La4/e$b$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public e(Z)La4/e$b$a;
    .locals 0

    iput-boolean p1, p0, La4/e$b$a;->d:Z

    return-object p0
.end method
