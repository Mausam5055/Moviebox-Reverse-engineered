.class public final Lcom/cloud/tmc/miniapp/prepare/steps/Oooo0$OooO00o;
.super Lkotlin/jvm/internal/Lambda;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/miniapp/prepare/steps/Oooo0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final OooO00o:Lcom/cloud/tmc/miniapp/prepare/steps/Oooo0$OooO00o;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cloud/tmc/miniapp/prepare/steps/Oooo0$OooO00o;

    invoke-direct {v0}, Lcom/cloud/tmc/miniapp/prepare/steps/Oooo0$OooO00o;-><init>()V

    sput-object v0, Lcom/cloud/tmc/miniapp/prepare/steps/Oooo0$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/prepare/steps/Oooo0$OooO00o;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/cloud/tmc/integration/utils/AppUtils;->subpackageIsEnable()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
