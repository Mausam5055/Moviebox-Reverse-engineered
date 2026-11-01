.class public final Lrp/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/mpush/api/IPushFeature;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrp/a$a;
    }
.end annotation


# static fields
.field public static final a:Lrp/a$a;

.field private static volatile b:Lrp/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lrp/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lrp/a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lrp/a;->a:Lrp/a$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a()Lrp/b;
    .locals 1

    sget-object v0, Lrp/a;->b:Lrp/b;

    return-object v0
.end method

.method public static final synthetic b(Lrp/b;)V
    .locals 0

    sput-object p0, Lrp/a;->b:Lrp/b;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    sget-object v0, Lrp/a;->a:Lrp/a$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lrp/a$a;->c(Lrp/b;)V

    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Llg/a;->a:Llg/a$a;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "PushRegisterManager"

    const-string v3, "\u3010\u4e0b\u8f7d\u63a8\u9001\u3011\u521d\u59cb\u5316"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public onMessageReceive(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/mpush/api/IPushFeature$DefaultImpls;->onMessageReceive(Lcom/transsion/mpush/api/IPushFeature;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onTrigger(I)V
    .locals 6

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    sget-object p1, Lrp/a;->a:Lrp/a$a;

    invoke-static {p1}, Lrp/a$a;->a(Lrp/a$a;)Lrp/b;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    sget-object v0, Llg/a;->a:Llg/a$a;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "PushRegisterManager"

    const-string v2, "\u3010\u4e0b\u8f7d\u63a8\u9001\u3011TIMER \u89e6\u53d1\uff0c\u6267\u884c\u4e0b\u8f7d\u901a\u77e5\u68c0\u67e5"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-interface {p1}, Lrp/b;->a()V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_2

    sget-object v0, Llg/a;->a:Llg/a$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u3010\u4e0b\u8f7d\u63a8\u9001\u3011timeTask \u6267\u884c\u5f02\u5e38\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "PushRegisterManager"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->l(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public refreshMessage(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/mpush/api/IPushFeature$DefaultImpls;->refreshMessage(Lcom/transsion/mpush/api/IPushFeature;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
