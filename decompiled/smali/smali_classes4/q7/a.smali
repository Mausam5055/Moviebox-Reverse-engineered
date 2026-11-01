.class public Lq7/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq7/a$a;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:Z

.field public final d:Z

.field public final e:Ljava/lang/String;

.field public final f:I

.field public final g:Z

.field public final h:Lu7/b;

.field public final i:Lx7/b;

.field public final j:Lw7/b;

.field public final k:Lz7/b;

.field public final l:Ly7/b;

.field public final m:Lt7/a;

.field private final n:Ljava/util/Map;

.field public final o:Ljava/util/List;


# direct methods
.method constructor <init>(Lq7/a$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lq7/a$a;->a(Lq7/a$a;)I

    move-result v0

    iput v0, p0, Lq7/a;->a:I

    invoke-static {p1}, Lq7/a$a;->b(Lq7/a$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lq7/a;->b:Ljava/lang/String;

    invoke-static {p1}, Lq7/a$a;->h(Lq7/a$a;)Z

    move-result v0

    iput-boolean v0, p0, Lq7/a;->c:Z

    invoke-static {p1}, Lq7/a$a;->i(Lq7/a$a;)Z

    move-result v0

    iput-boolean v0, p0, Lq7/a;->d:Z

    invoke-static {p1}, Lq7/a$a;->j(Lq7/a$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lq7/a;->e:Ljava/lang/String;

    invoke-static {p1}, Lq7/a$a;->k(Lq7/a$a;)I

    move-result v0

    iput v0, p0, Lq7/a;->f:I

    invoke-static {p1}, Lq7/a$a;->l(Lq7/a$a;)Z

    move-result v0

    iput-boolean v0, p0, Lq7/a;->g:Z

    invoke-static {p1}, Lq7/a$a;->m(Lq7/a$a;)Lu7/b;

    move-result-object v0

    iput-object v0, p0, Lq7/a;->h:Lu7/b;

    invoke-static {p1}, Lq7/a$a;->n(Lq7/a$a;)Lx7/b;

    move-result-object v0

    iput-object v0, p0, Lq7/a;->i:Lx7/b;

    invoke-static {p1}, Lq7/a$a;->o(Lq7/a$a;)Lw7/b;

    move-result-object v0

    iput-object v0, p0, Lq7/a;->j:Lw7/b;

    invoke-static {p1}, Lq7/a$a;->c(Lq7/a$a;)Lz7/b;

    move-result-object v0

    iput-object v0, p0, Lq7/a;->k:Lz7/b;

    invoke-static {p1}, Lq7/a$a;->d(Lq7/a$a;)Ly7/b;

    move-result-object v0

    iput-object v0, p0, Lq7/a;->l:Ly7/b;

    invoke-static {p1}, Lq7/a$a;->e(Lq7/a$a;)Lt7/a;

    move-result-object v0

    iput-object v0, p0, Lq7/a;->m:Lt7/a;

    invoke-static {p1}, Lq7/a$a;->f(Lq7/a$a;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lq7/a;->n:Ljava/util/Map;

    invoke-static {p1}, Lq7/a$a;->g(Lq7/a$a;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lq7/a;->o:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lq7/a;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lq7/a;->n:Ljava/util/Map;

    return-object p0
.end method
