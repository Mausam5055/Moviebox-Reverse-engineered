.class public interface abstract Lcom/transsnet/loginapi/ILoginApi;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/therouter/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0008\u0008g\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000f\u0010\u0008\u001a\u00020\u0007H&\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0011\u0010\u000b\u001a\u0004\u0018\u00010\nH&\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0019\u0010\u000e\u001a\u00020\u00042\u0008\u0010\r\u001a\u0004\u0018\u00010\nH&\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0017\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u0011\u0010\u0006J\u0017\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0010\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0018\u0010\u0015\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\nH\u00a6@\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0019\u0010\u0019\u001a\u00020\u00042\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0017H&\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\u0004H&\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0017\u0010\u001f\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u001dH&\u00a2\u0006\u0004\u0008\u001f\u0010 J\u0017\u0010!\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u001dH&\u00a2\u0006\u0004\u0008!\u0010 J\u0017\u0010$\u001a\u00020\u00042\u0006\u0010#\u001a\u00020\"H&\u00a2\u0006\u0004\u0008$\u0010%J\u0011\u0010\'\u001a\u0004\u0018\u00010&H&\u00a2\u0006\u0004\u0008\'\u0010(J\u000f\u0010*\u001a\u00020)H&\u00a2\u0006\u0004\u0008*\u0010+J\u0017\u0010-\u001a\u00020\u00042\u0006\u0010,\u001a\u00020)H&\u00a2\u0006\u0004\u0008-\u0010.J\u000f\u0010/\u001a\u00020\u0017H&\u00a2\u0006\u0004\u0008/\u00100\u00a8\u00061"
    }
    d2 = {
        "Lcom/transsnet/loginapi/ILoginApi;",
        "",
        "Landroid/content/Context;",
        "app",
        "",
        "k",
        "(Landroid/content/Context;)V",
        "",
        "a",
        "()Z",
        "Lcom/transsnet/loginapi/bean/UserInfo;",
        "i",
        "()Lcom/transsnet/loginapi/bean/UserInfo;",
        "userInfo",
        "c",
        "(Lcom/transsnet/loginapi/bean/UserInfo;)V",
        "context",
        "j",
        "Landroid/content/Intent;",
        "o",
        "(Landroid/content/Context;)Landroid/content/Intent;",
        "l",
        "(Lcom/transsnet/loginapi/bean/UserInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "",
        "userId",
        "f",
        "(Ljava/lang/String;)V",
        "d",
        "()V",
        "Ldz/a;",
        "listener",
        "g",
        "(Ldz/a;)V",
        "p",
        "Lokhttp3/Response;",
        "response",
        "h",
        "(Lokhttp3/Response;)V",
        "Lcom/transsnet/loginapi/bean/Country;",
        "e",
        "()Lcom/transsnet/loginapi/bean/Country;",
        "",
        "n",
        "()J",
        "launchCount",
        "m",
        "(J)V",
        "b",
        "()Ljava/lang/String;",
        "LoginApi_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract a()Z
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method public abstract c(Lcom/transsnet/loginapi/bean/UserInfo;)V
.end method

.method public abstract d()V
.end method

.method public abstract e()Lcom/transsnet/loginapi/bean/Country;
.end method

.method public abstract f(Ljava/lang/String;)V
.end method

.method public abstract g(Ldz/a;)V
.end method

.method public abstract h(Lokhttp3/Response;)V
.end method

.method public abstract i()Lcom/transsnet/loginapi/bean/UserInfo;
.end method

.method public abstract j(Landroid/content/Context;)V
.end method

.method public abstract k(Landroid/content/Context;)V
.end method

.method public abstract l(Lcom/transsnet/loginapi/bean/UserInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end method

.method public abstract m(J)V
.end method

.method public abstract n()J
.end method

.method public abstract o(Landroid/content/Context;)Landroid/content/Intent;
.end method

.method public abstract p(Ldz/a;)V
.end method
