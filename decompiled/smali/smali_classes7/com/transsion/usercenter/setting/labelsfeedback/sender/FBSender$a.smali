.class public final Lcom/transsion/usercenter/setting/labelsfeedback/sender/FBSender$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/lifecycle/c0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/usercenter/setting/labelsfeedback/sender/FBSender;->l(Ljava/lang/String;Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/usercenter/setting/labelsfeedback/sender/FBSender$a$a;
    }
.end annotation


# instance fields
.field final synthetic a:Landroidx/lifecycle/LiveData;

.field final synthetic b:Lcom/transsion/usercenter/setting/labelsfeedback/sender/FBSender;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroidx/lifecycle/LiveData;Lcom/transsion/usercenter/setting/labelsfeedback/sender/FBSender;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FBSender$a;->a:Landroidx/lifecycle/LiveData;

    iput-object p2, p0, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FBSender$a;->b:Lcom/transsion/usercenter/setting/labelsfeedback/sender/FBSender;

    iput-object p3, p0, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FBSender$a;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/work/WorkInfo;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/work/WorkInfo;->a()Landroidx/work/WorkInfo$State;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-nez p1, :cond_1

    const/4 p1, -0x1

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FBSender$a$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    :goto_1
    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    goto :goto_2

    :cond_2
    sget-object p1, Luh/b;->a:Luh/b$a;

    sget v0, Lcom/transsion/usercenter/R$string;->feedback_tips_failed:I

    invoke-virtual {p1, v0}, Luh/b$a;->d(I)V

    iget-object p1, p0, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FBSender$a;->a:Landroidx/lifecycle/LiveData;

    invoke-virtual {p1, p0}, Landroidx/lifecycle/LiveData;->o(Landroidx/lifecycle/c0;)V

    iget-object p1, p0, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FBSender$a;->b:Lcom/transsion/usercenter/setting/labelsfeedback/sender/FBSender;

    iget-object v0, p0, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FBSender$a;->c:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FBSender;->d(Lcom/transsion/usercenter/setting/labelsfeedback/sender/FBSender;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    sget-object p1, Luh/b;->a:Luh/b$a;

    sget v1, Lcom/transsion/usercenter/R$string;->feedback_tips_suceess:I

    invoke-virtual {p1, v1}, Luh/b$a;->d(I)V

    iget-object p1, p0, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FBSender$a;->a:Landroidx/lifecycle/LiveData;

    invoke-virtual {p1, p0}, Landroidx/lifecycle/LiveData;->o(Landroidx/lifecycle/c0;)V

    iget-object p1, p0, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FBSender$a;->b:Lcom/transsion/usercenter/setting/labelsfeedback/sender/FBSender;

    invoke-static {p1, v0}, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FBSender;->d(Lcom/transsion/usercenter/setting/labelsfeedback/sender/FBSender;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroidx/work/WorkInfo;

    invoke-virtual {p0, p1}, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FBSender$a;->a(Landroidx/work/WorkInfo;)V

    return-void
.end method
