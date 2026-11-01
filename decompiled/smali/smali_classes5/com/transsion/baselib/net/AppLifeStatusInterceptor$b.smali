.class public final Lcom/transsion/baselib/net/AppLifeStatusInterceptor$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/baselib/report/l$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/baselib/net/AppLifeStatusInterceptor;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/baselib/net/AppLifeStatusInterceptor;


# direct methods
.method constructor <init>(Lcom/transsion/baselib/net/AppLifeStatusInterceptor;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/baselib/net/AppLifeStatusInterceptor$b;->a:Lcom/transsion/baselib/net/AppLifeStatusInterceptor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackgroundStatusChange(Z)V
    .locals 3

    if-nez p1, :cond_0

    sget-object p1, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    invoke-virtual {p1}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    const-string v0, "record_latest_foreground_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    sget-object p1, Lcom/transsion/baselib/net/f;->a:Lcom/transsion/baselib/net/f;

    invoke-virtual {p1}, Lcom/transsion/baselib/net/f;->b()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, Lcom/transsion/baselib/net/AppLifeStatusInterceptor$b;->a:Lcom/transsion/baselib/net/AppLifeStatusInterceptor;

    invoke-static {p1}, Lcom/transsion/baselib/net/AppLifeStatusInterceptor;->e(Lcom/transsion/baselib/net/AppLifeStatusInterceptor;)V

    :cond_0
    return-void
.end method
