.class public final synthetic Liv/g;
.super Ljava/lang/Object;

# interfaces
.implements Lbv/a;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Liv/h;

.field public final synthetic c:Lcom/transsion/transfer/androidasync/http/b0;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Liv/h;Lcom/transsion/transfer/androidasync/http/b0;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Liv/g;->a:Ljava/lang/String;

    iput-object p2, p0, Liv/g;->b:Liv/h;

    iput-object p3, p0, Liv/g;->c:Lcom/transsion/transfer/androidasync/http/b0;

    iput-object p4, p0, Liv/g;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Exception;)V
    .locals 4

    iget-object v0, p0, Liv/g;->a:Ljava/lang/String;

    iget-object v1, p0, Liv/g;->b:Liv/h;

    iget-object v2, p0, Liv/g;->c:Lcom/transsion/transfer/androidasync/http/b0;

    iget-object v3, p0, Liv/g;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, p1}, Liv/h;->m(Ljava/lang/String;Liv/h;Lcom/transsion/transfer/androidasync/http/b0;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method
