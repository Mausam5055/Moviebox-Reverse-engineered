.class public final Lcom/tn/lib/net/interceptor/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor$a;


# instance fields
.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "HttpLogInterceptor"

    iput-object v0, p0, Lcom/tn/lib/net/interceptor/a;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public log(Ljava/lang/String;)V
    .locals 7

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Llg/a;->a:Llg/a$a;

    iget-object v2, p0, Lcom/tn/lib/net/interceptor/a;->c:Ljava/lang/String;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method
