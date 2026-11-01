.class public abstract Lcom/transsion/shorttv/base/activity/BaseCommonActivity;
.super Landroidx/appcompat/app/AppCompatActivity;

# interfaces
.implements Lnh/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/shorttv/base/activity/BaseCommonActivity$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lg4/a;",
        ">",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "Lnh/n;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\n\u0008&\u0018\u0000 +*\u0008\u0008\u0000\u0010\u0002*\u00020\u00012\u00020\u00032\u00020\u0004:\u0001%B\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J!\u0010\u000c\u001a\u00020\u000b2\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u00072\u0008\u0010\n\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0019\u0010\u000f\u001a\u00020\u000b2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\tH\u0014\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00028\u0000H&\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u000bH$\u00a2\u0006\u0004\u0008\u0013\u0010\u0006J\u001f\u0010\u0018\u001a\u00020\u000b2\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u0016H\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u0006J\u000f\u0010\u001b\u001a\u00020\u000bH\u0014\u00a2\u0006\u0004\u0008\u001b\u0010\u0006J\u000f\u0010\u001c\u001a\u00020\u000bH\u0014\u00a2\u0006\u0004\u0008\u001c\u0010\u0006J\u000f\u0010\u001d\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\u001d\u0010\u0006J\u000f\u0010\u001e\u001a\u00020\u000bH\u0014\u00a2\u0006\u0004\u0008\u001e\u0010\u0006J\u000f\u0010 \u001a\u00020\u001fH\u0016\u00a2\u0006\u0004\u0008 \u0010!J\u000f\u0010#\u001a\u00020\"H\u0016\u00a2\u0006\u0004\u0008#\u0010$R\"\u0010*\u001a\u00028\u00008\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008%\u0010&\u001a\u0004\u0008\'\u0010\u0012\"\u0004\u0008(\u0010)\u00a8\u0006,"
    }
    d2 = {
        "Lcom/transsion/shorttv/base/activity/BaseCommonActivity;",
        "Lg4/a;",
        "T",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "Lnh/n;",
        "<init>",
        "()V",
        "Landroid/content/Context;",
        "context",
        "Landroid/os/Bundle;",
        "bundle",
        "",
        "intercept",
        "(Landroid/content/Context;Landroid/os/Bundle;)V",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "getViewBinding",
        "()Lg4/a;",
        "setView",
        "Landroid/net/Network;",
        "network",
        "Landroid/net/NetworkCapabilities;",
        "networkCapabilities",
        "onConnected",
        "(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V",
        "onDisconnected",
        "onResume",
        "onPause",
        "finish",
        "onDestroy",
        "",
        "isMonitorNetworkState",
        "()Z",
        "",
        "getPageName",
        "()Ljava/lang/String;",
        "a",
        "Lg4/a;",
        "getMViewBinding",
        "setMViewBinding",
        "(Lg4/a;)V",
        "mViewBinding",
        "b",
        "shortTvLib_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final b:Lcom/transsion/shorttv/base/activity/BaseCommonActivity$a;


# instance fields
.field public a:Lg4/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/shorttv/base/activity/BaseCommonActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/shorttv/base/activity/BaseCommonActivity$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/shorttv/base/activity/BaseCommonActivity;->b:Lcom/transsion/shorttv/base/activity/BaseCommonActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "show_enter_home"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finishAffinity()V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final getMViewBinding()Lg4/a;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/base/activity/BaseCommonActivity;->a:Lg4/a;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "mViewBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public abstract getViewBinding()Lg4/a;
.end method

.method public final intercept(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 8

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    if-nez p2, :cond_0

    return-void

    :cond_0
    sget-object v1, Lih/b;->a:Lih/b;

    invoke-virtual {v1}, Lih/b;->n()Ljava/lang/String;

    move-result-object v1

    const-string v2, "9"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "10"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :cond_2
    :goto_0
    move v1, v0

    :goto_1
    if-eqz p1, :cond_8

    if-eqz v1, :cond_8

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v1, "androidx.lifecycle.BundlableSavedStateRegistry.key"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_7

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p2, v2}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Landroid/os/Bundle;

    const/4 v5, 0x0

    if-eqz v4, :cond_4

    check-cast v3, Landroid/os/Bundle;

    goto :goto_3

    :cond_4
    move-object v3, v5

    :goto_3
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/os/Bundle;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    goto :goto_4

    :cond_5
    move-object v3, v5

    :goto_4
    sget-object v4, Llg/a;->a:Llg/a$a;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BaseCommonActivity --> intercept() --> classLoader = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3, v0}, Llg/a$a;->j(Ljava/lang/String;Z)V

    invoke-virtual {p2, v2}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Landroid/os/Bundle;

    if-eqz v3, :cond_6

    move-object v5, v2

    check-cast v5, Landroid/os/Bundle;

    :cond_6
    if-eqz v5, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    goto :goto_2

    :cond_7
    sget-object p1, Llg/a;->a:Llg/a$a;

    const-string p2, "BaseCommonActivity --> intercept() --> \u5f53\u524d\u7cfb\u7edf\u7248\u672c9\u300110 \u66ff\u6362BootClassLoader -- ClassLoader"

    invoke-virtual {p1, p2, v0}, Llg/a$a;->j(Ljava/lang/String;Z)V

    :cond_8
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_6

    :goto_5
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_6
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_9

    goto :goto_7

    :cond_9
    sget-object p2, Llg/a;->a:Llg/a$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BaseCommonActivity --> intercept() --> it = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, v0}, Llg/a$a;->j(Ljava/lang/String;Z)V

    :goto_7
    return-void
.end method

.method public isMonitorNetworkState()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onConnected()V
    .locals 0

    invoke-static {p0}, Lnh/n$a;->a(Lnh/n;)V

    return-void
.end method

.method public onConnected(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 1

    const-string v0, "network"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "networkCapabilities"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p0, p0, p1}, Lcom/transsion/shorttv/base/activity/BaseCommonActivity;->intercept(Landroid/content/Context;Landroid/os/Bundle;)V

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/transsion/shorttv/base/activity/BaseCommonActivity;->isMonitorNetworkState()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lnh/m;->a:Lnh/m;

    invoke-virtual {p1, p0}, Lnh/m;->l(Lnh/n;)V

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/shorttv/base/activity/BaseCommonActivity;->getViewBinding()Lg4/a;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/shorttv/base/activity/BaseCommonActivity;->setMViewBinding(Lg4/a;)V

    invoke-virtual {p0}, Lcom/transsion/shorttv/base/activity/BaseCommonActivity;->setView()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    invoke-virtual {p0}, Lcom/transsion/shorttv/base/activity/BaseCommonActivity;->isMonitorNetworkState()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lnh/m;->a:Lnh/m;

    invoke-virtual {v0, p0}, Lnh/m;->m(Lnh/n;)V

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v1, p0, v0, v1}, Lcom/transsion/shorttv/base/activity/g;->b(Ljava/lang/String;Landroid/app/Activity;ILjava/lang/Object;)V

    return-void
.end method

.method public onDisconnected()V
    .locals 0

    return-void
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1, v0}, Lcom/transsion/shorttv/base/activity/g;->g(Ljava/lang/String;Landroid/app/Activity;ILjava/lang/Object;)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1, v0}, Lcom/transsion/shorttv/base/activity/g;->k(Ljava/lang/String;Landroid/app/Activity;ILjava/lang/Object;)V

    return-void
.end method

.method public final setMViewBinding(Lg4/a;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/shorttv/base/activity/BaseCommonActivity;->a:Lg4/a;

    return-void
.end method

.method protected abstract setView()V
.end method
