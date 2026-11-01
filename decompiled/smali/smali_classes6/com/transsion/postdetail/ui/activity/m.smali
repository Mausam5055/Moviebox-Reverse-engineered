.class public final synthetic Lcom/transsion/postdetail/ui/activity/m;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/postdetail/ui/activity/m;->a:Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/ui/activity/m;->a:Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity;

    check-cast p1, Lcom/transsion/postdetail/bean/ReportReason;

    invoke-static {v0, p1}, Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity;->j0(Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity;Lcom/transsion/postdetail/bean/ReportReason;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
