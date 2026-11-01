.class public final synthetic Lcom/transsion/member/view/h0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/member/view/PremiumContentView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/member/view/PremiumContentView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/member/view/h0;->a:Lcom/transsion/member/view/PremiumContentView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/member/view/h0;->a:Lcom/transsion/member/view/PremiumContentView;

    invoke-static {v0}, Lcom/transsion/member/view/PremiumContentView;->d(Lcom/transsion/member/view/PremiumContentView;)V

    return-void
.end method
