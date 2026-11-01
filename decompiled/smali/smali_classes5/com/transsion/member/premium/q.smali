.class public final synthetic Lcom/transsion/member/premium/q;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic a:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/member/premium/q;->a:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/member/premium/q;->a:Lkotlin/jvm/functions/Function0;

    invoke-static {v0, p1}, Lcom/transsion/member/premium/PremiumProvider;->z(Lkotlin/jvm/functions/Function0;Landroid/content/DialogInterface;)V

    return-void
.end method
