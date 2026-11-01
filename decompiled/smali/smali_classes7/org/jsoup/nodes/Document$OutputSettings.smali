.class public Lorg/jsoup/nodes/Document$OutputSettings;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/nodes/Document;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OutputSettings"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/nodes/Document$OutputSettings$Syntax;
    }
.end annotation


# instance fields
.field private a:Lorg/jsoup/nodes/Entities$EscapeMode;

.field private b:Ljava/nio/charset/Charset;

.field private c:Ljava/lang/ThreadLocal;

.field d:Lorg/jsoup/nodes/Entities$CoreCharset;

.field private e:Z

.field private f:Z

.field private g:I

.field private h:Lorg/jsoup/nodes/Document$OutputSettings$Syntax;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/jsoup/nodes/Entities$EscapeMode;->base:Lorg/jsoup/nodes/Entities$EscapeMode;

    iput-object v0, p0, Lorg/jsoup/nodes/Document$OutputSettings;->a:Lorg/jsoup/nodes/Entities$EscapeMode;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lorg/jsoup/nodes/Document$OutputSettings;->c:Ljava/lang/ThreadLocal;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jsoup/nodes/Document$OutputSettings;->e:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/jsoup/nodes/Document$OutputSettings;->f:Z

    iput v0, p0, Lorg/jsoup/nodes/Document$OutputSettings;->g:I

    sget-object v0, Lorg/jsoup/nodes/Document$OutputSettings$Syntax;->html:Lorg/jsoup/nodes/Document$OutputSettings$Syntax;

    iput-object v0, p0, Lorg/jsoup/nodes/Document$OutputSettings;->h:Lorg/jsoup/nodes/Document$OutputSettings$Syntax;

    const-string v0, "UTF8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Document$OutputSettings;->c(Ljava/nio/charset/Charset;)Lorg/jsoup/nodes/Document$OutputSettings;

    return-void
.end method


# virtual methods
.method public a()Ljava/nio/charset/Charset;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/nodes/Document$OutputSettings;->b:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lorg/jsoup/nodes/Document$OutputSettings;
    .locals 0

    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/Document$OutputSettings;->c(Ljava/nio/charset/Charset;)Lorg/jsoup/nodes/Document$OutputSettings;

    return-object p0
.end method

.method public c(Ljava/nio/charset/Charset;)Lorg/jsoup/nodes/Document$OutputSettings;
    .locals 0

    iput-object p1, p0, Lorg/jsoup/nodes/Document$OutputSettings;->b:Ljava/nio/charset/Charset;

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/jsoup/nodes/Document$OutputSettings;->e()Lorg/jsoup/nodes/Document$OutputSettings;

    move-result-object v0

    return-object v0
.end method

.method public e()Lorg/jsoup/nodes/Document$OutputSettings;
    .locals 2

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Document$OutputSettings;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lorg/jsoup/nodes/Document$OutputSettings;->b:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Document$OutputSettings;->b(Ljava/lang/String;)Lorg/jsoup/nodes/Document$OutputSettings;

    iget-object v1, p0, Lorg/jsoup/nodes/Document$OutputSettings;->a:Lorg/jsoup/nodes/Entities$EscapeMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jsoup/nodes/Entities$EscapeMode;->valueOf(Ljava/lang/String;)Lorg/jsoup/nodes/Entities$EscapeMode;

    move-result-object v1

    iput-object v1, v0, Lorg/jsoup/nodes/Document$OutputSettings;->a:Lorg/jsoup/nodes/Entities$EscapeMode;

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method f()Ljava/nio/charset/CharsetEncoder;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/nodes/Document$OutputSettings;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/charset/CharsetEncoder;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/nodes/Document$OutputSettings;->k()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public g()Lorg/jsoup/nodes/Entities$EscapeMode;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/nodes/Document$OutputSettings;->a:Lorg/jsoup/nodes/Entities$EscapeMode;

    return-object v0
.end method

.method public i()I
    .locals 1

    iget v0, p0, Lorg/jsoup/nodes/Document$OutputSettings;->g:I

    return v0
.end method

.method public j()Z
    .locals 1

    iget-boolean v0, p0, Lorg/jsoup/nodes/Document$OutputSettings;->f:Z

    return v0
.end method

.method k()Ljava/nio/charset/CharsetEncoder;
    .locals 2

    iget-object v0, p0, Lorg/jsoup/nodes/Document$OutputSettings;->b:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    iget-object v1, p0, Lorg/jsoup/nodes/Document$OutputSettings;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jsoup/nodes/Entities$CoreCharset;->byName(Ljava/lang/String;)Lorg/jsoup/nodes/Entities$CoreCharset;

    move-result-object v1

    iput-object v1, p0, Lorg/jsoup/nodes/Document$OutputSettings;->d:Lorg/jsoup/nodes/Entities$CoreCharset;

    return-object v0
.end method

.method public l()Z
    .locals 1

    iget-boolean v0, p0, Lorg/jsoup/nodes/Document$OutputSettings;->e:Z

    return v0
.end method

.method public m()Lorg/jsoup/nodes/Document$OutputSettings$Syntax;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/nodes/Document$OutputSettings;->h:Lorg/jsoup/nodes/Document$OutputSettings$Syntax;

    return-object v0
.end method

.method public n(Lorg/jsoup/nodes/Document$OutputSettings$Syntax;)Lorg/jsoup/nodes/Document$OutputSettings;
    .locals 0

    iput-object p1, p0, Lorg/jsoup/nodes/Document$OutputSettings;->h:Lorg/jsoup/nodes/Document$OutputSettings$Syntax;

    return-object p0
.end method
