.class final Lcom/cloud/hisavana/sdk/e0$g;
.super Lkotlin/jvm/internal/Lambda;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/e0;->a(ILjava/lang/String;IZILjava/util/concurrent/ConcurrentHashMap;)Lcom/cloud/hisavana/sdk/data/bean/inapp/CachedAdInfos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\r\n\u0002\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u000e\u0010\u0002\u001a\n \u0001*\u0004\u0018\u00010\u00000\u0000H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;",
        "kotlin.jvm.PlatformType",
        "it",
        "",
        "a",
        "(Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;)Ljava/lang/CharSequence;"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final a:Lcom/cloud/hisavana/sdk/e0$g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cloud/hisavana/sdk/e0$g;

    invoke-direct {v0}, Lcom/cloud/hisavana/sdk/e0$g;-><init>()V

    sput-object v0, Lcom/cloud/hisavana/sdk/e0$g;->a:Lcom/cloud/hisavana/sdk/e0$g;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;)Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->getCodeSeatId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "getCodeSeatId(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/e0$g;->a(Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method
