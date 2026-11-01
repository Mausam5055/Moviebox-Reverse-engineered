.class public final Lcom/transsion/api/gateway/GateWaySdk$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/api/gateway/GateWaySdk;->init(Landroid/content/Context;Ljava/lang/String;Lcom/transsion/api/gateway/config/WorkMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/api/gateway/GateWaySdk$a;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/transsion/api/gateway/GateWaySdk$a;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/api/gateway/GateWaySdk$a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/api/gateway/utils/SafeStringUtils;->getInstance(Landroid/content/Context;)Lcom/transsion/api/gateway/utils/SafeStringUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/api/gateway/GateWaySdk$a;->b:Ljava/lang/String;

    const-string v2, "appid"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/api/gateway/utils/SafeStringUtils;->saveString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
