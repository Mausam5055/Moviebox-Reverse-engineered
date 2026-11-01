.class public final synthetic Lcom/transsion/push/feature/activate/a;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/transsion/push/feature/activate/ActivateNotificationRenderer;

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/push/feature/activate/ActivateNotificationRenderer;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/push/feature/activate/a;->a:Lcom/transsion/push/feature/activate/ActivateNotificationRenderer;

    iput-object p2, p0, Lcom/transsion/push/feature/activate/a;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/transsion/push/feature/activate/a;->a:Lcom/transsion/push/feature/activate/ActivateNotificationRenderer;

    iget-object v1, p0, Lcom/transsion/push/feature/activate/a;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/transsion/push/feature/activate/ActivateNotificationRenderer;->H(Lcom/transsion/push/feature/activate/ActivateNotificationRenderer;Landroid/content/Context;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
