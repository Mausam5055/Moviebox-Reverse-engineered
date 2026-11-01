.class public final Lcom/transsion/member/promotion/MemberRetentionDialog$b;
.super Landroid/os/CountDownTimer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/member/promotion/MemberRetentionDialog;->y0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/member/promotion/MemberRetentionDialog;


# direct methods
.method constructor <init>(JLcom/transsion/member/promotion/MemberRetentionDialog;)V
    .locals 2

    iput-object p3, p0, Lcom/transsion/member/promotion/MemberRetentionDialog$b;->a:Lcom/transsion/member/promotion/MemberRetentionDialog;

    const-wide/16 v0, 0x3e8

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/member/promotion/MemberRetentionDialog$b;->a:Lcom/transsion/member/promotion/MemberRetentionDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/member/promotion/MemberRetentionDialog;->q0(Lcom/transsion/member/promotion/MemberRetentionDialog;Landroid/os/CountDownTimer;)V

    iget-object v0, p0, Lcom/transsion/member/promotion/MemberRetentionDialog$b;->a:Lcom/transsion/member/promotion/MemberRetentionDialog;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/transsion/member/promotion/MemberRetentionDialog;->r0(Lcom/transsion/member/promotion/MemberRetentionDialog;J)V

    iget-object v0, p0, Lcom/transsion/member/promotion/MemberRetentionDialog$b;->a:Lcom/transsion/member/promotion/MemberRetentionDialog;

    invoke-static {v0}, Lcom/transsion/member/promotion/MemberRetentionDialog;->p0(Lcom/transsion/member/promotion/MemberRetentionDialog;)V

    return-void
.end method

.method public onTick(J)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/member/promotion/MemberRetentionDialog$b;->a:Lcom/transsion/member/promotion/MemberRetentionDialog;

    invoke-static {v0, p1, p2}, Lcom/transsion/member/promotion/MemberRetentionDialog;->r0(Lcom/transsion/member/promotion/MemberRetentionDialog;J)V

    return-void
.end method
