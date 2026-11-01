.class public final synthetic Lcom/transsion/base/infras_config/a;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/transsion/base/infras_config/InfraInitManager;->a()Lcom/transsion/base/infras_config/api/InfraInitApi;

    move-result-object v0

    return-object v0
.end method
