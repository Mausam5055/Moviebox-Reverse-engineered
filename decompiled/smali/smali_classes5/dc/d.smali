.class public final Ldc/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcc/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldc/d$b;
    }
.end annotation


# static fields
.field private static final e:Lbc/c;

.field private static final f:Lbc/e;

.field private static final g:Lbc/e;

.field private static final h:Ldc/d$b;


# instance fields
.field private final a:Ljava/util/Map;

.field private final b:Ljava/util/Map;

.field private c:Lbc/c;

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ldc/a;

    invoke-direct {v0}, Ldc/a;-><init>()V

    sput-object v0, Ldc/d;->e:Lbc/c;

    new-instance v0, Ldc/b;

    invoke-direct {v0}, Ldc/b;-><init>()V

    sput-object v0, Ldc/d;->f:Lbc/e;

    new-instance v0, Ldc/c;

    invoke-direct {v0}, Ldc/c;-><init>()V

    sput-object v0, Ldc/d;->g:Lbc/e;

    new-instance v0, Ldc/d$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ldc/d$b;-><init>(Ldc/d$a;)V

    sput-object v0, Ldc/d;->h:Ldc/d$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldc/d;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldc/d;->b:Ljava/util/Map;

    sget-object v0, Ldc/d;->e:Lbc/c;

    iput-object v0, p0, Ldc/d;->c:Lbc/c;

    const/4 v0, 0x0

    iput-boolean v0, p0, Ldc/d;->d:Z

    const-class v0, Ljava/lang/String;

    sget-object v1, Ldc/d;->f:Lbc/e;

    invoke-virtual {p0, v0, v1}, Ldc/d;->p(Ljava/lang/Class;Lbc/e;)Ldc/d;

    const-class v0, Ljava/lang/Boolean;

    sget-object v1, Ldc/d;->g:Lbc/e;

    invoke-virtual {p0, v0, v1}, Ldc/d;->p(Ljava/lang/Class;Lbc/e;)Ldc/d;

    const-class v0, Ljava/util/Date;

    sget-object v1, Ldc/d;->h:Ldc/d$b;

    invoke-virtual {p0, v0, v1}, Ldc/d;->p(Ljava/lang/Class;Lbc/e;)Ldc/d;

    return-void
.end method

.method public static synthetic b(Ljava/lang/Boolean;Lbc/f;)V
    .locals 0

    invoke-static {p0, p1}, Ldc/d;->n(Ljava/lang/Boolean;Lbc/f;)V

    return-void
.end method

.method public static synthetic c(Ljava/lang/Object;Lbc/d;)V
    .locals 0

    invoke-static {p0, p1}, Ldc/d;->l(Ljava/lang/Object;Lbc/d;)V

    return-void
.end method

.method public static synthetic d(Ljava/lang/String;Lbc/f;)V
    .locals 0

    invoke-static {p0, p1}, Ldc/d;->m(Ljava/lang/String;Lbc/f;)V

    return-void
.end method

.method static synthetic e(Ldc/d;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Ldc/d;->a:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic f(Ldc/d;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Ldc/d;->b:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic g(Ldc/d;)Lbc/c;
    .locals 0

    iget-object p0, p0, Ldc/d;->c:Lbc/c;

    return-object p0
.end method

.method static synthetic h(Ldc/d;)Z
    .locals 0

    iget-boolean p0, p0, Ldc/d;->d:Z

    return p0
.end method

.method private static synthetic l(Ljava/lang/Object;Lbc/d;)V
    .locals 2

    new-instance p1, Lcom/google/firebase/encoders/EncodingException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t find encoder for type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/firebase/encoders/EncodingException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static synthetic m(Ljava/lang/String;Lbc/f;)V
    .locals 0

    invoke-interface {p1, p0}, Lbc/f;->f(Ljava/lang/String;)Lbc/f;

    return-void
.end method

.method private static synthetic n(Ljava/lang/Boolean;Lbc/f;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-interface {p1, p0}, Lbc/f;->g(Z)Lbc/f;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Class;Lbc/c;)Lcc/b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Ldc/d;->o(Ljava/lang/Class;Lbc/c;)Ldc/d;

    move-result-object p1

    return-object p1
.end method

.method public i()Lbc/a;
    .locals 1

    new-instance v0, Ldc/d$a;

    invoke-direct {v0, p0}, Ldc/d$a;-><init>(Ldc/d;)V

    return-object v0
.end method

.method public j(Lcc/a;)Ldc/d;
    .locals 0

    invoke-interface {p1, p0}, Lcc/a;->a(Lcc/b;)V

    return-object p0
.end method

.method public k(Z)Ldc/d;
    .locals 0

    iput-boolean p1, p0, Ldc/d;->d:Z

    return-object p0
.end method

.method public o(Ljava/lang/Class;Lbc/c;)Ldc/d;
    .locals 1

    iget-object v0, p0, Ldc/d;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Ldc/d;->b:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public p(Ljava/lang/Class;Lbc/e;)Ldc/d;
    .locals 1

    iget-object v0, p0, Ldc/d;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Ldc/d;->a:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
