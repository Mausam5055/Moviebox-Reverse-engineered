.class public final Lcom/transsion/member/MemberViewModel$e;
.super Ljava/lang/Object;

# interfaces
.implements Lzm/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/member/MemberViewModel;->w()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/member/MemberViewModel;


# direct methods
.method constructor <init>(Lcom/transsion/member/MemberViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/member/MemberViewModel$e;->a:Lcom/transsion/member/MemberViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/member/MemberViewModel$e;->a:Lcom/transsion/member/MemberViewModel;

    invoke-static {p1}, Lcom/transsion/member/MemberViewModel;->h(Lcom/transsion/member/MemberViewModel;)Landroidx/lifecycle/b0;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    return-void
.end method

.method public b(Lcom/transsion/memberapi/MemberDetail;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/member/MemberViewModel$e;->a:Lcom/transsion/member/MemberViewModel;

    invoke-static {v0}, Lcom/transsion/member/MemberViewModel;->h(Lcom/transsion/member/MemberViewModel;)Landroidx/lifecycle/b0;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    return-void
.end method
