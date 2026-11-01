.class public final Landroidx/media3/datasource/b$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/datasource/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/datasource/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroidx/media3/datasource/a$a;

.field private c:Lw1/n;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Landroidx/media3/datasource/c$b;

    invoke-direct {v0}, Landroidx/media3/datasource/c$b;-><init>()V

    invoke-direct {p0, p1, v0}, Landroidx/media3/datasource/b$a;-><init>(Landroid/content/Context;Landroidx/media3/datasource/a$a;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/media3/datasource/a$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/datasource/b$a;->a:Landroid/content/Context;

    invoke-static {p2}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/datasource/a$a;

    iput-object p1, p0, Landroidx/media3/datasource/b$a;->b:Landroidx/media3/datasource/a$a;

    return-void
.end method


# virtual methods
.method public b()Landroidx/media3/datasource/b;
    .locals 3

    new-instance v0, Landroidx/media3/datasource/b;

    iget-object v1, p0, Landroidx/media3/datasource/b$a;->a:Landroid/content/Context;

    iget-object v2, p0, Landroidx/media3/datasource/b$a;->b:Landroidx/media3/datasource/a$a;

    invoke-interface {v2}, Landroidx/media3/datasource/a$a;->createDataSource()Landroidx/media3/datasource/a;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroidx/media3/datasource/b;-><init>(Landroid/content/Context;Landroidx/media3/datasource/a;)V

    iget-object v1, p0, Landroidx/media3/datasource/b$a;->c:Lw1/n;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroidx/media3/datasource/b;->c(Lw1/n;)V

    :cond_0
    return-object v0
.end method

.method public bridge synthetic createDataSource()Landroidx/media3/datasource/a;
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/datasource/b$a;->b()Landroidx/media3/datasource/b;

    move-result-object v0

    return-object v0
.end method
