.class public final Lzv/b;
.super Ljava/lang/Object;

# interfaces
.implements Lretrofit2/f;


# instance fields
.field public final synthetic a:Lzv/d;

.field public final synthetic b:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Lzv/d;Lcom/transsion/upgradesdk/manager/g;)V
    .locals 0

    iput-object p1, p0, Lzv/b;->a:Lzv/d;

    iput-object p2, p0, Lzv/b;->b:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lretrofit2/d;Ljava/lang/Throwable;)V
    .locals 9

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "t"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lzv/b;->a:Lzv/d;

    const/4 v0, 0x3

    iput v0, p1, Lzv/d;->c:I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "CDN - \u8bf7\u6c42CDN\u914d\u7f6e\u5931\u8d25:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    const/16 v8, 0x70

    const/4 v1, 0x2

    const/4 v2, 0x3

    const-string v4, "1"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v8}, Lbw/l;->c(IILjava/lang/String;Ljava/lang/String;Lcom/transsion/upgradesdk/bean/c;Ljava/lang/Boolean;Ljava/lang/Boolean;I)V

    iget-object p1, p0, Lzv/b;->b:Lkotlin/jvm/functions/Function1;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final b(Lretrofit2/d;Lretrofit2/j0;)V
    .locals 7

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "response"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "CDN - requestSuccess: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "tag"

    const-string v1, "UpgradeSdkManager"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-boolean p1, Lbw/g;->a:Z

    const/4 v2, 0x3

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-wide v3, Lbw/g;->b:J

    sub-long v3, v0, v3

    const-wide/16 v5, 0x1388

    cmp-long v3, v3, v5

    if-gez v3, :cond_1

    goto :goto_0

    :cond_1
    sput-wide v0, Lbw/g;->b:J

    const-string p1, "upgradeSdkLog"

    invoke-static {p1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    sput-boolean p1, Lbw/g;->a:Z

    :cond_2
    sget-boolean p1, Lbw/g;->a:Z

    :goto_0
    sget-object v0, Lyv/f;->o:Lyv/d;

    invoke-virtual {v0}, Lyv/d;->a()Lyv/f;

    move-result-object v0

    iget-boolean v0, v0, Lyv/f;->d:Z

    invoke-virtual {p2}, Lretrofit2/j0;->e()Z

    move-result p1

    const/4 v0, 0x2

    if-eqz p1, :cond_3

    iget-object p1, p0, Lzv/b;->a:Lzv/d;

    iput v0, p1, Lzv/d;->c:I

    iget-object p1, p0, Lzv/b;->b:Lkotlin/jvm/functions/Function1;

    invoke-virtual {p2}, Lretrofit2/j0;->a()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lzv/b;->a:Lzv/d;

    iput v2, p1, Lzv/d;->c:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lretrofit2/j0;->b()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2d

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lretrofit2/j0;->f()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "1"

    const/16 v1, 0x10

    invoke-static {v0, v2, p1, p2, v1}, Lbw/l;->a(IILjava/lang/String;Ljava/lang/String;I)V

    iget-object p1, p0, Lzv/b;->b:Lkotlin/jvm/functions/Function1;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-void
.end method
