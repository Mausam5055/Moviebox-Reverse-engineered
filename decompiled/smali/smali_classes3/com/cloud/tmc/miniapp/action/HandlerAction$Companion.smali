.class public final Lcom/cloud/tmc/miniapp/action/HandlerAction$Companion;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/miniapp/action/HandlerAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field public static final synthetic $$INSTANCE:Lcom/cloud/tmc/miniapp/action/HandlerAction$Companion;

.field private static final HANDLER:Landroid/os/Handler;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/cloud/tmc/miniapp/action/HandlerAction$Companion;

    invoke-direct {v0}, Lcom/cloud/tmc/miniapp/action/HandlerAction$Companion;-><init>()V

    sput-object v0, Lcom/cloud/tmc/miniapp/action/HandlerAction$Companion;->$$INSTANCE:Lcom/cloud/tmc/miniapp/action/HandlerAction$Companion;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/cloud/tmc/miniapp/action/HandlerAction$Companion;->HANDLER:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getHANDLER()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/cloud/tmc/miniapp/action/HandlerAction$Companion;->HANDLER:Landroid/os/Handler;

    return-object v0
.end method
