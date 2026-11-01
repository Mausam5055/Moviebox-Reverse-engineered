.class public final Lcom/cloud/tmc/miniapp/prestrategy/task/OooO0o$OooO00o;
.super Lkotlin/jvm/internal/Lambda;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/prestrategy/task/OooO0o;->OooO00o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Boolean;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic OooO00o:Ljava/util/concurrent/CountDownLatch;

.field public final synthetic OooO0O0:Landroid/app/Application;

.field public final synthetic OooO0OO:Ljava/lang/String;

.field public final synthetic OooO0Oo:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/CountDownLatch;Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/prestrategy/task/OooO0o$OooO00o;->OooO00o:Ljava/util/concurrent/CountDownLatch;

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/prestrategy/task/OooO0o$OooO00o;->OooO0O0:Landroid/app/Application;

    iput-object p3, p0, Lcom/cloud/tmc/miniapp/prestrategy/task/OooO0o$OooO00o;->OooO0OO:Ljava/lang/String;

    iput-object p4, p0, Lcom/cloud/tmc/miniapp/prestrategy/task/OooO0o$OooO00o;->OooO0Oo:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final OooO00o(Z)V
    .locals 6

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prestrategy/task/OooO0o$OooO00o;->OooO00o:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    if-eqz p1, :cond_0

    const-class p1, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prestrategy/task/OooO0o$OooO00o;->OooO0O0:Landroid/app/Application;

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/prestrategy/task/OooO0o$OooO00o;->OooO0OO:Ljava/lang/String;

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/prestrategy/task/OooO0o$OooO00o;->OooO0Oo:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_time"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->putLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/prestrategy/task/OooO0o$OooO00o;->OooO00o(Z)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
