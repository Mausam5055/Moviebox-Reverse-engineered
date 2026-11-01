.class public final synthetic Lcom/transsion/startup/e;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Lcom/transsion/startup/StartupManager;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/startup/StartupManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/startup/e;->a:Lcom/transsion/startup/StartupManager;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/startup/e;->a:Lcom/transsion/startup/StartupManager;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast p2, Lcom/google/firebase/remoteconfig/a;

    invoke-static {v0, p1, p2}, Lcom/transsion/startup/StartupManager;->c(Lcom/transsion/startup/StartupManager;ZLcom/google/firebase/remoteconfig/a;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
