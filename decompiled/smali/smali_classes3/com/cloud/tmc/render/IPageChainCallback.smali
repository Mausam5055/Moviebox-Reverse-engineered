.class public interface abstract Lcom/cloud/tmc/render/IPageChainCallback;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/render/IPageChainCallback$Companion;,
        Lcom/cloud/tmc/render/IPageChainCallback$OnPageFinishedData;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008f\u0018\u0000 \u00072\u00020\u0001:\u0002\u0007\u0008J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/cloud/tmc/render/IPageChainCallback;",
        "",
        "onConsoleMessage",
        "",
        "params",
        "",
        "onPageFinished",
        "Companion",
        "OnPageFinishedData",
        "com.cloud.tmc.render"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/cloud/tmc/render/IPageChainCallback$Companion;

.field public static final TAG_PARAMS:Ljava/lang/String; = "params"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/cloud/tmc/render/IPageChainCallback$Companion;->$$INSTANCE:Lcom/cloud/tmc/render/IPageChainCallback$Companion;

    sput-object v0, Lcom/cloud/tmc/render/IPageChainCallback;->Companion:Lcom/cloud/tmc/render/IPageChainCallback$Companion;

    return-void
.end method


# virtual methods
.method public abstract onConsoleMessage(Ljava/lang/String;)V
.end method

.method public abstract onPageFinished(Ljava/lang/String;)V
.end method
