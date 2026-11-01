.class final Lcom/google/android/datatransport/runtime/e$c;
.super Lcom/google/android/datatransport/runtime/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/datatransport/runtime/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field private final a:Lcom/google/android/datatransport/runtime/e$c;

.field private b:Luz/a;

.field private c:Luz/a;

.field private d:Luz/a;

.field private e:Luz/a;

.field private f:Luz/a;

.field private g:Luz/a;

.field private h:Luz/a;

.field private i:Luz/a;

.field private j:Luz/a;

.field private k:Luz/a;

.field private l:Luz/a;

.field private m:Luz/a;

.field private n:Luz/a;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/datatransport/runtime/u;-><init>()V

    iput-object p0, p0, Lcom/google/android/datatransport/runtime/e$c;->a:Lcom/google/android/datatransport/runtime/e$c;

    invoke-direct {p0, p1}, Lcom/google/android/datatransport/runtime/e$c;->i(Landroid/content/Context;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/google/android/datatransport/runtime/e$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/datatransport/runtime/e$c;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private i(Landroid/content/Context;)V
    .locals 9

    invoke-static {}, Lcom/google/android/datatransport/runtime/k;->a()Lcom/google/android/datatransport/runtime/k;

    move-result-object v0

    invoke-static {v0}, Lu8/a;->a(Luz/a;)Luz/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/datatransport/runtime/e$c;->b:Luz/a;

    invoke-static {p1}, Lu8/c;->a(Ljava/lang/Object;)Lu8/b;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/datatransport/runtime/e$c;->c:Luz/a;

    invoke-static {}, Lc9/c;->a()Lc9/c;

    move-result-object v0

    invoke-static {}, Lc9/d;->a()Lc9/d;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lt8/h;->a(Luz/a;Luz/a;Luz/a;)Lt8/h;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/datatransport/runtime/e$c;->d:Luz/a;

    iget-object v0, p0, Lcom/google/android/datatransport/runtime/e$c;->c:Luz/a;

    invoke-static {v0, p1}, Lt8/j;->a(Luz/a;Luz/a;)Lt8/j;

    move-result-object p1

    invoke-static {p1}, Lu8/a;->a(Luz/a;)Luz/a;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/datatransport/runtime/e$c;->e:Luz/a;

    iget-object p1, p0, Lcom/google/android/datatransport/runtime/e$c;->c:Luz/a;

    invoke-static {}, La9/g;->a()La9/g;

    move-result-object v0

    invoke-static {}, La9/i;->a()La9/i;

    move-result-object v1

    invoke-static {p1, v0, v1}, La9/w0;->a(Luz/a;Luz/a;Luz/a;)La9/w0;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/datatransport/runtime/e$c;->f:Luz/a;

    iget-object p1, p0, Lcom/google/android/datatransport/runtime/e$c;->c:Luz/a;

    invoke-static {p1}, La9/h;->a(Luz/a;)La9/h;

    move-result-object p1

    invoke-static {p1}, Lu8/a;->a(Luz/a;)Luz/a;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/datatransport/runtime/e$c;->g:Luz/a;

    invoke-static {}, Lc9/c;->a()Lc9/c;

    move-result-object p1

    invoke-static {}, Lc9/d;->a()Lc9/d;

    move-result-object v0

    invoke-static {}, La9/j;->a()La9/j;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/datatransport/runtime/e$c;->f:Luz/a;

    iget-object v3, p0, Lcom/google/android/datatransport/runtime/e$c;->g:Luz/a;

    invoke-static {p1, v0, v1, v2, v3}, La9/n0;->a(Luz/a;Luz/a;Luz/a;Luz/a;Luz/a;)La9/n0;

    move-result-object p1

    invoke-static {p1}, Lu8/a;->a(Luz/a;)Luz/a;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/datatransport/runtime/e$c;->h:Luz/a;

    invoke-static {}, Lc9/c;->a()Lc9/c;

    move-result-object p1

    invoke-static {p1}, Ly8/g;->b(Luz/a;)Ly8/g;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/datatransport/runtime/e$c;->i:Luz/a;

    iget-object v0, p0, Lcom/google/android/datatransport/runtime/e$c;->c:Luz/a;

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/e$c;->h:Luz/a;

    invoke-static {}, Lc9/d;->a()Lc9/d;

    move-result-object v2

    invoke-static {v0, v1, p1, v2}, Ly8/i;->a(Luz/a;Luz/a;Luz/a;Luz/a;)Ly8/i;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/datatransport/runtime/e$c;->j:Luz/a;

    iget-object v0, p0, Lcom/google/android/datatransport/runtime/e$c;->b:Luz/a;

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/e$c;->e:Luz/a;

    iget-object v2, p0, Lcom/google/android/datatransport/runtime/e$c;->h:Luz/a;

    invoke-static {v0, v1, p1, v2, v2}, Ly8/d;->a(Luz/a;Luz/a;Luz/a;Luz/a;Luz/a;)Ly8/d;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/datatransport/runtime/e$c;->k:Luz/a;

    iget-object v0, p0, Lcom/google/android/datatransport/runtime/e$c;->c:Luz/a;

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/e$c;->e:Luz/a;

    iget-object v5, p0, Lcom/google/android/datatransport/runtime/e$c;->h:Luz/a;

    iget-object v3, p0, Lcom/google/android/datatransport/runtime/e$c;->j:Luz/a;

    iget-object v4, p0, Lcom/google/android/datatransport/runtime/e$c;->b:Luz/a;

    invoke-static {}, Lc9/c;->a()Lc9/c;

    move-result-object v6

    invoke-static {}, Lc9/d;->a()Lc9/d;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/datatransport/runtime/e$c;->h:Luz/a;

    move-object v2, v5

    invoke-static/range {v0 .. v8}, Lz8/p;->a(Luz/a;Luz/a;Luz/a;Luz/a;Luz/a;Luz/a;Luz/a;Luz/a;Luz/a;)Lz8/p;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/datatransport/runtime/e$c;->l:Luz/a;

    iget-object p1, p0, Lcom/google/android/datatransport/runtime/e$c;->b:Luz/a;

    iget-object v0, p0, Lcom/google/android/datatransport/runtime/e$c;->h:Luz/a;

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/e$c;->j:Luz/a;

    invoke-static {p1, v0, v1, v0}, Lz8/t;->a(Luz/a;Luz/a;Luz/a;Luz/a;)Lz8/t;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/datatransport/runtime/e$c;->m:Luz/a;

    invoke-static {}, Lc9/c;->a()Lc9/c;

    move-result-object p1

    invoke-static {}, Lc9/d;->a()Lc9/d;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/e$c;->k:Luz/a;

    iget-object v2, p0, Lcom/google/android/datatransport/runtime/e$c;->l:Luz/a;

    iget-object v3, p0, Lcom/google/android/datatransport/runtime/e$c;->m:Luz/a;

    invoke-static {p1, v0, v1, v2, v3}, Lcom/google/android/datatransport/runtime/v;->a(Luz/a;Luz/a;Luz/a;Luz/a;Luz/a;)Lcom/google/android/datatransport/runtime/v;

    move-result-object p1

    invoke-static {p1}, Lu8/a;->a(Luz/a;)Luz/a;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/datatransport/runtime/e$c;->n:Luz/a;

    return-void
.end method


# virtual methods
.method d()La9/d;
    .locals 1

    iget-object v0, p0, Lcom/google/android/datatransport/runtime/e$c;->h:Luz/a;

    invoke-interface {v0}, Luz/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La9/d;

    return-object v0
.end method

.method h()Lcom/google/android/datatransport/runtime/t;
    .locals 1

    iget-object v0, p0, Lcom/google/android/datatransport/runtime/e$c;->n:Luz/a;

    invoke-interface {v0}, Luz/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/datatransport/runtime/t;

    return-object v0
.end method
