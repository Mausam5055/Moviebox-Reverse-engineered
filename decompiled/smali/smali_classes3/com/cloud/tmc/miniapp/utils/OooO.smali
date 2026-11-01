.class public final Lcom/cloud/tmc/miniapp/utils/OooO;
.super Ljava/lang/Object;


# static fields
.field public static final OooO00o:Lcom/cloud/tmc/miniapp/utils/OooO;

.field public static final OooO0O0:Lkotlin/Lazy;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cloud/tmc/miniapp/utils/OooO;

    invoke-direct {v0}, Lcom/cloud/tmc/miniapp/utils/OooO;-><init>()V

    sput-object v0, Lcom/cloud/tmc/miniapp/utils/OooO;->OooO00o:Lcom/cloud/tmc/miniapp/utils/OooO;

    sget-object v0, Lcom/cloud/tmc/miniapp/utils/OooO$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/utils/OooO$OooO00o;

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/cloud/tmc/miniapp/utils/OooO;->OooO0O0:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final OooO00o()Lcom/cloud/tmc/miniapp/task/OooO0O0;
    .locals 1

    sget-object v0, Lcom/cloud/tmc/miniapp/utils/OooO;->OooO0O0:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/task/OooO0O0;

    return-object v0
.end method
