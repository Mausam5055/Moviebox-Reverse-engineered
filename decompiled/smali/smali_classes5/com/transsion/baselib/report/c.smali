.class public final synthetic Lcom/transsion/baselib/report/c;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/baselib/report/c;->a:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/baselib/report/c;->a:Landroid/os/Bundle;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/transsion/baselib/report/e;->a(Landroid/os/Bundle;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
