.class public final synthetic Lck/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lkotlin/jvm/functions/Function0;

.field public final synthetic b:Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function0;Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lck/p;->a:Lkotlin/jvm/functions/Function0;

    iput-object p2, p0, Lck/p;->b:Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lck/p;->a:Lkotlin/jvm/functions/Function0;

    iget-object v1, p0, Lck/p;->b:Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;

    invoke-static {v0, v1}, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->t0(Lkotlin/jvm/functions/Function0;Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;)V

    return-void
.end method
