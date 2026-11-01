.class public abstract Lcv/e;
.super Lcv/d;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLjava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcv/d;-><init>(Ljava/lang/String;JLjava/util/List;)V

    return-void
.end method


# virtual methods
.method public d(Lcom/transsion/transfer/androidasync/s;Lbv/a;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcv/e;->e()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/transsion/transfer/androidasync/a0;->f(Ljava/io/InputStream;Lcom/transsion/transfer/androidasync/s;Lbv/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-interface {p2, p1}, Lbv/a;->g(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method protected abstract e()Ljava/io/InputStream;
.end method
