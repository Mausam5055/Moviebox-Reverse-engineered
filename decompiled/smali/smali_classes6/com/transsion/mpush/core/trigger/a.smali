.class public final synthetic Lcom/transsion/mpush/core/trigger/a;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/transsion/mpush/core/trigger/b;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/mpush/core/trigger/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/mpush/core/trigger/a;->a:Lcom/transsion/mpush/core/trigger/b;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/mpush/core/trigger/a;->a:Lcom/transsion/mpush/core/trigger/b;

    invoke-static {v0}, Lcom/transsion/mpush/core/trigger/b;->a(Lcom/transsion/mpush/core/trigger/b;)Landroid/net/ConnectivityManager;

    move-result-object v0

    return-object v0
.end method
