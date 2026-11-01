.class public final Lcom/transsion/shorttv/base/locale/d$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/shorttv/base/locale/d;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/shorttv/base/locale/d;

.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/transsion/shorttv/base/locale/d;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/shorttv/base/locale/d$a;->a:Lcom/transsion/shorttv/base/locale/d;

    iput-object p2, p0, Lcom/transsion/shorttv/base/locale/d$a;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/shorttv/base/locale/d;Ljava/util/Locale;Ljava/util/Locale;Landroid/content/Context;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/shorttv/base/locale/d$a;->b(Lcom/transsion/shorttv/base/locale/d;Ljava/util/Locale;Ljava/util/Locale;Landroid/content/Context;)V

    return-void
.end method

.method private static final b(Lcom/transsion/shorttv/base/locale/d;Ljava/util/Locale;Ljava/util/Locale;Landroid/content/Context;)V
    .locals 6

    invoke-virtual {p0}, Lcom/transsion/shorttv/base/locale/d;->h()Ljava/util/Locale;

    move-result-object v0

    if-ne v0, p1, :cond_0

    invoke-virtual {p2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p1

    const-string p3, "getCountry(...)"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p3}, Lcom/transsion/shorttv/base/locale/d;->e(Lcom/transsion/shorttv/base/locale/d;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/transsion/shorttv/base/locale/d;->h()Ljava/util/Locale;

    move-result-object p1

    invoke-static {p0, p3, p1}, Lcom/transsion/shorttv/base/locale/d;->g(Lcom/transsion/shorttv/base/locale/d;Landroid/content/Context;Ljava/util/Locale;)V

    :goto_0
    sget-object v0, Llg/a;->a:Llg/a$a;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "onConfigurationChanged()-> locale = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "LocaleManager"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    invoke-static {p1}, Landroidx/appcompat/app/h;->a(Landroid/content/res/Configuration;)Landroid/os/LocaleList;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ln0/d;->a(Landroid/os/LocaleList;I)Ljava/util/Locale;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    :goto_0
    iget-object v0, p0, Lcom/transsion/shorttv/base/locale/d$a;->a:Lcom/transsion/shorttv/base/locale/d;

    invoke-static {v0}, Lcom/transsion/shorttv/base/locale/d;->d(Lcom/transsion/shorttv/base/locale/d;)Ljava/util/Locale;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/transsion/shorttv/base/locale/d$a;->a:Lcom/transsion/shorttv/base/locale/d;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-static {v1, p1}, Lcom/transsion/shorttv/base/locale/d;->f(Lcom/transsion/shorttv/base/locale/d;Ljava/util/Locale;)V

    iget-object v1, p0, Lcom/transsion/shorttv/base/locale/d$a;->a:Lcom/transsion/shorttv/base/locale/d;

    iget-object v2, p0, Lcom/transsion/shorttv/base/locale/d$a;->b:Landroid/content/Context;

    new-instance v3, Lcom/transsion/shorttv/base/locale/c;

    invoke-direct {v3, v1, v0, p1, v2}, Lcom/transsion/shorttv/base/locale/c;-><init>(Lcom/transsion/shorttv/base/locale/d;Ljava/util/Locale;Ljava/util/Locale;Landroid/content/Context;)V

    invoke-static {v3}, Lcom/blankj/utilcode/util/ThreadUtils;->k(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onLowMemory()V
    .locals 0

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 0

    return-void
.end method
