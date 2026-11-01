.class public Lcom/transsion/transfer/androidasync/http/h;
.super Lcom/transsion/transfer/androidasync/http/j;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v0, "GET"

    invoke-direct {p0, p1, v0}, Lcom/transsion/transfer/androidasync/http/j;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method
