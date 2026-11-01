.class public abstract Lorg/jsoup/select/c$o;
.super Lorg/jsoup/select/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/select/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "o"
.end annotation


# instance fields
.field protected final a:I

.field protected final b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Lorg/jsoup/select/c;-><init>()V

    iput p1, p0, Lorg/jsoup/select/c$o;->a:I

    iput p2, p0, Lorg/jsoup/select/c$o;->b:I

    return-void
.end method


# virtual methods
.method public a(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)Z
    .locals 4

    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->L0()Lorg/jsoup/nodes/Element;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    instance-of v0, v0, Lorg/jsoup/nodes/Document;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/select/c$o;->b(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)I

    move-result p1

    iget p2, p0, Lorg/jsoup/select/c$o;->a:I

    const/4 v0, 0x1

    if-nez p2, :cond_2

    iget p2, p0, Lorg/jsoup/select/c$o;->b:I

    if-ne p1, p2, :cond_1

    move v1, v0

    :cond_1
    return v1

    :cond_2
    iget v2, p0, Lorg/jsoup/select/c$o;->b:I

    sub-int v3, p1, v2

    mul-int/2addr v3, p2

    if-ltz v3, :cond_3

    sub-int/2addr p1, v2

    rem-int/2addr p1, p2

    if-nez p1, :cond_3

    move v1, v0

    :cond_3
    :goto_0
    return v1
.end method

.method protected abstract b(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)I
.end method

.method protected abstract c()Ljava/lang/String;
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    iget v3, p0, Lorg/jsoup/select/c$o;->a:I

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lorg/jsoup/select/c$o;->c()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lorg/jsoup/select/c$o;->b:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v1

    aput-object v4, v2, v0

    const-string v0, ":%s(%d)"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget v3, p0, Lorg/jsoup/select/c$o;->b:I

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lorg/jsoup/select/c$o;->c()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lorg/jsoup/select/c$o;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v1

    aput-object v4, v2, v0

    const-string v0, ":%s(%dn)"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lorg/jsoup/select/c$o;->c()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lorg/jsoup/select/c$o;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, p0, Lorg/jsoup/select/c$o;->b:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v1

    aput-object v4, v6, v0

    aput-object v5, v6, v2

    const-string v0, ":%s(%dn%+d)"

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
