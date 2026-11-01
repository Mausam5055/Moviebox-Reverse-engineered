.class public final synthetic Lcom/transsion/member/dialog/r;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/appcompat/widget/AppCompatEditText;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/widget/AppCompatEditText;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/member/dialog/r;->a:Landroidx/appcompat/widget/AppCompatEditText;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/member/dialog/r;->a:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-static {v0}, Lcom/transsion/member/dialog/MemberPromoCodeDialog;->n0(Landroidx/appcompat/widget/AppCompatEditText;)V

    return-void
.end method
