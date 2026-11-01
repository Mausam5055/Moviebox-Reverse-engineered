.class public abstract Lu4/d;
.super Ljava/lang/Object;


# direct methods
.method private static a(Lcom/airbnb/lottie/parser/moshi/JsonReader;FLcom/airbnb/lottie/h;Lu4/n0;)Ljava/util/List;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p2, p1, p3, v0}, Lu4/u;->a(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/h;FLu4/n0;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static b(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/h;Lu4/n0;)Ljava/util/List;
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, p2, v1}, Lu4/u;->a(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/h;FLu4/n0;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static c(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/h;)Lq4/a;
    .locals 2

    new-instance v0, Lq4/a;

    sget-object v1, Lu4/g;->a:Lu4/g;

    invoke-static {p0, p1, v1}, Lu4/d;->b(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/h;Lu4/n0;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lq4/a;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method static d(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/h;)Lq4/j;
    .locals 3

    new-instance v0, Lq4/j;

    invoke-static {}, Lv4/l;->e()F

    move-result v1

    sget-object v2, Lu4/i;->a:Lu4/i;

    invoke-static {p0, v1, p1, v2}, Lu4/d;->a(Lcom/airbnb/lottie/parser/moshi/JsonReader;FLcom/airbnb/lottie/h;Lu4/n0;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lq4/j;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static e(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/h;)Lq4/b;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lu4/d;->f(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/h;Z)Lq4/b;

    move-result-object p0

    return-object p0
.end method

.method public static f(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/h;Z)Lq4/b;
    .locals 2

    new-instance v0, Lq4/b;

    if-eqz p2, :cond_0

    invoke-static {}, Lv4/l;->e()F

    move-result p2

    goto :goto_0

    :cond_0
    const/high16 p2, 0x3f800000    # 1.0f

    :goto_0
    sget-object v1, Lu4/l;->a:Lu4/l;

    invoke-static {p0, p2, p1, v1}, Lu4/d;->a(Lcom/airbnb/lottie/parser/moshi/JsonReader;FLcom/airbnb/lottie/h;Lu4/n0;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lq4/b;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method static g(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/h;I)Lq4/c;
    .locals 2

    new-instance v0, Lq4/c;

    new-instance v1, Lu4/o;

    invoke-direct {v1, p2}, Lu4/o;-><init>(I)V

    invoke-static {p0, p1, v1}, Lu4/d;->b(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/h;Lu4/n0;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lq4/c;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method static h(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/h;)Lq4/d;
    .locals 2

    new-instance v0, Lq4/d;

    sget-object v1, Lu4/r;->a:Lu4/r;

    invoke-static {p0, p1, v1}, Lu4/d;->b(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/h;Lu4/n0;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lq4/d;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method static i(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/h;)Lq4/f;
    .locals 4

    new-instance v0, Lq4/f;

    invoke-static {}, Lv4/l;->e()F

    move-result v1

    sget-object v2, Lu4/b0;->a:Lu4/b0;

    const/4 v3, 0x1

    invoke-static {p0, p1, v1, v2, v3}, Lu4/u;->a(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/h;FLu4/n0;Z)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lq4/f;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method static j(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/h;)Lq4/g;
    .locals 2

    new-instance v0, Lq4/g;

    sget-object v1, Lu4/g0;->a:Lu4/g0;

    invoke-static {p0, p1, v1}, Lu4/d;->b(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/h;Lu4/n0;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lq4/g;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method static k(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/h;)Lq4/h;
    .locals 3

    new-instance v0, Lq4/h;

    invoke-static {}, Lv4/l;->e()F

    move-result v1

    sget-object v2, Lu4/h0;->a:Lu4/h0;

    invoke-static {p0, v1, p1, v2}, Lu4/d;->a(Lcom/airbnb/lottie/parser/moshi/JsonReader;FLcom/airbnb/lottie/h;Lu4/n0;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lq4/h;-><init>(Ljava/util/List;)V

    return-object v0
.end method
