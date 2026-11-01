.class public final synthetic Lcom/transsion/member/view/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/member/view/InviteUserView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/member/view/InviteUserView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/member/view/c;->a:Lcom/transsion/member/view/InviteUserView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/member/view/c;->a:Lcom/transsion/member/view/InviteUserView;

    invoke-static {v0}, Lcom/transsion/member/view/InviteUserView;->a(Lcom/transsion/member/view/InviteUserView;)V

    return-void
.end method
