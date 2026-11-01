.class public final Lcom/cloud/tmc/integration/callback/IAllowMFAHListener$DefaultImpls;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/integration/callback/IAllowMFAHListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# direct methods
.method public static addMFAHInterceptAction(Lcom/cloud/tmc/integration/callback/IAllowMFAHListener;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/integration/callback/IAllowMFAHListener;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/cloud/tmc/integration/utils/MiniForceAddHomeManager;->INSTANCE:Lcom/cloud/tmc/integration/utils/MiniForceAddHomeManager;

    invoke-virtual {v0, p1}, Lcom/cloud/tmc/integration/utils/MiniForceAddHomeManager;->checkInterect(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Lcom/cloud/tmc/integration/callback/IAllowMFAHListener;->getMFAHInterceptList()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public static clearMFAHIntercept(Lcom/cloud/tmc/integration/callback/IAllowMFAHListener;)V
    .locals 0

    invoke-interface {p0}, Lcom/cloud/tmc/integration/callback/IAllowMFAHListener;->getMFAHInterceptList()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public static getMFAHIntercept(Lcom/cloud/tmc/integration/callback/IAllowMFAHListener;)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/integration/callback/IAllowMFAHListener;",
            ")",
            "Ljava/util/ArrayList<",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation

    invoke-interface {p0}, Lcom/cloud/tmc/integration/callback/IAllowMFAHListener;->getMFAHInterceptList()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static mfahAllow(Lcom/cloud/tmc/integration/callback/IAllowMFAHListener;Ljava/lang/String;)V
    .locals 2

    invoke-interface {p0}, Lcom/cloud/tmc/integration/callback/IAllowMFAHListener;->getMFAHInterceptList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/cloud/tmc/integration/callback/IAllowMFAHListener;->clearMFAHIntercept()V

    sget-object p0, Lcom/cloud/tmc/integration/utils/MiniForceAddHomeManager;->INSTANCE:Lcom/cloud/tmc/integration/utils/MiniForceAddHomeManager;

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/integration/utils/MiniForceAddHomeManager;->removeMFAHListener(Ljava/lang/String;)V

    return-void
.end method
