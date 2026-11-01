.class public final synthetic Lcom/transsion/usercenter/profile/report/d;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/usercenter/profile/report/ReportDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/usercenter/profile/report/ReportDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/usercenter/profile/report/d;->a:Lcom/transsion/usercenter/profile/report/ReportDialog;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/usercenter/profile/report/d;->a:Lcom/transsion/usercenter/profile/report/ReportDialog;

    check-cast p1, Lcom/tn/lib/net/bean/BaseDto;

    invoke-static {v0, p1}, Lcom/transsion/usercenter/profile/report/ReportDialog;->n0(Lcom/transsion/usercenter/profile/report/ReportDialog;Lcom/tn/lib/net/bean/BaseDto;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
