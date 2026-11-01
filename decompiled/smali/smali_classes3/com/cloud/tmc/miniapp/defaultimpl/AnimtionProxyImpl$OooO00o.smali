.class public final Lcom/cloud/tmc/miniapp/defaultimpl/AnimtionProxyImpl$OooO00o;
.super Lkotlin/jvm/internal/Lambda;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/defaultimpl/AnimtionProxyImpl;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic OooO00o:Lcom/cloud/tmc/miniapp/defaultimpl/AnimtionProxyImpl;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/defaultimpl/AnimtionProxyImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/AnimtionProxyImpl$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/defaultimpl/AnimtionProxyImpl;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/AnimtionProxyImpl$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/defaultimpl/AnimtionProxyImpl;

    invoke-static {}, Lcom/cloud/tmc/miniutils/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    const-string v2, "getApp()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/cloud/tmc/miniapp/defaultimpl/AnimtionProxyImpl;->access$getMemoryInfo(Lcom/cloud/tmc/miniapp/defaultimpl/AnimtionProxyImpl;Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
