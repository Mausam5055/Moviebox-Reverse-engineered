.class public Lk5/d;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/util/Hashtable;

.field public h:Ljava/util/Hashtable;

.field public i:Ljava/util/TreeMap;

.field public j:Ljava/lang/String;

.field public k:Z

.field public l:I

.field public m:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lk5/d;->a:Ljava/lang/String;

    iput-object v0, p0, Lk5/d;->b:Ljava/lang/String;

    iput-object v0, p0, Lk5/d;->c:Ljava/lang/String;

    iput-object v0, p0, Lk5/d;->d:Ljava/lang/String;

    iput-object v0, p0, Lk5/d;->e:Ljava/lang/String;

    iput-object v0, p0, Lk5/d;->f:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lk5/d;->k:Z

    const/4 v0, 0x0

    iput v0, p0, Lk5/d;->l:I

    iput-boolean v0, p0, Lk5/d;->m:Z

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lk5/d;->g:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lk5/d;->h:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lk5/d;->i:Ljava/util/TreeMap;

    const-string v0, "List of non fatal errors produced during parsing:\n\n"

    iput-object v0, p0, Lk5/d;->j:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iget-object v1, p0, Lk5/d;->i:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lk5/b;

    iget-object v3, v2, Lk5/b;->a:Lk5/a;

    if-eqz v3, :cond_0

    iget-object v3, v3, Lk5/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v2, v2, Lk5/b;->a:Lk5/a;

    invoke-virtual {v0, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iput-object v0, p0, Lk5/d;->g:Ljava/util/Hashtable;

    return-void
.end method
