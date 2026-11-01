.class Lcom/transsion/transfer/androidasync/http/j$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/transfer/androidasync/http/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/transfer/androidasync/http/j;->n()Lcom/transsion/transfer/androidasync/http/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/transfer/androidasync/http/j;


# direct methods
.method constructor <init>(Lcom/transsion/transfer/androidasync/http/j;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/j$a;->a:Lcom/transsion/transfer/androidasync/http/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 9

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/transsion/transfer/androidasync/http/j$a;->a:Lcom/transsion/transfer/androidasync/http/j;

    iget-object v5, v4, Lcom/transsion/transfer/androidasync/http/j;->h:Ljava/lang/String;

    const-string v6, "%s %s %s"

    if-eqz v5, :cond_0

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v4}, Lcom/transsion/transfer/androidasync/http/j;->a(Lcom/transsion/transfer/androidasync/http/j;)Ljava/lang/String;

    move-result-object v4

    iget-object v7, p0, Lcom/transsion/transfer/androidasync/http/j$a;->a:Lcom/transsion/transfer/androidasync/http/j;

    invoke-virtual {v7}, Lcom/transsion/transfer/androidasync/http/j;->p()Landroid/net/Uri;

    move-result-object v7

    iget-object v8, p0, Lcom/transsion/transfer/androidasync/http/j$a;->a:Lcom/transsion/transfer/androidasync/http/j;

    invoke-static {v8}, Lcom/transsion/transfer/androidasync/http/j;->b(Lcom/transsion/transfer/androidasync/http/j;)Ljava/lang/String;

    move-result-object v8

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v4, v3, v2

    aput-object v7, v3, v1

    aput-object v8, v3, v0

    invoke-static {v5, v6, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v4}, Lcom/transsion/transfer/androidasync/http/j;->k()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    const-string v4, "/"

    :cond_2
    iget-object v5, p0, Lcom/transsion/transfer/androidasync/http/j$a;->a:Lcom/transsion/transfer/androidasync/http/j;

    invoke-virtual {v5}, Lcom/transsion/transfer/androidasync/http/j;->p()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "?"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_3
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-object v7, p0, Lcom/transsion/transfer/androidasync/http/j$a;->a:Lcom/transsion/transfer/androidasync/http/j;

    invoke-static {v7}, Lcom/transsion/transfer/androidasync/http/j;->a(Lcom/transsion/transfer/androidasync/http/j;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/transsion/transfer/androidasync/http/j$a;->a:Lcom/transsion/transfer/androidasync/http/j;

    invoke-static {v8}, Lcom/transsion/transfer/androidasync/http/j;->b(Lcom/transsion/transfer/androidasync/http/j;)Ljava/lang/String;

    move-result-object v8

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v7, v3, v2

    aput-object v4, v3, v1

    aput-object v8, v3, v0

    invoke-static {v5, v6, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
