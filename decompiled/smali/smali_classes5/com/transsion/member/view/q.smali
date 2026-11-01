.class public final synthetic Lcom/transsion/member/view/q;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/member/view/q;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/member/view/q;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/member/view/MemberLayoutView;->h(Landroid/content/Context;)Lcom/transsion/member/MemberViewModel;

    move-result-object v0

    return-object v0
.end method
