.class public final synthetic Lcom/transsion/commercialization/aha/a;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/commercialization/aha/AhaGameAllFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/commercialization/aha/AhaGameAllFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/commercialization/aha/a;->a:Lcom/transsion/commercialization/aha/AhaGameAllFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/commercialization/aha/a;->a:Lcom/transsion/commercialization/aha/AhaGameAllFragment;

    check-cast p1, Lcom/transsion/bean/AhaGameResponse;

    invoke-static {v0, p1}, Lcom/transsion/commercialization/aha/AhaGameAllFragment;->j0(Lcom/transsion/commercialization/aha/AhaGameAllFragment;Lcom/transsion/bean/AhaGameResponse;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
