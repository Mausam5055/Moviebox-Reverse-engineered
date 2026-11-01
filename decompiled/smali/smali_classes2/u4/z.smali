.class abstract Lu4/z;
.super Ljava/lang/Object;


# direct methods
.method static a(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/h;)Ln4/i;
    .locals 7

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->t()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v0

    sget-object v1, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->BEGIN_OBJECT:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    move v5, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    invoke-static {}, Lv4/l;->e()F

    move-result v3

    sget-object v4, Lu4/a0;->a:Lu4/a0;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lu4/t;->c(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/h;FLu4/n0;ZZ)Lw4/a;

    move-result-object p0

    new-instance v0, Ln4/i;

    invoke-direct {v0, p1, p0}, Ln4/i;-><init>(Lcom/airbnb/lottie/h;Lw4/a;)V

    return-object v0
.end method
