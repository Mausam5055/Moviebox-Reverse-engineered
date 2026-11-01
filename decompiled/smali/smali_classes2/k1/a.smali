.class public abstract Lk1/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lk1/a;


# direct methods
.method constructor <init>(Lk1/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk1/a;->a:Lk1/a;

    return-void
.end method

.method public static g(Landroid/content/Context;Landroid/net/Uri;)Lk1/a;
    .locals 2

    new-instance v0, Lk1/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Lk1/c;-><init>(Lk1/a;Landroid/content/Context;Landroid/net/Uri;)V

    return-object v0
.end method

.method public static h(Landroid/content/Context;Landroid/net/Uri;)Lk1/a;
    .locals 2

    new-instance v0, Lk1/d;

    invoke-static {p1}, Landroid/provider/DocumentsContract;->getTreeDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/provider/DocumentsContract;->buildDocumentUriUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Lk1/d;-><init>(Lk1/a;Landroid/content/Context;Landroid/net/Uri;)V

    return-object v0
.end method


# virtual methods
.method public abstract a()Z
.end method

.method public abstract b(Ljava/lang/String;)Lk1/a;
.end method

.method public abstract c(Ljava/lang/String;Ljava/lang/String;)Lk1/a;
.end method

.method public abstract d()Z
.end method

.method public abstract e()Z
.end method

.method public f(Ljava/lang/String;)Lk1/a;
    .locals 5

    invoke-virtual {p0}, Lk1/a;->l()[Lk1/a;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lk1/a;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract i()Ljava/lang/String;
.end method

.method public abstract j()Landroid/net/Uri;
.end method

.method public abstract k()J
.end method

.method public abstract l()[Lk1/a;
.end method
