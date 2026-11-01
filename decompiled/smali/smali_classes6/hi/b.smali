.class public final Lhi/b;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lhi/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lhi/b;

    invoke-direct {v0}, Lhi/b;-><init>()V

    sput-object v0, Lhi/b;->a:Lhi/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 1

    const-string v0, "strings"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lhi/e;->a:Lhi/e;

    invoke-virtual {v0, p1}, Lhi/e;->b(Ljava/util/List;)V

    return-void
.end method

.method public final b()V
    .locals 7

    sget-object v0, Loi/a;->a:Loi/a;

    const-class v1, Lhi/b;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> setFullSearchModelSkipHotSplashAd() --> \u63a5\u6536\u5230\u4e86deeplink\u4e8b\u4ef6 --> \u5168\u641c\u7684\u65f6\u5019\u70ed\u542f\u52a8\u4e0d\u5c55\u793a\u70ed\u542f\u52a8\u5e7f\u544a"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x9

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Loi/a;->g(Loi/a;Ljava/lang/String;Ljava/lang/String;IZILjava/lang/Object;)V

    sget-object v0, Lhi/c;->a:Lhi/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lhi/c;->b(Z)V

    return-void
.end method

.method public final c(Z)V
    .locals 7

    sget-object v0, Loi/a;->a:Loi/a;

    const-class v1, Lhi/b;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> setSkipShowAd() --> isPassed = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0xd

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Loi/a;->g(Loi/a;Ljava/lang/String;Ljava/lang/String;IZILjava/lang/Object;)V

    sget-object v0, Lhi/e;->a:Lhi/e;

    invoke-virtual {v0, p1}, Lhi/e;->c(Z)V

    return-void
.end method

.method public final d(Z)V
    .locals 1

    sget-object v0, Lcom/transsion/ad/strategy/t;->a:Lcom/transsion/ad/strategy/t;

    invoke-virtual {v0, p1}, Lcom/transsion/ad/strategy/t;->b(Z)V

    return-void
.end method
