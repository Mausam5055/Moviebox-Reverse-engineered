.class public Lcom/transsion/transfer/androidasync/http/server/n;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/transfer/androidasync/http/server/r;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/transfer/androidasync/http/server/n$b;,
        Lcom/transsion/transfer/androidasync/http/server/n$c;,
        Lcom/transsion/transfer/androidasync/http/server/n$d;,
        Lcom/transsion/transfer/androidasync/http/server/n$a;
    }
.end annotation


# static fields
.field static c:Ljava/util/Hashtable;

.field static d:Ljava/util/Hashtable;


# instance fields
.field final a:Ljava/util/ArrayList;

.field private b:Lcom/transsion/transfer/androidasync/http/server/n$b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/transsion/transfer/androidasync/http/server/n;->c:Ljava/util/Hashtable;

    const-string v1, "js"

    const-string v2, "application/javascript"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/transfer/androidasync/http/server/n;->c:Ljava/util/Hashtable;

    const-string v1, "json"

    const-string v2, "application/json"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/transfer/androidasync/http/server/n;->c:Ljava/util/Hashtable;

    const-string v1, "png"

    const-string v2, "image/png"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/transfer/androidasync/http/server/n;->c:Ljava/util/Hashtable;

    const-string v1, "jpg"

    const-string v2, "image/jpeg"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/transfer/androidasync/http/server/n;->c:Ljava/util/Hashtable;

    const-string v1, "jpeg"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/transfer/androidasync/http/server/n;->c:Ljava/util/Hashtable;

    const-string v1, "html"

    const-string v2, "text/html"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/transfer/androidasync/http/server/n;->c:Ljava/util/Hashtable;

    const-string v1, "css"

    const-string v2, "text/css"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/transfer/androidasync/http/server/n;->c:Ljava/util/Hashtable;

    const-string v1, "mp4"

    const-string v2, "video/mp4"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/transfer/androidasync/http/server/n;->c:Ljava/util/Hashtable;

    const-string v1, "mov"

    const-string v2, "video/quicktime"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/transfer/androidasync/http/server/n;->c:Ljava/util/Hashtable;

    const-string v1, "wmv"

    const-string v2, "video/x-ms-wmv"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/transfer/androidasync/http/server/n;->c:Ljava/util/Hashtable;

    const-string v1, "txt"

    const-string v2, "text/plain"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/transsion/transfer/androidasync/http/server/n;->d:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/transfer/androidasync/http/server/n;->a:Ljava/util/ArrayList;

    new-instance v0, Lcom/transsion/transfer/androidasync/http/server/n$b;

    invoke-direct {v0, p0}, Lcom/transsion/transfer/androidasync/http/server/n$b;-><init>(Lcom/transsion/transfer/androidasync/http/server/n;)V

    iput-object v0, p0, Lcom/transsion/transfer/androidasync/http/server/n;->b:Lcom/transsion/transfer/androidasync/http/server/n$b;

    return-void
.end method

