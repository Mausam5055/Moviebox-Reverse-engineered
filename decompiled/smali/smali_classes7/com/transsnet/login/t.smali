.class public abstract Lcom/transsnet/login/t;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/transsnet/login/s;

    invoke-direct {v1}, Lcom/transsnet/login/s;-><init>()V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/transsnet/login/t;->a:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic a()Lcom/transsnet/login/r;
    .locals 1

    invoke-static {}, Lcom/transsnet/login/t;->c()Lcom/transsnet/login/r;

    move-result-object v0

    return-object v0
.end method

.method private static final b()Lcom/transsnet/loginapi/ILoginApi;
    .locals 1

    sget-object v0, Lcom/transsnet/login/t;->a:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsnet/loginapi/ILoginApi;

    return-object v0
.end method

.method private static final c()Lcom/transsnet/login/r;
    .locals 1

    new-instance v0, Lcom/transsnet/login/r;

    invoke-direct {v0}, Lcom/transsnet/login/r;-><init>()V

    return-object v0
.end method

.method public static final d()Lcom/transsnet/loginapi/ILoginApi;
    .locals 6

    invoke-static {}, Lcom/transsnet/login/t;->b()Lcom/transsnet/loginapi/ILoginApi;

    move-result-object v0

    sget-object v1, Llg/a;->a:Llg/a$a;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "provide instance="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", thread="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const-string v4, "LoginProvider"

    invoke-virtual {v1, v4, v2, v3}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method
