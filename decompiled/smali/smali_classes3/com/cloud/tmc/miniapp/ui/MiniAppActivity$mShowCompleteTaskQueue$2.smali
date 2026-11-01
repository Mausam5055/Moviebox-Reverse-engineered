.class final Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$mShowCompleteTaskQueue$2;
.super Lkotlin/jvm/internal/Lambda;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/cloud/tmc/miniapp/task/OooO0O0;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$mShowCompleteTaskQueue$2;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$mShowCompleteTaskQueue$2;

    invoke-direct {v0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$mShowCompleteTaskQueue$2;-><init>()V

    sput-object v0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$mShowCompleteTaskQueue$2;->INSTANCE:Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$mShowCompleteTaskQueue$2;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/cloud/tmc/miniapp/task/OooO0O0;
    .locals 1

    new-instance v0, Lcom/cloud/tmc/miniapp/task/OooO0O0;

    invoke-direct {v0}, Lcom/cloud/tmc/miniapp/task/OooO0O0;-><init>()V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$mShowCompleteTaskQueue$2;->invoke()Lcom/cloud/tmc/miniapp/task/OooO0O0;

    move-result-object v0

    return-object v0
.end method