.method public static synthetic b(Ljava/lang/String;Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$a;Lcom/transsion/transfer/androidasync/http/server/b;Lcom/transsion/transfer/androidasync/http/server/d;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/transfer/androidasync/http/server/n;->h(Ljava/lang/String;Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$a;Lcom/transsion/transfer/androidasync/http/server/b;Lcom/transsion/transfer/androidasync/http/server/d;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Lcom/transsion/transfer/androidasync/http/server/b;Lcom/transsion/transfer/androidasync/http/server/d;)Lcom/transsion/transfer/androidasync/http/b0;
    .locals 6

    invoke-interface {p1}, Lcom/transsion/transfer/androidasync/http/server/b;->getHeaders()Lcom/transsion/transfer/androidasync/http/Headers;

    move-result-object v0

    const-string v1, "Connection"

    invoke-virtual {v0, v1}, Lcom/transsion/transfer/androidasync/http/Headers;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Upgrade"

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v0, v4

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-interface {p1}, Lcom/transsion/transfer/androidasync/http/server/b;->getHeaders()Lcom/transsion/transfer/androidasync/http/Headers;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/transsion/transfer/androidasync/http/Headers;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "websocket"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {p1}, Lcom/transsion/transfer/androidasync/http/server/b;->getHeaders()Lcom/transsion/transfer/androidasync/http/Headers;

    move-result-object v0

    const-string v2, "Sec-WebSocket-Protocol"

    invoke-virtual {v0, v2}, Lcom/transsion/transfer/androidasync/http/Headers;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    return-object v1

    :cond_3
    new-instance p0, Lcom/transsion/transfer/androidasync/http/f0;

    invoke-direct {p0, p1, p2}, Lcom/transsion/transfer/androidasync/http/f0;-><init>(Lcom/transsion/transfer/androidasync/http/server/b;Lcom/transsion/transfer/androidasync/http/server/d;)V

    return-object p0

    :cond_4
    :goto_2
    return-object v1
.end method

.method public static g(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/transsion/transfer/androidasync/http/server/n;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static synthetic h(Ljava/lang/String;Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$a;Lcom/transsion/transfer/androidasync/http/server/b;Lcom/transsion/transfer/androidasync/http/server/d;)V
    .locals 0

    invoke-static {p0, p2, p3}, Lcom/transsion/transfer/androidasync/http/server/n;->e(Ljava/lang/String;Lcom/transsion/transfer/androidasync/http/server/b;Lcom/transsion/transfer/androidasync/http/server/d;)Lcom/transsion/transfer/androidasync/http/b0;

    move-result-object p0

    if-nez p0, :cond_0

    const/16 p0, 0x194

    invoke-interface {p3, p0}, Lcom/transsion/transfer/androidasync/http/server/d;->c(I)Lcom/transsion/transfer/androidasync/http/server/d;

    invoke-interface {p3}, Lcom/transsion/transfer/androidasync/http/server/d;->d()V

    return-void

    :cond_0
    invoke-interface {p1, p0, p2}, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$a;->a(Lcom/transsion/transfer/androidasync/http/b0;Lcom/transsion/transfer/androidasync/http/server/b;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/transfer/androidasync/http/server/n$d;
    .locals 11

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/server/n;->a:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/transsion/transfer/androidasync/http/server/n;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/transfer/androidasync/http/server/n$c;

    iget-object v3, v2, Lcom/transsion/transfer/androidasync/http/server/n$c;->a:Ljava/lang/String;

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v2, Lcom/transsion/transfer/androidasync/http/server/n$c;->a:Ljava/lang/String;

    if-eqz v3, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    iget-object v3, v2, Lcom/transsion/transfer/androidasync/http/server/n$c;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v8, v2, Lcom/transsion/transfer/androidasync/http/server/n$c;->c:Lcom/transsion/transfer/androidasync/http/server/q;

    instance-of v1, v8, Lcom/transsion/transfer/androidasync/http/server/r;

    if-eqz v1, :cond_2

    const/4 p2, 0x1

    invoke-virtual {v7, p2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p2

    iget-object v1, v2, Lcom/transsion/transfer/androidasync/http/server/n$c;->c:Lcom/transsion/transfer/androidasync/http/server/q;

    check-cast v1, Lcom/transsion/transfer/androidasync/http/server/r;

    invoke-interface {v1, p1, p2}, Lcom/transsion/transfer/androidasync/http/server/r;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/transfer/androidasync/http/server/n$d;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :cond_2
    new-instance v1, Lcom/transsion/transfer/androidasync/http/server/n$d;

    const/4 v10, 0x0

    const/4 v9, 0x0

    move-object v4, v1

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v4 .. v10}, Lcom/transsion/transfer/androidasync/http/server/n$d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/regex/Matcher;Lcom/transsion/transfer/androidasync/http/server/q;Lcom/transsion/transfer/androidasync/http/server/a;Lcom/transsion/transfer/androidasync/http/server/o;)V

    monitor-exit v0

    return-object v1

    :cond_3
    monitor-exit v0

    const/4 p1, 0x0

    return-object p1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/transfer/androidasync/http/server/q;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/transsion/transfer/androidasync/http/server/n;->d(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/transfer/androidasync/http/server/q;Lcom/transsion/transfer/androidasync/http/server/a;)V

    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/transfer/androidasync/http/server/q;Lcom/transsion/transfer/androidasync/http/server/a;)V
    .locals 2

    new-instance p4, Lcom/transsion/transfer/androidasync/http/server/n$c;

    const/4 v0, 0x0

    invoke-direct {p4, v0}, Lcom/transsion/transfer/androidasync/http/server/n$c;-><init>(Lcom/transsion/transfer/androidasync/http/server/o;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p2

    iput-object p2, p4, Lcom/transsion/transfer/androidasync/http/server/n$c;->b:Ljava/util/regex/Pattern;

    iput-object p3, p4, Lcom/transsion/transfer/androidasync/http/server/n$c;->c:Lcom/transsion/transfer/androidasync/http/server/q;

    iput-object p1, p4, Lcom/transsion/transfer/androidasync/http/server/n$c;->a:Ljava/lang/String;

    iget-object p1, p0, Lcom/transsion/transfer/androidasync/http/server/n;->a:Ljava/util/ArrayList;

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, Lcom/transsion/transfer/androidasync/http/server/n;->a:Ljava/util/ArrayList;

    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public f(Ljava/lang/String;Lcom/transsion/transfer/androidasync/http/server/q;)V
    .locals 1

    const-string v0, "GET"

    invoke-virtual {p0, v0, p1, p2}, Lcom/transsion/transfer/androidasync/http/server/n;->c(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/transfer/androidasync/http/server/q;)V

    return-void
.end method

.method public i(Ljava/lang/String;Lcom/transsion/transfer/androidasync/http/server/q;)V
    .locals 1

    const-string v0, "POST"

    invoke-virtual {p0, v0, p1, p2}, Lcom/transsion/transfer/androidasync/http/server/n;->c(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/transfer/androidasync/http/server/q;)V

    return-void
.end method

.method public j(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$a;)V
    .locals 1

    new-instance v0, Lcom/transsion/transfer/androidasync/http/server/l;

    invoke-direct {v0, p2, p3}, Lcom/transsion/transfer/androidasync/http/server/l;-><init>(Ljava/lang/String;Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$a;)V

    invoke-virtual {p0, p1, v0}, Lcom/transsion/transfer/androidasync/http/server/n;->f(Ljava/lang/String;Lcom/transsion/transfer/androidasync/http/server/q;)V

    return-void
.end method
