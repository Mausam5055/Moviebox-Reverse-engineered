.class public Lfe/c;
.super Ljava/lang/Object;


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private d(Landroid/content/Context;)V
    .locals 1

    const-string v0, "Application Context cannot be null"

    invoke-static {p1, v0}, Lie/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    const-string v0, "1.5.4-Hisavana"

    return-object v0
.end method

.method b(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lfe/c;->d(Landroid/content/Context;)V

    invoke-virtual {p0}, Lfe/c;->e()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lfe/c;->c(Z)V

    invoke-static {}, Lcom/iab/omid/library/hisavana/internal/i;->d()Lcom/iab/omid/library/hisavana/internal/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iab/omid/library/hisavana/internal/i;->b(Landroid/content/Context;)V

    invoke-static {}, Lcom/iab/omid/library/hisavana/internal/b;->k()Lcom/iab/omid/library/hisavana/internal/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iab/omid/library/hisavana/internal/d;->a(Landroid/content/Context;)V

    invoke-static {p1}, Lie/a;->b(Landroid/content/Context;)V

    invoke-static {p1}, Lie/c;->d(Landroid/content/Context;)V

    invoke-static {p1}, Lie/e;->c(Landroid/content/Context;)V

    invoke-static {}, Lcom/iab/omid/library/hisavana/internal/g;->c()Lcom/iab/omid/library/hisavana/internal/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iab/omid/library/hisavana/internal/g;->b(Landroid/content/Context;)V

    invoke-static {}, Lcom/iab/omid/library/hisavana/internal/a;->a()Lcom/iab/omid/library/hisavana/internal/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iab/omid/library/hisavana/internal/a;->b(Landroid/content/Context;)V

    invoke-static {}, Lcom/iab/omid/library/hisavana/internal/j;->f()Lcom/iab/omid/library/hisavana/internal/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iab/omid/library/hisavana/internal/j;->b(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method c(Z)V
    .locals 0

    iput-boolean p1, p0, Lfe/c;->a:Z

    return-void
.end method

.method e()Z
    .locals 1

    iget-boolean v0, p0, Lfe/c;->a:Z

    return v0
.end method
