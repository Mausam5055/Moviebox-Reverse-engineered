.class public final synthetic Lcom/transsion/member/view/b0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/transsion/member/view/MemberProView;

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/member/view/MemberProView;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/member/view/b0;->a:Lcom/transsion/member/view/MemberProView;

    iput-object p2, p0, Lcom/transsion/member/view/b0;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/transsion/member/view/b0;->a:Lcom/transsion/member/view/MemberProView;

    iget-object v1, p0, Lcom/transsion/member/view/b0;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/transsion/member/view/MemberProView;->f(Lcom/transsion/member/view/MemberProView;Landroid/content/Context;)Lcom/transsion/member/MemberViewModel;

    move-result-object v0

    return-object v0
.end method
