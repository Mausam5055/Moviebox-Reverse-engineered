.class public final Lcom/transsion/shorttv/order/bean/HttpErrorBodyBean$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/shorttv/order/bean/HttpErrorBodyBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/shorttv/order/bean/HttpErrorBodyBean$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lretrofit2/HttpException;)Lcom/transsion/shorttv/order/bean/HttpErrorBodyBean;
    .locals 7

    const-string v0, "httpException"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lretrofit2/HttpException;->response()Lretrofit2/j0;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lretrofit2/j0;->d()Lokhttp3/ResponseBody;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->charStream()Ljava/io/Reader;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v1}, Lkotlin/io/TextStreamsKt;->e(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_2

    invoke-static {}, Lcom/blankj/utilcode/util/o;->f()Lcom/google/gson/Gson;

    move-result-object v2

    const-class v3, Lcom/transsion/shorttv/order/bean/HttpErrorBodyBean;

    invoke-virtual {v2, v1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/shorttv/order/bean/HttpErrorBodyBean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :catch_0
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/transsion/shorttv/order/bean/HttpErrorBodyBean;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_3

    return-object v0

    :cond_3
    invoke-virtual {p1}, Lretrofit2/HttpException;->code()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lretrofit2/HttpException;->message()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_4

    const-string p1, "default_msg"

    :cond_4
    move-object v2, p1

    new-instance p1, Lcom/transsion/shorttv/order/bean/HttpErrorBodyBean;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/transsion/shorttv/order/bean/HttpErrorBodyBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1
.end method
