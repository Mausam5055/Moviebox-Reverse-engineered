.class public final Landroidx/compose/ui/text/platform/r;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/WeakHashMap;

.field private final b:Ljava/util/WeakHashMap;

.field private final c:Ljava/util/WeakHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Landroidx/compose/ui/text/platform/r;->a:Ljava/util/WeakHashMap;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Landroidx/compose/ui/text/platform/r;->b:Ljava/util/WeakHashMap;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Landroidx/compose/ui/text/platform/r;->c:Ljava/util/WeakHashMap;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/text/AnnotatedString$c;)Landroid/text/style/ClickableSpan;
    .locals 3

    iget-object v0, p0, Landroidx/compose/ui/text/platform/r;->c:Ljava/util/WeakHashMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Landroidx/compose/ui/text/platform/h;

    invoke-virtual {p1}, Landroidx/compose/ui/text/AnnotatedString$c;->e()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/text/f;

    invoke-direct {v1, v2}, Landroidx/compose/ui/text/platform/h;-><init>(Landroidx/compose/ui/text/f;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    check-cast v1, Landroid/text/style/ClickableSpan;

    return-object v1
.end method

.method public final b(Landroidx/compose/ui/text/AnnotatedString$c;)Landroid/text/style/URLSpan;
    .locals 3

    iget-object v0, p0, Landroidx/compose/ui/text/platform/r;->b:Ljava/util/WeakHashMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/text/style/URLSpan;

    invoke-virtual {p1}, Landroidx/compose/ui/text/AnnotatedString$c;->e()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/text/f$b;

    invoke-virtual {v2}, Landroidx/compose/ui/text/f$b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    check-cast v1, Landroid/text/style/URLSpan;

    return-object v1
.end method

.method public final c(Landroidx/compose/ui/text/g0;)Landroid/text/style/URLSpan;
    .locals 3

    iget-object v0, p0, Landroidx/compose/ui/text/platform/r;->a:Ljava/util/WeakHashMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/text/style/URLSpan;

    invoke-virtual {p1}, Landroidx/compose/ui/text/g0;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    check-cast v1, Landroid/text/style/URLSpan;

    return-object v1
.end method
