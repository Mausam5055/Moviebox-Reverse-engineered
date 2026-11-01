.class public final synthetic Lck/l;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lck/l;->a:Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lck/l;->a:Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;

    invoke-static {v0}, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->u0(Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
